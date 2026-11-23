package com.join.mgps.Util;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes4.dex */
public class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f49795a = "ExecTerminal";

    public static String a(String cmd) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("^ Executing '");
        sb2.append(cmd);
        sb2.append("'");
        try {
            try {
                Process processExec = Runtime.getRuntime().exec(com.xinzhu.overmind.utils.x.f90145b);
                DataInputStream dataInputStream = new DataInputStream(processExec.getInputStream());
                DataOutputStream dataOutputStream = new DataOutputStream(processExec.getOutputStream());
                dataOutputStream.writeBytes(cmd + "\n");
                dataOutputStream.writeBytes(com.xinzhu.overmind.utils.x.f90146c);
                dataOutputStream.flush();
                dataOutputStream.close();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(dataInputStream));
                String str = "";
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            return str;
                        }
                        str = str + line + "\n";
                    } catch (IOException e10) {
                        e10.printStackTrace();
                        processExec.waitFor();
                        return "";
                    }
                }
            } catch (IOException e11) {
                e11.printStackTrace();
            }
        } catch (InterruptedException e12) {
            e12.printStackTrace();
        }
    }
}
