public class Cat {
    public string name;
    public string color;
    public static integer countCat=0;
    public Cat() {
        System.debug('cat constructor called.');
        countCat++;
        sleeping();
    }
    public Cat(string n, string clr){
        name = n;
        color = clr;
        countCat++;

    }

    public void sleeping(){
        system.debug(name + ' is sleeping.');
    }
}