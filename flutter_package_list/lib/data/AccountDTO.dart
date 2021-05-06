
class AccountDTO {
  final int accountNumber;
  final List<String> todoList;
  AccountDTO({this.accountNumber,this.todoList});

  factory AccountDTO.fromJson(Map<String, dynamic> json) {

    return AccountDTO(
        accountNumber: json['accountNumber'] as int,
        todoList: List.from(json['todoList'])
    );
  }
}
