package com.haima.hmcp.utils;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class FollowCidCacheUtil {
    public static final String FOLLOW_CID_CACHE_KEY = "HMCP_FOLLOW_CID_CACHE_KEY";
    private static final String TAG = "FollowCidCacheUtil";

    public static String getAndClearOtherFollowCid(Context context, String str) {
        String str2 = TAG;
        LogUtils.d(str2, "getAndClearOtherFollowCid start " + str);
        if (TextUtils.isEmpty(str)) {
            LogUtils.e(str2, " getAndClearOtherFollowCid failed,masterCid is invalid");
            return null;
        }
        String strMd5 = CryptoUtils.md5(str);
        if (TextUtils.isEmpty(strMd5)) {
            LogUtils.e(str2, "getAndClearOtherFollowCid failed,masterCidMd5 is invalid");
            return null;
        }
        JSONObject followCidData = getFollowCidData(context);
        if (followCidData == null) {
            return "";
        }
        String strOptString = followCidData.optString(strMd5);
        JSONObject jSONObject = new JSONObject();
        if (!TextUtils.isEmpty(strOptString)) {
            try {
                jSONObject.put(strMd5, strOptString);
            } catch (JSONException unused) {
            }
        }
        DataUtils.getSharedInstance(context).putPreferences(FOLLOW_CID_CACHE_KEY, jSONObject.toString());
        LogUtils.d(TAG, "getAndClearOtherFollowCid succeed,followCid is " + strOptString);
        return strOptString;
    }

    private static JSONObject getFollowCidData(Context context) {
        String preferences = DataUtils.getSharedInstance(context).getPreferences(FOLLOW_CID_CACHE_KEY, "");
        if (TextUtils.isEmpty(preferences)) {
            LogUtils.e(TAG, "FollowCidCacheUtil getFollowCidData failed,data is empty");
            return null;
        }
        try {
            return new JSONObject(preferences);
        } catch (JSONException unused) {
            LogUtils.e(TAG, "FollowCidCacheUtil getFollowCidData failed,parse json failed");
            return null;
        }
    }

    public static void save(Context context, String str, String str2) {
        String str3 = TAG;
        LogUtils.d(str3, "save masterCid is " + str + " followCid is " + str2);
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            LogUtils.e(str3, "save failed,data is invalid");
            return;
        }
        String strMd5 = CryptoUtils.md5(str);
        if (TextUtils.isEmpty(strMd5)) {
            LogUtils.e(str3, "save failed,masterCidMd5 is invalid");
            return;
        }
        JSONObject followCidData = getFollowCidData(context);
        if (followCidData == null) {
            followCidData = new JSONObject();
        }
        try {
            followCidData.put(strMd5, str2);
            DataUtils.getSharedInstance(context).putPreferences(FOLLOW_CID_CACHE_KEY, followCidData.toString());
            LogUtils.d(str3, "save succeed,followCid is " + str2);
        } catch (Exception unused) {
            LogUtils.e(TAG, "save failed,cacheData put failed");
        }
    }
}
