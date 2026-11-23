package com.haima.hmcp.device.input.utils;

import com.haima.hmcp.beans.ButtonMapContent;
import com.haima.hmcp.beans.ButtonMappings;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class Json2BeanUtil {
    public static final String TAG = "Json2BeanUtil";

    public static ButtonMapContent parseButtonMapContent(String str) {
        JSONException e10;
        ButtonMapContent buttonMapContent;
        LogUtils.d("Json2BeanUtil", "parseButtonMapContent data: " + str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            buttonMapContent = new ButtonMapContent();
            try {
                buttonMapContent.defaultMouseMode = jSONObject.optBoolean("defaultMouseMode");
                buttonMapContent.showTips = jSONObject.optBoolean("showTips");
                buttonMapContent.showTipsWindow = jSONObject.optBoolean("showTipsWindow");
                buttonMapContent.showMaps = jSONObject.optBoolean("showMaps");
                buttonMapContent.isJoypad2Dpad = jSONObject.optBoolean("isJoypad2Dpad");
                buttonMapContent.isKeyoard2Dpad = jSONObject.optBoolean("isKeyoard2Dpad");
                buttonMapContent.version = jSONObject.optString("version");
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("buttonMappingsList");
                if (jSONArrayOptJSONArray != null) {
                    buttonMapContent.buttonMappingsList = new ArrayList();
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                        buttonMapContent.buttonMappingsList.add(new ButtonMappings());
                    }
                }
            } catch (JSONException e11) {
                e10 = e11;
                e10.printStackTrace();
            }
        } catch (JSONException e12) {
            e10 = e12;
            buttonMapContent = null;
        }
        return buttonMapContent;
    }
}
