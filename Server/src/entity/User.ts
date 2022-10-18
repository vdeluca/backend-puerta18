import { Entity, PrimaryGeneratedColumn, Column } from "typeorm"

@Entity()
export class User {

    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    firstName: string;

    @Column()
    lastName: string;

    @Column()
    brithday: Date;

    @Column()
    address: string;

    @Column()
    dni: string;

    @Column()
    cellphone: string;


    constructor(){
        this.id=0;
        this.firstName = "";
        this.brithday = new Date;
        this.lastName = "";
        this.dni = "";
        this.cellphone="";
        this.address="";
    }
}
