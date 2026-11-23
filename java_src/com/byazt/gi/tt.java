package com.byazt.gi;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 678, 13})
public class tt implements Parcelable {
    public static final Parcelable.Creator<tt> CREATOR = new Parcelable.Creator<tt>() { // from class: com.byazt.gi.tt.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public tt createFromParcel(Parcel parcel) {
            return new tt(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public tt[] newArray(int i10) {
            return new tt[i10];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f14538a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14539c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f14540n;
    public int tt;
    public int uj;
    public String ve;

    public tt() {
        this.ve = "";
        this.f14540n = "";
        this.f14538a = "";
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
            tt ttVar = (tt) obj;
            if (this.f14539c == ttVar.f14539c && this.tt == ttVar.tt) {
                String str = this.ve;
                if (str != null) {
                    return str.equals(ttVar.ve);
                }
                if (ttVar.ve == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        int i10 = ((this.f14539c * 31) + this.tt) * 31;
        String str = this.ve;
        return i10 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f14539c);
        parcel.writeInt(this.tt);
        parcel.writeString(this.ve);
        parcel.writeString(this.f14540n);
        parcel.writeString(this.f14538a);
        parcel.writeInt(this.uj);
    }

    public tt(Parcel parcel) {
        this.ve = "";
        this.f14540n = "";
        this.f14538a = "";
        this.f14539c = parcel.readInt();
        this.tt = parcel.readInt();
        this.ve = parcel.readString();
        this.f14540n = parcel.readString();
        this.f14538a = parcel.readString();
        this.uj = parcel.readInt();
    }
}
