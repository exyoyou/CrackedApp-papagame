package com.sina.weibo.sdk.web;

import android.os.Parcel;
import android.os.Parcelable;
import com.sina.weibo.sdk.auth.AuthInfo;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class WebData implements Parcelable, Serializable {
    public static final Parcelable.Creator<WebData> CREATOR = new Parcelable.Creator<WebData>() { // from class: com.sina.weibo.sdk.web.WebData.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ WebData createFromParcel(Parcel parcel) {
            return new WebData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ WebData[] newArray(int i10) {
            return new WebData[i10];
        }
    };
    private static final long serialVersionUID = -4038177938155795889L;
    protected AuthInfo av;
    protected String aw;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected String f82261i;
    protected int type;

    public WebData(AuthInfo authInfo, int i10, String str, String str2) {
        this.av = authInfo;
        this.type = i10;
        this.f82261i = str;
        this.aw = str2;
    }

    public final AuthInfo a() {
        return this.av;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final int getType() {
        return this.type;
    }

    public final String getUrl() {
        return this.f82261i;
    }

    public final String r() {
        return this.aw;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.av, i10);
        parcel.writeInt(this.type);
        parcel.writeString(this.f82261i);
        parcel.writeString(this.aw);
    }

    protected WebData(Parcel parcel) {
        this.av = (AuthInfo) parcel.readParcelable(AuthInfo.class.getClassLoader());
        this.type = parcel.readInt();
        this.f82261i = parcel.readString();
        this.aw = parcel.readString();
    }
}
