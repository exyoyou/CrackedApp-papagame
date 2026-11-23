package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;
import com.baidu.mobads.sdk.api.BiddingListener;
import com.baidu.mobads.sdk.api.SplashAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.join.mgps.Util.o0;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f7895a = "竞价参数格式错误，请检查参数是否为空";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f7896b = "ecpm格式错误，请检查是否满足以下条件：ecpm需大于0，单位：分，无小数点";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f7897c = "adn格式错误，请检查是否满足以下条件：整型，不支持小数，需在枚举值范围内";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f7898d = "ad_t格式错误，请检查是否满足以下条件：整型，不支持小数，需在枚举值范围内";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f7899e = "ad_time格式错误，请检查是否满足以下条件：秒级时间戳（10位数字）、无特殊符号";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f7900f = "bid_t格式错误，请检查是否满足以下条件：整型，不支持小数，需在枚举值范围内";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f7901g = "reason格式错误，请检查是否满足以下条件：整型，不支持小数，需在枚举值范围内";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f7902h = "is_s格式错误，请检查是否满足以下条件：整型，不支持小数，需在枚举值范围内";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f7903i = "is_c格式错误，请检查是否满足以下条件：整型，不支持小数，需在枚举值范围内";

    public static boolean a(boolean z10, LinkedHashMap<String, Object> linkedHashMap, BiddingListener biddingListener) {
        if (linkedHashMap != null) {
            try {
                if (linkedHashMap.containsKey("ecpm")) {
                    String strValueOf = String.valueOf(linkedHashMap.get("ecpm"));
                    if (!TextUtils.isEmpty(strValueOf) && (strValueOf.contains(o0.f49827a) || Integer.parseInt(strValueOf) <= 0)) {
                        if (biddingListener != null) {
                            biddingListener.onBiddingResult(false, f7896b, null);
                        }
                        return false;
                    }
                }
                if (linkedHashMap.containsKey(SplashAd.KEY_BIDFAIL_ADN)) {
                    String strValueOf2 = String.valueOf(linkedHashMap.get(SplashAd.KEY_BIDFAIL_ADN));
                    if (!TextUtils.isEmpty(strValueOf2) && (strValueOf2.contains(o0.f49827a) || Integer.parseInt(strValueOf2) < 0)) {
                        if (biddingListener != null) {
                            biddingListener.onBiddingResult(false, f7897c, null);
                        }
                        return false;
                    }
                }
                if (linkedHashMap.containsKey("ad_t")) {
                    String strValueOf3 = String.valueOf(linkedHashMap.get("ad_t"));
                    if (TextUtils.isEmpty(strValueOf3) && (strValueOf3.contains(o0.f49827a) || Integer.parseInt(strValueOf3) < 0)) {
                        if (biddingListener != null) {
                            biddingListener.onBiddingResult(false, f7898d, null);
                        }
                        return false;
                    }
                }
                if (linkedHashMap.containsKey("ad_time")) {
                    String strValueOf4 = String.valueOf(linkedHashMap.get("ad_time"));
                    if (strValueOf4.length() == 13) {
                        linkedHashMap.put("ad_time", strValueOf4.substring(0, 10));
                    }
                    if (TextUtils.isEmpty(strValueOf4) && (strValueOf4.contains(o0.f49827a) || Double.parseDouble(strValueOf4) < 1.0E9d)) {
                        if (biddingListener != null) {
                            biddingListener.onBiddingResult(false, f7899e, null);
                        }
                        return false;
                    }
                }
                if (linkedHashMap.containsKey("bid_t")) {
                    String strValueOf5 = String.valueOf(linkedHashMap.get("bid_t"));
                    if (TextUtils.isEmpty(strValueOf5) && (strValueOf5.contains(o0.f49827a) || Integer.parseInt(strValueOf5) < 0)) {
                        if (biddingListener != null) {
                            biddingListener.onBiddingResult(false, f7900f, null);
                        }
                        return false;
                    }
                }
                if (!z10) {
                    if (linkedHashMap.containsKey(MediationConstant.KEY_REASON)) {
                        String strValueOf6 = String.valueOf(linkedHashMap.get(MediationConstant.KEY_REASON));
                        if (TextUtils.isEmpty(strValueOf6) && (strValueOf6.contains(o0.f49827a) || Integer.parseInt(strValueOf6) < 0)) {
                            if (biddingListener != null) {
                                biddingListener.onBiddingResult(false, f7901g, null);
                            }
                            return false;
                        }
                    }
                    if (linkedHashMap.containsKey("is_s")) {
                        String strValueOf7 = String.valueOf(linkedHashMap.get("is_s"));
                        if (TextUtils.isEmpty(strValueOf7) && (strValueOf7.contains(o0.f49827a) || Integer.parseInt(strValueOf7) < 0)) {
                            if (biddingListener != null) {
                                biddingListener.onBiddingResult(false, f7902h, null);
                            }
                            return false;
                        }
                    }
                    if (linkedHashMap.containsKey("is_c")) {
                        String strValueOf8 = String.valueOf(linkedHashMap.get("is_c"));
                        if (TextUtils.isEmpty(strValueOf8) && (strValueOf8.contains(o0.f49827a) || Integer.parseInt(strValueOf8) < 0)) {
                            if (biddingListener != null) {
                                biddingListener.onBiddingResult(false, f7903i, null);
                            }
                            return false;
                        }
                    }
                }
            } catch (Throwable th) {
                if (biddingListener != null) {
                    biddingListener.onBiddingResult(false, f7895a, null);
                }
                th.printStackTrace();
                return false;
            }
        }
        if (biddingListener != null) {
            biddingListener.onBiddingResult(true, "success", null);
        }
        return true;
    }
}
