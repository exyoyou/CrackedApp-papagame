package com.tencent.bugly.crashreport.biz;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.proguard.ap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class UserInfoBean implements Parcelable {
    public static final Parcelable.Creator<UserInfoBean> CREATOR = new Parcelable.Creator<UserInfoBean>() { // from class: com.tencent.bugly.crashreport.biz.UserInfoBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ UserInfoBean createFromParcel(Parcel parcel) {
            return new UserInfoBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ UserInfoBean[] newArray(int i10) {
            return new UserInfoBean[i10];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f83074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f83075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f83076c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f83077d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f83078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f83079f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f83080g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f83081h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f83082i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f83083j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f83084k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f83085l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f83086m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f83087n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f83088o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f83089p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f83090q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Map<String, String> f83091r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Map<String, String> f83092s;

    public UserInfoBean() {
        this.f83084k = 0L;
        this.f83085l = false;
        this.f83086m = "unknown";
        this.f83089p = -1;
        this.f83090q = -1;
        this.f83091r = null;
        this.f83092s = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f83075b);
        parcel.writeString(this.f83076c);
        parcel.writeString(this.f83077d);
        parcel.writeLong(this.f83078e);
        parcel.writeLong(this.f83079f);
        parcel.writeLong(this.f83080g);
        parcel.writeLong(this.f83081h);
        parcel.writeLong(this.f83082i);
        parcel.writeString(this.f83083j);
        parcel.writeLong(this.f83084k);
        parcel.writeByte(this.f83085l ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f83086m);
        parcel.writeInt(this.f83089p);
        parcel.writeInt(this.f83090q);
        ap.b(parcel, this.f83091r);
        ap.b(parcel, this.f83092s);
        parcel.writeString(this.f83087n);
        parcel.writeInt(this.f83088o);
    }

    public UserInfoBean(Parcel parcel) {
        this.f83084k = 0L;
        this.f83085l = false;
        this.f83086m = "unknown";
        this.f83089p = -1;
        this.f83090q = -1;
        this.f83091r = null;
        this.f83092s = null;
        this.f83075b = parcel.readInt();
        this.f83076c = parcel.readString();
        this.f83077d = parcel.readString();
        this.f83078e = parcel.readLong();
        this.f83079f = parcel.readLong();
        this.f83080g = parcel.readLong();
        this.f83081h = parcel.readLong();
        this.f83082i = parcel.readLong();
        this.f83083j = parcel.readString();
        this.f83084k = parcel.readLong();
        this.f83085l = parcel.readByte() == 1;
        this.f83086m = parcel.readString();
        this.f83089p = parcel.readInt();
        this.f83090q = parcel.readInt();
        this.f83091r = ap.b(parcel);
        this.f83092s = ap.b(parcel);
        this.f83087n = parcel.readString();
        this.f83088o = parcel.readInt();
    }
}
