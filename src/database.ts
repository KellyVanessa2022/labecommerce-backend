
import { TUser, TProduct, TPurchase, CATEGORY_PURCHASE} from "./types";

export const users : TUser[] = [
    {
        id: "1",
        email:"cliente1@gmail.com",
        password: "dsope5687e", 
    },
    {
        id: "2",
        email:"cliente2@gmail.com",
        password: "oepqw5d6e", 
    }
]
export const products : TProduct[] =[
    {
        id: "1",
        name:"tablet",
        price: 2000,
        category: CATEGORY_PURCHASE.ACCESSORIES,
    },
    {
        id: "2",
        name:"bolsas",
        price: 450,
        category: CATEGORY_PURCHASE.CLOTHES_AND_SHOES,
    },
    {
        id: "3",
        name:"teclado",
        price: 99,
        category: CATEGORY_PURCHASE.ELECTRONICS,
    },
]
export const purchases : TPurchase[] =[
    {
        userId:"1",
    productId:"tablet",
    quantity:50,
    totalPrice:180,
    },
    {
        userId:"2",
    productId:"bolsas",
    quantity:45,
    totalPrice:120,
    },
    {
        userId:"3",
    productId:"teclado",
    quantity:32,
    totalPrice:110,
    },
]

export function createUser(id:string, email:string, password: string): string{
    users.push({
        id,
        email,
        password
    })
    return("Cadastro realizado com Sucesso")
}

export function getAllUsers(): TUser[]{
    return users
}

export function createProduct(id: string, name: string, price: number, category: CATEGORY_PURCHASE): string{
    products.push({
        id,
        name,
        price,
        category
    })
    return ("Produto criado com sucesso")
}

export function acessarProducts(): TProduct[]{
    return products;
}

export function acessarProductId(id : string) : (undefined | TProduct){
    return products.find(product => product.id === id);
}

export function acessarProductsName(q : string) : TProduct[]{
    return products.filter(product => product.name.toLowerCase().includes(q.toLowerCase()));
}
    
export function createPurchase(userId : string, productId : string, quantity : number, totalPrice : number): string{
    
    purchases.push({
    userId,
    productId,
    quantity,
    totalPrice
    })
    return ("Compra realizada com sucesso");
}

export function getAllPurchasesFromUserId(userIdToSearch: string): TPurchase[]{
    return purchases.filter(purchase => purchase.userId === userIdToSearch);
}
