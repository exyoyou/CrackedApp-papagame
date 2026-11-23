package com.beizi.fusion.d.b;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes6.dex */
public interface g extends IInterface {

    public static abstract class a extends Binder implements g {

        /* JADX INFO: renamed from: com.beizi.fusion.d.b.g$a$a, reason: collision with other inner class name */
        public static class C0239a implements g {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f10195a;

            public C0239a(IBinder iBinder) {
                this.f10195a = iBinder;
            }

            @Override // com.beizi.fusion.d.b.g
            public String a() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    this.f10195a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    string = parcelObtain2.readString();
                } catch (Throwable unused) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    string = null;
                }
                parcelObtain2.recycle();
                parcelObtain.recycle();
                return string;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10195a;
            }
        }
    }

    String a();
}
