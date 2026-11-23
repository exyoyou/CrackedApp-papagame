package com.byazt.na;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 662, 91})
public final class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static a f17052c;
    public static long tt;

    private sp() {
    }

    public static a c() {
        synchronized (sp.class) {
            a aVar = f17052c;
            if (aVar == null) {
                return new a();
            }
            f17052c = aVar.f17047a;
            aVar.f17047a = null;
            tt -= 8192;
            return aVar;
        }
    }

    public static void c(a aVar) {
        if (aVar.f17047a == null && aVar.sp == null) {
            if (aVar.uj) {
                return;
            }
            synchronized (sp.class) {
                long j10 = tt;
                if (j10 + 8192 > 65536) {
                    return;
                }
                tt = j10 + 8192;
                aVar.f17047a = f17052c;
                aVar.ve = 0;
                aVar.tt = 0;
                f17052c = aVar;
                return;
            }
        }
        throw new IllegalArgumentException();
    }
}
