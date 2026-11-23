package com.mp4parser.iso14496.part15;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    boolean A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f75628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f75629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f75630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f75631d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f75632e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f75633f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f75634g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f75636i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f75638k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f75640m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f75642o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f75644q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f75645r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f75646s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f75647t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    boolean f75648u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f75649v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    boolean f75651x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    boolean f75652y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    boolean f75653z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f75635h = 15;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f75637j = 63;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f75639l = 63;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f75641n = 31;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f75643p = 31;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    List<a> f75650w = new ArrayList();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f75654a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f75655b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f75656c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public List<byte[]> f75657d;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f75654a != aVar.f75654a || this.f75656c != aVar.f75656c || this.f75655b != aVar.f75655b) {
                return false;
            }
            ListIterator<byte[]> listIterator = this.f75657d.listIterator();
            ListIterator<byte[]> listIterator2 = aVar.f75657d.listIterator();
            while (listIterator.hasNext() && listIterator2.hasNext()) {
                byte[] next = listIterator.next();
                byte[] next2 = listIterator2.next();
                if (next == null) {
                    if (next2 != null) {
                        return false;
                    }
                } else if (!Arrays.equals(next, next2)) {
                    return false;
                }
            }
            return (listIterator.hasNext() || listIterator2.hasNext()) ? false : true;
        }

        public int hashCode() {
            int i10 = (((((this.f75654a ? 1 : 0) * 31) + (this.f75655b ? 1 : 0)) * 31) + this.f75656c) * 31;
            List<byte[]> list = this.f75657d;
            return i10 + (list != null ? list.hashCode() : 0);
        }

        public String toString() {
            return "Array{nal_unit_type=" + this.f75656c + ", reserved=" + this.f75655b + ", array_completeness=" + this.f75654a + ", num_nals=" + this.f75657d.size() + '}';
        }
    }

    public void A(int i10) {
        this.f75644q = i10;
    }

    public void B(int i10) {
        this.f75642o = i10;
    }

    public void C(int i10) {
        this.f75640m = i10;
    }

    public void D(int i10) {
        this.f75628a = i10;
    }

    public void E(int i10) {
        this.f75646s = i10;
    }

    public void F(boolean z10) {
        this.f75651x = z10;
    }

    public void G(long j10) {
        this.f75633f = j10;
    }

    public void H(int i10) {
        this.f75634g = i10;
    }

    public void I(long j10) {
        this.f75632e = j10;
    }

    public void J(int i10) {
        this.f75631d = i10;
    }

    public void K(int i10) {
        this.f75629b = i10;
    }

    public void L(boolean z10) {
        this.f75630c = z10;
    }

    public void M(boolean z10) {
        this.f75653z = z10;
    }

    public void N(int i10) {
        this.f75649v = i10;
    }

    public void O(int i10) {
        this.f75636i = i10;
    }

    public void P(boolean z10) {
        this.f75652y = z10;
    }

    public void Q(int i10) {
        this.f75647t = i10;
    }

    public void R(int i10) {
        this.f75638k = i10;
    }

    public void S(boolean z10) {
        this.A = z10;
    }

    public void T(boolean z10) {
        this.f75648u = z10;
    }

    public void U(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.m(byteBuffer, this.f75628a);
        com.coremedia.iso.i.m(byteBuffer, (this.f75629b << 6) + (this.f75630c ? 32 : 0) + this.f75631d);
        com.coremedia.iso.i.i(byteBuffer, this.f75632e);
        long j10 = this.f75633f;
        if (this.f75651x) {
            j10 |= 140737488355328L;
        }
        if (this.f75652y) {
            j10 |= 70368744177664L;
        }
        if (this.f75653z) {
            j10 |= 35184372088832L;
        }
        if (this.A) {
            j10 |= 17592186044416L;
        }
        com.coremedia.iso.i.k(byteBuffer, j10);
        com.coremedia.iso.i.m(byteBuffer, this.f75634g);
        com.coremedia.iso.i.f(byteBuffer, (this.f75635h << 12) + this.f75636i);
        com.coremedia.iso.i.m(byteBuffer, (this.f75637j << 2) + this.f75638k);
        com.coremedia.iso.i.m(byteBuffer, (this.f75639l << 2) + this.f75640m);
        com.coremedia.iso.i.m(byteBuffer, (this.f75641n << 3) + this.f75642o);
        com.coremedia.iso.i.m(byteBuffer, (this.f75643p << 3) + this.f75644q);
        com.coremedia.iso.i.f(byteBuffer, this.f75645r);
        com.coremedia.iso.i.m(byteBuffer, (this.f75646s << 6) + (this.f75647t << 3) + (this.f75648u ? 4 : 0) + this.f75649v);
        com.coremedia.iso.i.m(byteBuffer, this.f75650w.size());
        for (a aVar : this.f75650w) {
            com.coremedia.iso.i.m(byteBuffer, (aVar.f75654a ? 128 : 0) + (aVar.f75655b ? 64 : 0) + aVar.f75656c);
            com.coremedia.iso.i.f(byteBuffer, aVar.f75657d.size());
            for (byte[] bArr : aVar.f75657d) {
                com.coremedia.iso.i.f(byteBuffer, bArr.length);
                byteBuffer.put(bArr);
            }
        }
    }

    public List<a> a() {
        return this.f75650w;
    }

    public int b() {
        return this.f75645r;
    }

    public int c() {
        return this.f75644q;
    }

    public int d() {
        return this.f75642o;
    }

    public int e() {
        return this.f75640m;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f75645r != dVar.f75645r || this.f75644q != dVar.f75644q || this.f75642o != dVar.f75642o || this.f75640m != dVar.f75640m || this.f75628a != dVar.f75628a || this.f75646s != dVar.f75646s || this.f75633f != dVar.f75633f || this.f75634g != dVar.f75634g || this.f75632e != dVar.f75632e || this.f75631d != dVar.f75631d || this.f75629b != dVar.f75629b || this.f75630c != dVar.f75630c || this.f75649v != dVar.f75649v || this.f75636i != dVar.f75636i || this.f75647t != dVar.f75647t || this.f75638k != dVar.f75638k || this.f75635h != dVar.f75635h || this.f75637j != dVar.f75637j || this.f75639l != dVar.f75639l || this.f75641n != dVar.f75641n || this.f75643p != dVar.f75643p || this.f75648u != dVar.f75648u) {
            return false;
        }
        List<a> list = this.f75650w;
        List<a> list2 = dVar.f75650w;
        return list == null ? list2 == null : list.equals(list2);
    }

    public int f() {
        return this.f75628a;
    }

    public int g() {
        return this.f75646s;
    }

    public long h() {
        return this.f75633f;
    }

    public int hashCode() {
        int i10 = ((((((this.f75628a * 31) + this.f75629b) * 31) + (this.f75630c ? 1 : 0)) * 31) + this.f75631d) * 31;
        long j10 = this.f75632e;
        int i11 = (i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.f75633f;
        int i12 = (((((((((((((((((((((((((((((((((i11 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + this.f75634g) * 31) + this.f75635h) * 31) + this.f75636i) * 31) + this.f75637j) * 31) + this.f75638k) * 31) + this.f75639l) * 31) + this.f75640m) * 31) + this.f75641n) * 31) + this.f75642o) * 31) + this.f75643p) * 31) + this.f75644q) * 31) + this.f75645r) * 31) + this.f75646s) * 31) + this.f75647t) * 31) + (this.f75648u ? 1 : 0)) * 31) + this.f75649v) * 31;
        List<a> list = this.f75650w;
        return i12 + (list != null ? list.hashCode() : 0);
    }

    public int i() {
        return this.f75634g;
    }

    public long j() {
        return this.f75632e;
    }

    public int k() {
        return this.f75631d;
    }

    public int l() {
        return this.f75629b;
    }

    public int m() {
        return this.f75649v;
    }

    public int n() {
        return this.f75636i;
    }

    public int o() {
        return this.f75647t;
    }

    public int p() {
        return this.f75638k;
    }

    public int q() {
        Iterator<a> it2 = this.f75650w.iterator();
        int length = 23;
        while (it2.hasNext()) {
            length += 3;
            Iterator<byte[]> it3 = it2.next().f75657d.iterator();
            while (it3.hasNext()) {
                length = length + 2 + it3.next().length;
            }
        }
        return length;
    }

    public boolean r() {
        return this.f75651x;
    }

    public boolean s() {
        return this.f75630c;
    }

    public boolean t() {
        return this.f75653z;
    }

    public String toString() {
        String str;
        String str2;
        String str3;
        String str4;
        StringBuilder sb2 = new StringBuilder("HEVCDecoderConfigurationRecord{configurationVersion=");
        sb2.append(this.f75628a);
        sb2.append(", general_profile_space=");
        sb2.append(this.f75629b);
        sb2.append(", general_tier_flag=");
        sb2.append(this.f75630c);
        sb2.append(", general_profile_idc=");
        sb2.append(this.f75631d);
        sb2.append(", general_profile_compatibility_flags=");
        sb2.append(this.f75632e);
        sb2.append(", general_constraint_indicator_flags=");
        sb2.append(this.f75633f);
        sb2.append(", general_level_idc=");
        sb2.append(this.f75634g);
        String str5 = "";
        if (this.f75635h != 15) {
            str = ", reserved1=" + this.f75635h;
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append(", min_spatial_segmentation_idc=");
        sb2.append(this.f75636i);
        if (this.f75637j != 63) {
            str2 = ", reserved2=" + this.f75637j;
        } else {
            str2 = "";
        }
        sb2.append(str2);
        sb2.append(", parallelismType=");
        sb2.append(this.f75638k);
        if (this.f75639l != 63) {
            str3 = ", reserved3=" + this.f75639l;
        } else {
            str3 = "";
        }
        sb2.append(str3);
        sb2.append(", chromaFormat=");
        sb2.append(this.f75640m);
        if (this.f75641n != 31) {
            str4 = ", reserved4=" + this.f75641n;
        } else {
            str4 = "";
        }
        sb2.append(str4);
        sb2.append(", bitDepthLumaMinus8=");
        sb2.append(this.f75642o);
        if (this.f75643p != 31) {
            str5 = ", reserved5=" + this.f75643p;
        }
        sb2.append(str5);
        sb2.append(", bitDepthChromaMinus8=");
        sb2.append(this.f75644q);
        sb2.append(", avgFrameRate=");
        sb2.append(this.f75645r);
        sb2.append(", constantFrameRate=");
        sb2.append(this.f75646s);
        sb2.append(", numTemporalLayers=");
        sb2.append(this.f75647t);
        sb2.append(", temporalIdNested=");
        sb2.append(this.f75648u);
        sb2.append(", lengthSizeMinusOne=");
        sb2.append(this.f75649v);
        sb2.append(", arrays=");
        sb2.append(this.f75650w);
        sb2.append('}');
        return sb2.toString();
    }

    public boolean u() {
        return this.f75652y;
    }

    public boolean v() {
        return this.A;
    }

    public boolean w() {
        return this.f75648u;
    }

    public void x(ByteBuffer byteBuffer) {
        this.f75628a = com.coremedia.iso.g.p(byteBuffer);
        int iP = com.coremedia.iso.g.p(byteBuffer);
        this.f75629b = (iP & 192) >> 6;
        this.f75630c = (iP & 32) > 0;
        this.f75631d = iP & 31;
        this.f75632e = com.coremedia.iso.g.l(byteBuffer);
        long jN = com.coremedia.iso.g.n(byteBuffer);
        this.f75633f = jN;
        this.f75651x = ((jN >> 44) & 8) > 0;
        this.f75652y = ((jN >> 44) & 4) > 0;
        this.f75653z = ((jN >> 44) & 2) > 0;
        this.A = ((jN >> 44) & 1) > 0;
        this.f75633f = jN & 140737488355327L;
        this.f75634g = com.coremedia.iso.g.p(byteBuffer);
        int i10 = com.coremedia.iso.g.i(byteBuffer);
        this.f75635h = (61440 & i10) >> 12;
        this.f75636i = i10 & 4095;
        int iP2 = com.coremedia.iso.g.p(byteBuffer);
        this.f75637j = (iP2 & 252) >> 2;
        this.f75638k = iP2 & 3;
        int iP3 = com.coremedia.iso.g.p(byteBuffer);
        this.f75639l = (iP3 & 252) >> 2;
        this.f75640m = iP3 & 3;
        int iP4 = com.coremedia.iso.g.p(byteBuffer);
        this.f75641n = (iP4 & 248) >> 3;
        this.f75642o = iP4 & 7;
        int iP5 = com.coremedia.iso.g.p(byteBuffer);
        this.f75643p = (iP5 & 248) >> 3;
        this.f75644q = iP5 & 7;
        this.f75645r = com.coremedia.iso.g.i(byteBuffer);
        int iP6 = com.coremedia.iso.g.p(byteBuffer);
        this.f75646s = (iP6 & 192) >> 6;
        this.f75647t = (iP6 & 56) >> 3;
        this.f75648u = (iP6 & 4) > 0;
        this.f75649v = iP6 & 3;
        int iP7 = com.coremedia.iso.g.p(byteBuffer);
        this.f75650w = new ArrayList();
        for (int i11 = 0; i11 < iP7; i11++) {
            a aVar = new a();
            int iP8 = com.coremedia.iso.g.p(byteBuffer);
            aVar.f75654a = (iP8 & 128) > 0;
            aVar.f75655b = (iP8 & 64) > 0;
            aVar.f75656c = iP8 & 63;
            int i12 = com.coremedia.iso.g.i(byteBuffer);
            aVar.f75657d = new ArrayList();
            for (int i13 = 0; i13 < i12; i13++) {
                byte[] bArr = new byte[com.coremedia.iso.g.i(byteBuffer)];
                byteBuffer.get(bArr);
                aVar.f75657d.add(bArr);
            }
            this.f75650w.add(aVar);
        }
    }

    public void y(List<a> list) {
        this.f75650w = list;
    }

    public void z(int i10) {
        this.f75645r = i10;
    }
}
