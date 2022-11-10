import {Servidor} from "./classes/server";
import { router } from "./routes/router";
import cors from "cors";
import bodyParser from "body-parser";

let server = new Servidor();

server.app.use(bodyParser.urlencoded({
    extended:true
}));
server.app.use(bodyParser.json());

server.app.use(cors({origin:true, credentials:true}));
// Credenciales de seguridad

server.app.use('/', router)

server.start( () => {
    console.log("servidor corriendo en " + server.port);
    
});

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               

