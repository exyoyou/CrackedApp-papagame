package com.windmill.baidu;

import com.baidu.mobads.sdk.api.BiddingListener;
import com.windmill.sdk.base.WMLogUtil;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes8.dex */
public final class a {
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 2 */
    public static void a(Object obj, String str, LinkedHashMap<String, Object> linkedHashMap) {
        if (obj == null) {
            return;
        }
        try {
            if (BiddingListener.class != 0) {
                obj.getClass().getMethod("biddingSuccess", LinkedHashMap.class, BiddingListener.class).invoke(obj, linkedHashMap, null);
                return;
            }
            try {
                obj.getClass().getMethod("biddingSuccess", String.class, LinkedHashMap.class).invoke(obj, str, linkedHashMap);
            } catch (Throwable th) {
                WMLogUtil.e("BDBiddingNotificationUtils", "win: ".concat(String.valueOf(th)));
                obj.getClass().getMethod("biddingSuccess", String.class).invoke(obj, str);
            }
        } catch (Throwable th2) {
            WMLogUtil.e("BDBiddingNotificationUtils", "win error: ".concat(String.valueOf(th2)));
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 2 */
    public static void b(Object obj, String str, LinkedHashMap<String, Object> linkedHashMap) {
        if (obj == null) {
            return;
        }
        try {
            if (BiddingListener.class != 0) {
                obj.getClass().getMethod("biddingFail", LinkedHashMap.class, BiddingListener.class).invoke(obj, linkedHashMap, null);
                return;
            }
            try {
                obj.getClass().getMethod("biddingFail", String.class, LinkedHashMap.class).invoke(obj, str, linkedHashMap);
            } catch (Throwable th) {
                WMLogUtil.e("BDBiddingNotificationUtils", "loss error: ".concat(String.valueOf(th)));
                obj.getClass().getMethod("biddingFail", String.class).invoke(obj, str);
            }
        } catch (Throwable th2) {
            WMLogUtil.e("BDBiddingNotificationUtils", "loss error: ".concat(String.valueOf(th2)));
        }
    }
}
