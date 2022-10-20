import { Router, Request, Response, request, response } from "express";
// Models
import { Socie } from "../models/socie.model";
import { Curso } from "../models/curso.model";

// Data
import { socies } from "../data/socies.data";
import { cursos } from "../data/cursos.data";
import { docentes } from "../data/docentes.data";
import { cursosPorDocente } from "../models/cursosxdocentes.model";

// ORM Data
import { AppDataSource } from "../src/data-source";
import { User } from "../src/entity/User";

export const router = Router();

/**
 * API de alta de nuevo socie
 * Toma los datos de un formulario a través de req
 * Valida
 * Crea nuevo socie
 * Devuelve respuesta
 */
router.get('/new-socie', (req: Request, res:Response) => {

});


router.get('/socies', (req: Request, res: Response) => {
    let socie_resp: Array <Socie> = [];
    let current_year = new Date().getFullYear();
    socies.forEach( socie => {

        let edad = current_year - socie.brithday.getFullYear();
        socie_resp.push({
            firstName: socie.firstName,
            lastName: socie.lastName,
            brithday:new Date(), 
            address: "", 
            dni: "", 
            cellphone: ""
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
    let ficha:Socie= {firstName: "", lastName: "", brithday:new Date(), address: "", dni: "", cellphone: ""};
    let flag:boolean=false;

    socies.forEach(socie => {
        if (socie.firstName === req.params.nick){
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


router.get('/cursosxdocente', (req: Request, res:Response) => {
    let cursosPorDocente: Array<cursosPorDocente> = [];
    docentes.forEach(docente=>{
        let cxd = cursos.filter(curso => curso.profesor==docente);
        cursosPorDocente.push({"docente":docente,"cantidad":cxd.length })
    });

    res.json({
        cursosPorDocente
    })
});