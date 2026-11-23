package com.bda.controller;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class KeyEvent extends BaseEvent implements Parcelable {
    public static final Parcelable.Creator<KeyEvent> CREATOR = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f8431f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f8432g = 19;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f8433h = 20;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f8434i = 21;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f8435j = 22;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f8436k = 96;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f8437l = 97;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f8438m = 99;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f8439n = 100;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f8440o = 102;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f8441p = 103;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f8442q = 104;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f8443r = 105;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f8444s = 106;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f8445t = 107;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f8446u = 108;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f8447v = 109;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f8448w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f8449x = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f8450d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f8451e;

    static class a implements Parcelable.Creator<KeyEvent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public KeyEvent createFromParcel(Parcel parcel) {
            return new KeyEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public KeyEvent[] newArray(int i10) {
            return new KeyEvent[i10];
        }
    }

    public KeyEvent(long j10, int i10, int i11, int i12) {
        super(j10, i10);
        this.f8450d = i11;
        this.f8451e = i12;
    }

    @Override // com.bda.controller.BaseEvent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final int f() {
        return this.f8451e;
    }

    public final int w() {
        return this.f8450d;
    }

    @Override // com.bda.controller.BaseEvent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.f8450d);
        parcel.writeInt(this.f8451e);
    }

    KeyEvent(Parcel parcel) {
        super(parcel);
        this.f8450d = parcel.readInt();
        this.f8451e = parcel.readInt();
    }
}
