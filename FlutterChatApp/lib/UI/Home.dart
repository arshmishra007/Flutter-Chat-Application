import "package:flutter/material.dart";

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    var Homeicon = Icon(
      Icons.home,
      color: Colors.grey,
    );
    var HomeButton = IconButton(icon: Homeicon, onPressed: null);

    var logo = Image.network(
        "https://www.freelogoservices.com/api/main/images/1j+ojFVDOMkX9Wytexe43D6kifGGrhZMnB...IwXs1M3EMoAJtliArhfRs9Pw+");
    var loginButton = MaterialButton(
      onPressed: () {
        Navigator.pushNamed(context, "login");
      },
      minWidth: 150,
      color: Colors.black,
      textColor: Colors.white,
      padding: EdgeInsets.all(20),
      splashColor: Colors.red,
      child: Text(
        "Login",
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
    var registerButton = MaterialButton(
      onPressed: () {
        Navigator.pushNamed(context, "reg");
      },
      minWidth: 150,
      color: Colors.black,
      textColor: Colors.white,
      padding: EdgeInsets.all(20),
      splashColor: Colors.red,
      child: Text(
        "Register",
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
    var container = Container(
      alignment: Alignment.bottomCenter,
      //margin: EdgeInsets.all(10),
      height: 320,
      width: 320,
      //padding: EdgeInsets.all(100),
      decoration: BoxDecoration(
        gradient: SweepGradient(colors: [
          Colors.pink,
          Colors.red,
          Colors.green,
          Colors.purple,
          Colors.teal
        ], stops: [
          0.8,
          0.96,
          0.74,
          0.22,
          0.85
        ], startAngle: 0.5, endAngle: 1),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(90),
            topRight: Radius.circular(90),
            bottomLeft: Radius.circular(90)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(margin: EdgeInsets.all(10), child: loginButton),
          Container(margin: EdgeInsets.all(10), child: registerButton),
        ],
      ),
    );
    var appbar = AppBar(
        leading: logo,
        title: Text("Welcome to Firechat"),
        actions: <Widget>[HomeButton],
        backgroundColor: Colors.black54);
    var myHome = Scaffold(
      appBar: appbar,
      body: Center(child: container),
      backgroundColor: Colors.black,
    );
    var design = MaterialApp(
      home: myHome,
      debugShowCheckedModeBanner: false,
    );
    return design;
  }
}
