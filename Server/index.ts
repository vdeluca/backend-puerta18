import {Servidor} from "./classes/server";
import { router } from "./routes/router";
import cors from "cors";
import bodyParser from "body-parser";
import {AppDataSource} from './global/environment'
import { User } from "./models/dbmodels";

let server = new Servidor();

server.app.use(bodyParser.urlencoded({
    extended:true
}));
server.app.use(bodyParser.json());

server.app.use(cors({origin:true, credentials:true}));
// Credenciales de seguridad

server.app.use('/', router);

AppDataSource.initialize()
    .then(async ()=>{
    })
    .catch((error)=>{
        console.log(error);
    });

server.start( () => {
    console.log("servidor corriendo en " + server.port);
    
});

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               

