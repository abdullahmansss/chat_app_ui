import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ahmed Ali',
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 16.0,
          ),
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index)
              {
                if(index % 2 == 0)
                  return UserItem();

                return MyItem();
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 16.0,
              ),
              itemCount: 20,),
          ),
          SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'type a message ...',
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.message,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(6.0,),
                bottomStart: Radius.circular(6.0,),
                topEnd: Radius.circular(6.0,),
              ),
            ),
            child: Text(
              'Hello from other side',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ),
      ],
    );
  }
}

class MyItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(6.0,),
                bottomStart: Radius.circular(6.0,),
                topStart: Radius.circular(6.0,),
              ),
            ),
            child: Text(
              'Hello from other side',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}