class MatchData {

  final TeamData team1;
  final TeamData team2;

  const MatchData({
    required this.team1,
    required this.team2,

  });
}

class TeamData {

  final String name;
  final String logo;
  final int players;
  final String div;
  final int wins;
  final int losses;
  final int rank;
  final String creationdate;
  final String nation;
  final String contact;

  const TeamData({
    required this.name,
    required this.logo,
    required this.players,
    required this.div,
    required this.wins,
    required this.losses,
    required this.rank,
    required this.creationdate,
    required this.nation,
    required this.contact,
  });
}

const teamList = [
  TeamData(
    name: 'VININE',
    logo: 'assets/images/VININELogoWhite.png',
    players: 5,
    div: '4.8',
    wins: 6,
    losses: 0,
    rank: 1,
    creationdate: '23.11.2020',
    nation: 'Germany',
    contact: 'xd',
  ),
  TeamData(
      name: 'TOG',
      logo: 'assets/images/TOGLogo.png',
      players: 5,
      div: '4.8',
      wins: 5,
      losses: 1,
      rank: 2,
      creationdate: '23.11.2020',
      nation: 'Germany',
      contact: 'xd'
  ),
  TeamData(
      name: 'TOG Foxes',
      logo: 'assets/images/TOGLogo.png',
      players: 5,
      div: '4.8',
      wins: 4,
      losses: 2,
      rank: 3,
      creationdate: '23.11.2020',
      nation: 'Germany',
      contact: 'xd'
  ),
  TeamData(
      name: 'All for One Gaming',
      logo: 'assets/images/all41Logo.png',
      players: 5,
      div: '4.8',
      wins: 3,
      losses: 3,
      rank: 4,
      creationdate: '23.11.2020',
      nation: 'Germany',
      contact: 'xd'
  ),
  TeamData(
      name: 'Kaufland Hangry Knights',
      logo: 'assets/images/KHKLogo.png',
      players: 5,
      div: '4.8',
      wins: 2,
      losses: 4,
      rank: 5,
      creationdate: '23.11.2020',
      nation: 'Germany',
      contact: 'xd'
  ),
  TeamData(
      name: 'WeSports',
      logo: 'assets/images/WELogo.png',
      players: 5,
      div: '4.8',
      wins: 1,
      losses: 5,
      rank: 6,
      creationdate: '23.11.2020',
      nation: 'Germany',
      contact: 'xd'
  ),
  TeamData(
      name: 'ERN ROAR',
      logo: 'assets/images/ERNLogo.png',
      players: 5,
      div: '4.8',
      wins: 0,
      losses: 6,
      rank: 7,
      creationdate: '23.11.2020',
      nation: 'Germany',
      contact: 'xd'
  ),
  TeamData(
      name: 'NNO',
      logo: 'assets/images/NNO.png',
      players: 5,
      div: '4.8',
      wins: 0,
      losses: 6,
      rank: 8,
      creationdate: '23.11.2020',
      nation: 'Germany',
      contact: 'xd'
  ),
];
