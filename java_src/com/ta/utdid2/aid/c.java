package com.ta.utdid2.aid;

import android.content.Context;
import android.content.SharedPreferences;
import com.ta.utdid2.android.utils.d;
import com.ta.utdid2.android.utils.h;
import com.ta.utdid2.android.utils.i;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f82900a = "com.ta.utdid2.aid.c";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f82901b = "OfJbkLdFbPOMbGyP";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f82902c = "EvQwnbilKezpOJey";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f82903d = "rKrMJgyAEbVtSQGi";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Map<String, String> f82904e = new ConcurrentHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Map<String, Long> f82905f = new ConcurrentHashMap();

    public static long a(Context context, String str, String str2) {
        if (context == null) {
            return 0L;
        }
        String strC = c(str, str2);
        Long lValueOf = Long.valueOf(f82905f.containsKey(strC) ? f82905f.get(strC).longValue() : 0L);
        if (d.f82932b) {
            new StringBuilder("cache AIDGenTime:").append(lValueOf);
        }
        if (lValueOf.longValue() == 0) {
            lValueOf = Long.valueOf(context.getSharedPreferences(f82901b, 0).getLong(f82903d.concat(strC), 0L));
            f82905f.put(strC, lValueOf);
        }
        return lValueOf.longValue();
    }

    public static String b(Context context, String str, String str2) {
        if (context == null) {
            return "";
        }
        String strC = c(str, str2);
        String str3 = f82904e.get(strC);
        if (d.f82932b) {
            new StringBuilder("cache AID:").append(str3);
        }
        if (!i.c(str3)) {
            return str3;
        }
        String string = context.getSharedPreferences(f82901b, 0).getString(f82902c.concat(strC), "");
        f82904e.put(strC, string);
        return string;
    }

    private static String c(String str, String str2) {
        String strA = com.ta.utdid2.android.utils.c.a(str.concat(str2).getBytes(), 2);
        if (d.f82932b) {
            new StringBuilder("encodedName:").append(strA);
        }
        return strA;
    }

    public static void d(Context context, String str, String str2, String str3) {
        if (context == null) {
            return;
        }
        String strC = c(str, str3);
        long jCurrentTimeMillis = System.currentTimeMillis();
        f82904e.put(strC, str2);
        f82905f.put(strC, Long.valueOf(jCurrentTimeMillis));
        SharedPreferences sharedPreferences = context.getSharedPreferences(f82901b, 0);
        h.a(sharedPreferences.edit().putString(f82902c.concat(strC), str2));
        h.a(sharedPreferences.edit().putLong(f82903d.concat(strC), jCurrentTimeMillis));
    }
}
