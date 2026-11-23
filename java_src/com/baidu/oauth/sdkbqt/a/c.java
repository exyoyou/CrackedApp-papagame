package com.baidu.oauth.sdkbqt.a;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f8130a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f8131b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f8132c = 3;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f8133d = "aHR0cHM6Ly9wYXNzcG9ydC5iYWlkdS5jb20=";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f8134e = "aHR0cHM6Ly93YXBwYXNzLmJhaWR1LmNvbQ==";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f8135f = "aHR0cHM6Ly9vcGVuYXBpLmJhaWR1LmNvbQ==";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f8136g = "aHR0cHM6Ly9jcTAxLXBhc3Nwb3J0LW1pczAwLmNxMDEuYmFpZHUuY29tOjg1ODM=";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f8137h = "aHR0cHM6Ly9jcTAxLXBhc3Nwb3J0LW1pczAwLmNxMDEuYmFpZHUuY29tOjg1ODM=";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f8138i = "aHR0cHM6Ly9uc2NsaWNrLmJhaWR1LmNvbS92LmdpZg==";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f8139j = "aHR0cHM6Ly93d3cuYmFpZHUuY29t";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static int f8140k = 1;

    public static String a(String str) {
        int i10 = f8140k;
        String str2 = f8135f;
        if (i10 != 1 && (i10 == 2 || i10 == 3)) {
            str2 = "aHR0cHM6Ly9jcTAxLXBhc3Nwb3J0LW1pczAwLmNxMDEuYmFpZHUuY29tOjg1ODM=";
        }
        return b(str2) + b(str);
    }

    public static String b() {
        return b(f8134e);
    }

    public static String c() {
        return b(f8138i);
    }

    public static ArrayList<String> d() {
        ArrayList<String> arrayList = new ArrayList<>(3);
        arrayList.add(b(f8133d).replace("https://", ""));
        arrayList.add(b(f8134e).replace("https://", ""));
        arrayList.add(b(f8138i).replace("https://", ""));
        return arrayList;
    }

    public static ArrayList<String> e() {
        ArrayList<String> arrayList = new ArrayList<>(2);
        arrayList.add(b(f8133d).replace("https://", ""));
        arrayList.add(b(f8134e).replace("https://", ""));
        return arrayList;
    }

    public static ArrayList<String> f() {
        ArrayList<String> arrayList = new ArrayList<>(3);
        arrayList.add(b("YmFpZHUuY29t"));
        arrayList.add(b("aGFvMTIzLmNvbQ=="));
        arrayList.add(b("bnVvbWkuY29t"));
        arrayList.add(b("YmFpZnViYW8uY29t"));
        return arrayList;
    }

    public static String g() {
        return b(f8139j);
    }

    private static String b(String str) {
        return h.b(str);
    }

    public static String a() {
        return b(f8133d);
    }

    public static void a(int i10) {
        f8140k = i10;
    }
}
