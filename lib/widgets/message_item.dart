import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 200,
        ),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: const BoxDecoration(
          color: Color(0xFF711A75),
          borderRadius: BorderRadiusDirectional.only(
            topEnd: Radius.circular(10),
            topStart: Radius.circular(10),
            bottomEnd: Radius.circular(10),
          ),
        ),
        child: Text(
          'Hello',
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

class MyMessageItem extends StatelessWidget {
  const MyMessageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 200,
        ),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: const BoxDecoration(
          color: Color(0xFFDFDFDE),
          borderRadius: BorderRadiusDirectional.only(
            topEnd: Radius.circular(10),
            topStart: Radius.circular(10),
            bottomStart: Radius.circular(10),
          ),
        ),
        child: Text(
          'Hello',
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}

class TaskMessageItem extends StatelessWidget {
  const TaskMessageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 325,
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Task 1',
            style: Theme.of(context).textTheme.headline6,
          ),
          Row(
            children: [
              const Text('from '),
              Text(
                'Mr.Kaheled ',
                style: Theme.of(context).textTheme.headline6,
              ),
              const Text('(مدير الماليه)'),
              const Spacer(),
              const Text('9:00 AM'),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Description of the task',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Due 1 day',
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFFDFDFDE),
      ),
    );
  }
}
