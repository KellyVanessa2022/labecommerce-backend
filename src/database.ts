import { TUser, TProduct, TPurchase} from "./types";

export const users : TUser[] = [
    {
        id: "1",
        email:"cliente1@gmail.com",
        password: "vsd5658", 
    },
    {
        id: "2",
        email:"cliente2@gmail.com",
        password: "der56w89", 
    }
]
export const products : TProduct[] =[
    {
        id: "1",
        name:"tablet",
        price: 1900,
        category: "eletronico",
    },
    {
        id: "2",
        name:"roupa",
        price: 150,
        category: "loja",
    }
]
export const purchases : TPurchase[] =[
    {
        userId:"1",
    productId:"ased565wq",
    quantity:50,
    totalprice:150,
    },
    {
        userId:"2",
    productId:"slsod5689",
    quantity:40,
    totalprice:130,
    }
]