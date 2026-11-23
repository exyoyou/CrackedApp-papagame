package com.xinzhu.overmind.server.accounts;

import android.accounts.IAccountManagerResponse;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes8.dex */
public class AccountManagerResponse implements Parcelable {
    public static final Parcelable.Creator<AccountManagerResponse> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IAccountManagerResponse f89535b;

    class a implements Parcelable.Creator<AccountManagerResponse> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public AccountManagerResponse createFromParcel(Parcel parcel) {
            return new AccountManagerResponse(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public AccountManagerResponse[] newArray(int i10) {
            return new AccountManagerResponse[i10];
        }
    }

    public AccountManagerResponse(IAccountManagerResponse iAccountManagerResponse) {
        this.f89535b = iAccountManagerResponse;
    }

    public void a(int i10, String str) {
        try {
            this.f89535b.onError(i10, str);
        } catch (RemoteException unused) {
        }
    }

    public void b(Bundle bundle) {
        try {
            this.f89535b.onResult(bundle);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeStrongBinder(this.f89535b.asBinder());
    }

    public AccountManagerResponse(Parcel parcel) {
        this.f89535b = IAccountManagerResponse.Stub.asInterface(parcel.readStrongBinder());
    }
}
