package com.coremedia.iso.boxes;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class r0 extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f25041t = "sdtp";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25042u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25043v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25044w = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private List<a> f25045s;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f25046a;

        public a(int i10) {
            this.f25046a = i10;
        }

        public int b() {
            return (this.f25046a >> 6) & 3;
        }

        public int c() {
            return (this.f25046a >> 4) & 3;
        }

        public int d() {
            return this.f25046a & 3;
        }

        public int e() {
            return (this.f25046a >> 2) & 3;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.f25046a == ((a) obj).f25046a;
        }

        public void f(int i10) {
            this.f25046a = ((i10 & 3) << 6) | (this.f25046a & 63);
        }

        public void g(int i10) {
            this.f25046a = ((i10 & 3) << 4) | (this.f25046a & 207);
        }

        public void h(int i10) {
            this.f25046a = (i10 & 3) | (this.f25046a & 252);
        }

        public int hashCode() {
            return this.f25046a;
        }

        public void i(int i10) {
            this.f25046a = ((i10 & 3) << 2) | (this.f25046a & MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_SIZE);
        }

        public String toString() {
            return "Entry{reserved=" + b() + ", sampleDependsOn=" + c() + ", sampleIsDependentOn=" + e() + ", sampleHasRedundancy=" + d() + '}';
        }
    }

    static {
        s();
    }

    public r0() {
        super(f25041t);
        this.f25045s = new ArrayList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SampleDependencyTypeBox.java", r0.class);
        f25042u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEntries", "com.coremedia.iso.boxes.SampleDependencyTypeBox", "", "", "", "java.util.List"), 139);
        f25043v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEntries", "com.coremedia.iso.boxes.SampleDependencyTypeBox", "java.util.List", "entries", "", "void"), 143);
        f25044w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.SampleDependencyTypeBox", "", "", "", "java.lang.String"), 148);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        while (byteBuffer.remaining() > 0) {
            this.f25045s.add(new a(com.coremedia.iso.g.p(byteBuffer)));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        Iterator<a> it2 = this.f25045s.iterator();
        while (it2.hasNext()) {
            com.coremedia.iso.i.m(byteBuffer, it2.next().f25046a);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return this.f25045s.size() + 4;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25044w, this, this));
        return "SampleDependencyTypeBox{entries=" + this.f25045s + '}';
    }

    public List<a> v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25042u, this, this));
        return this.f25045s;
    }

    public void w(List<a> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25043v, this, this, list));
        this.f25045s = list;
    }
}
