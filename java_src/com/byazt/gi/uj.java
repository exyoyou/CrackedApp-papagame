package com.byazt.gi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.byazt.gq.t;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bm;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public interface uj extends IInterface {

    @com.byazt.zqa.c(c = {0, 1, 678, 123})
    public static abstract class c extends Binder implements uj {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static String f14541c = "";

        /* JADX INFO: renamed from: com.byazt.gi.uj$c$c, reason: collision with other inner class name */
        @com.byazt.zqa.c(c = {0, 1, 678, MediaPlayer.MEDIA_PLAYER_OPTION_AE_TAR_LUFS})
        private static class C0319c implements uj {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public IBinder f14542c;

            public C0319c(IBinder iBinder) {
                if (TextUtils.isEmpty(c.f14541c)) {
                    JSONObject jSONObjectI = t.i();
                    String unused = c.f14541c = com.byazt.i.ve.c(jSONObjectI.optString(bm.aM), jSONObjectI.optString("s"));
                }
                this.f14542c = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f14542c;
            }

            @Override // com.byazt.gi.uj
            public void c(tt ttVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(c.f14541c);
                    if (ttVar != null) {
                        parcelObtain.writeInt(1);
                        ttVar.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.f14542c.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface(f14541c);
                c(parcel.readInt() != 0 ? tt.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(f14541c);
            return true;
        }

        public static uj c(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(f14541c);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof uj)) {
                return (uj) iInterfaceQueryLocalInterface;
            }
            return new C0319c(iBinder);
        }
    }

    void c(tt ttVar) throws RemoteException;
}
