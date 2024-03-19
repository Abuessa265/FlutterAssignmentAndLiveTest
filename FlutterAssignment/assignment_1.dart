class Media {
  play() {
    print("Playing media...");
  }
}

class Song extends Media {
  String artist;
  Song(this.artist);
  @override
  play() {
    print("Playing song by $artist...");
  }
}

main() {
  Media obj = new Media();
  Song obj1 = new Song("Rokonujjaman");
  obj.play();
  obj1.play();
}
