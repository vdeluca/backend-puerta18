import { Curso } from "../models/curso.model";
import * as D from './docentes.data';

export const cursos: Array<Curso> = [
    {
        titulo: "Introduccion a la programación",
        color: "blue",
        capacidad: 20,
        horas_semanales: 12,
        profesor: D.docentes[0]
    },
    {
        titulo: "Introduccion al diseño",
        color: "red",
        capacidad: 20,
        horas_semanales: 12,
        profesor: D.docentes[1]
    },
    {
        titulo: "Fotografia",
        color: "brown",
        capacidad: 10,
        horas_semanales: 12,
        profesor: D.docentes[0]
    },
];