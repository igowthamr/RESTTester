package com.acceptable.dmg.services.acceptables.app.persistence;


import org.springframework.stereotype.Component;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * 7/17/17.
 */
@Component
public class FetchFiles {


    public List<File> fetchFiles(String name){
        File folder = new File("./files/"+name);
        File[] listOfFiles = folder.listFiles();
       List<File> files = new ArrayList<>();

        for (int i = 0; i < listOfFiles.length; i++) {
            if (listOfFiles[i].isFile()) {
                files.add(listOfFiles[i]);
                System.out.println("File " + listOfFiles[i].getName());
            } else if (listOfFiles[i].isDirectory()) {
                System.out.println("Directory " + listOfFiles[i].getName());
            }
        }
        return files;
    }

    public List<File> fetchFile(String name){
        File folder = new File("./files/"+name);
        File[] listOfFiles = folder.listFiles();
        List<File> files = new ArrayList<>();

        for (int i = 0; i < listOfFiles.length; i++) {
            if (listOfFiles[i].isFile()) {
                files.add(listOfFiles[i]);
                System.out.println("File " + listOfFiles[i].getName());
            } else if (listOfFiles[i].isDirectory()) {
                System.out.println("Directory " + listOfFiles[i].getName());
            }
        }
        return files;
    }

    public List<File> fetchSkeletonFile(String name){
        File folder = new File("./files/"+name);
        File[] listOfFiles = folder.listFiles();
        List<File> files = new ArrayList<>();

        for (int i = 0; i < listOfFiles.length; i++) {
            if (listOfFiles[i].isFile()) {
                files.add(listOfFiles[i]);
                System.out.println("File " + listOfFiles[i].getName());
            } else if (listOfFiles[i].isDirectory()) {
                System.out.println("Directory " + listOfFiles[i].getName());
            }
        }
        return files;
    }
}
