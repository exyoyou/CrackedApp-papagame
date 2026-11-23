package org.webrtc.haima.countly;

import android.text.TextUtils;
import java.net.URLEncoder;
import org.hmwebrtc.Logging;
import org.hmwebrtc.RtcCountlyConstants;

/* JADX INFO: loaded from: classes10.dex */
public class RtcCountlyUtil {
    private static final String TAG = "RtcCountlyUtil";
    private static HmCountlyCallback hmCountlyCallback;

    public static void init(HmCountlyCallback hmCountlyCallback2) {
        Logging.i(TAG, "==init===");
        hmCountlyCallback = hmCountlyCallback2;
    }

    public static void recordErrorEvent(String str) {
        try {
            String strEncode = URLEncoder.encode(str, "utf-8");
            if (!TextUtils.isEmpty(strEncode)) {
                strEncode = strEncode.replaceAll("%22", "");
            }
            recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, strEncode);
        } catch (Exception unused) {
            recordEvent(RtcCountlyConstants.RTC_COUNTLY_ERROR, "URLEncoder.encode.error");
        }
    }

    public static void recordEvent(int i10, String str) {
        recordEvent(i10, str, 0L);
    }

    public static void unInit() {
        Logging.i(TAG, "==unInit===");
        if (hmCountlyCallback != null) {
            hmCountlyCallback = null;
        }
    }

    public static void recordEvent(int i10, int i11) {
        recordEvent(i10, "" + i11, 0L);
    }

    public static void recordEvent(int i10) {
        recordEvent(i10, (String) null);
    }

    public static void recordEvent(int i10, String str, long j10) {
        if (hmCountlyCallback != null) {
            Logging.i(TAG, "===recordEvent==" + i10 + ", " + str);
            hmCountlyCallback.callBackToSaasSDK(Integer.toString(i10), str, j10);
        }
    }
}
