package com.byazt.kbg;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
public interface tt extends IInterface {
    void c(int i10, long j10, boolean z10, float f10, double d10, String str) throws RemoteException;

    void c(com.byazt.kbg.c cVar) throws RemoteException;

    void tt(com.byazt.kbg.c cVar) throws RemoteException;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_START_TIME, 194})
    public static abstract class c extends Binder implements tt {
        public static tt c(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.hihonor.cloudservice.oaid.IOAIDService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof tt)) ? new C0355c(iBinder) : (tt) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDService");
                c(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDService");
                c(com.byazt.kbg.c.AbstractBinderC0353c.c(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i10 != 3) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString("com.hihonor.cloudservice.oaid.IOAIDService");
                return true;
            }
            parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDService");
            tt(com.byazt.kbg.c.AbstractBinderC0353c.c(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        public static tt c() {
            return C0355c.f16108c;
        }

        /* JADX INFO: renamed from: com.byazt.kbg.tt$c$c, reason: collision with other inner class name */
        @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_START_TIME, 1944})
        private static class C0355c implements tt {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static tt f16108c;
            public IBinder tt;

            public C0355c(IBinder iBinder) {
                this.tt = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.tt;
            }

            @Override // com.byazt.kbg.tt
            public void c(int i10, long j10, boolean z10, float f10, double d10, String str) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDService");
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeLong(j10);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    parcelObtain.writeFloat(f10);
                    parcelObtain.writeDouble(d10);
                    parcelObtain.writeString(str);
                    try {
                        if (this.tt.transact(1, parcelObtain, parcelObtain2, 0) || c.c() == null) {
                            parcelObtain2.readException();
                        } else {
                            c.c().c(i10, j10, z10, f10, d10, str);
                        }
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } catch (Throwable th) {
                        th = th;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // com.byazt.kbg.tt
            public void tt(com.byazt.kbg.c cVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDService");
                    parcelObtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    if (this.tt.transact(3, parcelObtain, parcelObtain2, 0) || c.c() == null) {
                        parcelObtain2.readException();
                    } else {
                        c.c().tt(cVar);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.kbg.tt
            public void c(com.byazt.kbg.c cVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDService");
                    parcelObtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    if (!this.tt.transact(2, parcelObtain, parcelObtain2, 0) && c.c() != null) {
                        c.c().c(cVar);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
