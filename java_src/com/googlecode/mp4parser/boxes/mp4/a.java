package com.googlecode.mp4parser.boxes.mp4;

import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.l;
import com.googlecode.mp4parser.j;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes5.dex */
public class a extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static Logger f33539u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33540v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33541w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33542x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33543y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33544z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b f33545s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected ByteBuffer f33546t;

    static {
        s();
        f33539u = Logger.getLogger(a.class.getName());
    }

    public a(String str) {
        super(str);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("AbstractDescriptorBox.java", a.class);
        f33540v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getData", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "", "java.nio.ByteBuffer"), 42);
        f33541w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDescriptor", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor"), 58);
        f33542x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDescriptorAsString", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "", "java.lang.String"), 62);
        f33543y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDescriptor", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor", "descriptor", "", "void"), 66);
        f33544z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setData", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "java.nio.ByteBuffer", "data", "", "void"), 70);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f33546t = byteBuffer.slice();
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
        try {
            this.f33546t.rewind();
            this.f33545s = l.a(-1, this.f33546t);
        } catch (IOException e10) {
            f33539u.log(Level.WARNING, "Error parsing ObjectDescriptor", (Throwable) e10);
        } catch (IndexOutOfBoundsException e11) {
            f33539u.log(Level.WARNING, "Error parsing ObjectDescriptor", (Throwable) e11);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        this.f33546t.rewind();
        byteBuffer.put(this.f33546t);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return this.f33546t.limit() + 4;
    }

    public ByteBuffer v() {
        j.b().c(e.v(f33540v, this, this));
        return this.f33546t;
    }

    public com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b w() {
        j.b().c(e.v(f33541w, this, this));
        return this.f33545s;
    }

    public String x() {
        j.b().c(e.v(f33542x, this, this));
        return this.f33545s.toString();
    }

    public void y(ByteBuffer byteBuffer) {
        j.b().c(e.w(f33544z, this, this, byteBuffer));
        this.f33546t = byteBuffer;
    }

    public void z(com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b bVar) {
        j.b().c(e.w(f33543y, this, this, bVar));
        this.f33545s = bVar;
    }
}
