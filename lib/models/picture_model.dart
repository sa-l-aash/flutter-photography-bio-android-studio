//this is the model of a picture

class Picture {
  final String pictureName;
  final int yearTaken;
  final String imageUrl;
// Constructor for the 'Picture' class.
  // When creating a new 'Picture' object, this constructor must be used and all required properties must be provided.
  Picture({
    required this.pictureName,
    required this.yearTaken,
    required this.imageUrl,
  });
}
