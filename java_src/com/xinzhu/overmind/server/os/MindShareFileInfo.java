package com.xinzhu.overmind.server.os;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes8.dex */
public class MindShareFileInfo implements Parcelable {
    public static final Parcelable.Creator<MindShareFileInfo> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f89714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Boolean f89715c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Boolean f89716d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f89717e;

    class a implements Parcelable.Creator<MindShareFileInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MindShareFileInfo createFromParcel(Parcel parcel) {
            return new MindShareFileInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MindShareFileInfo[] newArray(int i10) {
            return new MindShareFileInfo[i10];
        }
    }

    public MindShareFileInfo(File file) {
        this.f89714b = file.getAbsolutePath();
        this.f89715c = Boolean.valueOf(file.exists());
        this.f89716d = Boolean.valueOf(file.isDirectory());
        this.f89717e = a(file);
    }

    private static long a(File file) {
        try {
            if (!file.exists() || file.isDirectory()) {
                return 0L;
            }
            return new FileInputStream(file).available();
        } catch (Throwable th) {
            th.printStackTrace();
            return 0L;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public String toString() {
        return "MindShareFileInfo{path=" + this.f89714b + ", exists=" + this.f89715c + ", isDirectory='" + this.f89716d + "', fileSize=" + this.f89717e + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f89714b);
        parcel.writeByte(this.f89715c.booleanValue() ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f89716d.booleanValue() ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f89717e);
    }

    protected MindShareFileInfo(Parcel parcel) {
        this.f89714b = parcel.readString();
        this.f89715c = Boolean.valueOf(parcel.readByte() != 0);
        this.f89716d = Boolean.valueOf(parcel.readByte() != 0);
        this.f89717e = parcel.readLong();
    }
}
