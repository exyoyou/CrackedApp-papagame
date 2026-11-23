package com.haima.hmcp.utils;

import android.text.TextUtils;
import android.util.Log;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.haima.hmcp.beans.BattleMode;
import com.haima.hmcp.beans.ButtonMapContent;
import com.haima.hmcp.beans.ButtonMappings;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.haima.hmcp.beans.HmInputMappings;
import com.haima.hmcp.beans.Joypad;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.beans.PointCoord2;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.device.input.parse.DeviceMappingParse;
import com.tencent.cos.common.COSHttpResponseKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class ButtonMappingUtil {
    public static final int ACTION_DOWN_TYPE = 1;
    public static final int ACTION_UP_TYPE = 2;
    public static final int BUTTON_DIRECTION = 993;
    public static final int BUTTON_DOWN = 996;
    public static final int BUTTON_LEFT = 995;
    public static final int BUTTON_MOUSE_PRIMARY = 990;
    public static final int BUTTON_MOUSE_RIGHT = 991;
    public static final int BUTTON_RIGHT = 994;
    public static final int BUTTON_UP = 997;
    public static final int DPAD_KEYMAPPING = 1;
    public static final int JOY_KEYMAPPING = 0;
    public static final int KEYBOARD_DIRECTION = 888;
    public static final String KEYBOARD_DOWN_FLAG = "1";
    public static final int KEYBOARD_KEYMAPPING = 2;
    public static final String KEYBOARD_UP_FLAG = "0";
    private static String TAG = "ButtonMappingUtil";
    public static final int TRACK_BALL_L = 999;
    public static final int TRACK_BALL_R = 998;
    private ArrayList<Integer> fnCodeList;
    private ArrayList<Integer> keyboardFnCodeList;
    private List<ButtonMappings> mButtonMappingsList;
    private ButtonMappings mCurrentButtonMappings;
    public PointCoord mFireCoord;
    public PointCoord mSightbBeadCoord;
    private String version;
    private static final String[] JoyKeymappingList = {"buttonX", "buttonY", "buttonB", "buttonA", "buttonUp", "buttonDown", "buttonLeft", "buttonRight", "buttonL1", "buttonL2", "buttonR2", "buttonR1", "trackBallL", "trackBallR"};
    private static final String[] DpadKeymappingList = {"buttonNum0", "buttonNum1", "buttonNum2", "buttonNum3", "buttonNum4", "buttonNum5", "buttonNum6", "buttonNum7", "buttonNum8", "buttonNum9", "buttonCenter", "buttonDirection"};
    private boolean isJoypad2Dpad = false;
    private boolean isKeyoard2Dpad = false;
    private boolean isDpad2JoypadInBattle = false;
    private ConcurrentHashMap<Integer, PointCoord> mappingEventMap = new ConcurrentHashMap<>();
    private ConcurrentHashMap<Integer, PointCoord> keyboardEventMap = new ConcurrentHashMap<>();
    private int mCurrentInputMode = 1;

    public static PointCoord getHmInputOpDirection(HmInputMappings hmInputMappings) {
        HashMap<Integer, HmInputMappingContent> map;
        HmInputMappingContent hmInputMappingContent;
        if (hmInputMappings == null || (map = hmInputMappings.mapping) == null || (hmInputMappingContent = map.get(Integer.valueOf(KEYBOARD_DIRECTION))) == null) {
            return null;
        }
        PointCoord pointCoord = new PointCoord();
        pointCoord.keyCode = KEYBOARD_DIRECTION;
        pointCoord.f33824x = (float) hmInputMappingContent.posX;
        pointCoord.f33825y = (float) hmInputMappingContent.posY;
        return pointCoord;
    }

    public static HmInputMappings getHmInputOpMappings(String str) {
        JSONException e10;
        HmInputMappings hmInputMappings;
        try {
            JSONObject jSONObject = new JSONObject(str);
            hmInputMappings = new HmInputMappings();
            try {
                hmInputMappings.version = jSONObject.optString("version", null);
                hmInputMappings.mappingName = jSONObject.optString(HmInputMappings.FIELD_MAPPING_NAME, null);
                hmInputMappings.viewMoveOffset = jSONObject.optDouble(HmInputMappings.FIELD_VIEW_MOVE_OFFSET, 0.0d);
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(HmInputMappings.FIELD_MAPPING);
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                    hmInputMappings.mapping = new HashMap<>();
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
                        if (jSONObjectOptJSONObject != null) {
                            HmInputMappingContent hmInputMappingContent = new HmInputMappingContent();
                            hmInputMappingContent.buttonName = jSONObjectOptJSONObject.optString(HmInputMappingContent.FIELD_BUTTON_NAME);
                            hmInputMappingContent.value = jSONObjectOptJSONObject.optInt(HmInputMappingContent.FIELD_VALUE, -1);
                            hmInputMappingContent.posX = jSONObjectOptJSONObject.optDouble(HmInputMappingContent.FIELD_POS_X, -1.0d);
                            hmInputMappingContent.posY = jSONObjectOptJSONObject.optDouble(HmInputMappingContent.FIELD_POX_Y, -1.0d);
                            hmInputMappingContent.type = jSONObjectOptJSONObject.optInt("type");
                            hmInputMappingContent.direction = jSONObjectOptJSONObject.optInt(HmInputMappingContent.FIELD_DIRECTION);
                            hmInputMappingContent.viewState = jSONObjectOptJSONObject.optInt(HmInputMappingContent.FIELD_VIEW_STATE);
                            hmInputMappings.mapping.put(Integer.valueOf(hmInputMappingContent.value), hmInputMappingContent);
                        }
                    }
                }
            } catch (JSONException e11) {
                e10 = e11;
                LogUtils.d(TAG, "HmInputOp-->getHmInputMappings: parse error = " + Log.getStackTraceString(e10));
                e10.printStackTrace();
            }
        } catch (JSONException e12) {
            e10 = e12;
            hmInputMappings = null;
        }
        return hmInputMappings;
    }

    public static boolean isCrossKey(int i10) {
        return i10 == 997 || i10 == 996 || i10 == 995 || i10 == 994;
    }

    private Joypad parseJoypadJson(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            Joypad joypad = new Joypad();
            int i10 = Integer.parseInt(jSONObject.optString("battlePlayer", String.valueOf(3)));
            joypad.battlePlayer = i10;
            if (i10 < 1 || i10 > 3) {
                joypad.battlePlayer = 3;
            }
            boolean z10 = Boolean.parseBoolean(jSONObject.optString("isCrossDirection", "false"));
            joypad.isCrossDirection = z10;
            if (z10) {
                joypad.hatXDown = Float.parseFloat(jSONObject.optString("hatXDown", String.valueOf(-999)));
                joypad.hatYDown = Float.parseFloat(jSONObject.optString("hatYDown", String.valueOf(-999)));
                joypad.hatXUp = Float.parseFloat(jSONObject.optString("hatXUp", String.valueOf(-999)));
                joypad.hatYUp = Float.parseFloat(jSONObject.optString("hatYUp", String.valueOf(-999)));
            } else {
                joypad.keyCodeEvent = jSONObject.optString("keyEvent", "");
            }
            return joypad;
        } catch (NumberFormatException | JSONException unused) {
            return null;
        }
    }

    private void putButtonMapping(PointCoord pointCoord) {
        this.mappingEventMap.put(Integer.valueOf((pointCoord.fnKeyCode * 1000) + pointCoord.keyCode), pointCoord);
    }

    public ButtonMappings getButtonMapping() {
        return this.mCurrentButtonMappings;
    }

    public String[] getDpad2JoypadMappingData(int i10, PointCoord pointCoord, int i11) {
        Joypad joypad;
        if (i10 != 1 && i10 != 2) {
            String str = TAG;
            LogUtils.d(str, BattleMode.LOG_KEY + ("get dpad mapping joypad fail, cause actionType not access: " + i10));
            return null;
        }
        if (pointCoord == null || (joypad = pointCoord.joypad) == null) {
            LogUtils.d(TAG, BattleMode.LOG_KEY + "get dpad mapping joypad fail, PointCoord or PointCoord.Joypad is null");
            return null;
        }
        if (!(i11 == 1 || i11 == 2)) {
            String str2 = TAG;
            LogUtils.d(str2, BattleMode.LOG_KEY + ("get dpad mapping joypad fail, cause is not battle player: " + i11));
            return null;
        }
        int i12 = joypad.battlePlayer;
        if (!(i12 == 3) && i12 != i11) {
            String str3 = "get dpad mapping joypad fail, cause the battle player is not mapping: " + pointCoord;
            LogUtils.d(TAG, BattleMode.LOG_KEY + str3);
            return null;
        }
        if (!joypad.isCrossDirection) {
            if (!TextUtils.isEmpty(joypad.keyCodeEvent)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(pointCoord.joypad.keyCodeEvent);
                sb2.append(":");
                sb2.append(i10 == 1 ? "1" : "0");
                return new String[]{sb2.toString()};
            }
            LogUtils.d(TAG, BattleMode.LOG_KEY + "get dpad mapping joypad fail, keyCodeEvent is empty");
            return null;
        }
        float f10 = i10 == 1 ? joypad.hatXDown : joypad.hatXUp;
        float f11 = i10 == 1 ? joypad.hatYDown : joypad.hatYUp;
        if (f10 == -999.0f || f11 == -999.0f) {
            String str4 = "get dpad mapping joypad fail, hatX or hatY is default value, hatX = " + f10 + ", hatY = " + f11;
            LogUtils.d(TAG, BattleMode.LOG_KEY + str4);
            return null;
        }
        if (f10 < -1.0f || f10 > 1.0f) {
            String str5 = "get dpad mapping joypad fail, hatX is out of range: " + f10;
            LogUtils.d(TAG, BattleMode.LOG_KEY + str5);
            return null;
        }
        if (f11 >= -1.0f && f11 <= 1.0f) {
            Locale locale = Locale.ENGLISH;
            return new String[]{String.format(locale, Joypad.HAT_X, Float.valueOf(f10)), String.format(locale, Joypad.HAT_Y, Float.valueOf(f11))};
        }
        String str6 = TAG;
        LogUtils.d(str6, BattleMode.LOG_KEY + ("get dpad mapping joypad fail, hatY is out of range: " + f11));
        return null;
    }

    public int getInputMode(String str, String str2) {
        if (!TextUtils.isEmpty(str) || !TextUtils.isEmpty(str2)) {
            this.mCurrentInputMode = 4;
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                ButtonMapContent buttonMapContent = com.haima.hmcp.device.input.utils.Json2BeanUtil.parseButtonMapContent(str);
                this.mButtonMappingsList = buttonMapContent.buttonMappingsList;
                if (TextUtils.isEmpty(buttonMapContent.version)) {
                    List<ButtonMappings> list = this.mButtonMappingsList;
                    if (list != null && list.size() > 0) {
                        ButtonMappings buttonMappings = this.mButtonMappingsList.get(0);
                        this.mCurrentButtonMappings = buttonMappings;
                        if (buttonMappings != null) {
                            if (buttonMapContent.isJoypad2Dpad || buttonMapContent.isKeyoard2Dpad || DeviceMappingParse.getInstance().isNativeDpadGame()) {
                                this.mCurrentInputMode = 5;
                            } else {
                                this.mCurrentInputMode = 4;
                            }
                        }
                    }
                    if (buttonMapContent.defaultMouseMode) {
                        this.mCurrentInputMode = 2;
                    }
                } else {
                    if (buttonMapContent.isJoypad2Dpad || buttonMapContent.isKeyoard2Dpad || DeviceMappingParse.getInstance().isNativeDpadGame()) {
                        this.mCurrentInputMode = 5;
                    } else {
                        this.mCurrentInputMode = 4;
                    }
                    if (buttonMapContent.defaultMouseMode) {
                        this.mCurrentInputMode = 2;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                CountlyUtil.recordErrorEvent("VolleyManager::parseResponse::" + e10.toString());
            }
        }
        return this.mCurrentInputMode;
    }

    public ConcurrentHashMap<Integer, PointCoord> getKeyboardEventMap() {
        return this.keyboardEventMap;
    }

    public JSONArray getKeymappingList(JSONObject jSONObject, int i10) {
        String[] strArr;
        JSONArray jSONArray = new JSONArray();
        if (i10 == 0) {
            strArr = JoyKeymappingList;
        } else {
            if (i10 != 1) {
                if (i10 != 2) {
                    return null;
                }
                try {
                    Iterator<Integer> it2 = this.keyboardEventMap.keySet().iterator();
                    while (it2.hasNext()) {
                        jSONArray.put(new JSONObject(com.alibaba.fastjson.a.toJSONString(this.keyboardEventMap.get(it2.next()))));
                    }
                    return jSONArray;
                } catch (JSONException e10) {
                    LogUtils.e(TAG, e10.toString());
                    return null;
                }
            }
            strArr = DpadKeymappingList;
        }
        try {
            int i11 = 0;
            for (int length = strArr.length; i11 < length; length = length) {
                String str = strArr[i11];
                if (jSONObject.has(str)) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject(str);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("name", str);
                    jSONObject3.put("x", jSONObject2.optDouble("x", 0.0d));
                    jSONObject3.put("y", jSONObject2.optDouble("y", 0.0d));
                    if (jSONObject2.has("rx")) {
                        jSONObject3.put("rx", jSONObject2.optDouble("rx", 0.0d));
                        jSONObject3.put("ry", jSONObject2.optDouble("ry", 0.0d));
                    }
                    jSONArray.put(jSONObject3);
                }
                i11++;
            }
            return jSONArray;
        } catch (JSONException e11) {
            LogUtils.e(TAG, e11.toString());
            return null;
        }
    }

    public ConcurrentHashMap<Integer, PointCoord> getMappingEventMap() {
        return this.mappingEventMap;
    }

    public String getVersion() {
        return this.version;
    }

    public ButtonMappingUtil initButtonMappings(String str) {
        JSONObject jSONObject;
        if (TextUtils.isEmpty(str)) {
            return this;
        }
        try {
            String strReplaceSpecialStr = StringUtils.replaceSpecialStr(str);
            JSONObject jSONObject2 = new JSONObject(strReplaceSpecialStr);
            this.version = jSONObject2.optString("version", null);
            this.isJoypad2Dpad = jSONObject2.optBoolean("isJoypad2Dpad", false);
            this.isKeyoard2Dpad = jSONObject2.optBoolean("isKeyboard2Dpad", false);
            this.isDpad2JoypadInBattle = jSONObject2.optBoolean("isDpad2JoypadInBattle", false);
            this.fnCodeList = new ArrayList<>();
            if (TextUtils.isEmpty(this.version)) {
                List<ButtonMappings> list = Json2BeanUtil.parseButtonMapContent(strReplaceSpecialStr).buttonMappingsList;
                this.mButtonMappingsList = list;
                if (list != null && list.size() > 0) {
                    this.mCurrentButtonMappings = this.mButtonMappingsList.get(0);
                    LogUtils.d(TAG, "current button mappings: " + this.mCurrentButtonMappings.toString());
                }
            } else {
                this.mappingEventMap.clear();
                JSONArray jSONArray = jSONObject2.getJSONArray("buttonMappingsList");
                if (jSONArray != null && jSONArray.length() > 0 && (jSONObject = jSONArray.getJSONObject(0)) != null) {
                    JSONArray jSONArray2 = jSONObject.getJSONArray(HmInputMappings.FIELD_MAPPING);
                    for (int i10 = 0; i10 < jSONArray2.length(); i10++) {
                        JSONObject jSONObject3 = jSONArray2.getJSONObject(i10);
                        PointCoord pointCoord = new PointCoord();
                        pointCoord.f33824x = (float) jSONObject3.optDouble("x", 0.0d);
                        pointCoord.f33825y = (float) jSONObject3.optDouble("y", 0.0d);
                        pointCoord.keyCode = jSONObject3.optInt("keyCode", 0);
                        pointCoord.toKeyCode = jSONObject3.optInt("toKeyCode", 0);
                        pointCoord.joypad = parseJoypadJson(jSONObject3.optString("toKeyEvent", null));
                        pointCoord.buttonName = jSONObject3.optString(HmInputMappingContent.FIELD_BUTTON_NAME);
                        pointCoord.rx = (float) jSONObject3.optDouble("rx", 0.0d);
                        pointCoord.ry = (float) jSONObject3.optDouble("ry", 0.0d);
                        pointCoord.sp = (float) jSONObject3.optDouble("sp", 0.0d);
                        int iOptInt = jSONObject3.optInt("fnKeyCode", 0);
                        pointCoord.fnKeyCode = iOptInt;
                        if (iOptInt != 0 && !this.fnCodeList.contains(Integer.valueOf(iOptInt))) {
                            this.fnCodeList.add(Integer.valueOf(pointCoord.fnKeyCode));
                        }
                        pointCoord.pointList = new ArrayList();
                        JSONArray jSONArrayOptJSONArray = jSONObject3.optJSONArray("pointList");
                        if (jSONArrayOptJSONArray != null) {
                            for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                                JSONObject jSONObject4 = jSONArrayOptJSONArray.getJSONObject(i11);
                                PointCoord2 pointCoord2 = new PointCoord2();
                                pointCoord2.f33826x = (float) jSONObject4.optDouble("x", 0.0d);
                                pointCoord2.f33827y = (float) jSONObject4.optDouble("y", 0.0d);
                                pointCoord2.keyType = jSONObject4.optInt("keyType", 0);
                                pointCoord2.runTime = jSONObject4.optInt("runTime", 0);
                                pointCoord2.repeatCount = jSONObject4.optInt("repeatCount", 0);
                                pointCoord.pointList.add(pointCoord2);
                            }
                        }
                        putButtonMapping(pointCoord);
                    }
                    for (int i12 = 0; i12 < this.fnCodeList.size(); i12++) {
                        PointCoord pointCoord3 = new PointCoord();
                        pointCoord3.keyCode = this.fnCodeList.get(i12).intValue();
                        pointCoord3.isFn = true;
                        putButtonMapping(pointCoord3);
                    }
                }
            }
        } catch (JSONException e10) {
            this.mappingEventMap.clear();
            e10.printStackTrace();
        }
        return this;
    }

    public void initKeyboardMappings(String str) {
        try {
            this.keyboardEventMap.clear();
            this.keyboardFnCodeList = new ArrayList<>();
            JSONObject jSONObject = new JSONObject(StringUtils.replaceSpecialStr(str));
            JSONArray jSONArray = jSONObject.has(COSHttpResponseKey.Data.KEYS) ? jSONObject.getJSONArray(COSHttpResponseKey.Data.KEYS) : null;
            JSONArray jSONArray2 = jSONObject.has("extKeys") ? jSONObject.getJSONArray("extKeys") : null;
            if (jSONArray != null && jSONArray.length() > 0) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                    PointCoord pointCoord = new PointCoord();
                    pointCoord.f33824x = (float) jSONObject2.optDouble(HmInputMappingContent.FIELD_POS_X, 0.0d);
                    pointCoord.f33825y = (float) jSONObject2.optDouble(HmInputMappingContent.FIELD_POX_Y, 0.0d);
                    pointCoord.f33823w = jSONObject2.optInt(IAdInterListener.AdReqParam.WIDTH, 0);
                    pointCoord.f33822h = jSONObject2.optInt("h", 0);
                    pointCoord.keyCode = KeyMapUtil.passKey2AndroidKeyCode(jSONObject2.optInt(HmInputMappingContent.FIELD_VALUE, 0));
                    pointCoord.buttonName = jSONObject2.optString("name");
                    pointCoord.type = jSONObject2.optInt("type", 0);
                    int iOptInt = jSONObject2.optInt("fnCode", 0);
                    pointCoord.fnKeyCode = iOptInt;
                    int i11 = pointCoord.type;
                    if (i11 == 3) {
                        this.mFireCoord = pointCoord;
                    } else if (i11 == 4) {
                        this.mSightbBeadCoord = pointCoord;
                    } else {
                        if (iOptInt != 0 && !this.keyboardFnCodeList.contains(Integer.valueOf(iOptInt))) {
                            this.keyboardFnCodeList.add(Integer.valueOf(pointCoord.fnKeyCode));
                        }
                        int i12 = pointCoord.keyCode;
                        if (i12 > 0) {
                            this.keyboardEventMap.put(Integer.valueOf(i12), pointCoord);
                        }
                    }
                }
            }
            if (jSONArray2 != null && jSONArray2.length() > 0) {
                for (int i13 = 0; i13 < jSONArray2.length(); i13++) {
                    JSONObject jSONObject3 = jSONArray2.getJSONObject(i13);
                    PointCoord pointCoord2 = new PointCoord();
                    pointCoord2.f33824x = (float) jSONObject3.optDouble(HmInputMappingContent.FIELD_POS_X, 0.0d);
                    pointCoord2.f33825y = (float) jSONObject3.optDouble(HmInputMappingContent.FIELD_POX_Y, 0.0d);
                    pointCoord2.keyCode = KeyMapUtil.passKey2AndroidKeyCode(jSONObject3.optInt(HmInputMappingContent.FIELD_VALUE, 0));
                    pointCoord2.buttonName = jSONObject3.optString("name");
                    int iOptInt2 = jSONObject3.optInt("fnCode", 0);
                    pointCoord2.fnKeyCode = iOptInt2;
                    if (iOptInt2 != 0) {
                        this.keyboardEventMap.put(Integer.valueOf((KeyMapUtil.passKey2AndroidKeyCode(iOptInt2) * 1000) + pointCoord2.keyCode), pointCoord2);
                        this.mappingEventMap.put(Integer.valueOf((KeyMapUtil.passKey2AndroidKeyCode(pointCoord2.fnKeyCode) * 1000) + pointCoord2.keyCode), pointCoord2);
                        PointCoord pointCoord3 = new PointCoord();
                        int i14 = pointCoord2.fnKeyCode;
                        pointCoord3.keyCode = i14;
                        pointCoord3.isFn = true;
                        this.keyboardEventMap.put(Integer.valueOf(KeyMapUtil.passKey2AndroidKeyCode(i14)), pointCoord3);
                    } else {
                        int i15 = pointCoord2.keyCode;
                        if (i15 > 0) {
                            this.keyboardEventMap.put(Integer.valueOf(i15), pointCoord2);
                        }
                    }
                }
            }
            LogUtils.d(TAG, "keyboardEventMap size:" + this.keyboardEventMap.size() + " data:" + this.keyboardEventMap.toString());
        } catch (JSONException e10) {
            LogUtils.d(TAG, "initKeyboardMappings JSONException:" + e10.toString());
            this.keyboardEventMap.clear();
            e10.printStackTrace();
        }
    }

    public boolean isDpad2JoypadInBattle() {
        return this.isDpad2JoypadInBattle;
    }

    public boolean isJoypad2Dpad() {
        return this.isJoypad2Dpad;
    }

    public boolean isKeyoard2Dpad() {
        return this.isKeyoard2Dpad;
    }
}
