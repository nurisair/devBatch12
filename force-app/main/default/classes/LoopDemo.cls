public class LoopDemo {
   public void print_int_while(){
    Integer count=1;
    while (count<=25) {
        System.debug(count);
        count++;
    }
}

    public void print_N_numbers(integer n){
        for (integer i = 0; i<n ; i++) {
            System.debug(i);
        }
    
   }
   public void print_N_OddNumbers(integer startInt, Integer endInt){
    for (integer j =startInt; j<endInt; j++) {
        integer remainder = math.mod(j, 2);
        if (remainder==1) {
            system.debug(j);
        }
    }
   }

}