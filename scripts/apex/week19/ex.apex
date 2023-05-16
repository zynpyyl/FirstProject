// MyClass obj=new MyClass(10);
// System.debug(obj.getMyNumber());
// obj.setMyNumber(20);
// System.debug(obj.getMyNumber());

MyClass obj1=new MyClass('John');
MyClass obj2=new MyClass('Sarah');
obj1.printName();
obj2.printName();
obj1.changeName('Alex');
obj1.printName();
obj2.printName();

Animal a1=new Animal();
Animal a2=new Animal('Fluffy',3);

System.debug(a1.name+a1.age);
System.debug(a2.name+a2.age);

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
    


