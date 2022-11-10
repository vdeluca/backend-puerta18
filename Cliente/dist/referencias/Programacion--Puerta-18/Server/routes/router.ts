import { Router, Request, Response, request, response } from "express";
import { Socie } from "../models/socie.model";
export const router = Router();
let socies: Array<Socie> = [
    {
        nombre: 'Nahuel',
        apellido: 'Heredia',
        nick: "N4hu3l",
        edad: 22,
    },

    {
        nombre: 'Irina',
        apellido: 'Davico',
        nick: 'Ir1n4',
        edad: 21,
    },

    {
        nombre: 'John',
        apellido: 'Maza',
        nick: 'J0hny',
        edad: 20,
    }

];

router.get('/socies', (req: Request, res: Response) => {

    res.json({
        ok: true,
        socies: socies
    });     
});                    

router.get('/socie/:nick', (req: Request, res: Response) => {
    let ficha:Socie= {nombre: "", apellido: "", nick:"", edad:0};

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