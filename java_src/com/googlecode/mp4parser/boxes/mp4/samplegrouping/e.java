package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class e extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f33667u = "sgpd";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33668v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33669w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33670x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33671y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33672z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f33673s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private List<b> f33674t;

    static {
        s();
    }

    public e() {
        super(f33667u);
        this.f33674t = new LinkedList();
        setVersion(1);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SampleGroupDescriptionBox.java", e.class);
        f33668v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDefaultLength", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "int"), 145);
        f33669w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDefaultLength", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "int", "defaultLength", "", "void"), 149);
        f33670x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getGroupEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "java.util.List"), 153);
        f33671y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setGroupEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "java.util.List", "groupEntries", "", "void"), 157);
        f33672z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "equals", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "java.lang.Object", "o", "", "boolean"), 162);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "hashCode", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "int"), 183);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "java.lang.String"), 191);
    }

    private b x(ByteBuffer byteBuffer, String str) {
        b fVar;
        if (d.f33665b.equals(str)) {
            fVar = new d();
        } else if (c.f33656g.equals(str)) {
            fVar = new c();
        } else if (a.f33652d.equals(str)) {
            fVar = new a();
        } else if (i.f33690c.equals(str)) {
            fVar = new i();
        } else if (g.f33685c.equals(str)) {
            fVar = new g();
        } else if (com.mp4parser.iso14496.part15.g.f75671c.equals(str)) {
            fVar = new com.mp4parser.iso14496.part15.g();
        } else if (com.mp4parser.iso14496.part15.h.f75674l.equals(str)) {
            fVar = new com.mp4parser.iso14496.part15.h();
        } else if (com.mp4parser.iso14496.part15.i.f75686b.equals(str)) {
            fVar = new com.mp4parser.iso14496.part15.i();
        } else {
            fVar = com.mp4parser.iso14496.part15.f.f75670a.equals(str) ? new com.mp4parser.iso14496.part15.f() : new h(str);
        }
        fVar.b(byteBuffer);
        return fVar;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if (getVersion() != 1) {
            throw new RuntimeException("SampleGroupDescriptionBox are only supported in version 1");
        }
        String strB = com.coremedia.iso.g.b(byteBuffer);
        if (getVersion() == 1) {
            this.f33673s = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        }
        long jL = com.coremedia.iso.g.l(byteBuffer);
        while (true) {
            long j10 = jL - 1;
            if (jL <= 0) {
                return;
            }
            int iA = this.f33673s;
            if (getVersion() != 1) {
                throw new RuntimeException("This should be implemented");
            }
            if (this.f33673s == 0) {
                iA = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
            }
            int iPosition = byteBuffer.position() + iA;
            ByteBuffer byteBufferSlice = byteBuffer.slice();
            byteBufferSlice.limit(iA);
            this.f33674t.add(x(byteBufferSlice, strB));
            byteBuffer.position(iPosition);
            jL = j10;
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(com.coremedia.iso.f.t(this.f33674t.get(0).getType()));
        if (getVersion() == 1) {
            com.coremedia.iso.i.i(byteBuffer, this.f33673s);
        }
        com.coremedia.iso.i.i(byteBuffer, this.f33674t.size());
        for (b bVar : this.f33674t) {
            if (getVersion() == 1 && this.f33673s == 0) {
                com.coremedia.iso.i.i(byteBuffer, bVar.a().limit());
            }
            byteBuffer.put(bVar.a());
        }
    }

    public boolean equals(Object obj) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33672z, this, this, obj));
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f33673s != eVar.f33673s) {
            return false;
        }
        List<b> list = this.f33674t;
        List<b> list2 = eVar.f33674t;
        return list == null ? list2 == null : list.equals(list2);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        long jC = (getVersion() == 1 ? 12L : 8L) + 4;
        for (b bVar : this.f33674t) {
            if (getVersion() == 1 && this.f33673s == 0) {
                jC += 4;
            }
            jC += (long) bVar.c();
        }
        return jC;
    }

    public int hashCode() {
        j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        int i10 = (this.f33673s + 0) * 31;
        List<b> list = this.f33674t;
        return i10 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        StringBuilder sb2 = new StringBuilder("SampleGroupDescriptionBox{groupingType='");
        sb2.append(this.f33674t.size() > 0 ? this.f33674t.get(0).getType() : "????");
        sb2.append('\'');
        sb2.append(", defaultLength=");
        sb2.append(this.f33673s);
        sb2.append(", groupEntries=");
        sb2.append(this.f33674t);
        sb2.append('}');
        return sb2.toString();
    }

    public int v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33668v, this, this));
        return this.f33673s;
    }

    public List<b> w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33670x, this, this));
        return this.f33674t;
    }

    public void y(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33669w, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33673s = i10;
    }

    public void z(List<b> list) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33671y, this, this, list));
        this.f33674t = list;
    }
}
