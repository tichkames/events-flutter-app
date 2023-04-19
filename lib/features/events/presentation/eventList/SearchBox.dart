import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextFormField(
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search by name',
                    border: InputBorder.none,
                    prefixIconConstraints:
                        BoxConstraints.tight(const Size.fromRadius(18))),
              ),
            ),
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.send))
      ],
    );
  }
}
