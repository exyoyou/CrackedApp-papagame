package com.papa.controller.core;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class PadStateEvent extends BaseEvent implements Parcelable {
    public static final Parcelable.Creator<PadStateEvent> CREATOR = new a();
    final int K;
    final int L;
    protected String M;

    class a implements Parcelable.Creator<PadStateEvent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PadStateEvent createFromParcel(Parcel parcel) {
            return new PadStateEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public PadStateEvent[] newArray(int i10) {
            return new PadStateEvent[i10];
        }
    }

    public PadStateEvent(long j10, int i10, String str, int i11, int i12, String str2) {
        super(j10, i10, str);
        this.K = i11;
        this.L = i12;
        this.M = str2;
    }

    public int A() {
        return this.K;
    }

    public String toString() {
        return "PadStateEvent{state=" + this.K + ", action=" + this.L + ", mac='" + this.M + "'}";
    }

    public int w() {
        return this.L;
    }

    @Override // com.papa.controller.core.BaseEvent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.K);
        parcel.writeInt(this.L);
        parcel.writeString(this.M);
    }

    public String y() {
        return this.M;
    }

    public PadStateEvent(Parcel parcel) {
        super(parcel);
        this.M = "";
        this.K = parcel.readInt();
        this.L = parcel.readInt();
        this.M = parcel.readString();
    }
}
