package com.kuaishou.weapon.p0;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes3.dex */
public class bi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f74521a = "/proc/cpuinfo";

    public static String a() {
        try {
            String str = Build.CPU_ABI;
            String str2 = Build.CPU_ABI2;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            if (!TextUtils.isEmpty(str2)) {
                sb2.append(";" + str2);
            }
            String strA = bf.a("ro.product.cpu.abilist");
            if (!TextUtils.isEmpty(strA)) {
                sb2.append(";" + strA);
            }
            return sb2.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static bh b() throws IOException {
        InputStreamReader inputStreamReader;
        FileInputStream fileInputStream;
        BufferedReader bufferedReader;
        String[] strArrSplit;
        try {
            fileInputStream = new FileInputStream(new File(f74521a));
            try {
                inputStreamReader = new InputStreamReader(fileInputStream);
                try {
                    bufferedReader = new BufferedReader(inputStreamReader);
                    try {
                        bh bhVar = new bh();
                        int i10 = 0;
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                bhVar.a(i10);
                                bufferedReader.close();
                                inputStreamReader.close();
                                fileInputStream.close();
                                return bhVar;
                            }
                            if (!TextUtils.isEmpty(line)) {
                                if (line.contains("Processor")) {
                                    String[] strArrSplit2 = line.split(":");
                                    if (strArrSplit2 != null) {
                                        String strTrim = strArrSplit2[1].trim();
                                        if (!TextUtils.isEmpty(strTrim)) {
                                            bhVar.b(strTrim);
                                        }
                                    }
                                }
                                if (line.contains("processor")) {
                                    String[] strArrSplit3 = line.split(":");
                                    if (strArrSplit3 != null) {
                                        String strTrim2 = strArrSplit3[1].trim();
                                        if (!TextUtils.isEmpty(strTrim2)) {
                                            i10 = Integer.parseInt(strTrim2) + 1;
                                        }
                                    }
                                }
                                if (line.contains("Hardware") && (strArrSplit = line.split(":")) != null) {
                                    String str = strArrSplit[1];
                                    if (!TextUtils.isEmpty(str)) {
                                        bhVar.a(str);
                                    }
                                }
                            }
                        }
                    } catch (Throwable unused) {
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        if (inputStreamReader != null) {
                            inputStreamReader.close();
                        }
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        return null;
                    }
                } catch (Throwable unused2) {
                    bufferedReader = null;
                }
            } catch (Throwable unused3) {
                inputStreamReader = null;
                bufferedReader = null;
            }
        } catch (Throwable unused4) {
            inputStreamReader = null;
            fileInputStream = null;
            bufferedReader = null;
        }
    }
}
