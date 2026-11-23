package com.alibaba.fastjson;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.serializer.v0;
import com.alibaba.fastjson.serializer.v1;
import io.netty.util.internal.StringUtil;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes7.dex */
public class g implements Closeable, Flushable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private v1 f6510b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private v0 f6511c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f f6512d;

    public g(Writer writer) {
        v1 v1Var = new v1(writer);
        this.f6510b = v1Var;
        this.f6511c = new v0(v1Var);
    }

    private void b() {
        int i10;
        f fVar = this.f6512d;
        if (fVar == null) {
            return;
        }
        switch (fVar.b()) {
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
            this.f6512d.c(i10);
        }
    }

    private void d() {
        f fVar = this.f6512d;
        if (fVar == null) {
            return;
        }
        int iB = fVar.b();
        if (iB == 1002) {
            this.f6510b.m(':');
        } else if (iB == 1003) {
            this.f6510b.m(StringUtil.COMMA);
        } else {
            if (iB != 1005) {
                return;
            }
            this.f6510b.m(StringUtil.COMMA);
        }
    }

    private void e() {
        int iB = this.f6512d.b();
        switch (iB) {
            case 1001:
            case 1004:
                return;
            case 1002:
                this.f6510b.m(':');
                return;
            case 1003:
            default:
                throw new JSONException("illegal state : " + iB);
            case 1005:
                this.f6510b.m(StringUtil.COMMA);
                return;
        }
    }

    private void j() {
        f fVarA = this.f6512d.a();
        this.f6512d = fVarA;
        if (fVarA == null) {
            return;
        }
        int iB = fVarA.b();
        int i10 = 1002;
        if (iB != 1001) {
            if (iB != 1002) {
                i10 = iB != 1004 ? -1 : 1005;
            } else {
                i10 = 1003;
            }
        }
        if (i10 != -1) {
            this.f6512d.c(i10);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6510b.close();
    }

    public void f(SerializerFeature serializerFeature, boolean z10) {
        this.f6510b.d(serializerFeature, z10);
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.f6510b.flush();
    }

    public void g() {
        this.f6510b.m(']');
        j();
    }

    public void h() {
        this.f6510b.m('}');
        j();
    }

    public void k() {
        if (this.f6512d != null) {
            e();
        }
        this.f6512d = new f(this.f6512d, 1004);
        this.f6510b.m('[');
    }

    public void l() {
        if (this.f6512d != null) {
            e();
        }
        this.f6512d = new f(this.f6512d, 1001);
        this.f6510b.m('{');
    }

    @Deprecated
    public void o() {
        g();
    }

    @Deprecated
    public void p() {
        h();
    }

    public void q(String str) {
        s(str);
    }

    public void s(String str) {
        d();
        this.f6511c.L(str);
        b();
    }

    @Deprecated
    public void v() {
        k();
    }

    public void writeObject(Object obj) {
        d();
        this.f6511c.K(obj);
        b();
    }

    @Deprecated
    public void y() {
        l();
    }

    public void z(Object obj) {
        writeObject(obj);
    }
}
