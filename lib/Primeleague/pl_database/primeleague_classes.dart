class LeagueData {

  String name;
  List<TeamData> teams;
  List<MatchDays> schedule;

  LeagueData({required this.name ,required this.teams, required this.schedule});
}

class MatchData {

  final TeamData team1;
  final TeamData team2;
  final String result;
  final String date;

  const MatchData({
    required this.team1,
    required this.team2,
    required this.result,
    required this.date,
  });
}

class MatchDays{

  List<MatchData> matches;

  MatchDays({
    required this.matches
  });
}

class TeamData {

  final String fullname;
  final String shortname;
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
    required this.fullname,
    required this.shortname,
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