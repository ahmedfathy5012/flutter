import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app_gdg/GUI/second_scren.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _homeState();
  }
}

class _homeState extends State<Home> {


 bool i=false ;

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      drawer: Drawer(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.purple,
            ),
            body: Container(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image.asset('img/stock-photo-133673159-1500x1000.jpg'),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Image.asset(
                                'img/fgdgfg.png',
                                scale: 50,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 20,left: 65),
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 4.5,
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ahmed Fathy',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 30.0,
                    ),
                  ),
                  Text(
                    'male',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 30.0,
                    ),
                  ),
                  Text(
                    '22',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
            )),
        elevation: 12.0,

      ),
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
            child: Text('GDG Delta'),
          )),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int Position) {
        return listTileCraete();
      }),
    );
  }


  Widget listTileCraete(){
    final  wordPair = new WordPair.random();
    return ListTile(
      title: Text(
        '${wordPair.asPascalCase}',
        style: TextStyle(
          color: Colors.purple,
          fontSize: 40.0,
        ),
      ),
      subtitle: Text(
        '${wordPair.asPascalCase}',
        style: TextStyle(
          color: Colors.black54,
          fontSize: 20.0,
        ),
      ),
      leading: CircleAvatar(
        backgroundColor: Colors.purple,
        child: Text(
          wordPair.asPascalCase.substring(0, 1),
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      trailing: IconButton(
        icon: Icon(Icons.favorite),
        onPressed: (){i=true;
        debugPrint('Favorite');
        },

        color: i ?  Colors.purple : Colors.black54,
      ),
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context)=> secondScreen('${wordPair.asPascalCase}'))
        );
      },
    );
  }
  }

