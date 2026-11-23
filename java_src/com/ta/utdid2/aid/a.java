package com.ta.utdid2.aid;

import android.content.Context;
import com.ta.utdid2.android.utils.f;
import com.ta.utdid2.android.utils.i;
import com.ta.utdid2.android.utils.k;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f82863b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f82864c = "com.ta.utdid2.aid.a";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f82865d = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f82866a;

    private a(Context context) {
        this.f82866a = context;
    }

    private synchronized String a(String str, String str2, String str3) {
        Context context = this.f82866a;
        if (context == null) {
            return "";
        }
        String strH = f.f(context) ? b.f(this.f82866a).h(str, str2, str3, c.b(this.f82866a, str, str2)) : "";
        c.d(this.f82866a, str, strH, str2);
        return strH;
    }

    public static synchronized a b(Context context) {
        if (f82863b == null) {
            f82863b = new a(context);
        }
        return f82863b;
    }

    public String c(String str, String str2, String str3) {
        if (this.f82866a != null && !i.c(str) && !i.c(str2)) {
            String strB = c.b(this.f82866a, str, str2);
            return ((i.c(strB) || !k.a(c.a(this.f82866a, str, str2), 1)) && f.f(this.f82866a)) ? a(str, str2, str3) : strB;
        }
        StringBuilder sb2 = new StringBuilder("mContext:");
        sb2.append(this.f82866a);
        sb2.append("; has appName:");
        sb2.append(!i.c(str));
        sb2.append("; has token:");
        sb2.append(!i.c(str2));
        return "";
    }

    public void d(String str, String str2, String str3, e8.a aVar) {
        if (aVar == null) {
            return;
        }
        if (this.f82866a == null || i.c(str) || i.c(str2)) {
            StringBuilder sb2 = new StringBuilder("mContext:");
            sb2.append(this.f82866a);
            sb2.append("; callback:");
            sb2.append(aVar);
            sb2.append("; has appName:");
            sb2.append(!i.c(str));
            sb2.append("; has token:");
            sb2.append(!i.c(str2));
            aVar.a(1002, "");
            return;
        }
        String strB = c.b(this.f82866a, str, str2);
        if (!i.c(strB) && k.a(c.a(this.f82866a, str, str2), 1)) {
            aVar.a(1001, strB);
        } else if (f.f(this.f82866a)) {
            b.f(this.f82866a).i(str, str2, str3, strB, aVar);
        } else {
            aVar.a(1003, strB);
        }
    }
}
