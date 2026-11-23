package com.bda.controller;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public class StateEvent extends BaseEvent implements Parcelable {
    public static final Parcelable.Creator<StateEvent> CREATOR = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f8460f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f8461g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f8462h = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Deprecated
    public static final int f8463i = 3;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Deprecated
    public static final int f8464j = 4;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f8465k = 3;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f8466l = 4;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f8467m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f8468n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f8469o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f8470p = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f8471q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f8472r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f8473s = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f8474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f8475e;

    static class a implements Parcelable.Creator<StateEvent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public StateEvent createFromParcel(Parcel parcel) {
            return new StateEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public StateEvent[] newArray(int i10) {
            return new StateEvent[i10];
        }
    }

    public StateEvent(long j10, int i10, int i11, int i12) {
        super(j10, i10);
        this.f8474d = i11;
        this.f8475e = i12;
    }

    @Override // com.bda.controller.BaseEvent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final int f() {
        return this.f8475e;
    }

    public final int w() {
        return this.f8474d;
    }

    @Override // com.bda.controller.BaseEvent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.f8474d);
        parcel.writeInt(this.f8475e);
    }

    StateEvent(Parcel parcel) {
        super(parcel);
        this.f8474d = parcel.readInt();
        this.f8475e = parcel.readInt();
    }
}
