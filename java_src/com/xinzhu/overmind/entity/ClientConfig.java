package com.xinzhu.overmind.entity;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes8.dex */
public class ClientConfig implements Parcelable {
    public static final Parcelable.Creator<ClientConfig> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f89460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f89461c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f89462d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f89463e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f89464f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f89465g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f89466h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public IBinder f89467i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f89468j;

    class a implements Parcelable.Creator<ClientConfig> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ClientConfig createFromParcel(Parcel parcel) {
            return new ClientConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ClientConfig[] newArray(int i10) {
            return new ClientConfig[i10];
        }
    }

    public ClientConfig() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f89460b);
        parcel.writeString(this.f89461c);
        parcel.writeInt(this.f89462d);
        parcel.writeInt(this.f89463e);
        parcel.writeInt(this.f89464f);
        parcel.writeInt(this.f89465g);
        parcel.writeInt(this.f89466h);
        parcel.writeStrongBinder(this.f89467i);
        parcel.writeByte(this.f89468j ? (byte) 1 : (byte) 0);
    }

    protected ClientConfig(Parcel parcel) {
        this.f89460b = parcel.readString();
        this.f89461c = parcel.readString();
        this.f89462d = parcel.readInt();
        this.f89463e = parcel.readInt();
        this.f89464f = parcel.readInt();
        this.f89465g = parcel.readInt();
        this.f89466h = parcel.readInt();
        this.f89467i = parcel.readStrongBinder();
        this.f89468j = parcel.readByte() != 0;
    }
}
