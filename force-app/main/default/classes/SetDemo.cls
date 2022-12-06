public class SetDemo {
    public static void citySet(){
        Set<String>cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('NY');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Prag');
        cities.add('Tokyo');

        System.debug('Cities are '+cities);
   }

   public static void randomIntegerSet() {
        Set<Integer> integerSet = new Set<Integer>();
        integerSet.add(11);
        integerSet.add(33);
        integerSet.add(44);
        integerSet.add(55);
        integerSet.add(11);

        System.debug('integer set is '+ integerSet);
   }

   public static set<integer> setFromList(List<integer> intList) {
        Set<Integer> setInt = new Set<integer>();

        setInt.addAll(intList);

        return setInt;
   }

   public static set<string> upperCaseSet (set<string> setStr) {
        Set<String> rSet = new Set<String>();
        
        for (string eachStr : setStr) {
            string tempString = eachStr.toUpperCase();
            rSet.add(tempString);
        }
        return rSet;

   }
}