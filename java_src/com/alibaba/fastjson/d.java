package com.alibaba.fastjson;

import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.k;
import java.io.Closeable;
import java.io.Reader;
import java.lang.reflect.Type;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class d implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.alibaba.fastjson.parser.c f6501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f f6502c;

    public d(Reader reader) {
        this(new com.alibaba.fastjson.parser.f(reader));
    }

    private void e() {
        int i10;
        f fVarA = this.f6502c.a();
        this.f6502c = fVarA;
        if (fVarA == null) {
            return;
        }
        switch (fVarA.b()) {
            case 1001:
            case 1003:
                i10 = 1002;
                break;
            case 1002:
                i10 = 1003;
                break;
            case 1004:
                i10 = 1005;
                break;
            default:
                i10 = -1;
                break;
        }
        if (i10 != -1) {
            this.f6502c.c(i10);
        }
    }

    private void g() {
        int iB = this.f6502c.b();
        int i10 = 1002;
        switch (iB) {
            case 1001:
            case 1003:
                break;
            case 1002:
                i10 = 1003;
                break;
            case 1004:
                i10 = 1005;
                break;
            case 1005:
                i10 = -1;
                break;
            default:
                throw new JSONException("illegal state : " + iB);
        }
        if (i10 != -1) {
            this.f6502c.c(i10);
        }
    }

    private void h() {
        int iB = this.f6502c.b();
        switch (iB) {
            case 1001:
            case 1004:
                return;
            case 1002:
                this.f6501b.a(17);
                return;
            case 1003:
                this.f6501b.b(16, 18);
                return;
            case 1005:
                this.f6501b.a(16);
                return;
            default:
                throw new JSONException("illegal state : " + iB);
        }
    }

    private void y() {
        switch (this.f6502c.b()) {
            case 1001:
            case 1004:
                return;
            case 1002:
                this.f6501b.a(17);
                return;
            case 1003:
            case 1005:
                this.f6501b.a(16);
                return;
            default:
                throw new JSONException("illegal state : " + this.f6502c.b());
        }
    }

    public void a(Feature feature, boolean z10) {
        this.f6501b.h(feature, z10);
    }

    public void b() {
        this.f6501b.a(15);
        e();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        com.alibaba.fastjson.util.f.a(this.f6501b);
    }

    public void d() {
        this.f6501b.a(13);
        e();
    }

    public boolean f() {
        if (this.f6502c == null) {
            throw new JSONException("context is null");
        }
        int iB = this.f6501b.z().b();
        int iB2 = this.f6502c.b();
        switch (iB2) {
            case 1001:
            case 1003:
                return iB != 13;
            case 1002:
            default:
                throw new JSONException("illegal state : " + iB2);
            case 1004:
            case 1005:
                return iB != 15;
        }
    }

    public Integer j() {
        Object objQ;
        if (this.f6502c == null) {
            objQ = this.f6501b.Q();
        } else {
            h();
            objQ = this.f6501b.Q();
            g();
        }
        return k.p(objQ);
    }

    public Long k() {
        Object objQ;
        if (this.f6502c == null) {
            objQ = this.f6501b.Q();
        } else {
            h();
            objQ = this.f6501b.Q();
            g();
        }
        return k.s(objQ);
    }

    public <T> T l(h<T> hVar) {
        return (T) n(hVar.getType());
    }

    public <T> T m(Class<T> cls) {
        if (this.f6502c == null) {
            return (T) this.f6501b.m0(cls);
        }
        h();
        T t10 = (T) this.f6501b.m0(cls);
        g();
        return t10;
    }

    public <T> T n(Type type) {
        if (this.f6502c == null) {
            return (T) this.f6501b.n0(type);
        }
        h();
        T t10 = (T) this.f6501b.n0(type);
        g();
        return t10;
    }

    public Object o(Map map) {
        if (this.f6502c == null) {
            return this.f6501b.o0(map);
        }
        h();
        Object objO0 = this.f6501b.o0(map);
        g();
        return objO0;
    }

    public void p(Object obj) {
        if (this.f6502c == null) {
            this.f6501b.q0(obj);
            return;
        }
        h();
        this.f6501b.q0(obj);
        g();
    }

    public String q() {
        Object objQ;
        if (this.f6502c == null) {
            objQ = this.f6501b.Q();
        } else {
            h();
            objQ = this.f6501b.Q();
            g();
        }
        return k.v(objQ);
    }

    public Object readObject() {
        if (this.f6502c == null) {
            return this.f6501b.Q();
        }
        h();
        int iB = this.f6502c.b();
        Object objK0 = (iB == 1001 || iB == 1003) ? this.f6501b.k0() : this.f6501b.Q();
        g();
        return objK0;
    }

    public void s() {
        if (this.f6502c == null) {
            this.f6502c = new f(null, 1004);
        } else {
            y();
            this.f6502c = new f(this.f6502c, 1004);
        }
        this.f6501b.a(14);
    }

    public void v() {
        if (this.f6502c == null) {
            this.f6502c = new f(null, 1001);
        } else {
            y();
            this.f6502c = new f(this.f6502c, 1001);
        }
        this.f6501b.b(12, 18);
    }

    public d(com.alibaba.fastjson.parser.d dVar) {
        this(new com.alibaba.fastjson.parser.c(dVar));
    }

    public d(com.alibaba.fastjson.parser.c cVar) {
        this.f6501b = cVar;
    }
}
