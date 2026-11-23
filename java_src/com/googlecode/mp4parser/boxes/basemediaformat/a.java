package com.googlecode.mp4parser.boxes.basemediaformat;

import com.googlecode.mp4parser.j;
import com.mp4parser.iso14496.part15.b;
import java.nio.ByteBuffer;
import java.util.List;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes5.dex */
public class a extends com.googlecode.mp4parser.a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f33403p = "avcn";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final /* synthetic */ c.b f33404q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final /* synthetic */ c.b f33405r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final /* synthetic */ c.b f33406s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ c.b f33407t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ c.b f33408u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ c.b f33409v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ c.b f33410w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ c.b f33411x = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    b f33412o;

    static {
        s();
    }

    public a() {
        super(f33403p);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("AvcNalUnitStorageBox.java", a.class);
        f33404q = eVar.H(c.f95144a, eVar.E("1", "getAvcDecoderConfigurationRecord", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "com.mp4parser.iso14496.part15.AvcDecoderConfigurationRecord"), 44);
        f33405r = eVar.H(c.f95144a, eVar.E("1", "getLengthSizeMinusOne", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "int"), 49);
        f33406s = eVar.H(c.f95144a, eVar.E("1", "getSPS", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "[Ljava.lang.String;"), 53);
        f33407t = eVar.H(c.f95144a, eVar.E("1", "getPPS", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "[Ljava.lang.String;"), 57);
        f33408u = eVar.H(c.f95144a, eVar.E("1", "getSequenceParameterSetsAsStrings", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "java.util.List"), 61);
        f33409v = eVar.H(c.f95144a, eVar.E("1", "getSequenceParameterSetExtsAsStrings", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "java.util.List"), 65);
        f33410w = eVar.H(c.f95144a, eVar.E("1", "getPictureParameterSetsAsStrings", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "java.util.List"), 69);
        f33411x = eVar.H(c.f95144a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.basemediaformat.AvcNalUnitStorageBox", "", "", "", "java.lang.String"), 89);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f33412o = new b(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        this.f33412o.a(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return this.f33412o.b();
    }

    public b t() {
        j.b().c(e.v(f33404q, this, this));
        return this.f33412o;
    }

    public String toString() {
        j.b().c(e.v(f33411x, this, this));
        return "AvcNalUnitStorageBox{SPS=" + this.f33412o.g() + ",PPS=" + this.f33412o.d() + ",lengthSize=" + (this.f33412o.f75603e + 1) + '}';
    }

    public int u() {
        j.b().c(e.v(f33405r, this, this));
        return this.f33412o.f75603e;
    }

    public String[] v() {
        j.b().c(e.v(f33407t, this, this));
        return this.f33412o.c();
    }

    public List<String> w() {
        j.b().c(e.v(f33410w, this, this));
        return this.f33412o.d();
    }

    public String[] x() {
        j.b().c(e.v(f33406s, this, this));
        return this.f33412o.e();
    }

    public List<String> y() {
        j.b().c(e.v(f33409v, this, this));
        return this.f33412o.f();
    }

    public List<String> z() {
        j.b().c(e.v(f33408u, this, this));
        return this.f33412o.g();
    }

    public a(com.mp4parser.iso14496.part15.a aVar) {
        super(f33403p);
        this.f33412o = aVar.G();
    }
}
