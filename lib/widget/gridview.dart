import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: const Color.fromARGB(255, 219, 206, 255),
      child: GridView.count(
        crossAxisCount: 3,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: const Color.fromARGB(255, 255, 184, 163),
            child: Center(
              child: Text(
                "ajmal",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic,
                    fontSize: 17),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 251, 242, 145),
            child: Center(
              child: Text(
                "zayan",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 17),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 159, 255, 226),
            child: Center(
              child: Text(
                "roshan",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 17),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 251, 242, 145),
            child: Center(
              child: Text(
                "zayan",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 17),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 251, 242, 145),
            child: Center(
              child: Text(
                "zayan",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 17),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 181, 174, 98),
            child: Center(
              child: Text(
                "zayan",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 17),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 231, 182, 255),
            child: Center(
              child: Text(
                "zayan",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 17),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 181, 250, 230),
            child: Center(
              child: Text(
                "zayan",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 17),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 255, 163, 163),
            child: Center(
              child: Text(
                "zayan",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 17),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 190, 218, 255),
            child: Center(
              child: Text(
                "zayan",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 17),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 255, 169, 199),
            child: Center(
              child: Text(
                "zayan",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 17),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 146, 192, 136),
            child: Center(
              child: Text(
                "zayan",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 17),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
