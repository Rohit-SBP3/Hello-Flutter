import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hello_flutter/uihelper/util.dart';
import 'package:hello_flutter/widgets/rounded_btn.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: 'Schyler',color: Colors.lightGreen),
          bodyLarge: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: 'Schyler',color: Colors.pink),
          displayMedium: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)
        ),
      ),
      home: const MyHomePage(title: 'Flutter UI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var name = ['Raman','Suman','Ramesh','Suresh','Akash','Prakash','Vikas','Amar','Akbar','Anthony'];
  var email = TextEditingController();
  var pType = TextEditingController();
  var time = DateTime.now();
  var color = [Colors.purpleAccent,Colors.yellow,Colors.pinkAccent,Colors.blueGrey,Colors.red,Colors.blue,Colors.brown,Colors.deepOrange];

  callBack(){
    print('Clicked!');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(

      )


       // ConstrainedBox
      /*ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 400,
          maxHeight: 200,
          minWidth: 200,
          minHeight: 100,
        ),
        child: ElevatedButton( onPressed: (){

        }, child: Text('Click')
        ),
      )*/

      // ConstrainedBox..................
      /*ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 200,
          maxHeight: 100,
        ),
        child: Text("Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World!",
        style: TextStyle(fontSize: 21),
        overflow: TextOverflow.fade,
        ),
      )*/

      // Positioned Widget............
      /*Container(
        //width: double.infinity,
        // height: double.infinity,
        width: 300,
        height: 200,
        color : Colors.blueGrey,
        child: Stack(
          children: [
            Positioned(
              bottom: 41,
              right: 41,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.white,
              )
            )
          ],
        ),
      )*/

       // Icons in flutter.................
      /*// font awesome flutter
      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_business_rounded,size: 50,color: Colors.orange),
            SizedBox(width: 11,),
            FaIcon(FontAwesomeIcons.accessibleIcon,color: Colors.green,size: 50,)
          ],
        ),
      )*/

       // Icon...........
      /*Center(child: Icon(Icons.add_business_rounded,size: 50,color: Colors.orange))*/

      // RichText............
      /*RichText(
        text: TextSpan(style: TextStyle(color: Colors.grey, fontSize: 21),
            children: <TextSpan>[
            TextSpan(text: 'Hello '),
            TextSpan(text: 'World! ',style: TextStyle(fontSize: 34,color: Colors.blue,fontWeight: FontWeight.bold)),
            TextSpan(text: 'Welcome to '),
            TextSpan(text: 'Flutter ',style: TextStyle(fontSize: 43,fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent))
          ]
        ),
      )*/

      // SizedBox...............
      /*Wrap(
        direction: Axis.vertical,
        children: [
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(onPressed: (){

            },child: Text('Click'),
            ),
          ),

          SizedBox(height: 10,),

          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(onPressed: (){

            },child: Text('Click'),
            ),
          )

        ],
      )*/


       // ConstrainedBox
      /*ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 100,
          minHeight: 40,
          maxHeight: 200,
          maxWidth: 400
        ),
        child: SizedBox.shrink(
          child: ElevatedButton(onPressed: (){

          },child: Text('Click'),
          ),
        ),
      )*/


       // Wrap widgets...........
      /*Container(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          //direction: Axis.vertical,
          direction: Axis.horizontal,
          //alignment: WrapAlignment.center,
          //alignment: WrapAlignment.spaceEvenly,
          alignment: WrapAlignment.spaceBetween,
          spacing: 11,
          runSpacing: 11,
          children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.pink,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.lightGreen,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.deepPurple,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blueGrey,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                )
        ]),
      )*/


       // Custom Buttons
      /*Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 160,
            height: 60,
            child: RoundedButton(
              btnName: 'Login',
              icon: Icon(Icons.lock),
              callback: (){
                print('Logged in!!');
              },
              textStyle: mTextStyle25(),
            ),
          ),
          Container(height: 11,),
          Container(
            width: 160,
            height: 60,
            child: RoundedButton(
              btnName: 'Login',
              icon: Icon(Icons.lock),
              callback: (){
                print('Logged in!!');
              },
              textStyle: mTextStyle15(),
              bgColor: Colors.pink,
            ),
          ),
        ],
      )*/

       // Stack Widget......
      /*Container(
        width: 300,
        height: 300,
        child: Stack(
          children:[
            Container(
              width: 200,
              height: 200,
              color: Colors.blueGrey,
            ),
            Positioned(
              left: 21,
              top: 21,
              right: 21,
              bottom: 21,
              child: Container(
                width: 160,
                height: 160,
                color: Colors.blue,
              ),
            )
          ]
        ),
      )*/

       // Splitting of widgets into modules...
      /*Container(
        child: Column(
          children: [
            statusBar(),
            contactBox(),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
                child: ListView.builder(itemBuilder: (context,index) =>
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Rohit',style: mTextStyle25(),)),
                      ),
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.orange,
                      ),
                    ),
                  ), itemCount: 10,scrollDirection: Axis.horizontal),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.cyan,
                child: GridView.count(crossAxisCount: 1,
                  //crossAxisSpacing: 11,
                  mainAxisSpacing: 11,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(color: color[0]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(color: color[1]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(color: color[2]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(color: color[3]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(color: color[4]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(color: color[5]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(color: color[6]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(color: color[7]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )*/

      // GridView.builder...........
      /*GridView.builder(itemBuilder: (context,index){
        return Container(color: color[index]);
      },itemCount: color.length, gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11
      ),)*/

      // GridView.extent............
      /*Container(
        height: 400,
        child: GridView.extent(maxCrossAxisExtent: 200,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
          children: [
            Container(color: color[0]),
            Container(color: color[1]),
            Container(color: color[2]),
            Container(color: color[3]),
            Container(color: color[4]),
            Container(color: color[5]),
            Container(color: color[6]),
            Container(color: color[7]),
          ],
        ),
      )*/

      // GridView.count
      /*Container(
        width: 400,
        child: GridView.count(crossAxisCount: 3,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
          children: [
            Container(color: color[0]),
            Container(color: color[1]),
            Container(color: color[2]),
            Container(color: color[3]),
            Container(color: color[4]),
            Container(color: color[5]),
            Container(color: color[6]),
            Container(color: color[7]),
          ],
          *//*children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: color[0]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: color[1]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: color[2]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: color[3]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: color[4]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: color[5]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: color[6]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: color[7]),
            ),
          ],*//*),
      )*/

      // callBack()...........
      /*Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello World!',style: mTextStyle25(),),
            ElevatedButton(onPressed: callBack, child: Text('Click Me!',style: mTextStyle25(),))
          ],
        ),
      )*/

      // Date Picker and Time Picker..........async,await....
      /*Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Select Date',style: mTextStyle25()),
            ElevatedButton(onPressed: () async {
              //var datePicked = showDatePicker(
              DateTime? datePicked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2025));

              if(datePicked != null){
                print('Date Selected: ${datePicked.day}-${datePicked.month}');
              }

            }, child: Text('Show',style: mTextStyle15(),)),
            ElevatedButton(onPressed: () async {
              //var pickedTime = showTimePicker(
              TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.input
              );

              if(pickedTime != null){
                print('Time Selected: ${pickedTime.hour}-${pickedTime.minute}');
              }

            }, child: Text('Select Time'))
          ],
        ),
      ),*/


      // Current Date and Time..........intl,DateTime.now()
      /*Container(
        width: 200,
        height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Hms,jms,yMMMMd,yMMMM
              //Text('Current Time: ${time.hour}:${time.minute}:${time.second}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text('Current Time: ${DateFormat('yMMMM').format(time)}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ElevatedButton(onPressed: (){
                setState(() {
                });
              }, child: Text('Current Time'))
            ],
          )
      )*/

      // TextField..........
      /*Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                //enabled: false,
                controller: email,
                decoration: InputDecoration(
                  hintText: 'Username',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Colors.pink,width: 2
                    )
                  ),
                  *//*disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Colors.amber,width: 2
                    )
                  ),*//*
                  //suffixText: 'Username',
                  prefixIcon: Icon(Icons.email,color: Colors.lightGreen,),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Colors.yellow,width: 2
                    )
                  ),
                ),
              ),
              Container(height: 18,),
              TextField(
                controller: pType,
                obscureText: true,
                obscuringCharacter: '%',
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.pink
                        )
                    ),
                    prefixIcon: Icon(Icons.password,color: Colors.purpleAccent,),
                    //suffixText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye,color: Colors.purpleAccent,), onPressed: () {
                    },
                    )
                ),
              ),
              Container(height: 18,),
              ElevatedButton(onPressed: (){
                String uEmail = email.text.toString();
                String uPass = pType.text;
                print('Email: $uEmail,Password: $uPass');
              }, child: Text('Login',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),))
            ],
          ),
        ),
      )*/

       // Card for Elevated Look........
      /*Card(
        margin: const EdgeInsets.all(10.0),
        elevation: 20,
        shadowColor: Colors.pink,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Hello Rohit Singh!',style: TextStyle(fontSize: 25),),
        ),
      )*/

       // Text Theme Using Class and Functions.......
      /*Column(
        children: [
          Text('Hello World!',style: mTextStyle25(),),
          Text('Hello World!',style: mTextStyle15(),),
          Text('Hello World!',style: mTextStyle25C(Colors.pink,FontWeight.bold))
        ],
      )*/

       //Text Theme  using theme......
      /*Column(
        children: [
          Text('Hello World!',style: Theme.of(context).textTheme.displayLarge),
          Text('Hello World!',style: Theme.of(context).textTheme.displayMedium),
          Text('Hello World!',style: Theme.of(context).textTheme.bodyLarge),
          Text('Hello World!',style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.blue))
        ],
      )*/


      // Font....................
      /*Text('Hello World My Name is Rohit Singh',
        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.lightGreen,fontFamily: 'Schyler'),)*/

      // CircleAvatar...............
      /*Center(
          child: CircleAvatar(
            child: Container(
              width: 100,
              height: 100,
              child: Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/th.jpg')
                  ),
                  Text('Angry Cat!!',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black),),
                ],
              ),
            ),
            backgroundColor: Colors.blueGrey,
            maxRadius: 70,

            //backgroundImage: Image.asset('assets/images/th.jpg'),
            //minRadius: 50,
            //maxRadius: 100,
          ),
      )*/

       // ListTile..........
      /*ListView.separated(itemBuilder: (context,index){
        return ListTile(
          leading: Text('${index+1}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
          title: Text(name[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.lightGreen),),
          subtitle: Text('Number',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.pink),),
          trailing: Icon(Icons.add),
        );
      }, separatorBuilder: (context,index){
        return Divider(height: 100, thickness: 2,);
      }, itemCount: name.length
      )*/

      //Margin and Padding...................
      /*Container(
        color: Colors.black,
        margin: EdgeInsets.all(11),
        child: Padding(
          //padding: EdgeInsets.only(top:11,left:34),
          padding: EdgeInsets.all(11),
          child: Text('Hello World!',style: TextStyle(fontSize: 25,color: Colors.green),)
        ),
      )*/

        //Expanded,flex................
      /*Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 50,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 50,
              height: 100,
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 50,
              height: 100,
              color: Colors.blueGrey,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 50,
              height: 100,
              color: Colors.green,
            ),
          )
        ],
      )*/

        //Container Decoration..........
      /*Container(
        *//*width: 100,
        height: 100,
        One will Adapt the dimension of other until you wrap in some widget....
        *//*
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade500,
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            //color: Colors.blueGrey, Please mention in decoration..
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              //borderRadius: BorderRadius.circular(100),
              //borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50))
              //borderRadius: BorderRadius.all(Radius.circular(25)), // Either shape or borderRadius....
              border: Border.all(
                width: 4,
                color: Colors.black
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 11,
                  color: Colors.black12,
                  spreadRadius: 15
                )
              ],
              shape: BoxShape.circle
            ),
          ),
        )
      )*/

        //ListView.separated...................
      /*ListView.separated(itemBuilder: (context,index){
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(name[index],style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500,color: Colors.red),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(name[index],style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.green),),
                  ),
              ],
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(name[index],style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500,color: Colors.blue),),
            )
          ],
        );
      }, separatorBuilder: (context,index){
        return Divider(height: 100, thickness: 4, color: Colors.pink,);
      },
         itemCount: name.length)*/

        //ListView.Builder.............
      /*ListView.builder(itemBuilder: (context, index){
        return Text(name[index],style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500,color: Colors.pink),);
      },
        itemCount: name.length,
        itemExtent: 100,
        //scrollDirection: Axis.horizontal,
        //reverse: true,
      )*/

        //ListView.................
      /*ListView(
        //scrollDirection: Axis.horizontal,
        //reverse: true,
        children: [
          Padding(padding: const EdgeInsets.all(8.0),child: Text('One',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500))),
          Padding(padding: const EdgeInsets.all(8.0),child: Text('Two',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500))),
          Padding(padding: const EdgeInsets.all(8.0),child: Text('Three',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500))),
          Padding(padding: const EdgeInsets.all(8.0),child: Text('Four',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500))),
          Padding(padding: const EdgeInsets.all(8.0),child: Text('Five',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500))),
          Padding(padding: const EdgeInsets.all(8.0),child: Text('Six',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500))),
          Padding(padding: const EdgeInsets.all(8.0),child: Text('Seven',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500))),
          Padding(padding: const EdgeInsets.all(8.0),child: Text('Eight',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500))),
          Padding(padding: const EdgeInsets.all(8.0),child: Text('Nine',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500))),
          Padding(padding: const EdgeInsets.all(8.0),child: Text('Ten',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500))),
        ],
      )*/

       // SingleChildrenScrollView, Row, Column.............
      /*Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [ Padding(padding: const EdgeInsets.all(8.0),child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(11.0),
                    height: 200,
                    width: 200,
                    color: Colors.amberAccent,
                  ),
                  Container(
                    margin: EdgeInsets.all(11.0),
                    height: 200,
                    width: 200,
                    color: Colors.lightGreen,
                  ),
                  Container(
                    margin: EdgeInsets.all(11.0),
                    height: 200,
                    width: 200,
                    color: Colors.deepOrange,
                  ),
                  Container(
                    margin: EdgeInsets.all(11.0),
                    height: 200,
                    width: 200,
                    color: Colors.lightBlue,
                  ),
                  Container(
                    margin: EdgeInsets.all(11.0),
                    height: 200,
                    width: 200,
                    color: Colors.purpleAccent,
                  ),
                  Container(
                    margin: EdgeInsets.all(11.0),
                    height: 200,
                    width: 200,
                    color: Colors.orange,
                  ),
                  Container(
                    margin: EdgeInsets.all(11.0),
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  )
                ],
              ),
            )),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                width: 200,
                color: Colors.pink,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                width: 200,
                color: Colors.lightGreen,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                width: 200,
                color: Colors.deepOrange,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                width: 200,
                color: Colors.lightBlue,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                width: 200,
                color: Colors.purpleAccent,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                width: 200,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                width: 200,
                color: Colors.red,
              )
            ],
          )

        ),
      )*/

      // Row and Columns..............
      /*Container(
        width: 600,
        height: 600,
        color: Colors.amber,
        child: Column(
          //spaceEvenly, spaceBetween, spaceAround, start
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //stretch, center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:*//*<Text><Widget>*//* [
            Text('Apple',style: TextStyle(fontSize: 25),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text('Banana',style: TextStyle(fontSize: 25),),
                Text('Canana',style: TextStyle(fontSize: 25),),
                Text('Danana',style: TextStyle(fontSize: 25),),
                Text('Eanana',style: TextStyle(fontSize: 25),),
              ],
            ),
            Text('Guava',style: TextStyle(fontSize: 25),),
            Text('Mango',style: TextStyle(fontSize: 25),),
            Text('Papaya',style: TextStyle(fontSize: 25),),
            Text('Grapes',style: TextStyle(fontSize: 25),),
            Text('Orange',style: TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: (){print('I am Clicked Yeehhh!');},
              child: Text('Click Me!',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange),),)
          ],
        )
      )*/


      //Image Tutorial............
      /*Center(
        child: InkWell(
          onTap: (){print("Image tapped!");},
          child: Container(
            width: 100,
            height: 100,
            color: Colors.amber,
            child: Image.asset('assets/images/th.jpg'),
          )
        )
      )*/



      //InkWell, Container, Text, Style, Buttons(3).......
      /*Center(
        child: InkWell(
          onTap: (){
            print("Hello Contto!");
          },
          onLongPress: (){
            print("Long Pressed Contto!");
          }, 
          child:Container(
            width: 400,
            height: 400,
            color: Colors.limeAccent,
            child: Center( 
              child: TextButton(onPressed: (){print("Hello Motto!");},child:Text('Press Me!'),),
              //ElevatedButton OutlinedButton
            )
          ),
        )
      ),*/
    );
  }
}

class statusBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.black38,
        child: ListView.builder(itemBuilder: (context,index){
          return SizedBox(
            width: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.pink,
              ),
            ),
          );
        },itemCount: 10,scrollDirection: Axis.horizontal,),
      ),
    );
  }
}

class contactBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
          color: Colors.blue,
          child: ListView.builder(itemBuilder: (context,index) =>
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.green,),
                  title: Text('Name',style: mTextStyle25(),),
                  subtitle: Text('Phone no.',style: mTextStyle15(),),
                  trailing: Icon(Icons.delete),
                ),
              ),itemCount: 10,
          )
      ),
    );
  }

}
