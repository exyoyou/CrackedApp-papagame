package com.coremedia.iso.boxes;

/* JADX INFO: loaded from: classes9.dex */
public abstract class f extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24780s = null;

    static {
        s();
    }

    public f(String str) {
        super(str);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("ChunkOffsetBox.java", f.class);
        f24780s = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.ChunkOffsetBox", "", "", "", "java.lang.String"), 18);
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24780s, this, this));
        return getClass().getSimpleName() + "[entryCount=" + v().length + "]";
    }

    public abstract long[] v();

    public abstract void w(long[] jArr);
}
