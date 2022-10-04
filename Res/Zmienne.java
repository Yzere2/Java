package com.company;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        // write your code here
        System.out.println("Hello World");
        System.out.print("\tHello World\n\n\n");
        byte num = 33;
        short numShort = 233;
        int numInt = 324124;
        long numLong = 464363463;

        float numFloat = 23.45f;
        double numDouble = 324.535d;

        boolean isActive = true;
        char charSym = 'w';
        String word = "Tresc gdfgdfgdhg";
        //System.out.print(word);

        Scanner scn = new Scanner(System.in);

        /*System.out.println("Jak masz na imie:");
        System.out.println("Witam " + scn.nextLine());*/
        System.out.println("Jak masz na imie:");
        //String keyBoardInput = scn.nextLine();
        //System.out.println("Witam " + keyBoardInput);

        int i = 0;
        int j = 0;
        System.out.println(i++);
        System.out.println(++j);




        /*=
        ==
        !=
        >=
        <=

        ||
        &&
        !
                ^*/


        int a = 5;
        int b = 10;
        if (a > 5 && checkSalary()) {
            System.out.println("prawda");
        }
    }
}
