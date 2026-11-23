package com.byazt.rx;

import android.os.Build;
import com.byazt.nr.m;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 152, 15})
public class uj {

    @com.byazt.zqa.c(c = {0, 1, 152, 123})
    private static class c extends com.byazt.jtc.ve {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public InputStream f19553c;
        public List<String> tt;

        public c(InputStream inputStream, List<String> list) {
            super("LogcatDump$LogDumperThread");
            this.f19553c = inputStream;
            this.tt = list;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f19553c));
            int length = 32768;
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        if (!line.startsWith("---------")) {
                            length -= line.getBytes("UTF-8").length;
                            if (length < 0) {
                                break;
                            } else {
                                this.tt.add(line);
                            }
                        }
                    } else {
                        break;
                    }
                } catch (IOException unused) {
                    com.byazt.mg.a.c(bufferedReader);
                    return;
                } catch (Throwable th) {
                    com.byazt.mg.a.c(bufferedReader);
                    throw th;
                }
            }
            com.byazt.mg.a.c(bufferedReader);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 152, 153})
    private static class tt extends com.byazt.jtc.ve {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Process f19554c;
        public long tt;

        public tt(Process process, long j10) {
            super("LogcatDump$TimerThread");
            this.f19554c = process;
            this.tt = j10;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(this.tt);
            } catch (InterruptedException e10) {
                m.c(e10);
            }
            Process process = this.f19554c;
            if (process != null) {
                process.destroy();
            }
        }
    }

    public static List<String> c(int i10, int i11) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        String[] strArr = {"logcat", "-t", String.valueOf(i10), c(i11)};
        Process processExec = null;
        try {
            processExec = Runtime.getRuntime().exec(strArr);
            new c(processExec.getInputStream(), copyOnWriteArrayList).start();
            new c(processExec.getErrorStream(), copyOnWriteArrayList).start();
            new tt(processExec, BaseCloudFileManager.ACK_TIMEOUT).start();
            if (Build.VERSION.SDK_INT >= 26) {
                processExec.waitFor(BaseCloudFileManager.ACK_TIMEOUT, TimeUnit.MILLISECONDS);
            } else {
                processExec.waitFor();
            }
        } catch (Throwable th) {
            try {
                m.c(th);
                return copyOnWriteArrayList;
            } finally {
                if (processExec != null) {
                    processExec.destroy();
                }
            }
        }
        return copyOnWriteArrayList;
    }

    private static String c(int i10) {
        return (i10 < 0 || i10 >= 6) ? "*:V" : new String[]{"*:V", "*:D", "*:I", "*:W", "*:E", "*:F"}[i10];
    }
}
