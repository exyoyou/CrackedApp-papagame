package com.tencent.bugly.crashreport.common.strategy;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.proguard.ap;
import e0.a;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class StrategyBean implements Parcelable {
    public static final Parcelable.Creator<StrategyBean> CREATOR = new Parcelable.Creator<StrategyBean>() { // from class: com.tencent.bugly.crashreport.common.strategy.StrategyBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ StrategyBean createFromParcel(Parcel parcel) {
            return new StrategyBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ StrategyBean[] newArray(int i10) {
            return new StrategyBean[i10];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f83096a = "https://android.bugly.qq.com/rqd/async";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f83097b = "https://android.bugly.qq.com/rqd/async";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f83098c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f83099d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f83100e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f83101f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f83102g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f83103h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f83104i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f83105j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f83106k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f83107l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f83108m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f83109n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f83110o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f83111p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f83112q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f83113r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f83114s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Map<String, String> f83115t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f83116u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public long f83117v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public long f83118w;

    public StrategyBean() {
        this.f83099d = -1L;
        this.f83100e = -1L;
        this.f83101f = true;
        this.f83102g = true;
        this.f83103h = true;
        this.f83104i = true;
        this.f83105j = false;
        this.f83106k = true;
        this.f83107l = true;
        this.f83108m = true;
        this.f83109n = true;
        this.f83111p = 30000L;
        this.f83112q = f83096a;
        this.f83113r = f83097b;
        this.f83116u = 10;
        this.f83117v = a.f90863b;
        this.f83118w = -1L;
        this.f83100e = System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("S(@L@L@)");
        f83098c = sb2.toString();
        sb2.setLength(0);
        sb2.append("*^@K#K@!");
        this.f83114s = sb2.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f83100e);
        parcel.writeByte(this.f83101f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f83102g ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f83103h ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f83112q);
        parcel.writeString(this.f83113r);
        parcel.writeString(this.f83114s);
        ap.b(parcel, this.f83115t);
        parcel.writeByte(this.f83104i ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f83105j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f83108m ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f83109n ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f83111p);
        parcel.writeByte(this.f83106k ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f83107l ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f83110o);
        parcel.writeInt(this.f83116u);
        parcel.writeLong(this.f83117v);
        parcel.writeLong(this.f83118w);
    }

    public StrategyBean(Parcel parcel) {
        this.f83099d = -1L;
        this.f83100e = -1L;
        boolean z10 = true;
        this.f83101f = true;
        this.f83102g = true;
        this.f83103h = true;
        this.f83104i = true;
        this.f83105j = false;
        this.f83106k = true;
        this.f83107l = true;
        this.f83108m = true;
        this.f83109n = true;
        this.f83111p = 30000L;
        this.f83112q = f83096a;
        this.f83113r = f83097b;
        this.f83116u = 10;
        this.f83117v = a.f90863b;
        this.f83118w = -1L;
        try {
            f83098c = "S(@L@L@)";
            this.f83100e = parcel.readLong();
            this.f83101f = parcel.readByte() == 1;
            this.f83102g = parcel.readByte() == 1;
            this.f83103h = parcel.readByte() == 1;
            this.f83112q = parcel.readString();
            this.f83113r = parcel.readString();
            this.f83114s = parcel.readString();
            this.f83115t = ap.b(parcel);
            this.f83104i = parcel.readByte() == 1;
            this.f83105j = parcel.readByte() == 1;
            this.f83108m = parcel.readByte() == 1;
            this.f83109n = parcel.readByte() == 1;
            this.f83111p = parcel.readLong();
            this.f83106k = parcel.readByte() == 1;
            if (parcel.readByte() != 1) {
                z10 = false;
            }
            this.f83107l = z10;
            this.f83110o = parcel.readLong();
            this.f83116u = parcel.readInt();
            this.f83117v = parcel.readLong();
            this.f83118w = parcel.readLong();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
