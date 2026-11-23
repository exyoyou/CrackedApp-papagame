package com.xinzhu.overmind.utils;

import com.xinzhu.overmind.Overmind;
import java.io.File;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Map<File, a> f90047b = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashSet<String> f90048a = new HashSet<>();

    public a(File file) throws Throwable {
        ZipFile zipFile;
        ZipFile zipFile2 = null;
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            Objects.requireNonNull(fileArrListFiles);
            for (File file2 : fileArrListFiles) {
                if (file2.getName().endsWith(".apk")) {
                    try {
                        zipFile = new ZipFile(file2);
                        try {
                            try {
                                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                                while (enumerationEntries.hasMoreElements()) {
                                    String name = enumerationEntries.nextElement().getName();
                                    if (name.startsWith("lib/arm64-v8a")) {
                                        this.f90048a.add("arm64-v8a");
                                    } else if (name.startsWith("lib/armeabi-v7a")) {
                                        this.f90048a.add("armeabi-v7a");
                                    } else if (name.startsWith("lib/armeabi")) {
                                        this.f90048a.add(com.join.mgps.mod.utils.d.f71903e);
                                    }
                                }
                                p.a(zipFile);
                            } catch (Throwable th) {
                                th = th;
                                zipFile2 = zipFile;
                                p.a(zipFile2);
                                throw th;
                            }
                        } catch (Exception e10) {
                            e = e10;
                            e.printStackTrace();
                            p.a(zipFile);
                        }
                    } catch (Exception e11) {
                        e = e11;
                        zipFile = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            }
            return;
        }
        try {
            try {
                ZipFile zipFile3 = new ZipFile(file);
                try {
                    Enumeration<? extends ZipEntry> enumerationEntries2 = zipFile3.entries();
                    while (enumerationEntries2.hasMoreElements()) {
                        String name2 = enumerationEntries2.nextElement().getName();
                        if (name2.startsWith("lib/arm64-v8a")) {
                            this.f90048a.add("arm64-v8a");
                        } else if (name2.startsWith("lib/armeabi-v7a")) {
                            this.f90048a.add("armeabi-v7a");
                        } else if (name2.startsWith("lib/armeabi")) {
                            this.f90048a.add(com.join.mgps.mod.utils.d.f71903e);
                        }
                    }
                    p.a(zipFile3);
                } catch (Exception e12) {
                    e = e12;
                    zipFile2 = zipFile3;
                    e.printStackTrace();
                    p.a(zipFile2);
                } catch (Throwable th3) {
                    th = th3;
                    zipFile2 = zipFile3;
                    p.a(zipFile2);
                    throw th;
                }
            } catch (Exception e13) {
                e = e13;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static HashSet<String> a(File file) {
        a aVar = f90047b.get(file);
        if (aVar == null) {
            aVar = new a(file);
            f90047b.put(file, aVar);
        }
        return aVar.f90048a;
    }

    public static boolean e(File file) {
        a aVar = f90047b.get(file);
        if (aVar == null) {
            aVar = new a(file);
            f90047b.put(file, aVar);
        }
        if (aVar.d() || Overmind.isPluginPkgInstalled()) {
            return true;
        }
        return Overmind.is64Bit() ? aVar.c() : aVar.b();
    }

    public boolean b() {
        return this.f90048a.contains(com.join.mgps.mod.utils.d.f71903e) || this.f90048a.contains("armeabi-v7a");
    }

    public boolean c() {
        return this.f90048a.contains("arm64-v8a");
    }

    public boolean d() {
        return this.f90048a.isEmpty();
    }
}
