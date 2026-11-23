package com.byazt.omf;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
public interface nu extends IInterface {
    void c() throws RemoteException;

    void c(long j10, long j11, String str, String str2) throws RemoteException;

    void c(long j10, String str, String str2) throws RemoteException;

    void c(String str, String str2) throws RemoteException;

    void tt(long j10, long j11, String str, String str2) throws RemoteException;

    void ve(long j10, long j11, String str, String str2) throws RemoteException;

    @com.byazt.zqa.c(c = {0, 1, 31, 475})
    public static abstract class c extends Binder implements nu {
        public c() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
        }

        public static nu c(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof nu)) ? new C0395c(iBinder) : (nu) iInterfaceQueryLocalInterface;
        }

        public static nu tt() {
            return C0395c.f18089c;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1598968902) {
                parcel2.writeString("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                return true;
            }
            switch (i10) {
                case 1:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    c();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    c(parcel.readLong(), parcel.readLong(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    tt(parcel.readLong(), parcel.readLong(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    ve(parcel.readLong(), parcel.readLong(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    c(parcel.readLong(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    c(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }

        /* JADX INFO: renamed from: com.byazt.omf.nu$c$c, reason: collision with other inner class name */
        @com.byazt.zqa.c(c = {0, 1, 31, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS})
        private static class C0395c implements nu {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static nu f18089c;
            public IBinder tt;

            public C0395c(IBinder iBinder) {
                this.tt = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.tt;
            }

            @Override // com.byazt.omf.nu
            public void c() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    if (this.tt.transact(1, parcelObtain, parcelObtain2, 0) || c.tt() == null) {
                        parcelObtain2.readException();
                    } else {
                        c.tt().c();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.omf.nu
            public void tt(long j10, long j11, String str, String str2) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    parcelObtain.writeLong(j10);
                    parcelObtain.writeLong(j11);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    try {
                        if (this.tt.transact(3, parcelObtain, parcelObtain2, 0) || c.tt() == null) {
                            parcelObtain2.readException();
                        } else {
                            c.tt().tt(j10, j11, str, str2);
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

            @Override // com.byazt.omf.nu
            public void ve(long j10, long j11, String str, String str2) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    parcelObtain.writeLong(j10);
                    parcelObtain.writeLong(j11);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    try {
                        if (this.tt.transact(4, parcelObtain, parcelObtain2, 0) || c.tt() == null) {
                            parcelObtain2.readException();
                        } else {
                            c.tt().ve(j10, j11, str, str2);
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

            @Override // com.byazt.omf.nu
            public void c(long j10, long j11, String str, String str2) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    parcelObtain.writeLong(j10);
                    parcelObtain.writeLong(j11);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    try {
                        if (!this.tt.transact(2, parcelObtain, parcelObtain2, 0) && c.tt() != null) {
                            c.tt().c(j10, j11, str, str2);
                        } else {
                            parcelObtain2.readException();
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

            @Override // com.byazt.omf.nu
            public void c(long j10, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    parcelObtain.writeLong(j10);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.tt.transact(5, parcelObtain, parcelObtain2, 0) && c.tt() != null) {
                        c.tt().c(j10, str, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.omf.nu
            public void c(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ITTAppDownloadListener");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.tt.transact(6, parcelObtain, parcelObtain2, 0) && c.tt() != null) {
                        c.tt().c(str, str2);
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
