import "reflect-metadata"
import { DataSource } from "typeorm"
import { User, Profile, CheckIn, CheckOut } from "../models/dbmodels";

export const SERVER_PORT = Number(process.env.PORT) || 5000;

export const AppDataSource = new DataSource({
    type: "mariadb",
    host: "localhost",
    port: 3306,
    username: "root",
    password: "notSecureChangeMe",
    database: "puerta",
    synchronize: true,
    logging: false,
    entities: [
        User,
        Profile,
        CheckIn,
        CheckOut
    ],
    migrations: [],
    subscribers: [],
})
