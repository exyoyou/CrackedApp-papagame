package com.xinzhu.overmind.entity.pm;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes8.dex */
public class InstallOption implements Parcelable {
    public static final Parcelable.Creator<InstallOption> CREATOR = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f89482c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f89483d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f89484e = 4;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f89485f = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f89486b;

    class a implements Parcelable.Creator<InstallOption> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public InstallOption createFromParcel(Parcel parcel) {
            return new InstallOption(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public InstallOption[] newArray(int i10) {
            return new InstallOption[i10];
        }
    }

    public InstallOption() {
        this.f89486b = 0;
    }

    public static InstallOption b() {
        InstallOption installOption = new InstallOption();
        installOption.f89486b |= 2;
        return installOption;
    }

    public static InstallOption d() {
        InstallOption installOption = new InstallOption();
        installOption.f89486b |= 1;
        return installOption;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean f(int i10) {
        return (i10 & this.f89486b) != 0;
    }

    public InstallOption w() {
        this.f89486b |= 8;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f89486b);
    }

    public InstallOption y() {
        this.f89486b |= 4;
        return this;
    }

    protected InstallOption(Parcel parcel) {
        this.f89486b = 0;
        this.f89486b = parcel.readInt();
    }
}
