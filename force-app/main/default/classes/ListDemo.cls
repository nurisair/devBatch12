public class ListDemo {
    public static String candidatesList(integer i) {
        List<string> listCandidates = new List<string>(); 
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Jeff');
        listCandidates.add('Steve');
        listCandidates.add('Marc');
        System.debug('list of candidates is '+listCandidates);
        
        string returnString = listCandidates[i];
        integer sizeOfList=listCandidates.size();
        if (i>=0 && i>sizeOfList) {
            returnString=listCandidates[i]; 
        }else {
            returnString='no values found, stay in limits. ';
        }
        return returnString;
    }
    public static void randomIntegerList() {
        list<integer> listInteger = new list<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        system.debug('ramdom integer list is '+ listInteger);

        Integer valueAt3Index = listInteger.get(3);
        integer valueAt3Index2 = listInteger[3];
        System.debug('randim integer 3 is '+listInteger);
        system.debug('value at index 3 is '+valueAt3Index);

    }
    public static void allCats() {
        list<cat> listCat = new list<cat>();
        cat cat2=new cat('ginger','white');
        cat cat3=new cat('sinba','brown');
        cat cat1=new cat('pepper', 'black');
        listCat.add(cat2);
        listCat.add(cat1);
        listCat.add(cat3);
        listCat.add(cat2);
        System.debug('list of cats is '+listCat);

    }
}