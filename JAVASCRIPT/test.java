import java.util.*;
class Main {
 
    public static List<String> idList = Arrays.asList("9D1B7E0","F4F83DE","F3364BF","EE86F74","6C42550");
    public static String str = "FE3533D";
        
    public static String checkID(List<String> idList, String str) {
        idList.addAll(Arrays.asList(str));
        String result = "";
        if (idList.contains(str)) {
        result = "ID found";
        } else {
        result = "ID not found";
        }
        return result;
    }
    
     
     private static void testcheckID() {
        System.out.println("Running checkID test cases");
        assertEquals(checkID(idList, str), "ID found");
        assertEquals(checkID(idList, "3DFC"), "ID not found"); 
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
    }
         
}