package com.sigmob.sdk.nativead;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes3.dex */
public class ae implements Parcelable {
    public static final Parcelable.Creator<ae> CREATOR = new Parcelable.Creator<ae>() { // from class: com.sigmob.sdk.nativead.ae.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ae createFromParcel(Parcel in2) {
            return new ae(in2);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ae[] newArray(int size) {
            return new ae[size];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f81370a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f81371b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f81372c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f81373d;

    public ae() {
    }

    public int a() {
        return this.f81370a;
    }

    public int b() {
        return this.f81371b;
    }

    public int c() {
        return this.f81372c;
    }

    public int d() {
        return this.f81373d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.f81370a);
        dest.writeInt(this.f81371b);
        dest.writeInt(this.f81372c);
        dest.writeInt(this.f81373d);
    }

    protected ae(Parcel in2) {
        this.f81370a = in2.readInt();
        this.f81371b = in2.readInt();
        this.f81372c = in2.readInt();
        this.f81373d = in2.readInt();
    }

    public void a(int x10) {
        this.f81370a = x10;
    }

    public void b(int y10) {
        this.f81371b = y10;
    }

    public void c(int width) {
        this.f81372c = width;
    }

    public void d(int height) {
        this.f81373d = height;
    }
}
