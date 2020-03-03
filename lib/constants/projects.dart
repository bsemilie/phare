/// Arguments needed for html.windows.open() from MDN.
class MDNOpenArgs {
  final String url;
  final String name;

  const MDNOpenArgs(this.url, this.name);
}

class Project {
  final String assetImage;
  final String title;
  final String description;
  final MDNOpenArgs mdnOpenArgs;
  final String language;

  const Project(
    this.assetImage, {
    this.title = "",
    this.description = "",
    this.language = "",
    this.mdnOpenArgs,
  });
}

final List<Project> Projects = [
  const Project(
    "pic1.png",
    title: "My Portfolio",
    description: "A responsive portfolio built with Flutter for web.",
    language: "Dart",
  ),
  const Project(
    "pic2.png",
    title: "The Minitel Toolbox",
    description:
        "A toolbox for Minitel and users of the engineering school Mines de St-Etienne.",
    mdnOpenArgs: MDNOpenArgs(
        "https://github.com/Darkness4/minitel-app", "Minitel Toolbox"),
    language: "Dart",
  ),
  const Project(
    "pic3.jpg",
    title: "CSGO GSI on LCD Arduino",
    description:
        "Using CSGO Game State Integration and HTTP POST, a HUD is shown on a LCD Screen.",
    mdnOpenArgs: MDNOpenArgs(
        "https://github.com/Darkness4/csgo-gsi-arduino-lcd",
        "CSGO GSI on LCD Arduino"),
    language: "C++",
  ),
  const Project(
    "pic4.png",
    title: "dnsmasq with adblock",
    description: "DNS server with auto-updater adblocker for Minitel.",
    mdnOpenArgs: MDNOpenArgs(
        "https://github.com/Darkness4/dnsmasq", "dnsmasq with adblock"),
    language: "Dockerfile, Shell, Awk",
  ),
  const Project(
    "pic5.png",
    title: "Zabbix Template for 3COM 4500/4400",
    description: "Get the necessary infos on 3COM switches with SNMPv3",
    mdnOpenArgs: MDNOpenArgs(
        "https://github.com/Darkness4/Zabbix-Template-3COM-4500-SNMPv3",
        "Zabbix Template for 3COM 4500/4400"),
    language: "XML",
  ),
  const Project(
    "pic4.png",
    title: "ISC DHCP Server with Alpine Image",
    description: "A simple ISC DHCP server for Minitel.",
    mdnOpenArgs: MDNOpenArgs("https://github.com/Darkness4/isc-dhcp-server",
        "ISC DHCP Server with Alpine Image"),
    language: "Dockerfile",
  ),
];
