package com.googlecode.mp4parser.boxes.mp4;

import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.g;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes5.dex */
public class b extends a {
    public static final String A = "esds";
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;

    static {
        s();
    }

    public b() {
        super(A);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("ESDescriptorBox.java", b.class);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getEsDescriptor", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "", "", "", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor"), 33);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setEsDescriptor", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor", "esDescriptor", "", "void"), 37);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "equals", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "java.lang.Object", "o", "", "boolean"), 42);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "hashCode", "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox", "", "", "", "int"), 53);
    }

    public g A() {
        j.b().c(e.v(B, this, this));
        return (g) super.w();
    }

    public void B(g gVar) {
        j.b().c(e.w(C, this, this, gVar));
        super.z(gVar);
    }

    public boolean equals(Object obj) {
        j.b().c(e.w(D, this, this, obj));
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ByteBuffer byteBuffer = this.f33546t;
        ByteBuffer byteBuffer2 = ((b) obj).f33546t;
        return byteBuffer == null ? byteBuffer2 == null : byteBuffer.equals(byteBuffer2);
    }

    public int hashCode() {
        j.b().c(e.v(E, this, this));
        ByteBuffer byteBuffer = this.f33546t;
        if (byteBuffer != null) {
            return byteBuffer.hashCode();
        }
        return 0;
    }
}
