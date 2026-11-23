package com.byazt.mtp;

import com.byazt.ip.x;
import com.byazt.nr.da;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 253, 34})
public class a extends com.byazt.ip.ve<com.byazt.hi.a, com.byazt.ha.a> {

    /* JADX INFO: renamed from: com.byazt.mtp.a$2, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 253, 254})
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f17007c;

        static {
            int[] iArr = new int[com.byazt.hi.a.values().length];
            f17007c = iArr;
            try {
                iArr[com.byazt.hi.a.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17007c[com.byazt.hi.a.FOREGROUNDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17007c[com.byazt.hi.a.BACKGROUNDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17007c[com.byazt.hi.a.END.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public a(String str, String str2) {
        this.ve = new com.byazt.ha.a(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void c(final com.byazt.hi.a aVar, final x xVar) {
        this.tt = aVar;
        if (xVar == null) {
            xVar = new x(System.currentTimeMillis());
        }
        da.ve().post(new Runnable() { // from class: com.byazt.mtp.a.1
            @Override // java.lang.Runnable
            public void run() {
                for (com.byazt.ip.a aVar2 : a.this.f15457c) {
                    if (aVar2 instanceof com.byazt.zyd.a) {
                        int i10 = AnonymousClass2.f17007c[aVar.ordinal()];
                        if (i10 == 1) {
                            ((com.byazt.zyd.a) aVar2).c(a.this.getContext(), xVar);
                        } else if (i10 == 2) {
                            ((com.byazt.zyd.a) aVar2).tt(a.this.getContext(), xVar);
                        } else if (i10 == 3) {
                            ((com.byazt.zyd.a) aVar2).ve(a.this.getContext(), xVar);
                        } else if (i10 == 4) {
                            ((com.byazt.zyd.a) aVar2).uj(a.this.getContext(), xVar);
                        }
                    }
                }
            }
        });
    }
}
