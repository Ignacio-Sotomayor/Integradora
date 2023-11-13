import mysql from "mysql2";
import {
    MYSQL_HOST,
    MYSQL_USER,
    MYSQL_PASSWORD,
    MYSQL_DATABASE,
    MYSQL_PORT
} from './config.js';

const pool = mysql.createPool({
    host: MYSQL_HOST,
    user: MYSQL_USER,
    password: MYSQL_PASSWORD,
    database: MYSQL_DATABASE,
    port: MYSQL_PORT
}).promise();

export async function getJugadores() {
    const [row] = await pool.query('SELECT * FROM jugadores');
    return row;
}

export async function getArgentinos() {
    const [row] = await pool.query('SELECT * FROM jugadores WHERE Nacionalidad = "Argentina"');
    return row;
}

export async function getAlto()
{
    const [row] = await pool.query('SELECT * FROM jugadores WHERE Estatura > "1.87 m"');
    return row
}

export async function getTaller(){
    const [row] = await pool.query('SELECT * FROM jugadores WHERE "Estatura " BETWEEN "1.88 m" AND "1.99 m"');
    return row;
}
export async function getProm() {
    const [row] = await pool.query('SELECT * FROM jugadores WHERE Peso BETWEEN "75 KG " AND "80 KG"');
    return row;
}