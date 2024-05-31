//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[1]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
AudioPlayer[] soundEffects = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
String pathway, tokyoCafeSong, beepSFX, greatSFX; //the songs/SFX
int currentSong = 0; //current song
//
void setupAudio() {
  minim = new Minim (this); //load from data directory
  concatenationOfMusicFiles();
  songs[0] = minim.loadFile(pathway + tokyoCafeSong);//song
  soundEffects[0] = minim.loadFile( pathway + beepSFX ); //sound effect
  soundEffects[1] = minim.loadFile( pathway + greatSFX ); //sound effect
}//end setupAudio
void concatenationOfMusicFiles() {
  pathway = "data/";
  beepSFX = "short-beep-tone-47916.mp3";//sound effect
  greatSFX = "positive-tone-man-says-great-209738.mp3";
  tokyoCafeSong = "tvari-tokyo-cafe-159065.mp3";
}//end concatenationOfMusicFiles()
