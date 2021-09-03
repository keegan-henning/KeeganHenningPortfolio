/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BestCodeFrom2020;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.*;

/**
 *
 * @author keeganhenning
 */
public class DMVLab {

    public static void main(String[] args) throws Exception {
        File f = new File("src/Semester2/DMV.txt");
        Scanner sc = new Scanner(f);

        File outFile = new File("OutTest.txt");
        FileWriter fw = new FileWriter(outFile);
        BufferedWriter bw = new BufferedWriter(fw);

        java.util.Queue<String> q = new LinkedList<>();
        java.util.Queue<Worker> wo = new LinkedList<>();
        

        while (sc.hasNextLine()) {
            String s = sc.nextLine();
            if (s.contains("Ready")) {
                Worker w = new Worker();
                w.name = s;
                w.num = 0;
                wo.add(w);
            } else {
                q.add(s);
            }
        }
        System.out.println(q);
        
        
        //String s = q.remove();
        // System.out.println("I have been removed from the q: " + s);
        // System.out.println(q.size());
        //System.out.println(q.remove());
        while (!wo.isEmpty()) {
            Worker w = wo.element();
                q.remove();
                wo.remove();
                w.num++;
                System.out.println(w.num);
        }
        System.out.println("Not Helped: ");
        System.out.println(q);

    }

   

    
}


class Worker {
    int num;
    String name;
}
