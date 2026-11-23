package com.byazt.eg;

import java.io.Closeable;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 518})
public final class h implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final rh f13334a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final yv f13335c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final h f13336da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final h f13337i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final nu f13338n;
    public final long sl;
    public final d sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final long f13339t;
    public final gr tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile uj f13340u;
    public final String uj;
    public final int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final h f13341x;

    @com.byazt.zqa.c(c = {0, 1, 16, 764})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public rh.c f13342a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public yv f13343c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public h f13344da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public h f13345i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public nu f13346n;
        public long sl;
        public d sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public long f13347t;
        public gr tt;
        public String uj;
        public int ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public h f13348x;

        public c() {
            this.ve = -1;
            this.f13342a = new rh.c();
        }

        private void uj(h hVar) {
            if (hVar.sp != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        public c c(yv yvVar) {
            this.f13343c = yvVar;
            return this;
        }

        public c tt(h hVar) {
            if (hVar != null) {
                c("cacheResponse", hVar);
            }
            this.f13345i = hVar;
            return this;
        }

        public c ve(h hVar) {
            if (hVar != null) {
                uj(hVar);
            }
            this.f13344da = hVar;
            return this;
        }

        public c c(gr grVar) {
            this.tt = grVar;
            return this;
        }

        public c c(int i10) {
            this.ve = i10;
            return this;
        }

        public c tt(long j10) {
            this.f13347t = j10;
            return this;
        }

        public c(h hVar) {
            this.ve = -1;
            this.f13343c = hVar.f13335c;
            this.tt = hVar.tt;
            this.ve = hVar.ve;
            this.uj = hVar.uj;
            this.f13346n = hVar.f13338n;
            this.f13342a = hVar.f13334a.tt();
            this.sp = hVar.sp;
            this.f13348x = hVar.f13341x;
            this.f13345i = hVar.f13337i;
            this.f13344da = hVar.f13336da;
            this.sl = hVar.sl;
            this.f13347t = hVar.f13339t;
        }

        public c c(String str) {
            this.uj = str;
            return this;
        }

        public c c(nu nuVar) {
            this.f13346n = nuVar;
            return this;
        }

        public c c(String str, String str2) {
            this.f13342a.c(str, str2);
            return this;
        }

        public c c(rh rhVar) {
            this.f13342a = rhVar.tt();
            return this;
        }

        public c c(d dVar) {
            this.sp = dVar;
            return this;
        }

        public c c(h hVar) {
            if (hVar != null) {
                c("networkResponse", hVar);
            }
            this.f13348x = hVar;
            return this;
        }

        private void c(String str, h hVar) {
            if (hVar.sp == null) {
                if (hVar.f13341x == null) {
                    if (hVar.f13337i == null) {
                        if (hVar.f13336da == null) {
                            return;
                        }
                        throw new IllegalArgumentException(str + ".priorResponse != null");
                    }
                    throw new IllegalArgumentException(str + ".cacheResponse != null");
                }
                throw new IllegalArgumentException(str + ".networkResponse != null");
            }
            throw new IllegalArgumentException(str + ".body != null");
        }

        public c c(long j10) {
            this.sl = j10;
            return this;
        }

        public h c() {
            if (this.f13343c != null) {
                if (this.tt != null) {
                    if (this.ve >= 0) {
                        if (this.uj != null) {
                            return new h(this);
                        }
                        throw new IllegalStateException("message == null");
                    }
                    throw new IllegalStateException("code < 0: " + this.ve);
                }
                throw new IllegalStateException("protocol == null");
            }
            throw new IllegalStateException("request == null");
        }
    }

    public h(c cVar) {
        this.f13335c = cVar.f13343c;
        this.tt = cVar.tt;
        this.ve = cVar.ve;
        this.uj = cVar.uj;
        this.f13338n = cVar.f13346n;
        this.f13334a = cVar.f13342a.c();
        this.sp = cVar.sp;
        this.f13341x = cVar.f13348x;
        this.f13337i = cVar.f13345i;
        this.f13336da = cVar.f13344da;
        this.sl = cVar.sl;
        this.f13339t = cVar.f13347t;
    }

    public nu a() {
        return this.f13338n;
    }

    public yv c() {
        return this.f13335c;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        d dVar = this.sp;
        if (dVar == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        dVar.close();
    }

    public h da() {
        return this.f13341x;
    }

    public c i() {
        return new c(this);
    }

    public String n() {
        return this.uj;
    }

    public h sl() {
        return this.f13336da;
    }

    public rh sp() {
        return this.f13334a;
    }

    public uj t() {
        uj ujVar = this.f13340u;
        if (ujVar != null) {
            return ujVar;
        }
        uj ujVarC = uj.c(this.f13334a);
        this.f13340u = ujVarC;
        return ujVarC;
    }

    public String toString() {
        return "Response{protocol=" + this.tt + ", code=" + this.ve + ", message=" + this.uj + ", url=" + this.f13335c.c() + '}';
    }

    public gr tt() {
        return this.tt;
    }

    public long u() {
        return this.sl;
    }

    public boolean uj() {
        int i10 = this.ve;
        return i10 >= 200 && i10 < 300;
    }

    public int ve() {
        return this.ve;
    }

    public d x() {
        return this.sp;
    }

    public long yp() {
        return this.f13339t;
    }

    public md z() {
        yv yvVar = this.f13335c;
        if (yvVar == null) {
            return null;
        }
        return yvVar.f13438a;
    }

    public String c(String str) {
        return c(str, null);
    }

    public String c(String str, String str2) {
        String strC = this.f13334a.c(str);
        return strC != null ? strC : str2;
    }
}
