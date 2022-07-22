import 'package:flutter/cupertino.dart';
import 'package:macos_ui/macos_ui.dart';

class MacAppHomePage extends StatefulWidget {
  const MacAppHomePage({Key? key}) : super(key: key);

  @override
  State<MacAppHomePage> createState() => _MacAppHomePageState();
}

class _MacAppHomePageState extends State<MacAppHomePage> {
  int pageIndex = 0;

  late final searchFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return PlatformMenuBar(
      menus: const [
        PlatformMenu(
          label: 'macos_ui Widget Gallery',
          menus: [
            PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.about,
            ),
            PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.quit,
            ),
          ],
        ),
        PlatformMenu(
          label: 'View',
          menus: [
            PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.toggleFullScreen,
            ),
          ],
        ),
        PlatformMenu(
          label: 'Window',
          menus: [
            PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.minimizeWindow,
            ),
            PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.zoomWindow,
            ),
          ],
        ),
      ],
      body: MacosWindow(
        sidebar: Sidebar(
          top: MacosSearchField(
            placeholder: 'Search',
            controller: searchFieldController,
            onResultSelected: (result) {
              switch (result.searchKey) {
                case 'Buttons':
                  setState(() {
                    pageIndex = 0;
                    searchFieldController.clear();
                  });
                  break;
                case 'Indicators':
                  setState(() {
                    pageIndex = 1;
                    searchFieldController.clear();
                  });
                  break;
                case 'Fields':
                  setState(() {
                    pageIndex = 2;
                    searchFieldController.clear();
                  });
                  break;
                case 'Colors':
                  setState(() {
                    pageIndex = 3;
                    searchFieldController.clear();
                  });
                  break;
                case 'Dialogs and Sheets':
                  setState(() {
                    pageIndex = 5;
                    searchFieldController.clear();
                  });
                  break;
                case 'Toolbar':
                  setState(() {
                    pageIndex = 6;
                    searchFieldController.clear();
                  });
                  break;
                case 'Selectors':
                  setState(() {
                    pageIndex = 7;
                    searchFieldController.clear();
                  });
                  break;
                default:
                  searchFieldController.clear();
              }
            },
            results: const [
              SearchResultItem('Buttons'),
              SearchResultItem('Indicators'),
              SearchResultItem('Fields'),
              SearchResultItem('Colors'),
              SearchResultItem('Dialogs and Sheets'),
              SearchResultItem('Toolbar'),
              SearchResultItem('Selectors'),
            ],
          ),
          minWidth: 200,
          builder: (context, controller) {
            return SidebarItems(
              currentIndex: pageIndex,
              onChanged: (i) => setState(() => pageIndex = i),
              scrollController: controller,
              itemSize: SidebarItemSize.large,
              items: [
                const SidebarItem(
                  leading: MacosIcon(CupertinoIcons.add),
                  label: Text('Buttons'),
                ),
                const SidebarItem(
                  leading: MacosIcon(CupertinoIcons.add),
                  label: Text('Indicators'),
                ),
                const SidebarItem(
                  leading: MacosIcon(CupertinoIcons.add),
                  label: Text('Fields'),
                ),
                SidebarItem(
                  leading: const MacosIcon(CupertinoIcons.folder),
                  label: const Text('Disclosure'),
                  trailing: Text(
                    '2',
                    style: TextStyle(
                      color: MacosTheme.brightnessOf(context) == Brightness.dark
                          ? MacosColors.tertiaryLabelColor.darkColor
                          : MacosColors.tertiaryLabelColor,
                    ),
                  ),
                  disclosureItems: [
                    const SidebarItem(
                      leading: MacosIcon(CupertinoIcons.add),
                      label: Text('Colors'),
                    ),
                    const SidebarItem(
                      leading: MacosIcon(CupertinoIcons.infinite),
                      label: Text('Item 3'),
                    ),
                  ],
                ),
                const SidebarItem(
                  leading: MacosIcon(CupertinoIcons.square_on_square),
                  label: Text('Dialogs & Sheets'),
                ),
                const SidebarItem(
                  leading: MacosIcon(CupertinoIcons.macwindow),
                  label: Text('Toolbar'),
                ),
                const SidebarItem(
                  leading: MacosIcon(CupertinoIcons.add),
                  label: Text('Selectors'),
                ),
                const SidebarItem(
                  leading: MacosIcon(CupertinoIcons.uiwindow_split_2x1),
                  label: Text('TabView'),
                ),
              ],
            );
          },
          bottom: const MacosListTile(
            leading: MacosIcon(CupertinoIcons.profile_circled),
            title: Text('Tim Apple'),
            subtitle: Text('tim@apple.com'),
          ),
        ),
        endSidebar: Sidebar(
          startWidth: 200,
          minWidth: 200,
          maxWidth: 300,
          shownByDefault: false,
          builder: (context, scrollController) {
            return const Center(
              child: Text('End Sidebar'),
            );
          },
        ),
      ),
    );
  }
}
