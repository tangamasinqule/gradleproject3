package gradleproject3;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.*;
import java.lang.System.*;
import java.util.*;  


public class Main{

    static ArrayList<Integer> arr;
    static ArrayList<Integer> grouped;

    public static void main(String[] args) {
        // TODO code application logic here
        arr = new ArrayList<Integer>();
        Input(1);
        Input(2);
        Input(3);

        Grouping(0,5);
        Grouping(6,10);
        Grouping(11,15);
        Grouping(16,20);
        Grouping(21,25);
    }

    

    private static void Input(Integer number)
    {
        arr.add(number);
        Collections.sort(arr);
    }
    
    private static void Grouping(int start,int end)
    {
        int min = 0,max = 0;
        boolean isFirst = true;

        for (int i = 0; i < arr.size(); i++)
        {
            if(arr.get(i) > start &&  arr.get(i) < end)
            {   
                
                if(isFirst)
                {   
                    isFirst = false;
                    min = arr.get(i);
                }
                max = arr.get(i);
            }
        }
         System.out.print(min + " - " + max + ",");
    }

}
