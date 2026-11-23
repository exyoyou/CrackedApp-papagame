package com.ta.utdid2.device;

import android.content.Context;
import com.ta.utdid2.android.utils.g;
import com.ta.utdid2.android.utils.i;
import java.util.zip.Adler32;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f82988a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static String f82989b = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Object f82990c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final byte f82991d = 1;

    private static a a(Context context) {
        if (context == null) {
            return null;
        }
        new a();
        synchronized (f82990c) {
            String strE = d.f(context).e();
            if (i.c(strE)) {
                return null;
            }
            if (strE.endsWith("\n")) {
                strE = strE.substring(0, strE.length() - 1);
            }
            a aVar = new a();
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strA = g.a(context);
            String strB = g.b(context);
            aVar.i(strA);
            aVar.j(strA);
            aVar.h(jCurrentTimeMillis);
            aVar.k(strB);
            aVar.l(strE);
            aVar.g(c(aVar));
            return aVar;
        }
    }

    public static synchronized a b(Context context) {
        a aVar = f82988a;
        if (aVar != null) {
            return aVar;
        }
        if (context == null) {
            return null;
        }
        a aVarA = a(context);
        f82988a = aVarA;
        return aVarA;
    }

    static long c(a aVar) {
        if (aVar == null) {
            return 0L;
        }
        String str = String.format("%s%s%s%s%s", aVar.f(), aVar.c(), Long.valueOf(aVar.b()), aVar.e(), aVar.d());
        if (i.c(str)) {
            return 0L;
        }
        Adler32 adler32 = new Adler32();
        adler32.reset();
        adler32.update(str.getBytes());
        return adler32.getValue();
    }
}
