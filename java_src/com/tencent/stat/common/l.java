package com.tencent.stat.common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
class l {
    l() {
    }

    static int a() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new m()).length;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 1;
        }
    }

    static int b() {
        int iIntValue = 0;
        try {
            String str = "";
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
            String strTrim = str.trim();
            if (strTrim.length() > 0) {
                iIntValue = Integer.valueOf(strTrim).intValue();
            }
        } catch (Exception e10) {
            k.f83921f.e(e10);
        }
        return iIntValue * 1000;
    }

    static int c() {
        int iIntValue = 0;
        try {
            String str = "";
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq").start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
            String strTrim = str.trim();
            if (strTrim.length() > 0) {
                iIntValue = Integer.valueOf(strTrim).intValue();
            }
        } catch (IOException e10) {
            k.f83921f.e((Exception) e10);
        }
        return iIntValue * 1000;
    }

    static String d() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"));
            String[] strArrSplit = bufferedReader.readLine().split(":\\s+", 2);
            for (int i10 = 0; i10 < strArrSplit.length; i10++) {
            }
            bufferedReader.close();
            return strArrSplit[1];
        } catch (Throwable th) {
            k.f83921f.e(th);
            return "";
        }
    }
}
