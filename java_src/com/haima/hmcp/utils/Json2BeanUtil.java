package com.haima.hmcp.utils;

import android.text.TextUtils;
import com.haima.hmcp.beans.ButtonMapContent;
import com.haima.hmcp.beans.ButtonMappings;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.haima.hmcp.beans.HmInputMappings;
import com.haima.hmcp.beans.MessagePayload;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.beans.PointCoord2;
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
        ArrayList arrayList = null;
        try {
            JSONObject jSONObject = new JSONObject(str);
            buttonMapContent = new ButtonMapContent();
            try {
                buttonMapContent.defaultMouseMode = jSONObject.optBoolean("defaultMouseMode");
                buttonMapContent.showTips = jSONObject.optBoolean("showTips");
                buttonMapContent.showTipsWindow = jSONObject.optBoolean("showTipsWindow");
                buttonMapContent.showMaps = jSONObject.optBoolean("showMaps");
                buttonMapContent.isJoypad2Dpad = jSONObject.optBoolean("isJoypad2Dpad");
                buttonMapContent.version = jSONObject.optString("version");
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("buttonMappingsList");
                if (jSONArrayOptJSONArray != null) {
                    arrayList = new ArrayList();
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
                        ButtonMappings buttonMappings = new ButtonMappings();
                        buttonMappings.mappingName = jSONObjectOptJSONObject.optString(HmInputMappings.FIELD_MAPPING_NAME);
                        buttonMappings.imageURL = jSONObjectOptJSONObject.optString("imageURL");
                        buttonMappings.buttonFn = jSONObjectOptJSONObject.optInt("buttonFn");
                        buttonMappings.buttonX = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonX"));
                        buttonMappings.buttonY = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonY"));
                        buttonMappings.buttonB = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonB"));
                        buttonMappings.buttonA = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonA"));
                        buttonMappings.buttonL1 = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonL1"));
                        buttonMappings.buttonL2 = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonL2"));
                        buttonMappings.buttonR1 = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonR1"));
                        buttonMappings.buttonR2 = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonR2"));
                        buttonMappings.buttonUp = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonUp"));
                        buttonMappings.buttonDown = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonDown"));
                        buttonMappings.buttonLeft = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonLeft"));
                        buttonMappings.buttonRight = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonRight"));
                        buttonMappings.trackBallL = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("trackBallL"));
                        buttonMappings.trackBallR = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("trackBallR"));
                        buttonMappings.buttonAB = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonAB"));
                        buttonMappings.buttonNum0 = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonNum0"));
                        buttonMappings.buttonNum1 = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonNum1"));
                        buttonMappings.buttonNum2 = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonNum2"));
                        buttonMappings.buttonNum3 = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonNum3"));
                        buttonMappings.buttonNum4 = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonNum4"));
                        buttonMappings.buttonNum5 = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonNum5"));
                        buttonMappings.buttonNum6 = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonNum6"));
                        buttonMappings.buttonNum7 = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonNum7"));
                        buttonMappings.buttonNum8 = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonNum8"));
                        buttonMappings.buttonNum9 = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonNum9"));
                        buttonMappings.buttonDirection = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonDirection"));
                        buttonMappings.buttonCenter = parsePointCoord(jSONObjectOptJSONObject.optJSONObject("buttonCenter"));
                        arrayList.add(buttonMappings);
                    }
                }
                buttonMapContent.buttonMappingsList = arrayList;
            } catch (JSONException e11) {
                e10 = e11;
                e10.printStackTrace();
            }
        } catch (JSONException e12) {
            e10 = e12;
            buttonMapContent = null;
        }
        LogUtils.d("Json2BeanUtil", "result: " + String.valueOf(buttonMapContent));
        return buttonMapContent;
    }

    public static MessagePayload parseMessagePayload(String str) {
        MessagePayload messagePayload = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            MessagePayload messagePayload2 = new MessagePayload();
            try {
                messagePayload2.code = jSONObject.optInt("code");
                messagePayload2.uid = jSONObject.optString("uid");
                messagePayload2.description = jSONObject.optString(com.xinzhu.overmind.client.hook.proxies.context.providers.b.f89370k);
                return messagePayload2;
            } catch (JSONException e10) {
                e = e10;
                messagePayload = messagePayload2;
                e.printStackTrace();
                return messagePayload;
            }
        } catch (JSONException e11) {
            e = e11;
        }
    }

    public static PointCoord parsePointCoord(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        PointCoord pointCoord = new PointCoord();
        pointCoord.f33824x = (float) jSONObject.optDouble("x");
        pointCoord.f33825y = (float) jSONObject.optDouble("y");
        pointCoord.rx = (float) jSONObject.optDouble("rx");
        pointCoord.ry = (float) jSONObject.optDouble("ry");
        pointCoord.sp = (float) jSONObject.optDouble("sp");
        pointCoord.oX = (float) jSONObject.optDouble("oX");
        pointCoord.oY = (float) jSONObject.optDouble("oY");
        pointCoord.keyCode = jSONObject.optInt("keyCode");
        pointCoord.fnKeyCode = jSONObject.optInt("fnKeyCode");
        pointCoord.toKeyCode = jSONObject.optInt("toKeyCode");
        pointCoord.isFn = jSONObject.optBoolean("isFn");
        pointCoord.buttonName = jSONObject.optString(HmInputMappingContent.FIELD_BUTTON_NAME);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("pointList");
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
                PointCoord2 pointCoord2 = new PointCoord2();
                pointCoord2.runTime = jSONObjectOptJSONObject.optInt("runTime");
                pointCoord2.keyType = jSONObjectOptJSONObject.optInt("keyType");
                pointCoord2.repeatCount = jSONObjectOptJSONObject.optInt("repeatCount");
                pointCoord2.f33826x = (float) jSONObjectOptJSONObject.optDouble("x");
                pointCoord2.f33827y = (float) jSONObjectOptJSONObject.optDouble("y");
                arrayList.add(pointCoord2);
            }
            pointCoord.pointList = arrayList;
        }
        return pointCoord;
    }
}
