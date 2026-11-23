package com.xinzhu.overmind.server.accounts;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes8.dex */
public class MindAccount implements Parcelable {
    public static final Parcelable.Creator<MindAccount> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Account f89536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f89537c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f89538d;

    class a implements Parcelable.Creator<MindAccount> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MindAccount createFromParcel(Parcel parcel) {
            return new MindAccount(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MindAccount[] newArray(int i10) {
            return new MindAccount[i10];
        }
    }

    public MindAccount(Account account) {
        this.f89536b = account;
    }

    public String b() {
        return this.f89537c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return this.f89536b.equals(obj);
    }

    public int hashCode() {
        return this.f89536b.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f89536b, i10);
        parcel.writeString(this.f89537c);
        parcel.writeLong(this.f89538d);
    }

    public MindAccount(String str, String str2) {
        this.f89536b = new Account(str, str2);
    }

    protected MindAccount(Parcel parcel) {
        this.f89536b = (Account) parcel.readParcelable(Account.class.getClassLoader());
        this.f89537c = parcel.readString();
        this.f89538d = parcel.readLong();
    }
}
