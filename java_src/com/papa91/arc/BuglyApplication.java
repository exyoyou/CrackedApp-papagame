package com.papa91.arc;

import android.app.Application;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.tencent.bugly.crashreport.CrashReport;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class BuglyApplication extends Application {
    private static String getProcessName(int i10) {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new FileReader("/proc/" + i10 + "/cmdline"));
            try {
                String line = bufferedReader.readLine();
                if (!TextUtils.isEmpty(line)) {
                    line = line.trim();
                }
                try {
                    bufferedReader.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
                return line;
            } catch (Throwable th) {
                th = th;
                try {
                    th.printStackTrace();
                    return null;
                } finally {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedReader = null;
        }
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        HashMap map = new HashMap();
        map.put(":fc", "900010112");
        map.put(":fba", "900009495");
        map.put(":psp", "ff3746a4d5");
        map.put(":gba", "0937ef11de");
        map.put(":gbapro", "09215800fc");
        map.put(":gbc", "003e34286e");
        map.put(":sfc", "a1035c8548");
        map.put(":wsc", "573fc34f64");
        map.put(":md", "d74ecb8243");
        map.put(":ps", "7b05d084d0");
        map.put(":x", "7325a003a3");
        map.put(":y", "e9405cbd2c");
        map.put(":p0", "d42ce98bac");
        Context applicationContext = getApplicationContext();
        String packageName = applicationContext.getPackageName();
        String processName = getProcessName(Process.myPid());
        CrashReport.UserStrategy userStrategy = new CrashReport.UserStrategy(applicationContext);
        userStrategy.setUploadProcess(processName == null || processName.startsWith(packageName));
        if (!processName.contains(":")) {
            CrashReport.initCrashReport(applicationContext, "f70caa2e9f", false);
            return;
        }
        String strSubstring = processName.substring(processName.lastIndexOf(":"));
        if (map.containsKey(strSubstring)) {
            if (!strSubstring.startsWith(":p") || strSubstring.equals(":psp") || strSubstring.equals(":ps")) {
                CrashReport.initCrashReport(applicationContext, (String) map.get(strSubstring), false, userStrategy);
            }
        }
    }
}
