package com.xinzhu.overmind.entity.pm;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Parcel;
import android.os.Parcelable;
import com.xinzhu.overmind.Overmind;

/* JADX INFO: loaded from: classes8.dex */
public class InstalledModule implements Parcelable {
    public static final Parcelable.Creator<InstalledModule> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f89491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f89492c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f89493d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f89494e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f89495f;

    class a implements Parcelable.Creator<InstalledModule> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public InstalledModule createFromParcel(Parcel parcel) {
            return new InstalledModule(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public InstalledModule[] newArray(int i10) {
            return new InstalledModule[i10];
        }
    }

    public InstalledModule() {
    }

    public ApplicationInfo b() {
        return Overmind.getMindPackageManager().f(this.f89491b, 128, -4);
    }

    public PackageInfo d() {
        return Overmind.getMindPackageManager().l(this.f89491b, 128, -4);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f89491b);
        parcel.writeString(this.f89492c);
        parcel.writeString(this.f89493d);
        parcel.writeString(this.f89494e);
        parcel.writeByte(this.f89495f ? (byte) 1 : (byte) 0);
    }

    protected InstalledModule(Parcel parcel) {
        this.f89491b = parcel.readString();
        this.f89492c = parcel.readString();
        this.f89493d = parcel.readString();
        this.f89494e = parcel.readString();
        this.f89495f = parcel.readByte() != 0;
    }
}
