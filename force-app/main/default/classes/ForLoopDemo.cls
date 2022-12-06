public class ForLoopDemo {
    public static void iterativeIntegerList(){
        list<integer> listInteger = new list<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);

        for (integer x : listInteger) {
            system.debug(x);
        }
    }

    public static integer add(list<integer> intList){
        integer rtnInt=0;
        for (integer y : intList) {
            rtnInt = rtnInt + y;
            system.debug(rtnInt);
        }
        return rtnInt;
    }
}