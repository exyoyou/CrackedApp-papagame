package com.kwad.sdk.oaid;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.bun.miitmdid.e;
import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;

/* JADX INFO: loaded from: classes2.dex */
public class NewOAIDSDKHelper {
    private static boolean mIsRequestIng;
    private static boolean sGetOaidFail;

    static class IIdentifierListenerImpl implements IIdentifierListener {
        private final a mOaidListener;
        private final long mStartTime;

        public IIdentifierListenerImpl(long j10, a aVar) {
            this.mStartTime = j10;
            this.mOaidListener = aVar;
        }

        public void onSupport(IdSupplier idSupplier) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.mStartTime;
            if (idSupplier != null) {
                String oaid = idSupplier.getOAID();
                if (TextUtils.isEmpty(oaid)) {
                    NewOAIDSDKHelper.access$002(true);
                } else {
                    StringBuilder sb2 = new StringBuilder("OADIDSDKHelper:oaid time=");
                    sb2.append(jCurrentTimeMillis);
                    sb2.append("--OAID:");
                    sb2.append(oaid);
                    this.mOaidListener.OnOAIDValid(oaid);
                }
            }
            NewOAIDSDKHelper.access$102(false);
        }
    }

    public interface a {
        void OnOAIDValid(String str);
    }

    public static void a(Context context, a aVar) {
        if (context == null || sGetOaidFail) {
            return;
        }
        if (!isSupport()) {
            sGetOaidFail = true;
            return;
        }
        if (mIsRequestIng) {
            return;
        }
        mIsRequestIng = true;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            int iInitSdk = MdidSdkHelper.InitSdk(context.getApplicationContext(), true, new IIdentifierListenerImpl(jCurrentTimeMillis, aVar));
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            StringBuilder sb2 = new StringBuilder("OADIDSDKHelper:sdk init time=");
            sb2.append(jCurrentTimeMillis2);
            sb2.append("--result=");
            sb2.append(iInitSdk);
        } catch (Throwable unused) {
            mIsRequestIng = false;
            sGetOaidFail = true;
        }
    }

    static /* synthetic */ boolean access$002(boolean z10) {
        sGetOaidFail = true;
        return true;
    }

    static /* synthetic */ boolean access$102(boolean z10) {
        mIsRequestIng = false;
        return false;
    }

    @SuppressLint({"ObsoleteSdkInt"})
    public static boolean isSupport() {
        try {
            new IIdentifierListener() { // from class: com.kwad.sdk.oaid.NewOAIDSDKHelper.1
                public void onSupport(IdSupplier idSupplier) {
                }
            }.onSupport(null);
            new StringBuilder("OADIDSDKHelper:oaidVersion").append(e.a());
            Class.forName("com.bun.miitmdid.core.MdidSdkHelper", false, NewOAIDSDKHelper.class.getClassLoader());
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
