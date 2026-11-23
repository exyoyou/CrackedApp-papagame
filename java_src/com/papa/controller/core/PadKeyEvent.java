package com.papa.controller.core;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class PadKeyEvent extends BaseEvent implements Parcelable {
    public static final Parcelable.Creator<PadKeyEvent> CREATOR = new a();
    final int K;
    final int L;
    final float M;

    class a implements Parcelable.Creator<PadKeyEvent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PadKeyEvent createFromParcel(Parcel parcel) {
            return new PadKeyEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public PadKeyEvent[] newArray(int i10) {
            return new PadKeyEvent[i10];
        }
    }

    public PadKeyEvent(long j10, int i10, String str, int i11, int i12, float f10) {
        super(j10, i10, str);
        this.K = i11;
        this.L = i12;
        this.M = f10;
    }

    public float A() {
        return this.M;
    }

    public String toString() {
        return "PadKeyEvent{keyCode=" + this.K + ", action=" + this.L + ", pressure=" + this.M + ", eventTime=" + this.f76527b + ", deviceId=" + this.f76528c + ", name='" + this.f76529d + "'}";
    }

    public int w() {
        return this.L;
    }

    @Override // com.papa.controller.core.BaseEvent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.K);
        parcel.writeInt(this.L);
        parcel.writeFloat(this.M);
    }

    public int y() {
        return this.K;
    }

    public PadKeyEvent(Parcel parcel) {
        super(parcel);
        this.K = parcel.readInt();
        this.L = parcel.readInt();
        this.M = parcel.readFloat();
    }
}
