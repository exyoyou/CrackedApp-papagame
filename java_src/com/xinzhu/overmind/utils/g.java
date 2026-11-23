package com.xinzhu.overmind.utils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes8.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f90063a = "g";

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final Executor f90064a = Executors.newSingleThreadExecutor();

        /* JADX INFO: renamed from: com.xinzhu.overmind.utils.g$a$a, reason: collision with other inner class name */
        class RunnableC1138a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ InputStream f90065b;

            RunnableC1138a(InputStream inputStream) {
                this.f90065b = inputStream;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f90065b == null) {
                    return;
                }
                do {
                    try {
                    } catch (IOException unused) {
                    } finally {
                        try {
                            this.f90065b.close();
                        } catch (Exception unused2) {
                        }
                    }
                } while (this.f90065b.read(new byte[256]) > 0);
            }
        }

        private a() {
        }

        static void a(InputStream inputStream) {
            f90064a.execute(new RunnableC1138a(inputStream));
        }
    }

    public static void a(String str) throws IOException {
        String str2 = ma.g.d().k(str).w().equals(com.xinzhu.overmind.a.f89175k) ? com.join.mgps.mod.utils.d.f71902d : "arm";
        File fileN = com.xinzhu.overmind.a.N(str, str2);
        File fileJ = com.xinzhu.overmind.a.j(str);
        if (!fileN.exists()) {
            fileN.getParentFile().mkdirs();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("dex2oat");
        if (e.d()) {
            arrayList.add("--runtime-arg");
            arrayList.add("-classpath");
            arrayList.add("--runtime-arg");
            arrayList.add(x.a.f97576d);
        }
        arrayList.add("--dex-file=" + fileJ.getAbsolutePath());
        arrayList.add("--oat-file=" + fileN.getAbsolutePath());
        arrayList.add("--instruction-set=" + str2);
        arrayList.add("--compiler-filter=speed-profile");
        arrayList.add("--compact-dex-level=none");
        String str3 = f90063a;
        com.xinzhu.overmind.b.a(str3, "overmind dex2oat begin");
        ProcessBuilder processBuilder = new ProcessBuilder(arrayList);
        processBuilder.redirectErrorStream(true);
        Process processStart = processBuilder.start();
        a.a(processStart.getInputStream());
        a.a(processStart.getErrorStream());
        try {
            int iWaitFor = processStart.waitFor();
            if (iWaitFor == 0) {
                com.xinzhu.overmind.b.a(str3, "overmind dex2oat end");
                return;
            }
            throw new IOException("dex2oat works unsuccessfully, exit code: " + iWaitFor);
        } catch (InterruptedException e10) {
            throw new IOException("dex2oat is interrupted, msg: " + e10.getMessage(), e10);
        }
    }
}
