public class main {
    public static void main(String[] args) {
        int i = 40;

        int foll = next(i);
        //testing
        int prev = before(i);

        System.out.println("Before " + i + " is " + prev + ". After is " + foll + ".");
    }

    public static int next(int input){
        return (input + 1);
    }

    public static int before(int input){
        return (input - 1);
    }

    //testing for a push to side repository
}
