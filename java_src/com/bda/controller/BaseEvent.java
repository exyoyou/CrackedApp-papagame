package com.bda.controller;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
class BaseEvent implements Parcelable {
    public static final Parcelable.Creator<BaseEvent> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final long f8422b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f8423c;

    static class a implements Parcelable.Creator<BaseEvent> {
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

    public BaseEvent(long j10, int i10) {
        this.f8422b = j10;
        this.f8423c = i10;
    }

    public final int b() {
        return this.f8423c;
    }

    public final long d() {
        return this.f8422b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f8422b);
        parcel.writeInt(this.f8423c);
    }

    BaseEvent(Parcel parcel) {
        this.f8422b = parcel.readLong();
        this.f8423c = parcel.readInt();
    }
}
