package com.byazt.zlb;

import com.byazt.bzd.x;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 568, 20})
public final class c implements com.byazt.sq.ve.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.sq.ve.c f22910c;
    public tt tt = new tt();

    /* JADX INFO: renamed from: com.byazt.zlb.c$c, reason: collision with other inner class name */
    private interface InterfaceC0506c {
        void c(String str, String str2);
    }

    public c(com.byazt.sq.ve.c cVar) {
        this.f22910c = cVar;
    }

    @Override // com.byazt.sq.ve.c
    public void n(String str, String str2) {
        if (str2 == null || str2.length() <= 4096) {
            this.f22910c.n(str, str2);
        } else {
            c(str, str2, new InterfaceC0506c() { // from class: com.byazt.zlb.c.5
                @Override // com.byazt.zlb.c.InterfaceC0506c
                public void c(String str3, String str4) {
                    c.this.f22910c.n(str3, str4);
                }
            });
        }
    }

    @Override // com.byazt.sq.ve.c
    public void uj(String str, String str2) {
        if (str2 == null || str2.length() <= 4096) {
            this.f22910c.uj(str, str2);
        } else {
            c(str, str2, new InterfaceC0506c() { // from class: com.byazt.zlb.c.4
                @Override // com.byazt.zlb.c.InterfaceC0506c
                public void c(String str3, String str4) {
                    c.this.f22910c.uj(str3, str4);
                }
            });
        }
    }

    @Override // com.byazt.sq.ve.c
    public void ve(String str, String str2) {
        if (str2 == null || str2.length() <= 4096) {
            this.f22910c.ve(str, str2);
        } else {
            c(str, str2, new InterfaceC0506c() { // from class: com.byazt.zlb.c.3
                @Override // com.byazt.zlb.c.InterfaceC0506c
                public void c(String str3, String str4) {
                    c.this.f22910c.ve(str3, str4);
                }
            });
        }
    }

    @Override // com.byazt.sq.ve.c
    public void c(String str, String str2) {
        if (str2 == null || str2.length() <= 4096) {
            this.f22910c.c(str, str2);
        } else {
            c(str, str2, new InterfaceC0506c() { // from class: com.byazt.zlb.c.1
                @Override // com.byazt.zlb.c.InterfaceC0506c
                public void c(String str3, String str4) {
                    c.this.f22910c.c(str3, str4);
                }
            });
        }
    }

    @Override // com.byazt.sq.ve.c
    public void tt(String str, String str2) {
        if (str2 == null || str2.length() <= 4096) {
            this.f22910c.tt(str, str2);
        } else {
            c(str, str2, new InterfaceC0506c() { // from class: com.byazt.zlb.c.2
                @Override // com.byazt.zlb.c.InterfaceC0506c
                public void c(String str3, String str4) {
                    c.this.f22910c.tt(str3, str4);
                }
            });
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 568, 175})
    private class tt {
        private tt() {
        }

        public void c(String str, String str2, InterfaceC0506c interfaceC0506c) {
            String hexString = Integer.toHexString(str2.hashCode());
            int i10 = 0;
            while (i10 < str2.length()) {
                int iMin = Math.min(i10 + 4096, str2.length());
                interfaceC0506c.c(c(str, hexString, i10, iMin), str2.substring(i10, iMin));
                i10 = iMin;
            }
        }

        private String c(String str, String str2, int i10, int i11) {
            return str + "_" + i10 + "_" + i11 + "_" + str2;
        }
    }

    @Override // com.byazt.sq.ve.c
    public void c(String str, String str2, Throwable th) {
        this.f22910c.c(str, str2, th);
    }

    @Override // com.byazt.sq.ve.c
    public void tt(String str, String str2, Throwable th) {
        this.f22910c.tt(str, str2, th);
    }

    @Override // com.byazt.sq.ve.c
    public void c(String str, Throwable th) {
        this.f22910c.c(str, th);
    }

    @Override // com.byazt.sq.ve.c
    public void c() {
        this.f22910c.c();
    }

    private void c(final String str, final String str2, final InterfaceC0506c interfaceC0506c) {
        try {
            if (x.c()) {
                x.tt(new Runnable() { // from class: com.byazt.zlb.c.6
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.tt.c(str, str2, interfaceC0506c);
                    }
                });
            } else {
                this.tt.c(str, str2, interfaceC0506c);
            }
        } catch (Throwable th) {
            m.tt("", "print big Str failed!", th);
        }
    }
}
