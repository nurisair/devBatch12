public class RankHandler {
    public string rankPrice(integer rank){
        string prize = '';
        if (rank==1) {
            prize = 'Gold';
        }else if (rank==2) {
            prize = 'Silver';
        }else if (rank==3) {
            prize='Bronze';
        } 
        else {
            if (rank<=10) {
                prize='Top 10 Cert.';
            }
            else {
                prize='Participation Cert.';
            }
        }
        return prize;
    }
    public String rankSwitchPrize(integer rank){
        string prize = '';
        switch on rank  {
            when 1 {
                prize='Gold';       
            }
            when 2 {
                prize='Silver';
            }

            when 3 {
                prize='Bronze';
            }
            when 4,5,6,7,8,9,10 {
                prize='Welcome to Top 10!';
            }
            when else {
                prize='Thanks for Participation'; 
            }   
        }
        return prize;
    }
}