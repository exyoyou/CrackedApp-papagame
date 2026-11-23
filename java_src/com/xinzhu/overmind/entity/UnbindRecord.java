package com.xinzhu.overmind.entity;

import android.content.ComponentName;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes8.dex */
public class UnbindRecord implements Parcelable {
    public static final Parcelable.Creator<UnbindRecord> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f89479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f89480c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ComponentName f89481d;

    class a implements Parcelable.Creator<UnbindRecord> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public UnbindRecord createFromParcel(Parcel parcel) {
            return new UnbindRecord(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public UnbindRecord[] newArray(int i10) {
            return new UnbindRecord[i10];
        }
    }

    public UnbindRecord() {
    }

    public static Parcelable.Creator<UnbindRecord> d() {
        return CREATOR;
    }

    public int b() {
        return this.f89479b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ComponentName f() {
        return this.f89481d;
    }

    public int w() {
        return this.f89480c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f89479b);
        parcel.writeInt(this.f89480c);
        parcel.writeParcelable(this.f89481d, i10);
    }

    public void x(int i10) {
        this.f89479b = i10;
    }

    public void y(ComponentName componentName) {
        this.f89481d = componentName;
    }

    public void z(int i10) {
        this.f89480c = i10;
    }

    protected UnbindRecord(Parcel parcel) {
        this.f89479b = parcel.readInt();
        this.f89480c = parcel.readInt();
        this.f89481d = (ComponentName) parcel.readParcelable(ComponentName.class.getClassLoader());
    }
}
