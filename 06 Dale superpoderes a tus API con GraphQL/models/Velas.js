const Model = require('./Model');

module.exports = class extends Model {
    static table = 'velas';

    /**
     * Consulta el histórico de velas diarias con temporalidad a 1 minuto
     *
     * Produce una consulta como
     * select * from `velas` where `fecha` >= '2020-01-01' and `fecha` <= '2020-01-02' order by `fecha` ASC
     * @param {*} fechaInicial formato "YYYY-MM-DD"
     * @param {*} fechaFinal formato "YYYY-MM-DD"
     * @returns
     */
    static async obtenerVelasPorRangoDeFechas(fechaInicial, fechaFinal) {
        const rows = await this.db(this.table)
            .where('fecha', '>=', fechaInicial)
            .andWhere('fecha', '<=', fechaFinal)
            .orderBy('fecha', 'ASC');

        return rows;
    }
};
