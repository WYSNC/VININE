import 'primeleague_classes.dart';

final LeagueData div4 = LeagueData(name: 'Division 4.8', teams: teamList, schedule: schedule,);


List<LeagueData> leagueList = [
  LeagueData(name: 'Division 4.8',
    teams: teamList,
    schedule: schedule,
  )
];

List<MatchDays> schedule = [
  MatchDays(
    matches: matchDay1
  ),
  MatchDays(
    matches: matchDay2
  ),
  MatchDays(
    matches: matchDay3,
  ),
  MatchDays(
    matches: matchDay4
  ),
  MatchDays(
    matches: matchDay5
  ),
];

List<MatchData> matchDay1 = [
  MatchData(
    team1: teamList[0],
    team2: teamList[1],
    result: '2:0',
    date: '25 Oct',
    time: '21:30',
  ),
  MatchData(
      team1: teamList[2],
      team2: teamList[3],
    result: '2:0',
    date: '30 Oct',
    time: '21:30',
  ),
  MatchData(
      team1: teamList[4],
      team2: teamList[5],
    result: '2:0',
    date: '22 Sep',
    time: '21:30',
  ),
  MatchData(
      team1: teamList[6],
      team2: teamList[7],
    result: '2:0',
    date: '06 Feb',
    time: '21:30',
  ),
  MatchData(
      team1: teamList[8],
      team2: teamList[9],
    result: '2:0',
    date: '23 Dec',
    time: '21:30',
  ),
];

List<MatchData> matchDay2 = [
  MatchData(
    team1: teamList[0],
    team2: teamList[9],
    result: '2:0',
    date: '25 Oct',
    time: '21:30',
  ),
  MatchData(
    team1: teamList[2],
    team2: teamList[7],
    result: '2:0',
    date: '25 Oct',
    time: '21:30',
  ),
  MatchData(
    team1: teamList[4],
    team2: teamList[6],
    result: '2:0',
    date: '25 Oct',
    time: '21:30',
  ),
  MatchData(
    team1: teamList[5],
    team2: teamList[3],
    result: '2:0',
    date: '25 Oct',
    time: '21:30',
  ),
  MatchData(
    team1: teamList[8],
    team2: teamList[1],
    result: '2:0',
    date: '25 Oct',
    time: '21:30',
  ),
];

List<MatchData> matchDay3 = [
  MatchData(
    team1: teamList[0],
    team2: teamList[1],
    result: '2:0',
    date: '25 Oct',
    time: '21:30',
  ),
  MatchData(
    team1: teamList[2],
    team2: teamList[3],
    result: '2:0',
    date: '30 Oct',
    time: '21:30',
  ),
  MatchData(
    team1: teamList[4],
    team2: teamList[5],
    result: '2:0',
    date: '22 Sep',
    time: '21:30',
  ),
  MatchData(
    team1: teamList[6],
    team2: teamList[7],
    result: '2:0',
    date: '06 Feb',
    time: '21:30',
  ),
  MatchData(
    team1: teamList[8],
    team2: teamList[9],
    result: '2:0',
    date: '23 Dec',
    time: '21:30',
  ),
];
List<MatchData> matchDay4 = [
  MatchData(
    team1: teamList[0],
    team2: teamList[1],
    result: '2:0',
    date: '25 Oct',
    time: '21:30',
  ),
  MatchData(
    team1: teamList[2],
    team2: teamList[3],
    result: '2:0',
    date: '30 Oct',
    time: '21:30',
  ),
  MatchData(
    team1: teamList[4],
    team2: teamList[5],
    result: '2:0',
    date: '22 Sep',
    time: '21:30',
  ),
  MatchData(
    team1: teamList[6],
    team2: teamList[7],
    result: '2:0',
    date: '06 Feb',
    time: '21:30',
  ),
  MatchData(
    team1: teamList[8],
    team2: teamList[9],
    result: '2:0',
    date: '23 Dec',
    time: '21:30',
  ),
];
List<MatchData> matchDay5 = [
  MatchData(
    team1: teamList[0],
    team2: teamList[1],
    result: '2:0',
    date: '25 Oct',
    time: '21:30',
  ),
  MatchData(
    team1: teamList[2],
    team2: teamList[3],
    result: '2:0',
    date: '30 Oct',
    time: '21:30',
  ),
  MatchData(
    team1: teamList[4],
    team2: teamList[5],
    result: '2:0',
    date: '22 Sep',
    time: '21:30',
  ),
  MatchData(
    team1: teamList[6],
    team2: teamList[7],
    result: '2:0',
    date: '06 Feb',
    time: '21:30',
  ),
  MatchData(
    team1: teamList[8],
    team2: teamList[9],
    result: '2:0',
    date: '23 Dec',
    time: '21:30',
  ),
];
const teamList = [
  TeamData(
    fullname: 'VININE',
    shortname: 'V9',
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
      fullname: 'TOG',
      shortname: 'TOG',
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
      fullname: 'TOG Foxes',
      shortname: 'TOG F',
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
      fullname: 'All for One Gaming',
      shortname: '141G',
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
      fullname: 'Kaufland Hangry Knights',
      shortname: 'KHK',
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
      fullname: 'WeSports',
      shortname: 'WES',
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
      fullname: 'ERN ROAR',
      shortname: 'ERN',
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
      fullname: 'NoNeedOrga',
      shortname: 'NNO',
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
  TeamData(
      fullname: 'NoNeedOrga',
      shortname: 'NNO',
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
  TeamData(
      fullname: 'NoNeedOrga',
      shortname: 'NNO',
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
