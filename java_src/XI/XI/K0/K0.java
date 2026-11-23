package XI.XI.K0;

import a.a;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.Objects;

/* JADX INFO: loaded from: classes7.dex */
public class K0 implements kM {
    public a K0;

    /* JADX INFO: renamed from: XI, reason: collision with root package name */
    public Context f25XI;
    public xo kM;
    public ServiceConnection xo = new XI();

    public class XI implements ServiceConnection {
        public XI() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            a c0005a;
            K0 k10 = K0.this;
            int i10 = a.AbstractBinderC0004a.f33XI;
            if (iBinder == null) {
                c0005a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.creator.IdsSupplier");
                c0005a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new a.AbstractBinderC0004a.C0005a(iBinder) : (a) iInterfaceQueryLocalInterface;
            }
            k10.K0 = c0005a;
            K0.this.kM.connectSuccess(true);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            K0.this.K0 = null;
        }
    }

    public K0(Context context) {
        this.f25XI = context;
    }

    public boolean XI() {
        boolean zIsSupported;
        a aVar = this.K0;
        if (aVar != null) {
            try {
                zIsSupported = aVar.isSupported();
            } catch (RemoteException e10) {
                e10.getMessage();
                e10.printStackTrace();
                zIsSupported = false;
            }
        } else {
            zIsSupported = false;
        }
        Objects.toString(this.K0);
        return zIsSupported;
    }
}
