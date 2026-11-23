package com.googlecode.mp4parser.boxes.threegpp26245;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes5.dex */
public class a extends com.googlecode.mp4parser.a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f33727p = "ftab";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final /* synthetic */ c.b f33728q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final /* synthetic */ c.b f33729r = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    List<C0623a> f33730o;

    /* JADX INFO: renamed from: com.googlecode.mp4parser.boxes.threegpp26245.a$a, reason: collision with other inner class name */
    public static class C0623a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f33731a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f33732b;

        public C0623a() {
        }

        public void a(ByteBuffer byteBuffer) {
            i.f(byteBuffer, this.f33731a);
            i.m(byteBuffer, this.f33732b.length());
            byteBuffer.put(l.b(this.f33732b));
        }

        public int b() {
            return l.c(this.f33732b) + 3;
        }

        public void c(ByteBuffer byteBuffer) {
            this.f33731a = g.i(byteBuffer);
            this.f33732b = g.h(byteBuffer, g.p(byteBuffer));
        }

        public String toString() {
            return "FontRecord{fontId=" + this.f33731a + ", fontname='" + this.f33732b + "'}";
        }

        public C0623a(int i10, String str) {
            this.f33731a = i10;
            this.f33732b = str;
        }
    }

    static {
        s();
    }

    public a() {
        super(f33727p);
        this.f33730o = new LinkedList();
    }

    private static /* synthetic */ void s() {
        e eVar = new e("FontTableBox.java", a.class);
        f33728q = eVar.H(c.f95144a, eVar.E("1", "getEntries", "com.googlecode.mp4parser.boxes.threegpp26245.FontTableBox", "", "", "", "java.util.List"), 52);
        f33729r = eVar.H(c.f95144a, eVar.E("1", "setEntries", "com.googlecode.mp4parser.boxes.threegpp26245.FontTableBox", "java.util.List", "entries", "", "void"), 56);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        int i10 = g.i(byteBuffer);
        for (int i11 = 0; i11 < i10; i11++) {
            C0623a c0623a = new C0623a();
            c0623a.c(byteBuffer);
            this.f33730o.add(c0623a);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        i.f(byteBuffer, this.f33730o.size());
        Iterator<C0623a> it2 = this.f33730o.iterator();
        while (it2.hasNext()) {
            it2.next().a(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        Iterator<C0623a> it2 = this.f33730o.iterator();
        int iB = 2;
        while (it2.hasNext()) {
            iB += it2.next().b();
        }
        return iB;
    }

    public List<C0623a> t() {
        j.b().c(e.v(f33728q, this, this));
        return this.f33730o;
    }

    public void u(List<C0623a> list) {
        j.b().c(e.w(f33729r, this, this, list));
        this.f33730o = list;
    }
}
