package com.wf.transfer.core;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes9.dex */
public class FileInfo implements Parcelable {
    public static final Parcelable.Creator<FileInfo> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f85806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Boolean f85807c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Boolean f85808d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f85809e;

    class a implements Parcelable.Creator<FileInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileInfo createFromParcel(Parcel parcel) {
            return new FileInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public FileInfo[] newArray(int i10) {
            return new FileInfo[i10];
        }
    }

    public FileInfo(Parcel parcel) {
        Boolean boolValueOf;
        this.f85806b = parcel.readString();
        byte b10 = parcel.readByte();
        Boolean boolValueOf2 = null;
        if (b10 == 0) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(b10 == 1);
        }
        this.f85807c = boolValueOf;
        byte b11 = parcel.readByte();
        if (b11 != 0) {
            boolValueOf2 = Boolean.valueOf(b11 == 1);
        }
        this.f85808d = boolValueOf2;
        this.f85809e = parcel.readLong();
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

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int i11;
        parcel.writeString(this.f85806b);
        Boolean bool = this.f85807c;
        int i12 = 1;
        if (bool == null) {
            i11 = 0;
        } else {
            i11 = bool.booleanValue() ? 1 : 2;
        }
        parcel.writeByte((byte) i11);
        Boolean bool2 = this.f85808d;
        if (bool2 == null) {
            i12 = 0;
        } else if (!bool2.booleanValue()) {
            i12 = 2;
        }
        parcel.writeByte((byte) i12);
        parcel.writeLong(this.f85809e);
    }

    public FileInfo(File file) {
        this.f85806b = file.getAbsolutePath();
        this.f85807c = Boolean.valueOf(file.exists());
        this.f85808d = Boolean.valueOf(file.isDirectory());
        this.f85809e = a(file);
    }
}
