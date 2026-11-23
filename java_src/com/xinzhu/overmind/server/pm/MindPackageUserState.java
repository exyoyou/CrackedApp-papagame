package com.xinzhu.overmind.server.pm;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes8.dex */
public class MindPackageUserState implements Parcelable {
    public static final Parcelable.Creator<MindPackageUserState> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f89844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f89845c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f89846d;

    class a implements Parcelable.Creator<MindPackageUserState> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MindPackageUserState createFromParcel(Parcel parcel) {
            return new MindPackageUserState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MindPackageUserState[] newArray(int i10) {
            return new MindPackageUserState[i10];
        }
    }

    public MindPackageUserState() {
        this.f89844b = false;
        this.f89845c = true;
        this.f89846d = false;
    }

    public static MindPackageUserState b() {
        MindPackageUserState mindPackageUserState = new MindPackageUserState();
        mindPackageUserState.f89844b = true;
        return mindPackageUserState;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByte(this.f89844b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f89845c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f89846d ? (byte) 1 : (byte) 0);
    }

    protected MindPackageUserState(Parcel parcel) {
        this.f89844b = parcel.readByte() != 0;
        this.f89845c = parcel.readByte() != 0;
        this.f89846d = parcel.readByte() != 0;
    }

    public MindPackageUserState(MindPackageUserState mindPackageUserState) {
        this.f89844b = mindPackageUserState.f89844b;
        this.f89845c = mindPackageUserState.f89845c;
        this.f89846d = mindPackageUserState.f89846d;
    }
}
