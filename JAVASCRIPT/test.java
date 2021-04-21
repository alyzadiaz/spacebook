import java.util.*;
public class Test {
 
    public static List<String> idList = Arrays.asList("9D1B7E0","F4F83DE","F3364BF","EE86F74","6C42550");
    
    public static String checkID(List<String> idList, String s) {
        String result = "";
        if (idList.contains(s)) {
        result = "ID found";
        } else {
        result = "ID not found";
        }
        return result;
    }
    
    private static void testcheckID() {
        System.out.println("Running checkID test cases....");
        assertEquals(checkID(idList, "EE86F74"), "ID found");
        assertEquals(checkID(idList, "3DFC"), "ID not found"); 
        assertEquals(checkID(idList, ""), "ID not found");
        assertEquals(checkID(idList, "9D1B7E0"), "ID found");
        assertEquals(checkID(idList, "soidhfoe"), "ID not found");
    }
    
    public static List<String> missionList = Arrays.asList("Thaicom","Iridium NEXT","JCSAT","Telstar","ABS",
     "Eutelsat","Orbcomm OG2", "Commercial Resupply Services","AsiaSat","SES");

    public static String search(List<String> list,String s){
        if(list.contains(s)){
            return s;
        }

        return "Mission not found";
    }

    public static void testSearch(){

        System.out.println("\nRunning search test cases....");
        assertEquals(search(missionList,"SES"), "SES");
        assertEquals(search(missionList,"Eutelsat"), "Eutelsat");
        assertEquals(search(missionList,"Tesla Roadster"), "Mission not found");
        assertEquals(search(missionList,"3ste09457"), "Mission not found");
        assertEquals(search(missionList,""), "Mission not found");
    }


    private static void assertEquals(String actual, String expected) {
        if (actual.equals(expected)) {
            System.out.println("Pass");
        }
        else {
            System.out.println(String.format("Fail: expected: %s, actual: %s", expected, actual));
        }
    }
     public static void main(String[] args) {
        testcheckID();
        testSearch();
    }
         
}