package com.acceptable.dmg.services.acceptables.app.controller;

import com.acceptable.dmg.services.acceptables.app.persistence.FetchFiles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.*;
import java.util.List;

@RestController
@RequestMapping(value = "/test")
public class AcceptableController {


    @Autowired
    FetchFiles fetcher;

    @RequestMapping(value = "/hello", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    @ResponseBody
    public String hello() {
        return "hello";
    }


    @RequestMapping(value = "/rest/services/{serviceName}", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    @ResponseBody
    public String jsonService(@PathVariable("serviceName") String serviceName) {
        if(false){
            fetcher.fetchFiles(serviceName);
        }
        else {
            File file = new File("./files/"+serviceName);
            List<File> files = fetcher.fetchFiles(serviceName);
            File jsonFile = files.get(0);
            try {
                InputStream is = new FileInputStream(jsonFile);

                final int bufferSize = 1024;
                final char[] buffer = new char[bufferSize];
                final StringBuilder out = new StringBuilder();
                Reader in = new InputStreamReader(is, "UTF-8");
                for (; ; ) {
                    int rsz = in.read(buffer, 0, buffer.length);
                    if (rsz < 0)
                        break;
                    out.append(buffer, 0, rsz);
                }
                return out.toString();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
            catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "";
    }
}
