import { Router, Request, Response, request, response } from "express";
import { Socie, Curso } from "../models/socie.model";
export const router = Router();
let socies: Array<Socie> = [
    {
        nombre: 'Nahuel',
        apellido: 'Heredia',
        nick: "N4hu3l",
        nacimiento: 1990
    },

    {
        nombre: 'Irina',
        apellido: 'Davico',
        nick: 'Ir1n4',
        nacimiento: 2000,
    },

    {
        nombre: 'John',
        apellido: 'Maza',
        nick: 'J0hny',
        nacimiento: 2001,
    }

];

router.get('/socies', (req: Request, res: Response) => {
    let socie_resp: Array <{nombre: string, apellido: string, nick:string, edad:number}> = [];
    let current_year = new Date().getFullYear();
    socies.forEach( socie => {

        let edad = current_year - socie.nacimiento;
        socie_resp.push({
            nombre: socie.nombre,
            apellido: socie.apellido,
            nick: socie.nick,
            edad: edad
        }
        )
    });

    res.json({
        ok: true,
        socies: socie_resp
    });     
});      

router.get('/cursos', (req: Request, res: Response) => {

    let curso:Array<Curso> = [
        {
            "titulo": "Diseño de imagen y sonido",
            "color": "brown"
        }
    ]

});

router.get('/socie/:nick', (req: Request, res: Response) => {
    let ficha:Socie= {nombre: "", apellido: "", nick:"", nacimiento:0};

    socies.forEach(socie => {
        if (socie.nick === req.params.nick){
            ficha = socie;
        }
    });
    res.json({
        ok: true,
        socie: ficha
    });
});