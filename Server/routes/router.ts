import { Router, Request, Response } from "express";

// Data
import { socies, name_socies } from "../data/socies.data";

// ORM Data
import { AppDataSource } from "../global/environment";

import { socieController } from "../controllers/sociesController"; 
import { User } from "../models/dbmodels";

export const router = Router();


/**
 * CRUD Socie
 */
router.post('/socie', (req: Request, res: Response) => {
    let sc = new socieController();
    sc.addSocie(req, res);
});


/**
 * API de alta de nuevo socie
 * Toma los datos de un formulario a través de req
 * Valida
 * Crea nuevo socie
 * Devuelve respuesta
 */
router.post('/new-socie', async (req: Request, res:Response) => {
    // Valido los datos y los cargo en la variable de arriba
    //console.log(req.body);
    if (req.body.fullName != ""){
        const user = await AppDataSource
                .createQueryBuilder()
                .insert()
                .into(User)
                .values([
                    { fullName: req.body.fullName }
                ])
                .execute();
        
        
        res.json({
            ok:true,
            user:user
        })
    }
});

router.get('/socies-name', (req: Request, res: Response) =>{
/**
 * return data
 */
    res.json({
        ok: true,
        socies: name_socies
    })

});

router.get('/users', 
    async (req: Request, res: Response) => {
        const users = await AppDataSource
            .getRepository(User)
            .createQueryBuilder("user")
            .getMany();

        res.json({
            ok:true,
            usuarios: users
        });
    }
);
