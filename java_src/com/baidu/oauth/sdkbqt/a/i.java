package com.baidu.oauth.sdkbqt.a;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.TypedValue;
import com.baidu.oauth.sdkbqt.auth.BdSsoHandler;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class i {
    public static int a(Context context, float f10) {
        return (int) TypedValue.applyDimension(1, f10, context.getResources().getDisplayMetrics());
    }

    public static Intent a(int i10, String str) {
        Intent intent = new Intent();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code", i10);
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("msg", str);
            }
        } catch (JSONException e10) {
            d.a(e10);
        }
        intent.putExtra(BdSsoHandler.EXTRA_OAUTH_RESULT_JSON, jSONObject.toString());
        return intent;
    }

    public static Intent a(int i10) {
        return a(i10, "");
    }
}
