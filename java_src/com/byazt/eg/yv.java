package com.byazt.eg;

import java.net.URL;
import org.apache.http.client.methods.HttpDeleteHC4;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 499})
public final class yv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public md f13438a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final my f13439c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Object f13440n;
    public volatile uj sp;
    public final String tt;
    public final p uj;
    public final rh ve;

    @com.byazt.zqa.c(c = {0, 1, 16, 2028})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public md f13441a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public my f13442c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public Object f13443n;
        public String tt;
        public p uj;
        public rh.c ve;

        public c() {
            this.tt = "GET";
            this.ve = new rh.c();
        }

        public c c(my myVar) {
            if (myVar == null) {
                throw new NullPointerException("url == null");
            }
            this.f13442c = myVar;
            return this;
        }

        public c delete(p pVar) {
            return c(HttpDeleteHC4.METHOD_NAME, pVar);
        }

        public c tt(String str, String str2) {
            this.ve.c(str, str2);
            return this;
        }

        public c delete() {
            return delete(com.byazt.kh.ve.uj);
        }

        public c tt(String str) {
            this.ve.tt(str);
            return this;
        }

        public c c(String str) {
            if (str != null) {
                if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                    str = "http:" + str.substring(3);
                } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                    str = "https:" + str.substring(4);
                }
                my myVarN = my.n(str);
                if (myVarN != null) {
                    return c(myVarN);
                }
                throw new IllegalArgumentException("unexpected url: ".concat(String.valueOf(str)));
            }
            throw new NullPointerException("url == null");
        }

        public c(yv yvVar) {
            this.f13442c = yvVar.f13439c;
            this.tt = yvVar.tt;
            this.uj = yvVar.uj;
            this.f13443n = yvVar.f13440n;
            this.ve = yvVar.ve.tt();
            this.f13441a = yvVar.f13438a;
        }

        public c c(URL url) {
            if (url != null) {
                my myVarC = my.c(url);
                if (myVarC != null) {
                    return c(myVarC);
                }
                throw new IllegalArgumentException("unexpected url: ".concat(String.valueOf(url)));
            }
            throw new NullPointerException("url == null");
        }

        public c c(String str, String str2) {
            this.ve.ve(str, str2);
            return this;
        }

        public c c(rh rhVar) {
            this.ve = rhVar.tt();
            return this;
        }

        public c c(uj ujVar) {
            String string = ujVar.toString();
            return string.isEmpty() ? tt("Cache-Control") : c("Cache-Control", string);
        }

        public c c(String str, p pVar) {
            if (str != null) {
                if (str.length() != 0) {
                    if (pVar != null && !com.byazt.yx.a.ve(str)) {
                        throw new IllegalArgumentException("method " + str + " must not have a request body.");
                    }
                    if (pVar == null && com.byazt.yx.a.tt(str)) {
                        throw new IllegalArgumentException("method " + str + " must have a request body.");
                    }
                    this.tt = str;
                    this.uj = pVar;
                    return this;
                }
                throw new IllegalArgumentException("method.length() == 0");
            }
            throw new NullPointerException("method == null");
        }

        public c c(Object obj) {
            this.f13443n = obj;
            return this;
        }

        public yv c() {
            if (this.f13442c != null) {
                return new yv(this);
            }
            throw new IllegalStateException("url == null");
        }
    }

    public yv(c cVar) {
        this.f13439c = cVar.f13442c;
        this.tt = cVar.tt;
        this.ve = cVar.ve.c();
        this.uj = cVar.uj;
        Object obj = cVar.f13443n;
        this.f13440n = obj == null ? this : obj;
        md mdVar = cVar.f13441a;
        if (mdVar != null) {
            this.f13438a = mdVar;
        } else {
            this.f13438a = new md();
        }
    }

    public c a() {
        return new c(this);
    }

    public my c() {
        return this.f13439c;
    }

    public Object n() {
        return this.f13440n;
    }

    public uj sp() {
        uj ujVar = this.sp;
        if (ujVar != null) {
            return ujVar;
        }
        uj ujVarC = uj.c(this.ve);
        this.sp = ujVarC;
        return ujVarC;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("Request{method=");
        sb2.append(this.tt);
        sb2.append(", url=");
        sb2.append(this.f13439c);
        sb2.append(", tag=");
        Object obj = this.f13440n;
        if (obj == this) {
            obj = null;
        }
        sb2.append(obj);
        sb2.append('}');
        return sb2.toString();
    }

    public String tt() {
        return this.tt;
    }

    public p uj() {
        return this.uj;
    }

    public rh ve() {
        return this.ve;
    }

    public boolean x() {
        return this.f13439c.uj();
    }

    public String c(String str) {
        return this.ve.c(str);
    }
}
