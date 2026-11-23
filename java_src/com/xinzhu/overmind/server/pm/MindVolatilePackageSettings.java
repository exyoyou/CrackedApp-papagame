package com.xinzhu.overmind.server.pm;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.AtomicFile;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public class MindVolatilePackageSettings implements Parcelable {
    public static final Parcelable.Creator<MindVolatilePackageSettings> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f89854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MindPackage f89855c;

    class a implements Parcelable.Creator<MindVolatilePackageSettings> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MindVolatilePackageSettings createFromParcel(Parcel parcel) {
            return new MindVolatilePackageSettings(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MindVolatilePackageSettings[] newArray(int i10) {
            return new MindVolatilePackageSettings[i10];
        }
    }

    public MindVolatilePackageSettings() {
    }

    public static MindVolatilePackageSettings a(String str) {
        try {
            Parcel parcelObtain = Parcel.obtain();
            File fileC0 = com.xinzhu.overmind.a.c0(str);
            if (!fileC0.exists()) {
                return null;
            }
            byte[] bArrV = com.xinzhu.overmind.utils.l.v(fileC0);
            parcelObtain.unmarshall(bArrV, 0, bArrV.length);
            parcelObtain.setDataPosition(0);
            return new MindVolatilePackageSettings(parcelObtain);
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean b() {
        synchronized (this) {
            Parcel parcelObtain = Parcel.obtain();
            AtomicFile atomicFile = new AtomicFile(com.xinzhu.overmind.a.c0(this.f89854b));
            FileOutputStream fileOutputStreamStartWrite = null;
            try {
                writeToParcel(parcelObtain, 0);
                parcelObtain.setDataPosition(0);
                fileOutputStreamStartWrite = atomicFile.startWrite();
                com.xinzhu.overmind.utils.l.z(parcelObtain, fileOutputStreamStartWrite);
                atomicFile.finishWrite(fileOutputStreamStartWrite);
                parcelObtain.recycle();
                com.xinzhu.overmind.utils.p.a(fileOutputStreamStartWrite);
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                    atomicFile.failWrite(fileOutputStreamStartWrite);
                    parcelObtain.recycle();
                    com.xinzhu.overmind.utils.p.a(fileOutputStreamStartWrite);
                    return false;
                } catch (Throwable th2) {
                    parcelObtain.recycle();
                    com.xinzhu.overmind.utils.p.a(fileOutputStreamStartWrite);
                    throw th2;
                }
            }
        }
        return true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f89854b);
        parcel.writeParcelable(this.f89855c, i10);
    }

    public MindVolatilePackageSettings(MindPackageSettings mindPackageSettings) {
        MindPackage mindPackage = mindPackageSettings.f89829b;
        this.f89854b = mindPackage.f89743m;
        this.f89855c = mindPackage;
    }

    protected MindVolatilePackageSettings(Parcel parcel) {
        this.f89854b = parcel.readString();
        this.f89855c = (MindPackage) parcel.readParcelable(MindPackage.class.getClassLoader());
    }
}
