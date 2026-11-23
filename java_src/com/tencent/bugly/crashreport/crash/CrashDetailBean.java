package com.tencent.bugly.crashreport.crash;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.proguard.ap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class CrashDetailBean implements Parcelable, Comparable<CrashDetailBean> {
    public static final Parcelable.Creator<CrashDetailBean> CREATOR = new Parcelable.Creator<CrashDetailBean>() { // from class: com.tencent.bugly.crashreport.crash.CrashDetailBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ CrashDetailBean createFromParcel(Parcel parcel) {
            return new CrashDetailBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ CrashDetailBean[] newArray(int i10) {
            return new CrashDetailBean[i10];
        }
    };
    public String A;
    public String B;
    public long C;
    public long D;
    public long E;
    public long F;
    public long G;
    public long H;
    public long I;
    public long J;
    public long K;
    public String L;
    public String M;
    public String N;
    public String O;
    public String P;
    public long Q;
    public boolean R;
    public Map<String, String> S;
    public Map<String, String> T;
    public int U;
    public int V;
    public Map<String, String> W;
    public Map<String, String> X;
    public byte[] Y;
    public String Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f83119a;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    public String f83120aa;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f83121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f83122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f83123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f83124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f83125f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f83126g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Map<String, PlugInBean> f83127h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Map<String, PlugInBean> f83128i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f83129j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f83130k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f83131l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f83132m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f83133n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f83134o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f83135p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f83136q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f83137r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f83138s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f83139t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f83140u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f83141v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public String f83142w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f83143x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public byte[] f83144y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Map<String, String> f83145z;

    public CrashDetailBean() {
        this.f83119a = -1L;
        this.f83121b = 0;
        this.f83122c = UUID.randomUUID().toString();
        this.f83123d = false;
        this.f83124e = "";
        this.f83125f = "";
        this.f83126g = "";
        this.f83127h = null;
        this.f83128i = null;
        this.f83129j = false;
        this.f83130k = false;
        this.f83131l = 0;
        this.f83132m = "";
        this.f83133n = "";
        this.f83134o = "";
        this.f83135p = "";
        this.f83136q = "";
        this.f83137r = -1L;
        this.f83138s = null;
        this.f83139t = 0;
        this.f83140u = "";
        this.f83141v = "";
        this.f83142w = null;
        this.f83143x = null;
        this.f83144y = null;
        this.f83145z = null;
        this.A = "";
        this.B = "";
        this.C = -1L;
        this.D = -1L;
        this.E = -1L;
        this.F = -1L;
        this.G = -1L;
        this.H = -1L;
        this.I = -1L;
        this.J = -1L;
        this.K = -1L;
        this.L = "";
        this.M = "";
        this.N = "";
        this.O = "";
        this.P = "";
        this.Q = -1L;
        this.R = false;
        this.S = null;
        this.T = null;
        this.U = -1;
        this.V = -1;
        this.W = null;
        this.X = null;
        this.Y = null;
        this.Z = null;
        this.f83120aa = null;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(CrashDetailBean crashDetailBean) {
        CrashDetailBean crashDetailBean2 = crashDetailBean;
        if (crashDetailBean2 == null) {
            return 1;
        }
        long j10 = this.f83137r - crashDetailBean2.f83137r;
        if (j10 <= 0) {
            return j10 < 0 ? -1 : 0;
        }
        return 1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f83121b);
        parcel.writeString(this.f83122c);
        parcel.writeByte(this.f83123d ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f83124e);
        parcel.writeString(this.f83125f);
        parcel.writeString(this.f83126g);
        parcel.writeByte(this.f83129j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f83130k ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f83131l);
        parcel.writeString(this.f83132m);
        parcel.writeString(this.f83133n);
        parcel.writeString(this.f83134o);
        parcel.writeString(this.f83135p);
        parcel.writeString(this.f83136q);
        parcel.writeLong(this.f83137r);
        parcel.writeString(this.f83138s);
        parcel.writeInt(this.f83139t);
        parcel.writeString(this.f83140u);
        parcel.writeString(this.f83141v);
        parcel.writeString(this.f83142w);
        ap.b(parcel, this.f83145z);
        parcel.writeString(this.A);
        parcel.writeString(this.B);
        parcel.writeLong(this.C);
        parcel.writeLong(this.D);
        parcel.writeLong(this.E);
        parcel.writeLong(this.F);
        parcel.writeLong(this.G);
        parcel.writeLong(this.H);
        parcel.writeString(this.L);
        parcel.writeString(this.M);
        parcel.writeString(this.N);
        parcel.writeString(this.O);
        parcel.writeString(this.P);
        parcel.writeLong(this.Q);
        parcel.writeByte(this.R ? (byte) 1 : (byte) 0);
        ap.b(parcel, this.S);
        ap.a(parcel, this.f83127h);
        ap.a(parcel, this.f83128i);
        parcel.writeInt(this.U);
        parcel.writeInt(this.V);
        ap.b(parcel, this.W);
        ap.b(parcel, this.X);
        parcel.writeByteArray(this.Y);
        parcel.writeByteArray(this.f83144y);
        parcel.writeString(this.Z);
        parcel.writeString(this.f83120aa);
        parcel.writeString(this.f83143x);
        parcel.writeLong(this.I);
        parcel.writeLong(this.J);
        parcel.writeLong(this.K);
    }

    public CrashDetailBean(Parcel parcel) {
        this.f83119a = -1L;
        this.f83121b = 0;
        this.f83122c = UUID.randomUUID().toString();
        this.f83123d = false;
        this.f83124e = "";
        this.f83125f = "";
        this.f83126g = "";
        this.f83127h = null;
        this.f83128i = null;
        this.f83129j = false;
        this.f83130k = false;
        this.f83131l = 0;
        this.f83132m = "";
        this.f83133n = "";
        this.f83134o = "";
        this.f83135p = "";
        this.f83136q = "";
        this.f83137r = -1L;
        this.f83138s = null;
        this.f83139t = 0;
        this.f83140u = "";
        this.f83141v = "";
        this.f83142w = null;
        this.f83143x = null;
        this.f83144y = null;
        this.f83145z = null;
        this.A = "";
        this.B = "";
        this.C = -1L;
        this.D = -1L;
        this.E = -1L;
        this.F = -1L;
        this.G = -1L;
        this.H = -1L;
        this.I = -1L;
        this.J = -1L;
        this.K = -1L;
        this.L = "";
        this.M = "";
        this.N = "";
        this.O = "";
        this.P = "";
        this.Q = -1L;
        this.R = false;
        this.S = null;
        this.T = null;
        this.U = -1;
        this.V = -1;
        this.W = null;
        this.X = null;
        this.Y = null;
        this.Z = null;
        this.f83120aa = null;
        this.f83121b = parcel.readInt();
        this.f83122c = parcel.readString();
        this.f83123d = parcel.readByte() == 1;
        this.f83124e = parcel.readString();
        this.f83125f = parcel.readString();
        this.f83126g = parcel.readString();
        this.f83129j = parcel.readByte() == 1;
        this.f83130k = parcel.readByte() == 1;
        this.f83131l = parcel.readInt();
        this.f83132m = parcel.readString();
        this.f83133n = parcel.readString();
        this.f83134o = parcel.readString();
        this.f83135p = parcel.readString();
        this.f83136q = parcel.readString();
        this.f83137r = parcel.readLong();
        this.f83138s = parcel.readString();
        this.f83139t = parcel.readInt();
        this.f83140u = parcel.readString();
        this.f83141v = parcel.readString();
        this.f83142w = parcel.readString();
        this.f83145z = ap.b(parcel);
        this.A = parcel.readString();
        this.B = parcel.readString();
        this.C = parcel.readLong();
        this.D = parcel.readLong();
        this.E = parcel.readLong();
        this.F = parcel.readLong();
        this.G = parcel.readLong();
        this.H = parcel.readLong();
        this.L = parcel.readString();
        this.M = parcel.readString();
        this.N = parcel.readString();
        this.O = parcel.readString();
        this.P = parcel.readString();
        this.Q = parcel.readLong();
        this.R = parcel.readByte() == 1;
        this.S = ap.b(parcel);
        this.f83127h = ap.a(parcel);
        this.f83128i = ap.a(parcel);
        this.U = parcel.readInt();
        this.V = parcel.readInt();
        this.W = ap.b(parcel);
        this.X = ap.b(parcel);
        this.Y = parcel.createByteArray();
        this.f83144y = parcel.createByteArray();
        this.Z = parcel.readString();
        this.f83120aa = parcel.readString();
        this.f83143x = parcel.readString();
        this.I = parcel.readLong();
        this.J = parcel.readLong();
        this.K = parcel.readLong();
    }
}
