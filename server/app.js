import express from "express";
import cors from "cors";
import { PORT } from "./config.js";
import { 
    getJugadores, 
    getArgentinos, 
    getAlto, 
    getProm 
    } from "./database.js";

const app = express();
app.use(express.json());
app.use(cors());

app.get('/todos', async (req, res) => {
    try {
        const respuesta = await getJugadores();
        console.log(respuesta); // Verifica la respuesta
        res.status(200).send(respuesta);
    } catch (error) {
        console.error(error);
        res.status(500).send({ error: 'Hubo un problema al intentar obtener los jugadores.' });
    }
});

app.get('/argentinos', async (req, res) => {
    const respuesta = await getArgentinos();
    res.status(200).send(respuesta)
})

app.get('/altura', async (req, res) => {
    const respuesta = await getTaller();
    res.status(200).send(respuesta)
})

app.get('/peso', async (req, res) => {
    const respuesta = await getProm();
    res.status(200).send(respuesta)
})

app.get('/alto', async (req, res) => 
{
    const respuesta = await getAlto();
    res.status(200).send(respuesta);
})

app.listen(PORT, ()=>{
    console.log('El servidor esta corriendo en el puerto '+ PORT);
});