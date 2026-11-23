package com.bda.controller;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes6.dex */
public final class MotionEvent extends BaseEvent implements Parcelable {
    public static final Parcelable.Creator<MotionEvent> CREATOR = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f8452f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f8453g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f8454h = 11;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f8455i = 14;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f8456j = 17;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f8457k = 18;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final SparseArray<Float> f8458d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final SparseArray<Float> f8459e;

    static class a implements Parcelable.Creator<MotionEvent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MotionEvent createFromParcel(Parcel parcel) {
            return new MotionEvent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MotionEvent[] newArray(int i10) {
            return new MotionEvent[i10];
        }
    }

    public MotionEvent(long j10, int i10, float f10, float f11, float f12, float f13, float f14, float f15) {
        super(j10, i10);
        SparseArray<Float> sparseArray = new SparseArray<>(4);
        this.f8458d = sparseArray;
        sparseArray.put(0, Float.valueOf(f10));
        sparseArray.put(1, Float.valueOf(f11));
        sparseArray.put(11, Float.valueOf(f12));
        sparseArray.put(14, Float.valueOf(f13));
        SparseArray<Float> sparseArray2 = new SparseArray<>(2);
        this.f8459e = sparseArray2;
        sparseArray2.put(0, Float.valueOf(f14));
        sparseArray2.put(1, Float.valueOf(f15));
    }

    public final float A() {
        return E();
    }

    public final float B() {
        return n(0, 0);
    }

    public final float C(int i10) {
        return n(0, i10);
    }

    public final float D() {
        return this.f8459e.get(0, Float.valueOf(0.0f)).floatValue();
    }

    public final float E() {
        return n(1, 0);
    }

    public final float F(int i10) {
        return n(1, i10);
    }

    public final float G() {
        return this.f8459e.get(1, Float.valueOf(0.0f)).floatValue();
    }

    @Override // com.bda.controller.BaseEvent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final int f(int i10) {
        return -1;
    }

    public final float m(int i10) {
        return n(i10, 0);
    }

    public final float n(int i10, int i11) {
        if (i11 == 0) {
            return this.f8458d.get(i10, Float.valueOf(0.0f)).floatValue();
        }
        return 0.0f;
    }

    public final int w() {
        return 1;
    }

    @Override // com.bda.controller.BaseEvent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        int size = this.f8458d.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            parcel.writeInt(this.f8458d.keyAt(i11));
            parcel.writeFloat(this.f8458d.valueAt(i11).floatValue());
        }
        int size2 = this.f8459e.size();
        parcel.writeInt(size2);
        for (int i12 = 0; i12 < size2; i12++) {
            parcel.writeInt(this.f8459e.keyAt(i12));
            parcel.writeFloat(this.f8459e.valueAt(i12).floatValue());
        }
    }

    public final int x(int i10) {
        return 0;
    }

    public final float y() {
        return B();
    }

    public MotionEvent(long j10, int i10, int[] iArr, float[] fArr, int[] iArr2, float[] fArr2) {
        super(j10, i10);
        int length = iArr.length;
        this.f8458d = new SparseArray<>(length);
        for (int i11 = 0; i11 < length; i11++) {
            this.f8458d.put(iArr[i11], Float.valueOf(fArr[i11]));
        }
        int length2 = iArr2.length;
        this.f8459e = new SparseArray<>(length2);
        for (int i12 = 0; i12 < length2; i12++) {
            this.f8459e.put(iArr2[i12], Float.valueOf(fArr2[i12]));
        }
    }

    MotionEvent(Parcel parcel) {
        super(parcel);
        int i10 = parcel.readInt();
        this.f8458d = new SparseArray<>(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            this.f8458d.put(parcel.readInt(), Float.valueOf(parcel.readFloat()));
        }
        this.f8459e = new SparseArray<>(parcel.readInt());
        for (int i12 = 0; i12 < i10; i12++) {
            this.f8459e.put(parcel.readInt(), Float.valueOf(parcel.readFloat()));
        }
    }
}
