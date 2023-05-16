public class Classroom {
    public static void Students() {
        Student st1 = new Student();
        Student st2 = new Student();
        
        st1.name = 'Jon Snow';
        st2.marks = 87;
        st1.section = 'C';
        
        System.debug('Print using st1 : ' 
        + st1.name + ' ' 
        + st1.marks + ' ' 
        + st1.section);

        System.debug('Print using st2 : ' 
        + st2.name + ' ' 
        + st2.marks + ' ' 
        + st2.section);
    }
}