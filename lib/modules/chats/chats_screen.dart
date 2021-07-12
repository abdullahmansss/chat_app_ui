import 'package:chat_app_ui/modules/chat/chat_screen.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chats',
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsetsDirectional.only(
                      start: 16.0,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        suffixIcon: Icon(
                          Icons.search,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        6.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Container(
                  height: 46.0,
                  width: 46.0,
                  child: Icon(
                    Icons.person,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      6.0,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => ChatItem(),
              separatorBuilder: (context, index) => SizedBox(
                height: 16.0,
              ),
              itemCount: 10,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Container(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        bottom: 5.0,
                      ),
                      child: Container(
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0,),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://brooklynintergroup.org/brooklyn/wp-content/uploads/2021/01/flower-729512__340-1.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        end: 5.0,
                      ),
                      child: CircleAvatar(
                        radius: 6.0,
                        backgroundColor: Colors.green,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ahmed Ali',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Yes i will be there in time',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  children: [
                    Text(
                      'Mon',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Icon(
                      Icons.check,
                      size: 16.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0,),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}