package com.byazt.t;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 66, 54})
public class ve implements Parcelable, Comparable {
    public static final Parcelable.Creator<ve> CREATOR = new Parcelable.Creator<ve>() { // from class: com.byazt.t.ve.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public ve createFromParcel(Parcel parcel) {
            return new ve(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public ve[] newArray(int i10) {
            return new ve[i10];
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f20117c;
    public final String tt;

    public ve(String str, String str2) {
        this.f20117c = str;
        this.tt = str2;
    }

    public String c() {
        return this.f20117c;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (!(obj instanceof ve)) {
            return 1;
        }
        ve veVar = (ve) obj;
        if (TextUtils.equals(this.f20117c, veVar.c())) {
            return 0;
        }
        String str = this.f20117c;
        if (str == null) {
            return -1;
        }
        int iCompareTo = str.compareTo(veVar.c());
        if (iCompareTo > 0) {
            return 1;
        }
        return iCompareTo < 0 ? -1 : 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ve veVar = (ve) obj;
            if (TextUtils.equals(this.f20117c, veVar.f20117c) && TextUtils.equals(this.tt, veVar.tt)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f20117c;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.tt;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "HttpHeader{name='" + this.f20117c + "', value='" + this.tt + "'}";
    }

    public String tt() {
        return this.tt;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f20117c);
        parcel.writeString(this.tt);
    }

    public ve(Parcel parcel) {
        this.f20117c = parcel.readString();
        this.tt = parcel.readString();
    }
}
