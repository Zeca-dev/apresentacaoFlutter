import '../../../utils/func_tools.dart';
import 'package:apresentacao/app/modules/home/widgets/text_custom_widget.dart';
import 'package:apresentacao/app/modules/home/widgets/text_sub_titulo_widget.dart';
import 'package:flutter/material.dart';

class FlutterConceitos4Page extends StatefulWidget {
  final String title;
  final int numberPage;
  const FlutterConceitos4Page(
      {Key? key, this.title = 'FlutterConceitos4Page', this.numberPage = 4})
      : super(key: key);
  @override
  FlutterConceitos4PageState createState() => FlutterConceitos4PageState();
}

class FlutterConceitos4PageState extends State<FlutterConceitos4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextCustomWidget(
              texto: widget.numberPage.toString(),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 600,
                  top: 10,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(width: 2)),
                      width: 450,
                      height: 780,
                      child: Scaffold(
                        appBar: AppBar(
                          title: const Text('Meu App'),
                          actions: [
                            IconButton(
                              icon: const Icon(
                                Icons.notification_important,
                              ),
                              onPressed: () {
                                showCustomDialog(context, 'imagens/appBar.png',
                                    'C??digo: AppBar');
                              },
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.email,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.refresh,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        drawer: Drawer(
                          child: Column(
                            children: [
                              const UserAccountsDrawerHeader(
                                currentAccountPicture: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('imagens/Zeca.jpg'),
                                ),
                                accountName: Text('Jos?? Carlos'),
                                accountEmail: Text('jcarlos@email.com'),
                              ),
                              ListTile(
                                title: const Text('Item 1 do drawer'),
                                onTap: () {
                                  showCustomDialog(context,
                                      'imagens/drawer.png', 'C??digo: Drawer');
                                },
                              ),
                              const ListTile(
                                title: Text('Item 2 do drawer'),
                              ),
                              const ListTile(
                                title: Text('Item 3 do drawer'),
                              ),
                              const ListTile(
                                title: Text('Item 4 do drawer'),
                              ),
                              const ListTile(
                                title: Text('Item 5 do drawer'),
                              )
                            ],
                          ),
                        ),
                        body: ListView.builder(
                            itemCount: 100,
                            itemBuilder: (context, index) {
                              return Card(
                                child: ListTile(
                                  title: Text('Item $index da lista'),
                                  subtitle: Text('Subt??tulo do item $index'),
                                  leading: const Icon(Icons.photo),
                                  trailing: const Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                  ),
                                  onTap: () {
                                    showCustomDialog(
                                        context,
                                        'imagens/listview.png',
                                        'C??digo: ListView');
                                  },
                                ),
                              );
                            }),
                        floatingActionButton: FloatingActionButton(
                          onPressed: () {
                            showCustomDialog(
                                context,
                                'imagens/floattingActionButton.png',
                                'C??digo: FloatingActionButton');
                          },
                          child: const Icon(Icons.add),
                        ),
                        bottomNavigationBar: BottomNavigationBar(
                            unselectedItemColor: Colors.white,
                            showUnselectedLabels: true,
                            selectedItemColor: Colors.white,
                            onTap: (value) {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return SizedBox(
                                      height: 200,
                                      child: Center(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                'Voc?? clicou no item $value do bottomNavigationBar',
                                                style: const TextStyle(
                                                    fontSize: 30,
                                                    color: Colors.blue),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
                                                  showCustomDialog(
                                                      context,
                                                      'imagens/bottomNavigationBar.png',
                                                      'C??digo: BottomNavigationBar');
                                                },
                                                child: const Text(
                                                    'BottomNavigationBar')),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
                                                  showCustomDialog(
                                                      context,
                                                      'imagens/dialogImagem.png',
                                                      'C??digo: DialogImagem');
                                                },
                                                child:
                                                    const Text('DialogImagem')),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
                                                  showCustomDialog(
                                                      context,
                                                      'imagens/badge.png',
                                                      'C??digo: Badge');
                                                },
                                                child: const Text('Badge')),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
                                                  showCustomDialog(
                                                      context,
                                                      'imagens/textCustom.png',
                                                      'C??digo: TextCustom');
                                                },
                                                child:
                                                    const Text('TextCustom')),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            items: [
                              BottomNavigationBarItem(
                                  backgroundColor: Colors.blue[900],
                                  icon: const Icon(Icons.home),
                                  label: 'Home'),
                              const BottomNavigationBarItem(
                                  icon: Icon(Icons.monetization_on),
                                  label: 'Conta'),
                              const BottomNavigationBarItem(
                                  icon: Icon(Icons.person), label: 'Perfil'),
                              const BottomNavigationBarItem(
                                  icon: Icon(Icons.settings),
                                  label: 'Configura????es')
                            ]),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TextSubTituloWidget(
                          texto: 'Layouts',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 48.0),
                          child: TextButton(
                            child: const TextCustomWidget(
                                texto: '- Stack, Column e Row'),
                            onPressed: () {
                              showCustomDialog(
                                context,
                                'imagens/stack_column_row.png',
                                'Imagem: Layouts\n      # Todos os layouts s??o varia????es destes agrupamentos de widgets.',
                              );
                            },
                          ),
                        ),
                        const TextSubTituloWidget(
                          texto: 'Scaffold',
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 48.0),
                          child: TextCustomWidget(
                              texto: '- Tela base composta por:'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 96.0),
                          child: TextCustomWidget(
                            texto: '# appBar',
                            size: 22,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 96.0),
                          child: TextCustomWidget(
                            texto: '# body',
                            size: 22,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 96.0),
                          child: TextCustomWidget(
                            texto: '# bottomBar',
                            size: 22,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 96.0),
                          child: TextCustomWidget(
                            texto: '# drawer',
                            size: 22,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 96.0),
                          child: TextCustomWidget(
                            texto: '# floatingActionButton',
                            size: 22,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 48.0),
                          child: TextCustomWidget(texto: '- ??rvore de Widgets'),
                        ),
                        GestureDetector(
                          onTap: () {
                            showCustomDialog(
                              context,
                              'imagens/arvore_widgets.png',
                              'Imagem: ??rvore de Widgets',
                            );
                          },
                          child: Image.asset(
                            'imagens/arvore_widgets.png',
                            width: 500,
                            height: 200,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextSubTituloWidget(
                          texto: 'AppBar',
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 48.0),
                          child: TextCustomWidget(
                              texto:
                                  '- Mostra o t??tlo da p??gina e bot??es de a????o'),
                        ),
                        const TextSubTituloWidget(
                          texto: 'Drawer',
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 48.0),
                          child: TextCustomWidget(
                              texto:
                                  '- Menu lateral com diversas costumiza????es'),
                        ),
                        const TextSubTituloWidget(
                          texto: 'Icon e IconButton',
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 48.0),
                          child: TextCustomWidget(
                              texto: '- ??cones que podem ter a????es'),
                        ),
                        TextButton(
                          child: const TextSubTituloWidget(
                            texto: 'ListView',
                          ),
                          onPressed: () {
                            showCustomDialog(context, 'imagens/nativo.png',
                                'Imagem: Nativo \n     # muitos arquivos para gerar uma lista;\n     # perda de produtividade.');
                          },
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 48.0),
                          child: TextCustomWidget(
                              texto: '- Lista din??mica de objetos'),
                        ),
                        const TextSubTituloWidget(
                          texto: 'ListTile',
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 48.0),
                          child: TextCustomWidget(
                              texto:
                                  '- Item de lista com diversas costumiza????es'),
                        ),
                        const TextSubTituloWidget(
                          texto: 'FloatingActionButton',
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 48.0),
                          child: TextCustomWidget(
                              texto:
                                  '- Bot??o flutuante com diversas costumiza????es'),
                        ),
                        const TextSubTituloWidget(
                          texto: 'BottomNavigationBar',
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 48.0),
                          child: TextCustomWidget(
                              texto: '- Rodap?? da p??gina e bot??es de a????o  '),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
