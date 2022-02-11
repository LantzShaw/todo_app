import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String content;
  final String description;

  // const MyCard(
  //     {Key? key,
  //     required this.title,
  //     this.content = '',
  //     required this.description})
  //     : super(key: key);

  MyCard(
      {Key? key,
      required this.title,
      this.content = '',
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 200.0,
        decoration: BoxDecoration(
            // color: Color(0xFFFF4400),
            // borderRadius: BorderRadius.circular(10.0),
            // borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 5.0,
                color: Color(0xFFDDDDDD).withOpacity(0.9),
              ),
            ],
            gradient: LinearGradient(colors: [
              // Color(0xFFf0f5ff).withOpacity(1),
              // Color(0xFFFFFFFF).withOpacity(.5)
              Color(0xFFfff1b8).withOpacity(1),
              Color(0xFFffe7ba).withOpacity(1)
            ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0))),
        child: Container(
          // padding: EdgeInsets.all(10.0),
          padding: EdgeInsets.only(top: 10.0, left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              SizedBox(height: 20.0),
              Text(content,
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5C7CEF),
                  )),
              SizedBox(height: 20.0),
              Text(description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 20.0,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              Container(
                padding: EdgeInsets.only(right: 10.0),
                height: 50.0,
                // alignment: Alignment.bottomRight,
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.timer, color: Colors.black.withOpacity(.6)),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('1hr20min40s',
                        style: TextStyle(
                          color: Colors.black.withOpacity(.6),
                        )),
                    Spacer(),
                    Text('Details',
                        style: TextStyle(
                          color: Colors.black.withOpacity(.5),
                        )),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16.0,
                      color: Colors.black.withOpacity(.5),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
