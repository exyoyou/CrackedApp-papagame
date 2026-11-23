package com.xinzhu.overmind.server.user;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes8.dex */
public class MindUserInfo implements Parcelable {
    public static final Parcelable.Creator<MindUserInfo> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f89950b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MindUserStatus f89951c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f89952d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f89953e;

    class a implements Parcelable.Creator<MindUserInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MindUserInfo createFromParcel(Parcel parcel) {
            return new MindUserInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MindUserInfo[] newArray(int i10) {
            return new MindUserInfo[i10];
        }
    }

    MindUserInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "MindUserInfo{id=" + this.f89950b + ", status=" + this.f89951c + ", name='" + this.f89952d + "', createTime=" + this.f89953e + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f89950b);
        MindUserStatus mindUserStatus = this.f89951c;
        parcel.writeInt(mindUserStatus == null ? -1 : mindUserStatus.ordinal());
        parcel.writeString(this.f89952d);
        parcel.writeLong(this.f89953e);
    }

    protected MindUserInfo(Parcel parcel) {
        this.f89950b = parcel.readInt();
        int i10 = parcel.readInt();
        this.f89951c = i10 == -1 ? null : MindUserStatus.values()[i10];
        this.f89952d = parcel.readString();
        this.f89953e = parcel.readLong();
    }
}
