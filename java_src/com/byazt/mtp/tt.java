package com.byazt.mtp;

import com.byazt.ip.x;
import com.byazt.nr.da;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 253, 13})
public class tt extends com.byazt.ip.ve<com.byazt.hi.tt, com.byazt.ha.tt> {

    /* JADX INFO: renamed from: com.byazt.mtp.tt$2, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 253, 92})
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f17015c;

        static {
            int[] iArr = new int[com.byazt.hi.tt.values().length];
            f17015c = iArr;
            try {
                iArr[com.byazt.hi.tt.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17015c[com.byazt.hi.tt.REQED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17015c[com.byazt.hi.tt.RECEIVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17015c[com.byazt.hi.tt.LOADED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public tt(String str, String str2) {
        this.ve = new com.byazt.ha.tt(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void c(final com.byazt.hi.tt ttVar, final x xVar) {
        this.tt = ttVar;
        if (xVar == null) {
            xVar = new x(System.currentTimeMillis());
        }
        da.ve().post(new Runnable() { // from class: com.byazt.mtp.tt.1
            @Override // java.lang.Runnable
            public void run() {
                for (com.byazt.ip.a aVar : tt.this.f15457c) {
                    if (aVar instanceof com.byazt.zyd.tt) {
                        int i10 = AnonymousClass2.f17015c[ttVar.ordinal()];
                        if (i10 == 1) {
                            ((com.byazt.zyd.tt) aVar).c(tt.this.getContext(), xVar);
                        } else if (i10 == 2) {
                            ((com.byazt.zyd.tt) aVar).tt(tt.this.getContext(), xVar);
                        } else if (i10 == 3) {
                            ((com.byazt.zyd.tt) aVar).ve(tt.this.getContext(), xVar);
                        } else if (i10 == 4) {
                            ((com.byazt.zyd.tt) aVar).uj(tt.this.getContext(), xVar);
                        }
                    }
                }
            }
        });
    }
}
