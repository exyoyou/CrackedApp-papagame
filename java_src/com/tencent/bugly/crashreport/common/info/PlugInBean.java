package com.tencent.bugly.crashreport.common.info;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class PlugInBean implements Parcelable {
    public static final Parcelable.Creator<PlugInBean> CREATOR = new Parcelable.Creator<PlugInBean>() { // from class: com.tencent.bugly.crashreport.common.info.PlugInBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ PlugInBean createFromParcel(Parcel parcel) {
            return new PlugInBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ PlugInBean[] newArray(int i10) {
            return new PlugInBean[i10];
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f83093a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f83094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f83095c;

    public PlugInBean(String str, String str2, String str3) {
        this.f83093a = str;
        this.f83094b = str2;
        this.f83095c = str3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "plid:" + this.f83093a + " plV:" + this.f83094b + " plUUID:" + this.f83095c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f83093a);
        parcel.writeString(this.f83094b);
        parcel.writeString(this.f83095c);
    }

    public PlugInBean(Parcel parcel) {
        this.f83093a = parcel.readString();
        this.f83094b = parcel.readString();
        this.f83095c = parcel.readString();
    }
}
