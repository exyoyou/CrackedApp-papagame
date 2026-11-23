package com.xinzhu.overmind.entity.pm;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Parcel;
import android.os.Parcelable;
import com.xinzhu.overmind.Overmind;
import java.util.Objects;

/* JADX INFO: loaded from: classes8.dex */
public class InstalledPackage implements Parcelable {
    public static final Parcelable.Creator<InstalledPackage> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f89496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f89497c;

    class a implements Parcelable.Creator<InstalledPackage> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public InstalledPackage createFromParcel(Parcel parcel) {
            return new InstalledPackage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public InstalledPackage[] newArray(int i10) {
            return new InstalledPackage[i10];
        }
    }

    public InstalledPackage() {
    }

    public ApplicationInfo b() {
        return Overmind.getMindPackageManager().f(this.f89497c, 128, this.f89496b);
    }

    public PackageInfo d() {
        return Overmind.getMindPackageManager().l(this.f89497c, 128, this.f89496b);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f89497c, ((InstalledPackage) obj).f89497c);
    }

    public int hashCode() {
        return Objects.hash(this.f89497c);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f89496b);
        parcel.writeString(this.f89497c);
    }

    public InstalledPackage(String str) {
        this.f89497c = str;
    }

    protected InstalledPackage(Parcel parcel) {
        this.f89496b = parcel.readInt();
        this.f89497c = parcel.readString();
    }
}
