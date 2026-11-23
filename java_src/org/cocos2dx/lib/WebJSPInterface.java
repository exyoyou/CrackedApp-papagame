package org.cocos2dx.lib;

import android.webkit.JavascriptInterface;
import com.czhj.sdk.common.Constants;
import com.google.gson.JsonObject;
import com.papa91.activity.EmuBaseActivity;

/* JADX INFO: loaded from: classes10.dex */
public class WebJSPInterface {
    @JavascriptInterface
    public String getJaveScriptFace(String str) {
        String str2 = EmuBaseActivity.GameID;
        String str3 = EmuBaseActivity.UserID;
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("game_id", Long.valueOf(Long.parseLong(str2)));
        jsonObject.addProperty("uid", Long.valueOf(Long.parseLong(str3)));
        jsonObject.addProperty(Constants.TOKEN, EmuBaseActivity.token);
        jsonObject.addProperty("ip", EmuBaseActivity.server_ip);
        return jsonObject.toString();
    }
}
