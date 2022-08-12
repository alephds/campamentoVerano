# Pasos para crear la API en GraphQL

## Instalar Node.js

https://nodejs.org/es/download/

## Nos aseguramos de tener instalado Node en nuestro equipo

Abrimos una terminal y ejecutamos

```
node -v
```

## Instalamos las dependencias de GraphQL al proyecto

En la terminal ejecutar

```
npm install graphql@15.x express-graphql graphql-scalars
```

al archivo `app.js` agregamos:

```js
const { graphqlHTTP } = require("express-graphql");
const { buildSchema } = require("graphql");
const { DateTimeResolver } = require("graphql-scalars");

// Construimos el schema
const schema = buildSchema(`
  scalar DateTime

  type Vela {
    fecha: DateTime
    open: Float
    high: Float
    low: Float
    close: Float
  }
  
  type Query {
    """
    Consulta el histórico de velas diarias con temporalidad a 1 minuto
    """
    obtenerVelas(fechaInicial: DateTime!, fechaFinal: DateTime!): [Vela]
  }
`);
```

Agregamos los resolvers:

```js
// Función para resolver las peticiones
const root = {
  DateTime: DateTimeResolver,
  obtenerVelas: async (params) => {
    return await Velas.obtenerVelasPorRangoDeFechas(
      params.fechaInicial,
      params.fechaFinal
    );
  },
};
```

Agregamos el servidor de GraphQL a la ruta /graphql

```js
app.use(
  "/graphql",
  graphqlHTTP({
    schema: schema,
    rootValue: root,
    graphiql: true,
  })
);
```

## Probamos algunas consultas

Consulta simple

```
{
  obtenerVelas(fechaInicial: "2020-01-15",fechaFinal: "2020-01-16") {
    fecha
    open
  }
}
```

2 consultas al mismo tiempo

```
{
  velas1: obtenerVelas(fechaInicial: "2020-01-15",fechaFinal: "2020-01-16") {
    fecha
    open
  }
  velas2: obtenerVelas(fechaInicial: "2020-02-15",fechaFinal: "2020-02-30") {
    fecha
    open
  }
}
```

## Integrarlo al Dashboard

Reemplazar javascript del HTML
```js
function unpack(rows, key) {
            return rows.map(function (row) {
                return row[key];
            });
        }

        function mostrarBotonEnProgreso() {
            document.getElementById('btnConsulta').disabled = true;
            document.getElementById('spinnerConsulta').style.display = 'inline-block';
        }

        function quitarBotonEnProgreso() {
            document.getElementById('btnConsulta').disabled = false;
            document.getElementById('spinnerConsulta').style.display = 'none';
        }

        async function consultarVelasParaUnaGrafica(fi1, ff1, fi2, ff2) {
            const url = `graphql`;

            const response = await axios.post(url, {
                query: `{
                    velas1: obtenerVelas(fechaInicial: "${fi1}",fechaFinal: "${ff1}") {
                        fecha
                        open
                        high
                        low
                        close
                    }
                    velas2: obtenerVelas(fechaInicial: "${fi2}",fechaFinal: "${ff2}") {
                        fecha
                        open
                        high
                        low
                        close
                    }
                }`
            });

            const layout = {
                dragmode: 'zoom',
                showlegend: false,
                xaxis: {
                    rangeslider: {
                        visible: false
                    }
                }
            };

            let i = 1;
            for (const key in response.data.data) {
                const element = response.data[i];
                const trace = {
                    x: unpack(response.data.data[key], 'fecha'),
                    close: unpack(response.data.data[key], 'close'),
                    high: unpack(response.data.data[key], 'high'),
                    low: unpack(response.data.data[key], 'low'),
                    open: unpack(response.data.data[key], 'open'),

                    // cutomise colors
                    increasing: { line: { color: '#52BE80' } },
                    decreasing: { line: { color: '#CD6155' } },

                    type: 'candlestick',
                    xaxis: 'x',
                    yaxis: 'y'
                };

                const data = [trace];



                Plotly.newPlot(`grafica${i}`, data, layout, {
                    responsive: true,
                    displayModeBar: false
                });
                i++;
            }

        }

        async function consultarVelas() {
            mostrarBotonEnProgreso();

            let fechaInicial = document.getElementById('inputFechaInicial').value
            let fechaFinal = document.getElementById('inputFechaFinal').value;
            const fechaInicial2 = document.getElementById('inputFechaInicial2').value
            const fechaFinal2 = document.getElementById('inputFechaFinal2').value;

            await consultarVelasParaUnaGrafica(
                fechaInicial, fechaFinal, fechaInicial2, fechaFinal2,
            );

            quitarBotonEnProgreso();
        }

        consultarVelas();
```
