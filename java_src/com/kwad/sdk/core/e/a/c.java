package com.kwad.sdk.core.e.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.umeng.analytics.pro.bb;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    public C0934c aUF;
    public Context mContext;
    public final a aUG = new a();
    public final b aUH = new b();
    public final CountDownLatch mCountDownLatch = new CountDownLatch(2);

    public class a extends com.kwad.sdk.core.e.b.c.a {
        public a() {
        }

        @Override // com.kwad.sdk.core.e.b.c.a
        public final void a(int i10, Bundle bundle) {
            com.kwad.sdk.core.d.c.d("HONORDeviceIDHelper", "OAIDCallBack handleResult retCode = " + i10 + " retInfo = " + bundle);
            if (i10 == 0) {
                try {
                    C0934c c0934c = c.this.aUF;
                    if (c0934c != null) {
                        c0934c.f75319id = bundle.getString(bb.c.f84371b);
                        com.kwad.sdk.core.d.c.d("HONORDeviceIDHelper", "OAIDCallBack handleResult success");
                    }
                } catch (Throwable th) {
                    com.kwad.sdk.core.d.c.d("HONORDeviceIDHelper", "OAIDCallBack handleResult error: " + th.getMessage());
                    return;
                }
            }
            c.a(c.this);
        }
    }

    public class b extends com.kwad.sdk.core.e.b.c.a {
        public b() {
        }

        @Override // com.kwad.sdk.core.e.b.c.a
        public final void a(int i10, Bundle bundle) {
            com.kwad.sdk.core.d.c.d("HONORDeviceIDHelper", "OAIDLimitCallback handleResult retCode=" + i10 + " retInfo= " + bundle);
            if (i10 == 0) {
                try {
                    if (c.this.aUF != null) {
                        boolean z10 = bundle.getBoolean("oa_id_limit_state");
                        c.this.aUF.aUJ = z10;
                        com.kwad.sdk.core.d.c.d("HONORDeviceIDHelper", "OAIDLimitCallback handleResult success  isLimit=" + z10);
                    }
                } catch (Throwable th) {
                    com.kwad.sdk.core.d.c.d("HONORDeviceIDHelper", "OAIDLimitCallback handleResult error:  " + th.getMessage());
                    return;
                }
            }
            c.a(c.this);
        }
    }

    /* JADX INFO: renamed from: com.kwad.sdk.core.e.a.c$c, reason: collision with other inner class name */
    public static final class C0934c {
        public boolean aUJ;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        public String f75319id;
    }

    public static void a(c cVar) {
        try {
            cVar.mCountDownLatch.countDown();
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.d("HONORDeviceIDHelper", "doCountDown  error:  " + e10.getMessage());
        }
    }

    public static boolean isAdvertisingIdAvailable(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("com.hihonor.id.HnOaIdService");
            intent.setPackage("com.hihonor.id");
            return !packageManager.queryIntentServices(intent, 0).isEmpty();
        } catch (Exception unused) {
        }
    }
}
