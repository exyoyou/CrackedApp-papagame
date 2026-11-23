package fd;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes10.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: fd.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC1161a extends Binder implements a {

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: fd.a$a$a, reason: collision with other inner class name */
        public static class C1162a implements a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public IBinder f91194b;

            public C1162a(IBinder iBinder) {
                this.f91194b = iBinder;
            }

            public String a(String str, String str2, String str3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    this.f91194b.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f91194b;
            }
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C1162a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }
    }
}
