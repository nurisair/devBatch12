public class Candidates {
    public String name;
    public String gender;
    public static String companyName;
    public static Integer countCandidates = 0;

    public void printCandidates(){
        system.debug('name of the candidate is ' + name +', gender is '+ gender);
        system.debug('company name is '+ companyName);
    }
}