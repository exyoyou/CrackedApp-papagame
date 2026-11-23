package com.aggmoread.sdk.adapter.helper;

import android.widget.FrameLayout;
import com.aggmoread.sdk.adapter.gm.AMAdapterConst;
import com.aggmoread.sdk.client.AMAdExtras;
import com.aggmoread.sdk.client.AMAdInterface;
import com.aggmoread.sdk.client.AMConst;
import com.aggmoread.sdk.client.AMCustomController;
import com.aggmoread.sdk.client.AMVideoConfigs;
import com.bytedance.sdk.openadsdk.AdSlot;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class AdapterHelper {
    public static final int ERROR_HANDLE_CODE = -500000;
    public static final int ERROR_VIDEO_CODD = 500009;
    public static final int NO_AD_CODD = 500005;

    public static AMCustomController getLocalCustomController(Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        Object obj = map.get(AMAdapterConst.KEY_AM_INIT_PRIVACY_CONTROL);
        LogHelper.log("KEY_AM_INIT_PRIVACY_CONTROL " + obj);
        if (obj instanceof AMCustomController) {
            return (AMCustomController) obj;
        }
        return null;
    }

    public static FrameLayout.LayoutParams getNativeAdLogoParams(AdSlot adSlot) {
        Map<String, Object> extraObject;
        if (adSlot != null && adSlot.getMediationAdSlot() != null && (extraObject = adSlot.getMediationAdSlot().getExtraObject()) != null) {
            Object obj = extraObject.get(AMAdapterConst.KEY_AM_NATIVE_LOGO_PARAMS);
            LogHelper.log("KEY_AM_NATIVE_LOGO_PARAMS " + obj);
            if (obj instanceof FrameLayout.LayoutParams) {
                return (FrameLayout.LayoutParams) obj;
            }
        }
        return null;
    }

    public static int getPrice(AMAdExtras aMAdExtras) {
        if (aMAdExtras == null) {
            return -1;
        }
        try {
            return Integer.parseInt((String) aMAdExtras.getData(AMConst.ExtrasKey.AD_PRICE));
        } catch (Exception unused) {
            return -1;
        }
    }

    public static AMVideoConfigs getVideoOptions(AdSlot adSlot) {
        AMVideoConfigs.Builder builder = new AMVideoConfigs.Builder();
        if (adSlot != null) {
            try {
                if (adSlot.getMediationAdSlot() != null) {
                    builder.setAutoPlayMuted(adSlot.getMediationAdSlot().isMuted());
                    Map<String, Object> extraObject = adSlot.getMediationAdSlot().getExtraObject();
                    if (extraObject != null) {
                        Object obj = extraObject.get(AMAdapterConst.KEY_AM_AUTO_PLAY_MUTED);
                        LogHelper.log("KEY_AM_AUTO_PLAY_MUTED " + obj);
                        if (obj instanceof Boolean) {
                            builder.setAutoPlayMuted(((Boolean) obj).booleanValue());
                        }
                        Object obj2 = extraObject.get(AMAdapterConst.KEY_AM_DETAIL_PAGE_MUTED);
                        LogHelper.log("KEY_AM_DETAIL_PAGE_MUTED " + obj2);
                        if (obj2 instanceof Boolean) {
                            builder.setDetailPageMuted(((Boolean) obj2).booleanValue());
                        }
                        Object obj3 = extraObject.get(AMAdapterConst.KEY_AM_ENABLE_USER_CONTROL);
                        LogHelper.log("KEY_AM_ENABLE_USER_CONTROL " + obj3);
                        if (obj3 instanceof Boolean) {
                            builder.setEnableUserControl(((Boolean) obj3).booleanValue());
                        }
                        Object obj4 = extraObject.get(AMAdapterConst.KEY_AM_AUTO_PLAY_POLICY);
                        LogHelper.log("KEY_AM_AUTO_PLAY_POLICY " + obj4);
                        if (obj4 instanceof Integer) {
                            builder.setAutoPlayPolicy(((Integer) obj4).intValue());
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return builder.build();
    }

    public static boolean notifyBidResult(AMAdInterface aMAdInterface, boolean z10, double d10, int i10) {
        if (aMAdInterface == null) {
            return false;
        }
        if (z10) {
            sendBidSuccess(aMAdInterface);
            return true;
        }
        sendBidFailed(aMAdInterface, d10, i10);
        return true;
    }

    public static void sendBidFailed(AMAdInterface aMAdInterface, double d10, int i10) {
        if (aMAdInterface != null) {
            int i11 = 1;
            if (i10 != 1) {
                if (i10 == 2) {
                    i11 = 2;
                } else if (i10 == 10001) {
                    i11 = 10001;
                }
            }
            try {
                aMAdInterface.notifyBidFail(i11, (int) d10, null);
            } catch (Exception unused) {
            }
        }
    }

    public static void sendBidSuccess(AMAdInterface aMAdInterface) {
        if (aMAdInterface == null || aMAdInterface.getAdExtras() == null) {
            return;
        }
        try {
            aMAdInterface.notifyBidSuccess(Integer.parseInt((String) aMAdInterface.getAdExtras().getData(AMConst.ExtrasKey.AD_PRICE)));
        } catch (Exception unused) {
        }
    }
}
