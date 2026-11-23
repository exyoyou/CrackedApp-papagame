package com.coremedia.iso.boxes.dece;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes9.dex */
public class a extends c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f24754t = "trik";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24755u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24756v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24757w = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private List<C0537a> f24758s;

    /* JADX INFO: renamed from: com.coremedia.iso.boxes.dece.a$a, reason: collision with other inner class name */
    public static class C0537a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f24759a;

        public C0537a() {
        }

        public int b() {
            return this.f24759a & 63;
        }

        public int c() {
            return (this.f24759a >> 6) & 3;
        }

        public void d(int i10) {
            this.f24759a = (i10 & 63) | this.f24759a;
        }

        public void e(int i10) {
            this.f24759a = ((i10 & 3) << 6) | (this.f24759a & 31);
        }

        public String toString() {
            return "Entry{picType=" + c() + ",dependencyLevel=" + b() + '}';
        }

        public C0537a(int i10) {
            this.f24759a = i10;
        }
    }

    static {
        s();
    }

    public a() {
        super(f24754t);
        this.f24758s = new ArrayList();
    }

    private static /* synthetic */ void s() {
        e eVar = new e("TrickPlayBox.java", a.class);
        f24755u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.dece.TrickPlayBox", "java.util.List", "entries", "", "void"), 32);
        f24756v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.dece.TrickPlayBox", "", "", "", "java.util.List"), 36);
        f24757w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.dece.TrickPlayBox", "", "", "", "java.lang.String"), 103);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        while (byteBuffer.remaining() > 0) {
            this.f24758s.add(new C0537a(g.p(byteBuffer)));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        Iterator<C0537a> it2 = this.f24758s.iterator();
        while (it2.hasNext()) {
            i.m(byteBuffer, it2.next().f24759a);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return this.f24758s.size() + 4;
    }

    public String toString() {
        j.b().c(e.v(f24757w, this, this));
        return "TrickPlayBox{entries=" + this.f24758s + '}';
    }

    public List<C0537a> v() {
        j.b().c(e.v(f24756v, this, this));
        return this.f24758s;
    }

    public void w(List<C0537a> list) {
        j.b().c(e.w(f24755u, this, this, list));
        this.f24758s = list;
    }
}
