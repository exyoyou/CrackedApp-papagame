package com.xinzhu.datatransfer;

import android.util.ArrayMap;
import com.xinzhu.overmind.utils.c;
import com.xinzhu.overmind.utils.l;
import java.io.File;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f88195a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static ArrayMap<File, File> f88196b = new ArrayMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static c<File> f88197c = new c<>();

    static {
        f88196b.put(b.d(), com.xinzhu.overmind.a.E());
        f88197c.add(b.b());
        f88197c.add(b.a());
        f88197c.add(b.d());
    }

    public static void a() {
        if (b.a().exists()) {
            com.xinzhu.overmind.b.l(f88195a, "Need Data Transfer, do it.");
            for (Map.Entry<File, File> entry : f88196b.entrySet()) {
                File key = entry.getKey();
                File value = entry.getValue();
                if (key.exists()) {
                    try {
                        l.g(key, value);
                        l.j(key);
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                }
            }
            k8.b.a(false);
            k8.a.a();
            l.j(b.a());
        }
    }

    public static void b() {
        if (b.a().exists()) {
            com.xinzhu.overmind.b.l(f88195a, "Need Data Transfer for main package, do it.");
            for (Map.Entry<File, File> entry : f88196b.entrySet()) {
                File key = entry.getKey();
                File value = entry.getValue();
                if (key.exists()) {
                    try {
                        l.g(key, value);
                        l.j(key);
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                }
            }
            k8.b.a(true);
        }
    }
}
