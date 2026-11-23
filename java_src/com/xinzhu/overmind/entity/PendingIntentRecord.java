package com.xinzhu.overmind.entity;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes8.dex */
public class PendingIntentRecord implements Parcelable {
    public static final Parcelable.Creator<PendingIntentRecord> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f89472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f89473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f89474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public IBinder f89475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Intent f89476f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f89477g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f89478h;

    class a implements Parcelable.Creator<PendingIntentRecord> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PendingIntentRecord createFromParcel(Parcel parcel) {
            return new PendingIntentRecord(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public PendingIntentRecord[] newArray(int i10) {
            return new PendingIntentRecord[i10];
        }
    }

    public PendingIntentRecord(String str, int i10, int i11, IBinder iBinder, Intent intent, int i12, int i13) {
        this.f89472b = str;
        this.f89473c = i10;
        this.f89474d = i11;
        this.f89475e = iBinder;
        Intent intent2 = new Intent();
        intent2.setComponent(intent.getComponent());
        intent2.setAction(intent.getAction());
        intent2.setFlags(intent.getFlags());
        intent2.setType(intent.getType());
        this.f89476f = intent2;
        this.f89477g = i12;
        this.f89478h = i13;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public String toString() {
        return "PendingIntentRecord " + this.f89475e + " " + this.f89472b + " " + this.f89473c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f89472b);
        parcel.writeInt(this.f89473c);
        parcel.writeInt(this.f89474d);
        parcel.writeStrongBinder(this.f89475e);
        parcel.writeParcelable(this.f89476f, i10);
        parcel.writeInt(this.f89477g);
        parcel.writeInt(this.f89478h);
    }

    protected PendingIntentRecord(Parcel parcel) {
        this.f89472b = parcel.readString();
        this.f89473c = parcel.readInt();
        this.f89474d = parcel.readInt();
        this.f89475e = parcel.readStrongBinder();
        this.f89476f = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.f89477g = parcel.readInt();
        this.f89478h = parcel.readInt();
    }
}
