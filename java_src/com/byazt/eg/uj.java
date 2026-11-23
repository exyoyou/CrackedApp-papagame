package com.byazt.eg;

import io.netty.handler.codec.http.HttpHeaders;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 15})
public final class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final uj f13402c = new c().c().ve();
    public static final uj tt = new c().tt().c(Integer.MAX_VALUE, TimeUnit.SECONDS).ve();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13403a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final boolean f13404da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f13405i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f13406n;
    public final int sl;
    public final int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f13407t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f13408u;
    public final boolean uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final boolean f13409x;
    public final boolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final boolean f13410z;

    @com.byazt.zqa.c(c = {0, 1, 16, 123})
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f13411a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f13412c;
        public boolean sp;
        public boolean tt;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public boolean f13414x;
        public int ve = -1;
        public int uj = -1;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f13413n = -1;

        public c c() {
            this.f13412c = true;
            return this;
        }

        public c tt() {
            this.f13411a = true;
            return this;
        }

        public uj ve() {
            return new uj(this);
        }

        public c c(int i10, TimeUnit timeUnit) {
            if (i10 < 0) {
                throw new IllegalArgumentException("maxStale < 0: ".concat(String.valueOf(i10)));
            }
            long seconds = timeUnit.toSeconds(i10);
            this.uj = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
            return this;
        }
    }

    private uj(boolean z10, boolean z11, int i10, int i11, boolean z12, boolean z13, boolean z14, int i12, int i13, boolean z15, boolean z16, boolean z17, String str) {
        this.uj = z10;
        this.f13406n = z11;
        this.f13403a = i10;
        this.sp = i11;
        this.f13409x = z12;
        this.f13405i = z13;
        this.f13404da = z14;
        this.sl = i12;
        this.f13407t = i13;
        this.f13408u = z15;
        this.yp = z16;
        this.f13410z = z17;
        this.ve = str;
    }

    private String sl() {
        StringBuilder sb2 = new StringBuilder();
        if (this.uj) {
            sb2.append("no-cache, ");
        }
        if (this.f13406n) {
            sb2.append("no-store, ");
        }
        if (this.f13403a != -1) {
            sb2.append("max-age=");
            sb2.append(this.f13403a);
            sb2.append(", ");
        }
        if (this.sp != -1) {
            sb2.append("s-maxage=");
            sb2.append(this.sp);
            sb2.append(", ");
        }
        if (this.f13409x) {
            sb2.append("private, ");
        }
        if (this.f13405i) {
            sb2.append("public, ");
        }
        if (this.f13404da) {
            sb2.append("must-revalidate, ");
        }
        if (this.sl != -1) {
            sb2.append("max-stale=");
            sb2.append(this.sl);
            sb2.append(", ");
        }
        if (this.f13407t != -1) {
            sb2.append("min-fresh=");
            sb2.append(this.f13407t);
            sb2.append(", ");
        }
        if (this.f13408u) {
            sb2.append("only-if-cached, ");
        }
        if (this.yp) {
            sb2.append("no-transform, ");
        }
        if (this.f13410z) {
            sb2.append("immutable, ");
        }
        if (sb2.length() == 0) {
            return "";
        }
        sb2.delete(sb2.length() - 2, sb2.length());
        return sb2.toString();
    }

    public boolean a() {
        return this.f13404da;
    }

    public boolean c() {
        return this.uj;
    }

    public boolean da() {
        return this.f13410z;
    }

    public boolean i() {
        return this.f13408u;
    }

    public boolean n() {
        return this.f13405i;
    }

    public int sp() {
        return this.sl;
    }

    public String toString() {
        String str = this.ve;
        if (str != null) {
            return str;
        }
        String strSl = sl();
        this.ve = strSl;
        return strSl;
    }

    public boolean tt() {
        return this.f13406n;
    }

    public boolean uj() {
        return this.f13409x;
    }

    public int ve() {
        return this.f13403a;
    }

    public int x() {
        return this.f13407t;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0041  */
    /* JADX WARN: Code duplicated, block: B:28:0x0099  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:33:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:38:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:45:0x00da  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:53:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:54:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:56:0x0106  */
    /* JADX WARN: Code duplicated, block: B:57:0x010c  */
    /* JADX WARN: Code duplicated, block: B:59:0x0115  */
    /* JADX WARN: Code duplicated, block: B:60:0x0118  */
    /* JADX WARN: Code duplicated, block: B:62:0x0120  */
    /* JADX WARN: Code duplicated, block: B:63:0x0123  */
    /* JADX WARN: Code duplicated, block: B:65:0x012b  */
    /* JADX WARN: Code duplicated, block: B:86:0x00a6 A[SYNTHETIC] */
    public static uj c(rh rhVar) {
        int i10;
        int iC;
        String strTrim;
        int iC2;
        String strTrim2;
        int iC3 = rhVar.c();
        boolean z10 = true;
        String str = null;
        boolean z11 = false;
        boolean z12 = false;
        int iTt = -1;
        int iTt2 = -1;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        int iTt3 = -1;
        int iTt4 = -1;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        for (int i11 = 0; i11 < iC3; i11++) {
            String strC = rhVar.c(i11);
            String strTt = rhVar.tt(i11);
            if ("Cache-Control".equalsIgnoreCase(strC)) {
                if (str == null) {
                    str = strTt;
                }
                for (i10 = 0; i10 < strTt.length(); i10 = iC2) {
                    iC = com.byazt.yx.n.c(strTt, i10, "=,;");
                    strTrim = strTt.substring(i10, iC).trim();
                    if (iC != strTt.length() || strTt.charAt(iC) == ',' || strTt.charAt(iC) == ';') {
                        iC2 = iC + 1;
                        strTrim2 = null;
                    } else {
                        int iC4 = com.byazt.yx.n.c(strTt, iC + 1);
                        if (iC4 >= strTt.length() || strTt.charAt(iC4) != '\"') {
                            iC2 = com.byazt.yx.n.c(strTt, iC4, ",;");
                            strTrim2 = strTt.substring(iC4, iC2).trim();
                        } else {
                            int i12 = iC4 + 1;
                            int iC5 = com.byazt.yx.n.c(strTt, i12, x.a.f97579g);
                            strTrim2 = strTt.substring(i12, iC5);
                            iC2 = iC5 + 1;
                        }
                    }
                    if ("no-cache".equalsIgnoreCase(strTrim)) {
                        z11 = true;
                    } else if (HttpHeaders.Values.NO_STORE.equalsIgnoreCase(strTrim)) {
                        z12 = true;
                    } else if ("max-age".equalsIgnoreCase(strTrim)) {
                        iTt = com.byazt.yx.n.tt(strTrim2, -1);
                    } else if (HttpHeaders.Values.S_MAXAGE.equalsIgnoreCase(strTrim)) {
                        iTt2 = com.byazt.yx.n.tt(strTrim2, -1);
                    } else if ("private".equalsIgnoreCase(strTrim)) {
                        z13 = true;
                    } else if ("public".equalsIgnoreCase(strTrim)) {
                        z14 = true;
                    } else if ("must-revalidate".equalsIgnoreCase(strTrim)) {
                        z15 = true;
                    } else if ("max-stale".equalsIgnoreCase(strTrim)) {
                        iTt3 = com.byazt.yx.n.tt(strTrim2, Integer.MAX_VALUE);
                    } else if ("min-fresh".equalsIgnoreCase(strTrim)) {
                        iTt4 = com.byazt.yx.n.tt(strTrim2, -1);
                    } else if ("only-if-cached".equalsIgnoreCase(strTrim)) {
                        z16 = true;
                    } else if ("no-transform".equalsIgnoreCase(strTrim)) {
                        z17 = true;
                    } else if ("immutable".equalsIgnoreCase(strTrim)) {
                        z18 = true;
                    }
                }
            } else {
                if ("Pragma".equalsIgnoreCase(strC)) {
                }
            }
            z10 = false;
            while (i10 < strTt.length()) {
                iC = com.byazt.yx.n.c(strTt, i10, "=,;");
                strTrim = strTt.substring(i10, iC).trim();
                if (iC != strTt.length()) {
                    iC2 = iC + 1;
                    strTrim2 = null;
                } else {
                    iC2 = iC + 1;
                    strTrim2 = null;
                }
                if ("no-cache".equalsIgnoreCase(strTrim)) {
                    z11 = true;
                } else if (HttpHeaders.Values.NO_STORE.equalsIgnoreCase(strTrim)) {
                    z12 = true;
                } else if ("max-age".equalsIgnoreCase(strTrim)) {
                    iTt = com.byazt.yx.n.tt(strTrim2, -1);
                } else if (HttpHeaders.Values.S_MAXAGE.equalsIgnoreCase(strTrim)) {
                    iTt2 = com.byazt.yx.n.tt(strTrim2, -1);
                } else if ("private".equalsIgnoreCase(strTrim)) {
                    z13 = true;
                } else if ("public".equalsIgnoreCase(strTrim)) {
                    z14 = true;
                } else if ("must-revalidate".equalsIgnoreCase(strTrim)) {
                    z15 = true;
                } else if ("max-stale".equalsIgnoreCase(strTrim)) {
                    iTt3 = com.byazt.yx.n.tt(strTrim2, Integer.MAX_VALUE);
                } else if ("min-fresh".equalsIgnoreCase(strTrim)) {
                    iTt4 = com.byazt.yx.n.tt(strTrim2, -1);
                } else if ("only-if-cached".equalsIgnoreCase(strTrim)) {
                    z16 = true;
                } else if ("no-transform".equalsIgnoreCase(strTrim)) {
                    z17 = true;
                } else if ("immutable".equalsIgnoreCase(strTrim)) {
                    z18 = true;
                }
            }
        }
        return new uj(z11, z12, iTt, iTt2, z13, z14, z15, iTt3, iTt4, z16, z17, z18, !z10 ? null : str);
    }

    public uj(c cVar) {
        this.uj = cVar.f13412c;
        this.f13406n = cVar.tt;
        this.f13403a = cVar.ve;
        this.sp = -1;
        this.f13409x = false;
        this.f13405i = false;
        this.f13404da = false;
        this.sl = cVar.uj;
        this.f13407t = cVar.f13413n;
        this.f13408u = cVar.f13411a;
        this.yp = cVar.sp;
        this.f13410z = cVar.f13414x;
    }
}
