package com.papa.controller.core;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class BaseEvent implements Parcelable {
    public static final int A = -1;
    public static final int B = -1;
    public static final int C = 0;
    public static final Parcelable.Creator<BaseEvent> CREATOR = new a();
    public static final int D = 1;
    public static final int E = 2;
    public static final int F = 8;
    public static final int G = 9;
    public static final int H = 0;
    public static final int I = 1;
    public static final int J = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f76505e = 19;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f76506f = 20;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f76507g = 21;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f76508h = 22;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f76509i = 96;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f76510j = 97;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f76511k = 99;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f76512l = 100;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f76513m = 102;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f76514n = 103;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f76515o = 104;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f76516p = 105;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f76517q = 106;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f76518r = 107;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f76519s = 108;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f76520t = 109;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f76521u = 198;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f76522v = 199;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f76523w = 200;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f76524x = 201;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f76525y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f76526z = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final long f76527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f76528c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String f76529d;

    class a implements Parcelable.Creator<BaseEvent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BaseEvent createFromParcel(Parcel parcel) {
            return new BaseEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public BaseEvent[] newArray(int i10) {
            return new BaseEvent[i10];
        }
    }

    public BaseEvent(long j10, int i10, String str) {
        this.f76527b = j10;
        this.f76528c = i10;
        this.f76529d = str;
    }

    public int b() {
        return this.f76528c;
    }

    public long d() {
        return this.f76527b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String f() {
        return this.f76529d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f76527b);
        parcel.writeInt(this.f76528c);
    }

    protected BaseEvent(Parcel parcel) {
        this.f76527b = parcel.readLong();
        this.f76528c = parcel.readInt();
        this.f76529d = parcel.readString();
    }
}
