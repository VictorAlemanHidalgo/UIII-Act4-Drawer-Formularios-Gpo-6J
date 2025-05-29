import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text("Victor Aleman"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 29, 189, 90),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: new IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: const Color.fromARGB(255, 30, 176, 233)),
              accountName: Text("Victor Aleman No. 1123"),
              accountEmail: Text("victoraleman.hidalgo@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  radius: 130,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                  radius: 120,
                  backgroundImage: NetworkImage(
                    'https://raw.githubusercontent.com/VictorAlemanHidalgo/Imagenes-Negocio-VAH/main/avatar.png', 
                  ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.home, color: Colors.pink),
                title: Text("Pagina Inicio"),
              ),
            ),
          ],
        ),
      ),
     
    );
  }
}