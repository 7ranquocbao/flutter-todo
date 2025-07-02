import 'package:flutter/material.dart';
import 'l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todoapp/blocs/todo_bloc.dart';
import 'package:todoapp/events/todo_event.dart';
import 'package:todoapp/states/todo_state.dart';

void main() {
  runApp(
    BlocProvider<TodoBloc>(
      create: (context) => TodoBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('en'), Locale('ja')],
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TodoBloc todoBloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    todoBloc = BlocProvider.of<TodoBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textEditingController = TextEditingController();

    void addTodo() {
      final text = textEditingController.text.trim();
      if (text.isNotEmpty) {
        todoBloc.add(TodoAdded((u) => u.title = text));
        textEditingController.clear();
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(l10n.appTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: l10n.inputPlaceholder,
                suffixIcon: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: addTodo,
                ),
              ),
              onSubmitted: (value) {
                addTodo();
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: BlocBuilder<TodoBloc, TodoState>(
                builder: (context, state) {
                  if (state.todos.isEmpty) {
                    return Center(child: Text(l10n.emptyTodo));
                  }

                  return ListView.builder(
                    itemCount: state.todos.length,
                    itemBuilder: (context, index) {
                      final todo = state.todos[index];
                      return Card(
                        child: ListTile(
                          leading: Checkbox(
                            value: todo.status == 'completed',
                            onChanged: (bool? value) {
                              if (value != null) {
                                if (value) {
                                  todoBloc.add(
                                    TodoCompleted((u) => u.id = todo.id),
                                  );
                                } else {
                                  todoBloc.add(
                                    TodoIncomplete((u) => u.id = todo.id),
                                  );
                                }
                              }
                            },
                          ),

                          title: Text(
                            todo.title,
                            style: TextStyle(
                              decoration: todo.status == 'completed'
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none,
                            ),
                          ),

                          trailing: IconButton(
                            icon: const Icon(Icons.close, color: Colors.red),
                            onPressed: () {
                              todoBloc.add(TodoRemoved((u) => u.id = todo.id));
                            },
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
