package com.czhj.devicehelper.cnoaid.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.huawei.hms.ads.identifier.AdvertisingIdClient;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes9.dex */
class h implements com.czhj.devicehelper.cnoaid.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f25305b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f25306c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f25304a = new LinkedBlockingQueue<>(1);

    static final class a implements IInterface {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final IBinder f25316a;

        private a(IBinder iBinder) {
            this.f25316a = iBinder;
        }

        public String a() {
            String string = null;
            try {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                this.f25316a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                string = parcelObtain2.readString();
                parcelObtain.recycle();
                parcelObtain2.recycle();
                return string;
            } catch (Throwable th) {
                SigmobLog.e("getOAID", th);
                return string;
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f25316a;
        }
    }

    public h(Context context) {
        this.f25305b = context;
    }

    private String a(String str) {
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage(str);
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.czhj.devicehelper.cnoaid.impl.h.2
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                try {
                    h.this.f25304a.put(iBinder);
                } catch (Exception e10) {
                    SigmobLog.e(e10.getMessage());
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
            }
        };
        try {
            if (this.f25305b.bindService(intent, serviceConnection, 1)) {
                return new a(this.f25304a.take()).a();
            }
        } catch (Exception e10) {
            SigmobLog.e(e10.getMessage());
        } finally {
            this.f25305b.unbindService(serviceConnection);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.czhj.devicehelper.cnoaid.c cVar) {
        if (!a()) {
            SigmobLog.e("huawei OAID not Support");
            a(cVar, new com.czhj.devicehelper.cnoaid.f("huawei OAID not support"));
            return;
        }
        String strA = null;
        try {
            Object objInvoke = AdvertisingIdClient.class.getMethod("getAdvertisingIdInfo", Context.class).invoke(null, this.f25305b);
            if (objInvoke != null) {
                Object objInvoke2 = objInvoke.getClass().getDeclaredMethod("getId", new Class[0]).invoke(objInvoke, new Object[0]);
                if (objInvoke2 instanceof String) {
                    a(cVar, (String) objInvoke2);
                    return;
                }
                return;
            }
            SigmobLog.e("huawei OAID info is null");
            String[] strArr = {"com.huawei.hwid", "com.huawei.hwid.tv", "com.huawei.hms"};
            String strA2 = null;
            for (int i10 = 0; i10 < 3; i10++) {
                String str = strArr[i10];
                if (!TextUtils.isEmpty(strA2)) {
                    a(cVar, strA2);
                    return;
                }
                strA2 = a(str);
            }
            a(cVar, new com.czhj.devicehelper.cnoaid.f("huawei OAID info is null"));
        } catch (Throwable th) {
            try {
                String[] strArr2 = {"com.huawei.hwid", "com.huawei.hwid.tv", "com.huawei.hms"};
                for (int i11 = 0; i11 < 3; i11++) {
                    String str2 = strArr2[i11];
                    if (!TextUtils.isEmpty(strA)) {
                        a(cVar, strA);
                        return;
                    }
                    strA = a(str2);
                }
                SigmobLog.e("HWDeviceIDHelper error, will retry", th);
                a(cVar, new com.czhj.devicehelper.cnoaid.f(th));
            } catch (Throwable th2) {
                SigmobLog.e("HWDeviceIDHelper error ", th2);
                a(cVar, new com.czhj.devicehelper.cnoaid.f(th2));
            }
        }
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public void a(final com.czhj.devicehelper.cnoaid.c cVar) {
        if (this.f25305b == null || cVar == null) {
            return;
        }
        Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: com.czhj.devicehelper.cnoaid.impl.h.1
            @Override // java.lang.Runnable
            public void run() {
                h.this.b(cVar);
            }
        });
    }

    private void a(final com.czhj.devicehelper.cnoaid.c cVar, final com.czhj.devicehelper.cnoaid.f fVar) {
        this.f25306c.post(new Runnable() { // from class: com.czhj.devicehelper.cnoaid.impl.h.4
            @Override // java.lang.Runnable
            public void run() {
                cVar.a(fVar);
            }
        });
    }

    private void a(final com.czhj.devicehelper.cnoaid.c cVar, final String str) {
        this.f25306c.post(new Runnable() { // from class: com.czhj.devicehelper.cnoaid.impl.h.3
            @Override // java.lang.Runnable
            public void run() {
                cVar.a(str);
            }
        });
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public boolean a() {
        if (this.f25305b == null) {
            return false;
        }
        try {
            Object objInvoke = AdvertisingIdClient.class.getMethod("isAdvertisingIdAvailable", Context.class).invoke(null, this.f25305b);
            if (objInvoke instanceof Boolean) {
                return ((Boolean) objInvoke).booleanValue();
            }
        } catch (Throwable th) {
            SigmobLog.e("hw oaid support", th);
        }
        try {
            PackageManager packageManager = this.f25305b.getPackageManager();
            return (packageManager.getPackageInfo("com.huawei.hwid", 0) == null && packageManager.getPackageInfo("com.huawei.hwid.tv", 0) == null && packageManager.getPackageInfo("com.huawei.hms", 0) == null) ? false : true;
        } catch (Throwable unused) {
        }
    }
}
