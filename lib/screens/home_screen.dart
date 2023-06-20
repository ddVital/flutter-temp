import 'package:fast_food_app/screens/payment_screen.dart';
import 'package:flutter/material.dart';
//import '../data/database.dart';
// import '../models/restaurant_model.dart';
import '../models/pratos.dart';
import '../models/cart.dart';
//import './order_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Pratos> pratos = [
    Pratos(
      name: 'Pizza de Calabreza',
      description: 'Molho de Tomate, Mussarela e Calabreza  R\$ 30,00 ',
      img: "https://th.bing.com/th/id/R.da80f19caa20cbb9704eefeb8e648e04?rik=gxyl5shCRyRoBw&riu=http%3a%2f%2fmtnebopizzaroma.hungerrush.com%2fContent%2fImages%2fSlides%2fstill+pizza+image.jpg&ehk=6GZmAk1r524OJA13NIveOEUQmNqZmKc%2fkNfDnueB%2fd4%3d&risl=&pid=ImgRaw&r=0",
      preco: 30,
    ),
    Pratos(
      name: 'Pizza Portuguesa',
      description: 'Molho de Tomate, Mussarela, Ovo, Cebola,, Pimentão, Tomate e Presunto   R\$ 35,00',
      img: "https://th.bing.com/th/id/OIP.7w0RoGSqhDfJGY9DSkdRLQHaFj?pid=ImgDet&rs=1",
      preco: 35,
    ),
    Pratos(
      name: 'Pizza De Bacon',
      description: 'Molho de Tomate, Mussarela, e Bacon   R\$ 30,00',
      img: "https://th.bing.com/th/id/R.9cd255f80ba6a27c70c4497f7485eb37?rik=JYhKzeQM%2fw1duA&riu=http%3a%2f%2fwww.gordinhadealma.com.br%2fwp-content%2fuploads%2f2016%2f08%2fpizza-baconday.jpg&ehk=3yPTCLC8cU3gtlmv8c2D74La1KsSoV1Pwo0YTBLZZCQ%3d&risl=&pid=ImgRaw&r=0",
      preco: 30,
    ),
    Pratos(
      name: 'Pizza De 4 Queijos',
      description: 'Molho de Tomate, Mussarela, Gorgonzola, Parmesão e Catupiry   R\$ 30,00',
      img: "https://th.bing.com/th/id/OIP.9yKD8jUAgbI1ZX-PRDhDnAHaE8?pid=ImgDet&rs=1",
      preco: 34,
    ),
    Pratos(
      name: 'Pizza De Rucula',
      description: 'Molho de Tomate, Mussarela, Rucula e Tomate Seco',
      img: "https://th.bing.com/th/id/R.a138e6c293fe233a25751b844b4e63dc?rik=bsOCP5zxh8ZMtA&pid=ImgRaw&r=0",
      preco: 30,
    ),
    Pratos(
      name: 'Pizza De Frango com Catupiry',
      description: 'Molho de Tomate, Mussarela, Frango e Catupiry   R\$ 30,00',
      img: "https://th.bing.com/th/id/R.073ba426e6bcc63971fda800df797dc7?rik=p%2fhzZqlvWqVKVA&pid=ImgRaw&r=0",
      preco: 30,
    ),
    Pratos(
      name: 'Combinado de Salmão',
      description: '8 peças de sashimi salmão, 2 niguiris de salmão, 8 peças de sashimi de Atum   R\$ 57,00',
      img: "https://th.bing.com/th/id/R.f42033cd2bac51042f4f7ee54a590f38?rik=r8YbOHQ7amIOqA&pid=ImgRaw&r=0",
      preco: 57,
    ),
    Pratos(
      name: 'Barca de Sushi',
      description: 'Barca de sushi com combinados de salmão e sashimi   R\$ 98,00',
      img: "https://th.bing.com/th/id/OIP.RRVEgqQwCtxRjAtXn5RyowHaHa?pid=ImgDet&rs=1",
      preco: 98,
    ),
    Pratos(
      name: 'Temaki Salmão',
      description: 'Temaki de Salmão com cream cheese  R\$ 23,00',
      img: "https://th.bing.com/th/id/OIP.FKnpMzE_eSZuzOH9IwSVKwHaEU?pid=ImgDet&rs=1",
      preco: 23,
    ),
    Pratos(
      name: 'Porção De Batata Frita',
      description: '500g de Batata Frita   R\$ 28,00',
      img: "https://th.bing.com/th/id/OIP.wWZcltbWyag4Pf76w5X93QHaGj?pid=ImgDet&rs=1",
      preco: 28,
    ),
    Pratos(
      name: 'Porção De Frango',
      description: '300g De Frango Frito   R\$ 30,00',
      img: "https://th.bing.com/th/id/OIP.G-pHMpCCA4C4l9FcA763YQHaHa?pid=ImgDet&rs=1",
      preco: 30,
    ),
     Pratos(
      name: 'Porção de Calabreza',
      description: '300g De Calabreza Frita com Cebola   R\$ 30,00',
      img: "https://th.bing.com/th/id/OIP.PfOmlbGFTRDhY0xGAONo9wHaE8?pid=ImgDet&rs=1",
      preco: 30,
    ),
    Pratos(
      name: 'Coca Cola',
      description: 'Coca Cola 350mL   R\$ 5,00',
      img: "https://th.bing.com/th/id/OIP.QRSMYfbckiJx8KDG5NzrMgHaHa?pid=ImgDet&rs=1",
      preco: 5,
    ),
    Pratos(
      name: 'Coca Cola Zero',
      description: 'Coca Cola Zero 350mL   R\$ 5,00',
      img: "https://th.bing.com/th/id/OIP.kjY9FQgMQtQ6uw5mdxU2CgHaHa?pid=ImgDet&rs=1",
      preco: 5,
    ),
    Pratos(
      name: 'Fanta Uva',
      description: 'Fanta Uva 350mL   R\$ 5,00',
      img: "https://th.bing.com/th/id/OIP.HkPDYP1vYh_AtHlWECN96QHaHa?pid=ImgDet&rs=1",
      preco: 5,
    ),
    Pratos(
      name: 'Fanta Laranja',
      description: 'Fanta Uva 350mL   R\$ 5,00',
      img: "https://th.bing.com/th/id/R.6f2e88e8cf6cce0bb9331b60ed590d6c?rik=g4Ksjf9uhdLGoQ&riu=http%3a%2f%2fmaisconectado.com%2fcecotimc%2fpainel%2fimagens%2f1548848187-16224_PEFRI_FANTA_LARANJA_LATA_350_ML.jpg&ehk=jYbraVYc3DG7l%2fINSKvMoCo9nNX7WezzoSiddEiuQUQ%3d&risl=&pid=ImgRaw&r=0",
      preco: 5,
    ),
    Pratos(
      name: 'Água sem Gás',
      description: 'Água 500mL   R\$ 3,00',
      img: "https://th.bing.com/th/id/OIP.I2U_agorm4CENEKOyy_vtQAAAA?pid=ImgDet&w=400&h=400&rs=1",
      preco: 3,
    ),
    Pratos(
      name: 'Água com Gás',
      description: 'Água com Gás 500mL   R\$ 3,00',
      img: "https://th.bing.com/th/id/OIP.I2U_agorm4CENEKOyy_vtQAAAA?pid=ImgDet&w=400&h=400&rs=1",
      preco: 3,
    ),
   
     
    
  ];

  final List<Cart> carrinho = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FastFood',
      home: HomePage(pratos: pratos, carrinho: carrinho,),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Pratos> pratos;
  final List<Cart> carrinho;

  const HomePage({required this.pratos, required this.carrinho});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FastFoodOrder"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView.builder(
        itemCount: pratos.length,
        itemBuilder: (context, index) {
          final prato = pratos[index];
          final name = prato.name;
          int precoTotal = 0;
          return ListTile(
            leading: Image.network(prato.img, cacheWidth: 100, cacheHeight: 100,),
            title: Text(name),
            subtitle: Text(prato.description),
            trailing: Container(
                width: 100,
                child: Row(children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      if (precoTotal > 0) {
                        precoTotal -= pratos[index].preco;
                      }
                      print(index);

                      carrinho.removeWhere((item) => item.id == index);
                      carrinho.forEach((element) => print(element.produtos));
                      print(carrinho.length);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      precoTotal = pratos[index].preco;
                      carrinho.add(Cart(id: index, produtos: name, desc: prato.description, precoTotal: precoTotal));
                      carrinho.forEach((element) => print(element.produtos));
                      print(carrinho.length);
                    },
                  ),
                ])));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.payment),
        onPressed: () {
          int precoTotal = 0;
          int id = 0;
          String produtos = '';

          carrinho.forEach((element) => id = element.id);
          carrinho.forEach((element) => produtos = element.produtos);
          carrinho.forEach((element) => precoTotal += element.precoTotal);
          
          print(pratos);
          print(precoTotal);

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PaymentScreen(carrinho: carrinho, id: id, produtos: produtos, precoTotal: precoTotal),
            ),
          );
        },
      ),
    );
  }
}