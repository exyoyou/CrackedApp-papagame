package com.papa.controller.core;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class PadMotionEvent extends BaseEvent implements Parcelable {
    public static final Parcelable.Creator<PadMotionEvent> CREATOR = new a();
    final int K;
    final float L;
    final float M;

    class a implements Parcelable.Creator<PadMotionEvent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PadMotionEvent createFromParcel(Parcel parcel) {
            return new PadMotionEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public PadMotionEvent[] newArray(int i10) {
            return new PadMotionEvent[i10];
        }
    }

    public PadMotionEvent(long j10, int i10, String str, int i11, float f10, float f11) {
        super(j10, i10, str);
        this.K = i11;
        this.L = f10;
        this.M = f11;
    }

    public float A() {
        return this.M;
    }

    public String toString() {
        return "PadMotionEvent{keyCode=" + this.K + ", x=" + this.L + ", y=" + this.M + ", eventTime=" + this.f76527b + ", deviceId=" + this.f76528c + ", name='" + this.f76529d + "'}";
    }

    public int w() {
        return this.K;
    }

    @Override // com.papa.controller.core.BaseEvent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.K);
        parcel.writeFloat(this.L);
        parcel.writeFloat(this.M);
    }

    public float y() {
        return this.L;
    }

    public PadMotionEvent(Parcel parcel) {
        super(parcel);
        this.K = parcel.readInt();
        this.L = parcel.readFloat();
        this.M = parcel.readFloat();
    }
}
