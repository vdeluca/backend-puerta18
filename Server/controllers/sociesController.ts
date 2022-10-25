import { Request, Response } from "express";

export class socieController {
    
    
    constructor(){
    }



    public addSocie(req: Request, res: Response) {
        return res.status(201).json({message:'Se agregó un nuevo Socie'})
    }
}