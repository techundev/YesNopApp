enum FromWho { me, hers }

class Message {
  final String text;
  final String? imageUrl;
  final FromWho fromWho;

  new({required this.text, this.imageUrl, required this.fromWho});
}
