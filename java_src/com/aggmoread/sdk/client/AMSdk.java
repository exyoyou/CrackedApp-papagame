package com.aggmoread.sdk.client;

import android.content.Context;
import com.aggmoread.sdk.b.a;
import com.aggmoread.sdk.t;
import com.aggmoread.sdk.z.c.a.a.c.l;
import com.aggmoread.sdk.z.c.a.a.e.c;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class AMSdk {
    private static IAdSdkManager sdkManager;

    private interface IAdSdkManager {
        void init(Context context, AMAdConfig aMAdConfig);

        void init(Context context, AMAdConfig aMAdConfig, InitListener initListener);

        void preLoad(Context context, List<AMChannelIdInfo> list);
    }

    public interface InitListener {
        void onFailed(AMError aMError);

        void onSuccess();
    }

    public interface SDKBidInfoCallback {
        void onResult(String str, String str2);
    }

    public static void getSDKBidInfo(String str, Map<String, Object> map, final SDKBidInfoCallback sDKBidInfoCallback) {
        if (sDKBidInfoCallback != null) {
            l.a(str, map, new l.e() { // from class: com.aggmoread.sdk.client.AMSdk.1
                @Override // com.aggmoread.sdk.z.c.a.a.c.l.e
                public void callback(l.f fVar) {
                    String str2;
                    String str3;
                    if (fVar != null) {
                        str2 = fVar.f4395a;
                        str3 = fVar.f4396b;
                    } else {
                        str2 = null;
                        str3 = null;
                    }
                    sDKBidInfoCallback.onResult(str2, str3);
                }
            });
        }
    }

    public static String getSDKVersion() {
        return c.y();
    }

    public static void init(Context context, AMAdConfig aMAdConfig) {
        if (sdkManager != null) {
            return;
        }
        synchronized (AMSdk.class) {
            if (sdkManager != null) {
                return;
            }
            IAdSdkManager iAdSdkManager = (IAdSdkManager) a.a(new Class[]{IAdSdkManager.class, AMAdLoader.IAdLoader.class}, context);
            sdkManager = iAdSdkManager;
            iAdSdkManager.init(context, aMAdConfig);
        }
    }

    public static AMAdLoader makeAdLoader(AMAdLoadSlot aMAdLoadSlot) {
        if (sdkManager == null) {
            String str = t.SDK_TAG;
            return null;
        }
        if (aMAdLoadSlot != null) {
            return new AMAdLoader(aMAdLoadSlot);
        }
        String str2 = t.SDK_TAG;
        return null;
    }

    public static void preLoad(Context context, List<AMChannelIdInfo> list) {
        if (sdkManager == null) {
            String str = t.SDK_TAG;
        } else {
            if (list == null || list.isEmpty()) {
                return;
            }
            sdkManager.preLoad(context, list);
        }
    }

    public static void init(Context context, AMAdConfig aMAdConfig, InitListener initListener) {
        if (sdkManager != null) {
            return;
        }
        synchronized (AMSdk.class) {
            if (sdkManager != null) {
                return;
            }
            IAdSdkManager iAdSdkManager = (IAdSdkManager) a.a(new Class[]{IAdSdkManager.class, AMAdLoader.IAdLoader.class}, context);
            sdkManager = iAdSdkManager;
            iAdSdkManager.init(context, aMAdConfig, initListener);
        }
    }
}
