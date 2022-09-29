import { Router, Request, Response, request, response } from "express";
// Models
import { Socie } from "../models/socie.model";
import { Curso } from "../models/curso.model";

// Data
import { socies } from "../data/socies.data";
import { cursos } from "../data/cursos.data";
import { docentes } from "../data/docentes.data";
import { cursosPorDocente } from "../models/cursosxdocentes.model";



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
    res.json({
        ok:true,
        cursos: cursos
    });
});

router.get('/socie/:nick', (req: Request, res: Response) => {
    let ficha:Socie= {nombre: "", apellido: "", nick:"", nacimiento:0};
    let flag:boolean=false;

    socies.forEach(socie => {
        if (socie.nick === req.params.nick){
            ficha = socie;
            flag=true;
        }
    });
    res.json({
        ok: flag,
        socie: ficha
    });
});


/**
 * [TODO]: Traer Docente por nick
 */
router.get('docente/:nick', (req:Request, res: Response) => {

});


router.get('/rickandmorty', (req:Request, res:Response) => {

});


function agregarCurso(fuente: Curso): cursosPorDocente{
    if (fuente.profesor){
        return {nombre: fuente.profesor.nombre, id_docente: fuente.profesor.id, cantidad:1 }
    }
    else {
        return {nombre: "", id_docente: -1, cantidad:1 }
    }
}

function acumularCurso(fuente: Array <cursosPorDocente>, id_docente:number){
    fuente.forEach(docente => {
        if (docente.id_docente == id_docente){
            docente.cantidad += 1;
        }
    });
}

router.get('/cursosxdocente', (req: Request, res:Response) => {
    let resp: Array<cursosPorDocente> =[];

    // Recorro cada uno de los cursos
    cursos.forEach(curso =>{
        // Asumo que no este curso tiene un docente que no está repetido
        let repetido = false;
        // Variable temporal para guardar el nombre del docente
        let tmp_nombreDocente: string = "";
        // Variable temporal para guardar el id del docente
        let tmp_idDocente: number = -1;
        // Recorro la respuesta para ver si ya la escribí al docente en el array
        resp.forEach(docente=>{
            if (docente.id_docente === curso.profesor?.id){
                // Establezco flag
                repetido = true;
                // Guardo en variable temporal
                tmp_nombreDocente = docente.nombre;
                // Guardo en variable temporal
                tmp_idDocente = docente.id_docente;
            }
        });
        // Si está repetido incremento, sino agrego
        if (!repetido) {
            if (curso.profesor){
                // If narrowing
                resp.push(agregarCurso(curso));
            }
        }
        else {
            acumularCurso(resp, tmp_idDocente);
        }

        res.json({
            ok: true,
            data: resp
        })


    });
});