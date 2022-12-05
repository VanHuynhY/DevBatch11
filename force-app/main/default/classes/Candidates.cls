public class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;
    public static integer countCandidates = 0;

    public void PrintCandidate(){
        system.debug('Name is  ' + Name);
        system.debug('gender is ' + Gender);
        system.debug('company name is ' + CompanyName);
    }

    public static void PrintCandidateInfo(){
        //we CAN Access only static members inside static method.
        system.debug('company name is  ' + CompanyName);
        //we CANNOT access non-static members inside static method.
        //system.debug('name is ' + Name);
    }

}
