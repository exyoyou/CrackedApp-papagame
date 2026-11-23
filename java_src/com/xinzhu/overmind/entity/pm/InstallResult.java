package com.xinzhu.overmind.entity.pm;

import android.os.Parcel;
import android.os.Parcelable;
import com.xinzhu.overmind.utils.y;

/* JADX INFO: loaded from: classes8.dex */
public class InstallResult implements Parcelable {
    public static final Parcelable.Creator<InstallResult> CREATOR = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f89487e = "InstallResult";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f89488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f89489c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f89490d;

    class a implements Parcelable.Creator<InstallResult> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public InstallResult createFromParcel(Parcel parcel) {
            return new InstallResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public InstallResult[] newArray(int i10) {
            return new InstallResult[i10];
        }
    }

    public InstallResult() {
        this.f89488b = true;
    }

    public InstallResult a(String str) {
        this.f89490d = str;
        this.f89488b = false;
        y.a(f89487e, str);
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByte(this.f89488b ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f89489c);
        parcel.writeString(this.f89490d);
    }

    protected InstallResult(Parcel parcel) {
        this.f89488b = true;
        this.f89488b = parcel.readByte() != 0;
        this.f89489c = parcel.readString();
        this.f89490d = parcel.readString();
    }
}
