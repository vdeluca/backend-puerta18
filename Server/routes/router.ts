import { Router, Request, Response, request, response } from "express";
import { Socie } from "../models/socie.model";
import { Curso } from "../models/curso.model";
import {socies} from "../data/socies.data";

export const router = Router();


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
            "color": "brown",
            "horas_semanales": 3,
            "capacidad": 23
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

router.get('/rickandmorty', (req:Request, res:Response) => {

})