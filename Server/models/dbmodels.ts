import { type } from "os";
import { Entity, PrimaryGeneratedColumn, Column,
        OneToMany, OneToOne, ManyToOne, JoinColumn } from "typeorm";

    
@Entity()
export class Profile {
    @PrimaryGeneratedColumn('uuid')
    id!: number;

    @Column()
    brithday!: Date;

    @Column()
    address!: string;

    @Column()
    dni!: string;

    @Column()
    cellphone!: string;
}

@Entity()
export class User {
    @PrimaryGeneratedColumn('uuid')
    id!: number;

    @Column({unique:true})
    fullName!: string;

    @OneToOne(() => Profile)
    @JoinColumn()
    profile!: Profile;
}

@Entity()
export class CheckIn {
    @PrimaryGeneratedColumn("uuid")
    id!: number;

    @ManyToOne((type)=> User)
    @JoinColumn()
    user!: User;
}

@Entity()
export class CheckOut {
    @PrimaryGeneratedColumn("uuid")
    id!: number;

    @ManyToOne((type)=> User)
    @JoinColumn()
    user!: User;
}

