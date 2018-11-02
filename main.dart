class Mobile{
  int camera, speakers;
  factory Mobile(int range, int cameraQuality, int numberOfSpeakers){
    if(range > 100 && range <150) return Mobile.Sony(cameraQuality, numberOfSpeakers);
    else if(range > 150 && range <500) return Mobile.Samsung(cameraQuality, numberOfSpeakers);
    else if(range > 1000 && range < 1500) return Mobile.Apple(cameraQuality, numberOfSpeakers);
    else if(range > 1500) return Mango(cameraQuality, numberOfSpeakers);
    else{ 
      if(range<100) throw 'Not found';
      return Mobile.random(cameraQuality, numberOfSpeakers);
     } 
  }
  Mobile.Sony(this.camera, this.speakers){
    print('Welcome to Sony');
    print('I have $camera Mega Pixels and $speakers speakers.');
  }
 
  Mobile.Apple(this.camera, this.speakers){
    print('Welcome to Sony');
    print('I have $camera Mega Pixels and $speakers speakers.');
  }
  
  Mobile.Samsung(this.camera, this.speakers){
    print('Welcome to Sony');
    print('I have $camera Mega Pixels and $speakers speakers.');
  }
  
  Mobile.random(this.camera, this.speakers){
    print('asd');
  }
}

class Mango extends Mobile{
    Mango(cameraQuality, numberOfSpeakers) : super.random(cameraQuality, numberOfSpeakers){
      print('Welcome to Mango Phones');
      print('I have $camera Mega Pixels and $speakers speakers.');
    }
 }

main(){
  try{
  Mobile newPhone = Mobile(50, 5, 10);
  } catch(e){
    print('Error found $e');
  }
}
