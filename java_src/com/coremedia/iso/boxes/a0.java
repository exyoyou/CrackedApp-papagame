package com.coremedia.iso.boxes;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class a0 extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;
    private static final /* synthetic */ org.aspectj.lang.c.b F = null;
    private static final /* synthetic */ org.aspectj.lang.c.b G = null;
    private static final /* synthetic */ org.aspectj.lang.c.b H = null;
    private static final /* synthetic */ org.aspectj.lang.c.b I = null;
    private static final /* synthetic */ org.aspectj.lang.c.b J = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f24659x = "iloc";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24660y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24661z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f24662s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f24663t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f24664u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f24665v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public List<b> f24666w;

    static {
        s();
    }

    public a0() {
        super(f24659x);
        this.f24662s = 8;
        this.f24663t = 8;
        this.f24664u = 8;
        this.f24665v = 0;
        this.f24666w = new LinkedList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("ItemLocationBox.java", a0.class);
        f24660y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getOffsetSize", "com.coremedia.iso.boxes.ItemLocationBox", "", "", "", "int"), 119);
        f24661z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setOffsetSize", "com.coremedia.iso.boxes.ItemLocationBox", "int", "offsetSize", "", "void"), 123);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "createItem", "com.coremedia.iso.boxes.ItemLocationBox", "int:int:int:long:java.util.List", "itemId:constructionMethod:dataReferenceIndex:baseOffset:extents", "", "com.coremedia.iso.boxes.ItemLocationBox$Item"), 160);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "createExtent", "com.coremedia.iso.boxes.ItemLocationBox", "long:long:long", "extentOffset:extentLength:extentIndex", "", "com.coremedia.iso.boxes.ItemLocationBox$Extent"), MediaPlayer.MEDIA_PLAYER_OPTION_FRC_LEVEL);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLengthSize", "com.coremedia.iso.boxes.ItemLocationBox", "", "", "", "int"), 127);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLengthSize", "com.coremedia.iso.boxes.ItemLocationBox", "int", "lengthSize", "", "void"), 131);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getBaseOffsetSize", "com.coremedia.iso.boxes.ItemLocationBox", "", "", "", "int"), 135);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setBaseOffsetSize", "com.coremedia.iso.boxes.ItemLocationBox", "int", "baseOffsetSize", "", "void"), 139);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getIndexSize", "com.coremedia.iso.boxes.ItemLocationBox", "", "", "", "int"), 143);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setIndexSize", "com.coremedia.iso.boxes.ItemLocationBox", "int", "indexSize", "", "void"), 147);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getItems", "com.coremedia.iso.boxes.ItemLocationBox", "", "", "", "java.util.List"), 151);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setItems", "com.coremedia.iso.boxes.ItemLocationBox", "java.util.List", "items", "", "void"), 155);
    }

    public int A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f24665v;
    }

    public List<b> B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f24666w;
    }

    public int C() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f24663t;
    }

    public int D() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24660y, this, this));
        return this.f24662s;
    }

    public void E(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24664u = i10;
    }

    public void F(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24665v = i10;
    }

    public void G(List<b> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(H, this, this, list));
        this.f24666w = list;
    }

    public void H(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24663t = i10;
    }

    public void I(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24661z, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24662s = i10;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int iP = com.coremedia.iso.g.p(byteBuffer);
        this.f24662s = iP >>> 4;
        this.f24663t = iP & 15;
        int iP2 = com.coremedia.iso.g.p(byteBuffer);
        this.f24664u = iP2 >>> 4;
        if (getVersion() == 1) {
            this.f24665v = iP2 & 15;
        }
        int i10 = com.coremedia.iso.g.i(byteBuffer);
        for (int i11 = 0; i11 < i10; i11++) {
            this.f24666w.add(new b(byteBuffer));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.m(byteBuffer, (this.f24662s << 4) | this.f24663t);
        if (getVersion() == 1) {
            com.coremedia.iso.i.m(byteBuffer, (this.f24664u << 4) | this.f24665v);
        } else {
            com.coremedia.iso.i.m(byteBuffer, this.f24664u << 4);
        }
        com.coremedia.iso.i.f(byteBuffer, this.f24666w.size());
        Iterator<b> it2 = this.f24666w.iterator();
        while (it2.hasNext()) {
            it2.next().a(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        Iterator<b> it2 = this.f24666w.iterator();
        long jB = 8;
        while (it2.hasNext()) {
            jB += (long) it2.next().b();
        }
        return jB;
    }

    public a v(long j10, long j11, long j12) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.y(J, this, this, new Object[]{org.aspectj.runtime.internal.e.m(j10), org.aspectj.runtime.internal.e.m(j11), org.aspectj.runtime.internal.e.m(j12)}));
        return new a(j10, j11, j12);
    }

    a w(ByteBuffer byteBuffer) {
        return new a(byteBuffer);
    }

    public b x(int i10, int i11, int i12, long j10, List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.y(I, this, this, new Object[]{org.aspectj.runtime.internal.e.k(i10), org.aspectj.runtime.internal.e.k(i11), org.aspectj.runtime.internal.e.k(i12), org.aspectj.runtime.internal.e.m(j10), list}));
        return new b(i10, i11, i12, j10, list);
    }

    b y(ByteBuffer byteBuffer) {
        return new b(byteBuffer);
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f24664u;
    }

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f24667a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f24668b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f24669c;

        public a(long j10, long j11, long j12) {
            this.f24667a = j10;
            this.f24668b = j11;
            this.f24669c = j12;
        }

        public void a(ByteBuffer byteBuffer) {
            int i10;
            if (a0.this.getVersion() == 1 && (i10 = a0.this.f24665v) > 0) {
                com.coremedia.iso.j.a(this.f24669c, byteBuffer, i10);
            }
            com.coremedia.iso.j.a(this.f24667a, byteBuffer, a0.this.f24662s);
            com.coremedia.iso.j.a(this.f24668b, byteBuffer, a0.this.f24663t);
        }

        public int b() {
            a0 a0Var = a0.this;
            int i10 = a0Var.f24665v;
            if (i10 <= 0) {
                i10 = 0;
            }
            return i10 + a0Var.f24662s + a0Var.f24663t;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f24669c == aVar.f24669c && this.f24668b == aVar.f24668b && this.f24667a == aVar.f24667a;
        }

        public int hashCode() {
            long j10 = this.f24667a;
            long j11 = this.f24668b;
            int i10 = ((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.f24669c;
            return i10 + ((int) (j12 ^ (j12 >>> 32)));
        }

        public String toString() {
            return "Extent{extentOffset=" + this.f24667a + ", extentLength=" + this.f24668b + ", extentIndex=" + this.f24669c + '}';
        }

        public a(ByteBuffer byteBuffer) {
            int i10;
            if (a0.this.getVersion() == 1 && (i10 = a0.this.f24665v) > 0) {
                this.f24669c = com.coremedia.iso.h.a(byteBuffer, i10);
            }
            this.f24667a = com.coremedia.iso.h.a(byteBuffer, a0.this.f24662s);
            this.f24668b = com.coremedia.iso.h.a(byteBuffer, a0.this.f24663t);
        }
    }

    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f24671a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f24672b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f24673c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f24674d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public List<a> f24675e;

        public b(ByteBuffer byteBuffer) {
            this.f24675e = new LinkedList();
            this.f24671a = com.coremedia.iso.g.i(byteBuffer);
            if (a0.this.getVersion() == 1) {
                this.f24672b = com.coremedia.iso.g.i(byteBuffer) & 15;
            }
            this.f24673c = com.coremedia.iso.g.i(byteBuffer);
            int i10 = a0.this.f24664u;
            if (i10 > 0) {
                this.f24674d = com.coremedia.iso.h.a(byteBuffer, i10);
            } else {
                this.f24674d = 0L;
            }
            int i11 = com.coremedia.iso.g.i(byteBuffer);
            for (int i12 = 0; i12 < i11; i12++) {
                this.f24675e.add(a0.this.new a(byteBuffer));
            }
        }

        public void a(ByteBuffer byteBuffer) {
            com.coremedia.iso.i.f(byteBuffer, this.f24671a);
            if (a0.this.getVersion() == 1) {
                com.coremedia.iso.i.f(byteBuffer, this.f24672b);
            }
            com.coremedia.iso.i.f(byteBuffer, this.f24673c);
            int i10 = a0.this.f24664u;
            if (i10 > 0) {
                com.coremedia.iso.j.a(this.f24674d, byteBuffer, i10);
            }
            com.coremedia.iso.i.f(byteBuffer, this.f24675e.size());
            Iterator<a> it2 = this.f24675e.iterator();
            while (it2.hasNext()) {
                it2.next().a(byteBuffer);
            }
        }

        public int b() {
            int iB = (a0.this.getVersion() == 1 ? 4 : 2) + 2 + a0.this.f24664u + 2;
            Iterator<a> it2 = this.f24675e.iterator();
            while (it2.hasNext()) {
                iB += it2.next().b();
            }
            return iB;
        }

        public void c(long j10) {
            this.f24674d = j10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f24674d != bVar.f24674d || this.f24672b != bVar.f24672b || this.f24673c != bVar.f24673c || this.f24671a != bVar.f24671a) {
                return false;
            }
            List<a> list = this.f24675e;
            List<a> list2 = bVar.f24675e;
            return list == null ? list2 == null : list.equals(list2);
        }

        public int hashCode() {
            int i10 = ((((this.f24671a * 31) + this.f24672b) * 31) + this.f24673c) * 31;
            long j10 = this.f24674d;
            int i11 = (i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            List<a> list = this.f24675e;
            return i11 + (list != null ? list.hashCode() : 0);
        }

        public String toString() {
            return "Item{baseOffset=" + this.f24674d + ", itemId=" + this.f24671a + ", constructionMethod=" + this.f24672b + ", dataReferenceIndex=" + this.f24673c + ", extents=" + this.f24675e + '}';
        }

        public b(int i10, int i11, int i12, long j10, List<a> list) {
            new LinkedList();
            this.f24671a = i10;
            this.f24672b = i11;
            this.f24673c = i12;
            this.f24674d = j10;
            this.f24675e = list;
        }
    }
}
