package com.umeng.commonsdk.config;

import android.content.Context;
import android.util.Pair;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
public class FieldManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f85065a = "cfgfd";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f85066b = b.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f85067c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Object f85068d = new Object();

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final FieldManager f85069a = new FieldManager();

        private a() {
        }
    }

    public static FieldManager a() {
        return a.f85069a;
    }

    public static boolean allow(String str) {
        synchronized (f85068d) {
            if (!f85067c) {
                return false;
            }
            return b.a(str);
        }
    }

    public static boolean b() {
        boolean z10;
        synchronized (f85068d) {
            z10 = f85067c;
        }
        return z10;
    }

    private FieldManager() {
    }

    public void a(Context context) {
        String str;
        String str2 = "1001@3749699455,2130669566,262139,1983";
        String[] strArr = {d.a.class.getName(), d.b.class.getName(), d.c.class.getName(), d.EnumC1056d.class.getName()};
        String strImprintProperty = UMEnvelopeBuild.imprintProperty(context, "cfgfd", "1001@3749699455,2130669566,262139,1983");
        synchronized (f85068d) {
            Pair<Long, String> pairA = a(strImprintProperty);
            if (((Long) pairA.first).longValue() > 1000 && (str = (String) pairA.second) != null && str.length() > 0) {
                str2 = str;
            }
            String[] strArrSplit = str2.split(",");
            int length = strArrSplit.length;
            if (length > 0) {
                ArrayList arrayList = new ArrayList();
                g gVar = new g();
                for (int i10 = 0; i10 < length; i10++) {
                    arrayList.add(gVar);
                    ((e) arrayList.get(i10)).a(strArrSplit[i10], f85066b, d.b(strArr[i10]));
                }
            }
            f85067c = true;
        }
    }

    public void a(Context context, String str) {
        String str2;
        String str3 = "1001@3749699455,2130669566,262139,1983";
        String[] strArr = {d.a.class.getName(), d.b.class.getName(), d.c.class.getName(), d.EnumC1056d.class.getName()};
        synchronized (f85068d) {
            f85066b.a();
            if (str != null) {
                Pair<Long, String> pairA = a(str);
                if (((Long) pairA.first).longValue() > 1000 && (str2 = (String) pairA.second) != null && str2.length() > 0) {
                    str3 = str2;
                }
            }
            String[] strArrSplit = str3.split(",");
            int length = strArrSplit.length;
            if (length > 0) {
                ArrayList arrayList = new ArrayList();
                g gVar = new g();
                for (int i10 = 0; i10 < length; i10++) {
                    arrayList.add(gVar);
                    ((e) arrayList.get(i10)).a(strArrSplit[i10], f85066b, d.b(strArr[i10]));
                }
            }
            f85067c = true;
        }
    }

    private static Pair<Long, String> a(String str) {
        Pair<Long, String> pair = new Pair<>(-1L, null);
        if (str != null && str.length() >= 2) {
            String[] strArrSplit = str.split("@");
            if (strArrSplit.length < 2) {
                return pair;
            }
            try {
                long j10 = Long.parseLong(strArrSplit[0]);
                return new Pair<>(Long.valueOf(j10), strArrSplit[1]);
            } catch (Throwable unused) {
            }
        }
        return pair;
    }
}
