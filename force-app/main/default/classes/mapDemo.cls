public class mapDemo {
    public static string retreiveMonth(integer m) {
        string month = '';
        map<integer, String> mapMonth = new map<integer, String>();
        mapMonth.put(1, 'Jan');
        mapMonth.put(2, 'Feb');
        mapMonth.put(3, 'Mar');
        mapMonth.put(4, 'Apr');
        mapMonth.put(5, 'May');
        mapMonth.put(6, 'Jun');
        mapMonth.put(7, 'Jul');
        mapMonth.put(8, 'Aug');
        mapMonth.put(9, 'Sep');
        mapMonth.put(10, 'Oct');
        mapMonth.put(11, 'Nov');
        mapMonth.put(12, 'Dec');

        boolean keyExist = mapMonth.containsKey(m);
        if (keyExist) {
            month=mapMonth.get(m);
        } else {
            month = 'No such month!';
        }

        return month;
    }
}