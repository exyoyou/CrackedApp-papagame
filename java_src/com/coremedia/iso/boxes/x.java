package com.coremedia.iso.boxes;

import com.android.dex.DexFormat;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class x extends com.googlecode.mp4parser.c {
    public static final Map<String, String> A;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;
    private static final /* synthetic */ org.aspectj.lang.c.b F = null;
    private static final /* synthetic */ org.aspectj.lang.c.b G = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final String f25192z = "hdlr";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f25193s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f25194t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f25195u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f25196v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f25197w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f25198x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f25199y;

    static {
        s();
        HashMap map = new HashMap();
        map.put("odsm", "ObjectDescriptorStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("crsm", "ClockReferenceStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("sdsm", "SceneDescriptionStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("m7sm", "MPEG7Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("ocsm", "ObjectContentInfoStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("ipsm", "IPMP Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("mjsm", "MPEG-J Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("mdir", "Apple Meta Data iTunes Reader");
        map.put("mp7b", "MPEG-7 binary XML");
        map.put("mp7t", "MPEG-7 XML");
        map.put("vide", "Video Track");
        map.put("soun", "Sound Track");
        map.put("hint", "Hint Track");
        map.put("appl", "Apple specific");
        map.put(g0.f24873q, "Timed Metadata track - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        A = Collections.unmodifiableMap(map);
    }

    public x() {
        super(f25192z);
        this.f25194t = null;
        this.f25198x = true;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("HandlerBox.java", x.class);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getHandlerType", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 78);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setName", "com.coremedia.iso.boxes.HandlerBox", "java.lang.String", "name", "", "void"), 87);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setHandlerType", "com.coremedia.iso.boxes.HandlerBox", "java.lang.String", "handlerType", "", "void"), 91);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getName", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 95);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getHumanReadableTrackType", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 99);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 149);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f25199y = com.coremedia.iso.g.l(byteBuffer);
        this.f25193s = com.coremedia.iso.g.b(byteBuffer);
        this.f25195u = com.coremedia.iso.g.l(byteBuffer);
        this.f25196v = com.coremedia.iso.g.l(byteBuffer);
        this.f25197w = com.coremedia.iso.g.l(byteBuffer);
        if (byteBuffer.remaining() <= 0) {
            this.f25198x = false;
            return;
        }
        String strH = com.coremedia.iso.g.h(byteBuffer, byteBuffer.remaining());
        this.f25194t = strH;
        if (!strH.endsWith(DexFormat.MAGIC_SUFFIX)) {
            this.f25198x = false;
            return;
        }
        String str = this.f25194t;
        this.f25194t = str.substring(0, str.length() - 1);
        this.f25198x = true;
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f25199y);
        byteBuffer.put(com.coremedia.iso.f.t(this.f25193s));
        com.coremedia.iso.i.i(byteBuffer, this.f25195u);
        com.coremedia.iso.i.i(byteBuffer, this.f25196v);
        com.coremedia.iso.i.i(byteBuffer, this.f25197w);
        String str = this.f25194t;
        if (str != null) {
            byteBuffer.put(com.coremedia.iso.l.b(str));
        }
        if (this.f25198x) {
            byteBuffer.put((byte) 0);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return this.f25198x ? com.coremedia.iso.l.c(this.f25194t) + 25 : com.coremedia.iso.l.c(this.f25194t) + 24;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return "HandlerBox[handlerType=" + v() + ";name=" + x() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f25193s;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        Map<String, String> map = A;
        return map.get(this.f25193s) != null ? map.get(this.f25193s) : "Unknown Handler Type";
    }

    public String x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f25194t;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, str));
        this.f25193s = str;
    }

    public void z(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, str));
        this.f25194t = str;
    }
}
