package com.join.mgps.mod.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.join.mgps.Util.t2;
import com.xinzhu.overmind.Overmind;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes3.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f71924b = "f";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static f f71925c = new f();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f71926d = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f71927a = Executors.newCachedThreadPool();

    private class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f71928b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ZipFile f71929c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ZipEntry f71930d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Context f71931e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f71932f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f71933g;

        a(Context context, String libDir, ZipFile zipFile, ZipEntry zipEntry, long lastModify) {
            this.f71933g = libDir;
            File file = new File(libDir);
            try {
                if (!file.exists()) {
                    file.mkdirs();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f71929c = zipFile;
            this.f71931e = context;
            this.f71930d = zipEntry;
            this.f71928b = c(zipEntry.getName());
            this.f71932f = lastModify;
            try {
                this.f71929c = new ZipFile(zipFile.getName());
            } catch (IOException e11) {
                e11.printStackTrace();
            }
        }

        private int b(InputStream is) throws IOException {
            if (is == null) {
                return 0;
            }
            int iAvailable = is.available();
            if (iAvailable <= 0) {
                return 1024;
            }
            return iAvailable;
        }

        private final String c(String zipEntryName) {
            return zipEntryName.substring(zipEntryName.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
        }

        private void d() throws IOException {
            a(this.f71929c.getInputStream(this.f71930d), new FileOutputStream(new File(this.f71933g, this.f71928b)));
            this.f71929c.close();
        }

        public void a(InputStream is, OutputStream os) throws IOException {
            if (is == null || os == null) {
                return;
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(is);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(os);
            int iB = b(bufferedInputStream);
            byte[] bArr = new byte[iB];
            while (true) {
                int i10 = bufferedInputStream.read(bArr, 0, iB);
                if (i10 == -1) {
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    bufferedInputStream.close();
                    return;
                }
                bufferedOutputStream.write(bArr, 0, i10);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent;
            try {
                try {
                    Intent intent2 = new Intent(d.f71918t);
                    intent2.putExtra("soName", this.f71928b);
                    Overmind.getContext().sendBroadcast(intent2);
                    d();
                    Context context = this.f71931e;
                    if (context != null) {
                        PluginConfig.setSoLastModifiedTime(context, this.f71930d.getName(), this.f71932f);
                    }
                    String unused = f.f71924b;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("copy so lib success: ");
                    sb2.append(this.f71930d.getName());
                    intent = new Intent(d.f71919u);
                } catch (IOException e10) {
                    String unused2 = f.f71924b;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("copy so lib failed: ");
                    sb3.append(e10.toString());
                    e10.printStackTrace();
                    intent = new Intent(d.f71919u);
                }
                intent.putExtra("soName", this.f71928b);
                Overmind.getContext().sendBroadcast(intent);
            } catch (Throwable th) {
                Intent intent3 = new Intent(d.f71919u);
                intent3.putExtra("soName", this.f71928b);
                Overmind.getContext().sendBroadcast(intent3);
                throw th;
            }
        }
    }

    private f() {
    }

    public static f f() {
        return f71925c;
    }

    @SuppressLint({"DefaultLocale"})
    private String g(String cpuName) {
        if (cpuName.toLowerCase().contains(d.f71902d)) {
            return d.f71902d;
        }
        if (cpuName.toLowerCase().contains("arm")) {
            return d.f71903e;
        }
        if (cpuName.toLowerCase().contains(d.f71904f)) {
            return d.f71904f;
        }
        return cpuName.toLowerCase().contains(d.f71905g) ? d.f71905g : d.f71903e;
    }

    private String h() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"));
            String line = bufferedReader.readLine();
            bufferedReader.close();
            String[] strArrSplit = line.split(":\\s+", 2);
            if (strArrSplit.length >= 2) {
                return strArrSplit[1];
            }
            return null;
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return null;
        } catch (IOException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public void b(Context context, String dexPath, String nativeLibDir) {
        c(context, dexPath, nativeLibDir, g(h()));
    }

    public void c(Context context, String dexPath, String nativeLibDir, String cpuArchitect) {
        Context context2;
        Intent intent;
        boolean z10;
        Enumeration<? extends ZipEntry> enumeration;
        f71926d = nativeLibDir;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            Overmind.getContext().sendBroadcast(new Intent(d.f71918t));
            if (t2.i(dexPath)) {
                ZipFile zipFile = new ZipFile(dexPath);
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    if (!zipEntryNextElement.isDirectory()) {
                        long millis = Build.VERSION.SDK_INT >= 26 ? zipEntryNextElement.getLastModifiedTime().toMillis() : zipEntryNextElement.getTime();
                        String name = zipEntryNextElement.getName();
                        if (!name.endsWith(".so") || !name.contains(cpuArchitect)) {
                            enumeration = enumerationEntries;
                            if (name.endsWith("EXTDEX")) {
                                if (context == null || millis != PluginConfig.getSoLastModifiedTime(context, name)) {
                                    this.f71927a.execute(new a(context, nativeLibDir, zipFile, zipEntryNextElement, millis));
                                } else {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("skip copying, the so lib is exist and not change: ");
                                    sb2.append(name);
                                }
                            }
                            enumerationEntries = enumeration;
                        } else if (context == null || millis != PluginConfig.getSoLastModifiedTime(context, name)) {
                            enumeration = enumerationEntries;
                            this.f71927a.execute(new a(context, nativeLibDir, zipFile, zipEntryNextElement, millis));
                            enumerationEntries = enumeration;
                        } else {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("skip copying, the so lib is exist and not change: ");
                            sb3.append(name);
                        }
                    }
                }
                z10 = false;
            } else {
                z10 = true;
            }
            if (z10) {
                context2 = Overmind.getContext();
                intent = new Intent(d.f71919u);
                context2.sendBroadcast(intent);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            context2 = Overmind.getContext();
            intent = new Intent(d.f71919u);
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        StringBuilder sb4 = new StringBuilder();
        sb4.append("### copy so time : ");
        sb4.append(jCurrentTimeMillis2 - jCurrentTimeMillis);
        sb4.append(" ms");
    }

    public void d(Context context, String dexPath, String nativeLibDir, String pluginLibPath, List<String> solist) {
        e(context, dexPath, nativeLibDir, pluginLibPath, solist, g(h()));
    }

    public void e(Context context, String dexPath, String nativeLibDir, String pluginLibPath, List<String> solist, String cpuArchitect) {
        Enumeration<? extends ZipEntry> enumeration;
        String str;
        String str2 = cpuArchitect;
        f71926d = nativeLibDir;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("cpuArchitect: ");
        sb2.append(str2);
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            Overmind.getContext().sendBroadcast(new Intent(d.f71918t));
            if (t2.i(dexPath)) {
                ZipFile zipFile = new ZipFile(dexPath);
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    if (!zipEntryNextElement.isDirectory()) {
                        String name = zipEntryNextElement.getName();
                        long millis = Build.VERSION.SDK_INT >= 26 ? zipEntryNextElement.getLastModifiedTime().toMillis() : zipEntryNextElement.getTime();
                        if (!name.endsWith(".so") || !name.contains(str2)) {
                            enumeration = enumerationEntries;
                            if (name.endsWith("EXTDEX")) {
                                if (context == null || millis != PluginConfig.getSoLastModifiedTime(context, name)) {
                                    this.f71927a.execute(new a(context, nativeLibDir, zipFile, zipEntryNextElement, millis));
                                } else {
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("skip copying, the so lib is exist and not change: ");
                                    sb3.append(name);
                                }
                            }
                            enumerationEntries = enumeration;
                            str2 = cpuArchitect;
                        } else if (context == null || millis != PluginConfig.getSoLastModifiedTime(context, name)) {
                            int i10 = 0;
                            while (true) {
                                if (i10 >= solist.size()) {
                                    str = pluginLibPath;
                                    break;
                                } else {
                                    if (zipEntryNextElement.getName().endsWith(solist.get(i10))) {
                                        str = nativeLibDir;
                                        break;
                                    }
                                    i10++;
                                }
                            }
                            enumeration = enumerationEntries;
                            this.f71927a.execute(new a(context, str, zipFile, zipEntryNextElement, millis));
                            enumerationEntries = enumeration;
                            str2 = cpuArchitect;
                        } else {
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("skip copying, the so lib is exist and not change: ");
                            sb4.append(name);
                        }
                    }
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            Overmind.getContext().sendBroadcast(new Intent(d.f71919u));
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        StringBuilder sb5 = new StringBuilder();
        sb5.append("### copy so time : ");
        sb5.append(jCurrentTimeMillis2 - jCurrentTimeMillis);
        sb5.append(" ms");
    }

    public List<String> i(String dexPath) {
        return j(dexPath, g(h()));
    }

    public List<String> j(String dexPath, String abi) {
        ArrayList arrayList = new ArrayList();
        try {
            Enumeration<? extends ZipEntry> enumerationEntries = new ZipFile(dexPath).entries();
            while (enumerationEntries.hasMoreElements()) {
                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                if (!zipEntryNextElement.isDirectory()) {
                    String name = zipEntryNextElement.getName();
                    if (name.endsWith(".so") && name.contains(abi)) {
                        arrayList.add(name.substring(name.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1));
                    }
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        return arrayList;
    }
}
