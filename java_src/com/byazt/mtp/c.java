package com.byazt.mtp;

import com.byazt.ip.x;
import com.byazt.nr.da;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 253, 20})
public class c extends com.byazt.ip.ve<com.byazt.hi.c, com.byazt.ha.c> {

    /* JADX INFO: renamed from: com.byazt.mtp.c$2, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 253, 70})
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f17009c;

        static {
            int[] iArr = new int[com.byazt.hi.c.values().length];
            f17009c = iArr;
            try {
                iArr[com.byazt.hi.c.CREATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17009c[com.byazt.hi.c.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17009c[com.byazt.hi.c.MARKET_OPENED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17009c[com.byazt.hi.c.MARKET_CLOSED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17009c[com.byazt.hi.c.DOWNLOAD_STARTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17009c[com.byazt.hi.c.DOWNLOAD_PAUSED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17009c[com.byazt.hi.c.DOWNLOAD_FAILED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17009c[com.byazt.hi.c.DOWNLOAD_CANCELED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17009c[com.byazt.hi.c.DOWNLOAD_FINISHED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17009c[com.byazt.hi.c.END.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public c(String str, String str2) {
        this.ve = new com.byazt.ha.c(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void c(final com.byazt.hi.c cVar, final x xVar) {
        this.tt = cVar;
        if (xVar == null) {
            xVar = new x(System.currentTimeMillis());
        }
        da.ve().post(new Runnable() { // from class: com.byazt.mtp.c.1
            @Override // java.lang.Runnable
            public void run() {
                for (com.byazt.ip.a aVar : c.this.f15457c) {
                    if (aVar instanceof com.byazt.zyd.c) {
                        switch (AnonymousClass2.f17009c[cVar.ordinal()]) {
                            case 1:
                                ((com.byazt.zyd.c) aVar).c(c.this.getContext(), xVar);
                                break;
                            case 2:
                                ((com.byazt.zyd.c) aVar).tt(c.this.getContext(), xVar);
                                break;
                            case 3:
                                ((com.byazt.zyd.c) aVar).ve(c.this.getContext(), xVar);
                                break;
                            case 4:
                                ((com.byazt.zyd.c) aVar).uj(c.this.getContext(), xVar);
                                break;
                            case 5:
                                ((com.byazt.zyd.c) aVar).n(c.this.getContext(), xVar);
                                break;
                            case 6:
                                ((com.byazt.zyd.c) aVar).a(c.this.getContext(), xVar);
                                break;
                            case 7:
                                ((com.byazt.zyd.c) aVar).sp(c.this.getContext(), xVar);
                                break;
                            case 8:
                                ((com.byazt.zyd.c) aVar).x(c.this.getContext(), xVar);
                                break;
                            case 9:
                                ((com.byazt.zyd.c) aVar).i(c.this.getContext(), xVar);
                                break;
                            case 10:
                                ((com.byazt.zyd.c) aVar).da(c.this.getContext(), xVar);
                                break;
                        }
                    }
                }
            }
        });
    }
}
