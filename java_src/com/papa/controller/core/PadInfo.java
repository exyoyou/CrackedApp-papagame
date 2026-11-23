package com.papa.controller.core;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class PadInfo implements Parcelable {
    public static final byte A = 0;
    public static final byte B = 1;
    public static final int C = -1;
    public static final Parcelable.Creator<PadInfo> CREATOR = new a();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final byte f76546z = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f76547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f76548c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f76549d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f76550e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f76551f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f76552g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected String f76553h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected String f76554i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected String f76555j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected String f76556k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected String f76557l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected String f76558m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected String f76559n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected String f76560o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected byte f76561p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected byte f76562q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected int f76563r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected int f76564s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected boolean f76565t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected boolean f76566u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected boolean f76567v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected boolean f76568w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected String f76569x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected HashMap<Integer, Float> f76570y;

    class a implements Parcelable.Creator<PadInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PadInfo createFromParcel(Parcel parcel) {
            return new PadInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public PadInfo[] newArray(int i10) {
            return new PadInfo[i10];
        }
    }

    public PadInfo() {
        this.f76547b = "";
        this.f76548c = "";
        this.f76549d = "";
        this.f76550e = "";
        this.f76551f = "";
        this.f76552g = "";
        this.f76553h = "";
        this.f76554i = "";
        this.f76555j = "";
        this.f76556k = "";
        this.f76557l = "";
        this.f76558m = "";
        this.f76559n = "";
        this.f76560o = "";
        this.f76561p = (byte) -1;
        this.f76562q = (byte) -1;
        this.f76563r = -1;
        this.f76564s = 0;
        this.f76565t = false;
        this.f76566u = false;
        this.f76567v = false;
        this.f76568w = false;
        this.f76569x = "";
        this.f76570y = new HashMap<>();
    }

    private HashMap<Integer, Integer> D(com.papa.controller.core.hardware.d dVar) {
        HashMap<Integer, Integer> map = new HashMap<>();
        int[] iArr = {109, 19, 20, 21, 22, 96, 97, 99, 100, 102, 103, 104, 105, 106, 107, 108, 198, 199, 200, 201};
        int[] iArr2 = {dVar.r(), dVar.E(), dVar.s(), dVar.x(), dVar.A(), dVar.k(), dVar.q(), dVar.F(), dVar.G(), dVar.v(), dVar.y(), dVar.w(), dVar.z(), dVar.C(), dVar.D(), dVar.B(), dVar.t(), dVar.u(), (dVar.l() << 8) | dVar.m(), dVar.o() | (dVar.n() << 8)};
        if (this.f76570y.size() == 0) {
            for (int i10 = 0; i10 < 20; i10++) {
                this.f76570y.put(Integer.valueOf(iArr[i10]), Float.valueOf(0.0f));
            }
        }
        for (int i11 = 0; i11 < 20; i11++) {
            map.put(Integer.valueOf(iArr[i11]), Integer.valueOf(iArr2[i11]));
        }
        return map;
    }

    private PadMotionEvent G(com.papa.controller.core.hardware.d dVar) {
        try {
            int iL = dVar.l();
            return new PadMotionEvent(System.currentTimeMillis(), this.f76563r, this.f76547b, 200, ((iL - 128) * 1.0f) / 128.0f, ((dVar.m() - 128) * 1.0f) / 128.0f);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private PadMotionEvent H(com.papa.controller.core.hardware.d dVar) {
        try {
            int iN = dVar.n();
            return new PadMotionEvent(System.currentTimeMillis(), this.f76563r, this.f76547b, 201, ((iN - 128) * 1.0f) / 128.0f, ((dVar.o() - 128) * 1.0f) / 128.0f);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public String A() {
        return this.f76569x;
    }

    public String B() {
        return this.f76553h;
    }

    public HashMap<Integer, Float> C() {
        return this.f76570y;
    }

    public String E() {
        return this.f76550e;
    }

    public byte F() {
        return this.f76561p;
    }

    public byte I() {
        return this.f76562q;
    }

    public String J() {
        return this.f76547b;
    }

    public String K() {
        return this.f76555j;
    }

    public String L() {
        return this.f76559n;
    }

    public String M() {
        return this.f76560o;
    }

    public String N() {
        return this.f76556k;
    }

    public String O() {
        return this.f76557l;
    }

    public String P() {
        return this.f76558m;
    }

    public String Q() {
        return this.f76548c;
    }

    public boolean R() {
        return this.f76567v;
    }

    public boolean S() {
        return this.f76568w;
    }

    public boolean T() {
        return this.f76566u;
    }

    public boolean U() {
        return this.f76565t;
    }

    public void V(int i10) {
        this.f76564s = i10;
    }

    public void W(int i10) {
        this.f76563r = i10;
    }

    public void X(String str) {
        this.f76551f = str;
    }

    public void Y(String str) {
        this.f76554i = str;
    }

    public void Z(String str) {
        this.f76552g = str;
    }

    public void a(c cVar, com.papa.controller.core.hardware.d dVar) {
        float f10;
        HashMap<Integer, Integer> mapD = D(dVar);
        int[] iArr = {109, 19, 20, 21, 22, 106, 107, 108, 198, 199};
        int i10 = 0;
        while (true) {
            f10 = 1.0f;
            if (i10 >= 10) {
                break;
            }
            int i11 = iArr[i10];
            if (mapD.containsKey(Integer.valueOf(i11)) && this.f76570y.containsKey(Integer.valueOf(i11))) {
                float fIntValue = mapD.get(Integer.valueOf(i11)).intValue() * 1.0f;
                if (this.f76570y.get(Integer.valueOf(i11)).floatValue() != fIntValue) {
                    int i12 = fIntValue != 1.0f ? 0 : 1;
                    PadKeyEvent padKeyEvent = new PadKeyEvent(System.currentTimeMillis(), this.f76563r, this.f76547b, i11, i12 ^ 1, i12 != 0 ? fIntValue : 0.0f);
                    this.f76570y.put(Integer.valueOf(i11), Float.valueOf(i12 != 0 ? fIntValue : 0.0f));
                    if (i12 != 0) {
                        cVar.onKeyDown(i11, padKeyEvent);
                    } else {
                        cVar.onKeyUp(i11, padKeyEvent);
                    }
                }
            }
            i10++;
        }
        int[] iArr2 = {96, 97, 99, 100, 102, 103, 104, 105};
        int i13 = 0;
        while (i13 < 8) {
            int i14 = iArr2[i13];
            if (mapD.containsKey(Integer.valueOf(i14)) && this.f76570y.containsKey(Integer.valueOf(i14))) {
                float fIntValue2 = (mapD.get(Integer.valueOf(i14)).intValue() * f10) / 255.0f;
                if (this.f76570y.get(Integer.valueOf(i14)).floatValue() != fIntValue2) {
                    int i15 = fIntValue2 > 0.0f ? 1 : 0;
                    PadKeyEvent padKeyEvent2 = new PadKeyEvent(System.currentTimeMillis(), this.f76563r, this.f76547b, i14, i15 ^ 1, fIntValue2);
                    this.f76570y.put(Integer.valueOf(i14), Float.valueOf(i15 != 0 ? fIntValue2 : 0.0f));
                    cVar.onKeyPressure(i14, fIntValue2, padKeyEvent2);
                }
            }
            i13++;
            f10 = 1.0f;
        }
        PadMotionEvent padMotionEventG = G(dVar);
        if (padMotionEventG != null) {
            float fL = (dVar.l() << 8) | dVar.m();
            if (this.f76570y.get(Integer.valueOf(padMotionEventG.w())).floatValue() != fL) {
                this.f76570y.put(Integer.valueOf(padMotionEventG.w()), Float.valueOf(fL));
                cVar.onLeftStick(padMotionEventG.y(), padMotionEventG.A(), padMotionEventG);
            }
        }
        PadMotionEvent padMotionEventH = H(dVar);
        if (padMotionEventH != null) {
            float fO = dVar.o() | (dVar.n() << 8);
            if (this.f76570y.get(Integer.valueOf(padMotionEventH.w())).floatValue() != fO) {
                this.f76570y.put(Integer.valueOf(padMotionEventH.w()), Float.valueOf(fO));
                cVar.onRightStick(padMotionEventH.y(), padMotionEventH.A(), padMotionEventH);
            }
        }
    }

    public void a0(String str) {
        this.f76569x = str;
    }

    public int b() {
        return this.f76564s;
    }

    public void b0(boolean z10) {
        this.f76567v = z10;
    }

    public void c0(boolean z10) {
        this.f76568w = z10;
    }

    public int d() {
        return this.f76563r;
    }

    public void d0(String str) {
        this.f76553h = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void e0(HashMap<Integer, Float> map) {
        this.f76570y = map;
    }

    public String f() {
        return this.f76551f;
    }

    public void f0(String str) {
        this.f76550e = str;
    }

    public void g0(byte b10) {
        this.f76561p = b10;
    }

    public String getType() {
        return this.f76549d;
    }

    public void h0(byte b10) {
        this.f76562q = b10;
    }

    public void i0(String str) {
        this.f76547b = str;
    }

    public void j0(String str) {
        this.f76555j = str;
    }

    public void k0(String str) {
        this.f76559n = str;
    }

    public void l0(String str) {
        this.f76560o = str;
    }

    public void m0(boolean z10) {
        this.f76566u = z10;
    }

    public void n0(String str) {
        this.f76549d = str;
    }

    public void o0(String str) {
        this.f76556k = str;
    }

    public void p0(String str) {
        this.f76557l = str;
    }

    public void q0(String str) {
        this.f76558m = str;
    }

    public void r0(String str) {
        this.f76548c = str;
    }

    public void s0(boolean z10) {
        this.f76565t = z10;
    }

    public String w() {
        return this.f76554i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f76547b);
        parcel.writeString(this.f76548c);
        parcel.writeString(this.f76549d);
        parcel.writeString(this.f76550e);
        parcel.writeString(this.f76551f);
        parcel.writeString(this.f76552g);
        parcel.writeString(this.f76553h);
        parcel.writeString(this.f76554i);
        parcel.writeString(this.f76555j);
        parcel.writeString(this.f76556k);
        parcel.writeString(this.f76557l);
        parcel.writeString(this.f76558m);
        parcel.writeString(this.f76559n);
        parcel.writeString(this.f76560o);
        parcel.writeByte(this.f76561p);
        parcel.writeByte(this.f76562q);
        parcel.writeInt(this.f76563r);
        parcel.writeInt(this.f76564s);
        parcel.writeByte(this.f76565t ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f76566u ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f76567v ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f76568w ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f76569x);
        parcel.writeMap(this.f76570y);
    }

    public String y() {
        return this.f76552g;
    }

    public PadInfo(String str, String str2, String str3, String str4, String str5) {
        this.f76547b = "";
        this.f76548c = "";
        this.f76549d = "";
        this.f76550e = "";
        this.f76551f = "";
        this.f76552g = "";
        this.f76553h = "";
        this.f76554i = "";
        this.f76555j = "";
        this.f76556k = "";
        this.f76557l = "";
        this.f76558m = "";
        this.f76559n = "";
        this.f76560o = "";
        this.f76561p = (byte) -1;
        this.f76562q = (byte) -1;
        this.f76563r = -1;
        this.f76564s = 0;
        this.f76565t = false;
        this.f76566u = false;
        this.f76567v = false;
        this.f76568w = false;
        this.f76569x = "";
        this.f76570y = new HashMap<>();
        this.f76547b = str;
        this.f76548c = str2;
        this.f76549d = str3;
        this.f76550e = str4;
        this.f76551f = str5;
    }

    public PadInfo(Parcel parcel) {
        this.f76547b = "";
        this.f76548c = "";
        this.f76549d = "";
        this.f76550e = "";
        this.f76551f = "";
        this.f76552g = "";
        this.f76553h = "";
        this.f76554i = "";
        this.f76555j = "";
        this.f76556k = "";
        this.f76557l = "";
        this.f76558m = "";
        this.f76559n = "";
        this.f76560o = "";
        this.f76561p = (byte) -1;
        this.f76562q = (byte) -1;
        this.f76563r = -1;
        this.f76564s = 0;
        this.f76565t = false;
        this.f76566u = false;
        this.f76567v = false;
        this.f76568w = false;
        this.f76569x = "";
        this.f76570y = new HashMap<>();
        this.f76547b = parcel.readString();
        this.f76548c = parcel.readString();
        this.f76549d = parcel.readString();
        this.f76550e = parcel.readString();
        this.f76551f = parcel.readString();
        this.f76552g = parcel.readString();
        this.f76553h = parcel.readString();
        this.f76554i = parcel.readString();
        this.f76555j = parcel.readString();
        this.f76556k = parcel.readString();
        this.f76557l = parcel.readString();
        this.f76558m = parcel.readString();
        this.f76559n = parcel.readString();
        this.f76560o = parcel.readString();
        this.f76561p = parcel.readByte();
        this.f76562q = parcel.readByte();
        this.f76563r = parcel.readInt();
        this.f76564s = parcel.readInt();
        this.f76565t = parcel.readByte() != 0;
        this.f76566u = parcel.readByte() != 0;
        this.f76567v = parcel.readByte() != 0;
        this.f76568w = parcel.readByte() != 0;
        this.f76569x = parcel.readString();
        this.f76570y = parcel.readHashMap(null);
    }
}
