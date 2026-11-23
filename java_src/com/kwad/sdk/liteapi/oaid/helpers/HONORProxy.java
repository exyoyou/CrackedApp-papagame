package com.kwad.sdk.liteapi.oaid.helpers;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.kwad.sdk.liteapi.LiteApiLogger;
import com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface;
import com.umeng.analytics.pro.bb;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class HONORProxy {
    public c info;
    public Context mContext;
    public final a mBinderOne = new a();
    public final b mBinderTwo = new b();
    public final CountDownLatch mCountDownLatch = new CountDownLatch(2);

    public class a extends HONORProxyInterface.a {
        public a() {
        }

        @Override // com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface.a, com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface
        public final void a(int i10, long j10, boolean z10, float f10, double d10, String str) {
        }

        @Override // com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface.a, com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface
        public final void a(int i10, Bundle bundle) {
            LiteApiLogger.d("HONORDeviceIDHelper", "OAIDCallBack handleResult retCode = " + i10 + " retInfo = " + bundle);
            if (i10 == 0) {
                try {
                    c cVar = HONORProxy.this.info;
                    if (cVar != null) {
                        cVar.f75327id = bundle.getString(bb.c.f84371b);
                        LiteApiLogger.d("HONORDeviceIDHelper", "OAIDCallBack handleResult success");
                    }
                } catch (Throwable th) {
                    LiteApiLogger.d("HONORDeviceIDHelper", "OAIDCallBack handleResult error: " + th.getMessage());
                    return;
                }
            }
            HONORProxy.countDown(HONORProxy.this);
        }
    }

    public class b extends HONORProxyInterface.a {
        public b() {
        }

        @Override // com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface.a, com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface
        public final void a(int i10, long j10, boolean z10, float f10, double d10, String str) {
        }

        @Override // com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface.a, com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface
        public final void a(int i10, Bundle bundle) {
            LiteApiLogger.d("HONORDeviceIDHelper", "OAIDLimitCallback handleResult retCode=" + i10 + " retInfo= " + bundle);
            if (i10 == 0) {
                try {
                    if (HONORProxy.this.info != null) {
                        boolean z10 = bundle.getBoolean("oa_id_limit_state");
                        HONORProxy.this.info.aUJ = z10;
                        LiteApiLogger.d("HONORDeviceIDHelper", "OAIDLimitCallback handleResult success  isLimit=" + z10);
                    }
                } catch (Throwable th) {
                    LiteApiLogger.d("HONORDeviceIDHelper", "OAIDLimitCallback handleResult error:  " + th.getMessage());
                    return;
                }
            }
            HONORProxy.countDown(HONORProxy.this);
        }
    }

    public static final class c {
        public boolean aUJ;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        public String f75327id;
    }

    public static void countDown(HONORProxy hONORProxy) {
        try {
            hONORProxy.mCountDownLatch.countDown();
        } catch (Exception e10) {
            LiteApiLogger.d("HONORDeviceIDHelper", "doCountDown  error:  " + e10.getMessage());
        }
    }

    public boolean isAdvertisingIdAvailable(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("com.hihonor.id.HnOaIdService");
            intent.setPackage("com.hihonor.id");
            return !packageManager.queryIntentServices(intent, 0).isEmpty();
        } catch (Exception unused) {
        }
    }
}
