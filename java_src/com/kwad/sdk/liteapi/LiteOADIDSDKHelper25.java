package com.kwad.sdk.liteapi;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.annotation.WorkerThread;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class LiteOADIDSDKHelper25 {
    private static final String SUB_TAG = "OADIDSDKHelper25:";
    private static final String TAG = "KSAdSDK";
    private static boolean mIsRequestIng;
    private static boolean sGetOaidFail;

    @Keep
    static class IIdentifierListener25 implements IIdentifierListener {
        private final a mOaidListener;
        private final long mStartTime;

        public IIdentifierListener25(long j10, a aVar) {
            this.mStartTime = j10;
            this.mOaidListener = aVar;
        }

        @Override // com.bun.miitmdid.interfaces.IIdentifierListener
        public void OnSupport(boolean z10, IdSupplier idSupplier) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.mStartTime;
            if (idSupplier != null) {
                String oaid = idSupplier.getOAID();
                if (TextUtils.isEmpty(oaid)) {
                    boolean unused = LiteOADIDSDKHelper25.sGetOaidFail = true;
                } else {
                    StringBuilder sb2 = new StringBuilder("OADIDSDKHelper25:oaid time=");
                    sb2.append(jCurrentTimeMillis);
                    sb2.append("--OAID:");
                    sb2.append(oaid);
                    this.mOaidListener.OnOAIDValid(oaid);
                }
            }
            boolean unused2 = LiteOADIDSDKHelper25.mIsRequestIng = false;
        }
    }

    public interface a {
        @WorkerThread
        void OnOAIDValid(String str);
    }

    public static void getOAId(Context context, a aVar) {
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
            int iInitSdk = MdidSdkHelper.InitSdk(context.getApplicationContext(), true, new IIdentifierListener25(jCurrentTimeMillis, aVar));
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            StringBuilder sb2 = new StringBuilder("OADIDSDKHelper25:sdk init time=");
            sb2.append(jCurrentTimeMillis2);
            sb2.append("--result=");
            sb2.append(iInitSdk);
        } catch (Throwable unused) {
            mIsRequestIng = false;
            sGetOaidFail = true;
        }
    }

    public static boolean isSupport() {
        try {
            new IIdentifierListener() { // from class: com.kwad.sdk.liteapi.LiteOADIDSDKHelper25.1
                @Override // com.bun.miitmdid.interfaces.IIdentifierListener
                public void OnSupport(boolean z10, IdSupplier idSupplier) {
                }
            }.OnSupport(true, null);
            Class.forName("com.bun.miitmdid.core.MdidSdkHelper", false, LiteOADIDSDKHelper25.class.getClassLoader());
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
