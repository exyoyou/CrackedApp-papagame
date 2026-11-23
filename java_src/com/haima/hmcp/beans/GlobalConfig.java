package com.haima.hmcp.beans;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.a;
import com.alibaba.fastjson.h;
import com.alibaba.fastjson.parser.Feature;
import com.haima.hmcp.Constants;
import com.haima.hmcp.business.display.HmScreenMonitor;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.virtual.HmVirtualDeviceManager;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;
import com.haima.hmcp.virtual.bean.HmVirtualLayoutBean;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class GlobalConfig {
    private static final String TAG = "GlobalConfig";
    public HashMap<String, String> configs;
    public JoyStickMappingConfig mJoyStickMappingConfig;
    public X86KeyMapContentConfig mKeyMapConfig;
    public TouchesMappingConfig mTouchesMappingConfig;
    public boolean rtcSurfaceRendererScreenShotEnable = false;
    public JSONObject x86KeyboardMapConfigs;

    private boolean parseEnable(String str, boolean z10) {
        HashMap<String, String> map = this.configs;
        if (map != null && !map.isEmpty() && str != null && !str.isEmpty()) {
            String str2 = this.configs.get(str);
            if (TextUtils.isEmpty(str2)) {
                return z10;
            }
            try {
                return Integer.parseInt(str2) > 0;
            } catch (Throwable unused) {
            }
        }
        return z10;
    }

    private int parseIntValue(String str, int i10) {
        if (!TextUtils.isEmpty(str) && !"null".equals(str)) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                LogUtils.w(TAG, "Failed to parse integer value from: " + str);
            }
        }
        return i10;
    }

    private void processConfig(JSONObject jSONObject) {
        X86KeyMapContentConfig x86KeyMapContentConfig = this.mKeyMapConfig;
        if (x86KeyMapContentConfig.isContainsRatioConfig && !TextUtils.isEmpty(x86KeyMapContentConfig.getConfig())) {
            try {
                jSONObject.put("config", (Object) a.parseObject(this.mKeyMapConfig.getConfig()));
                return;
            } catch (Exception e10) {
                LogUtils.e(TAG, "parse config error: " + e10.getMessage());
                return;
            }
        }
        X86KeyMapContentConfig x86KeyMapContentConfig2 = this.mKeyMapConfig;
        if (x86KeyMapContentConfig2.isContainsRatioConfig || TextUtils.isEmpty(x86KeyMapContentConfig2.x86KeyMapContentConfig)) {
            return;
        }
        try {
            jSONObject.put("config", (Object) a.parseObject(this.mKeyMapConfig.x86KeyMapContentConfig));
        } catch (Exception e11) {
            LogUtils.e(TAG, "parse config error: " + e11.getMessage());
        }
    }

    private void processFnBtns(JSONObject jSONObject) {
        X86KeyMapContentConfig x86KeyMapContentConfig = this.mKeyMapConfig;
        if (x86KeyMapContentConfig.isContainsRatioConfig && !TextUtils.isEmpty(x86KeyMapContentConfig.getKeyboardConfig())) {
            try {
                jSONObject.put(Constants.KEYBOARD_MAP_CONTENT_X86_FN_BTNS_TAG, a.parse(this.mKeyMapConfig.getFnBtnsConfig()));
                return;
            } catch (Exception e10) {
                LogUtils.e(TAG, "parse fnBtns config error: " + e10.getMessage());
                return;
            }
        }
        X86KeyMapContentConfig x86KeyMapContentConfig2 = this.mKeyMapConfig;
        if (x86KeyMapContentConfig2.isContainsRatioConfig || TextUtils.isEmpty(x86KeyMapContentConfig2.x86KeyMapContentFnBtns)) {
            return;
        }
        try {
            jSONObject.put(Constants.KEYBOARD_MAP_CONTENT_X86_FN_BTNS_TAG, a.parse(this.mKeyMapConfig.x86KeyMapContentFnBtns));
        } catch (Exception e11) {
            LogUtils.e(TAG, "parse fnBtns config error: " + e11.getMessage());
        }
    }

    private void processKeyboard(JSONObject jSONObject) {
        X86KeyMapContentConfig x86KeyMapContentConfig = this.mKeyMapConfig;
        if (x86KeyMapContentConfig.isContainsRatioConfig && !TextUtils.isEmpty(x86KeyMapContentConfig.getKeyboardConfig())) {
            try {
                jSONObject.put("keyboard", a.parse(this.mKeyMapConfig.getKeyboardConfig()));
                return;
            } catch (Exception e10) {
                LogUtils.e(TAG, "parse keyboard config error: " + e10.getMessage());
                return;
            }
        }
        X86KeyMapContentConfig x86KeyMapContentConfig2 = this.mKeyMapConfig;
        if (x86KeyMapContentConfig2.isContainsRatioConfig || TextUtils.isEmpty(x86KeyMapContentConfig2.x86KeyMapContentKeyboard)) {
            return;
        }
        try {
            jSONObject.put("keyboard", a.parse(this.mKeyMapConfig.x86KeyMapContentKeyboard));
        } catch (Exception e11) {
            LogUtils.e(TAG, "parse keyboard config error: " + e11.getMessage());
        }
    }

    private void processMouse(JSONObject jSONObject) {
        X86KeyMapContentConfig x86KeyMapContentConfig = this.mKeyMapConfig;
        if (x86KeyMapContentConfig.isContainsRatioConfig && !TextUtils.isEmpty(x86KeyMapContentConfig.getMouseConfig())) {
            try {
                jSONObject.put(Constants.KEYBOARD_MAP_CONTENT_X86_MOUSE_TAG, (Object) a.parseObject(this.mKeyMapConfig.getMouseConfig()));
                return;
            } catch (Exception e10) {
                LogUtils.e(TAG, "parse mouse config error: " + e10.getMessage());
                return;
            }
        }
        X86KeyMapContentConfig x86KeyMapContentConfig2 = this.mKeyMapConfig;
        if (x86KeyMapContentConfig2.isContainsRatioConfig || TextUtils.isEmpty(x86KeyMapContentConfig2.x86KeyMapContentMouse)) {
            return;
        }
        try {
            jSONObject.put(Constants.KEYBOARD_MAP_CONTENT_X86_MOUSE_TAG, (Object) a.parseObject(this.mKeyMapConfig.x86KeyMapContentMouse));
        } catch (Exception e11) {
            LogUtils.e(TAG, "parse mouse config error: " + e11.getMessage());
        }
    }

    private void processXbox(JSONObject jSONObject) {
        X86KeyMapContentConfig x86KeyMapContentConfig = this.mKeyMapConfig;
        if (x86KeyMapContentConfig.isContainsRatioConfig && !TextUtils.isEmpty(x86KeyMapContentConfig.getXboxConfig())) {
            try {
                jSONObject.put("xbox", a.parse(this.mKeyMapConfig.getXboxConfig()));
                return;
            } catch (Exception e10) {
                LogUtils.e(TAG, "parse xbox config error: " + e10.getMessage());
                return;
            }
        }
        X86KeyMapContentConfig x86KeyMapContentConfig2 = this.mKeyMapConfig;
        if (x86KeyMapContentConfig2.isContainsRatioConfig || TextUtils.isEmpty(x86KeyMapContentConfig2.x86KeyMapContentXbox)) {
            return;
        }
        try {
            jSONObject.put("xbox", a.parse(this.mKeyMapConfig.x86KeyMapContentXbox));
        } catch (Exception e11) {
            LogUtils.e(TAG, "parse xbox config error: " + e11.getMessage());
        }
    }

    private void test() {
        X86KeyMapContentConfig x86KeyMapContentConfig = this.mKeyMapConfig;
        x86KeyMapContentConfig.x86KeyMapContentKeyboard = "[{\"kT\":6,\"ks\":[{\"c\":7,\"k\":\"WASD\"}],\"n\":\"\",\"p\":{\"h\":320,\"w\":320,\"x\":0.094,\"y\":0.559},\"s\":1.07,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":27,\"k\":\"ESC\"}],\"n\":\"\",\"p\":{\"h\":108,\"w\":108,\"x\":0.032,\"y\":0.065},\"s\":0.8,\"sT\":0},{\"kT\":9,\"ks\":[{\"c\":514,\"k\":\"MR\"}],\"n\":\"\",\"p\":{\"h\":108,\"w\":108,\"x\":0.91,\"y\":0.704},\"s\":0.98,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":32,\"k\":\"Space\"}],\"n\":\"跳跃\",\"p\":{\"h\":108,\"w\":108,\"x\":0.793,\"y\":0.855},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":70,\"k\":\"F\"}],\"n\":\"伙伴技能\",\"p\":{\"h\":108,\"w\":108,\"x\":0.712,\"y\":0.425},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":160,\"k\":\"Shift\"}],\"n\":\"奔跑\",\"p\":{\"h\":108,\"w\":108,\"x\":0.917,\"y\":0.553},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":17,\"k\":\"Ctrl\"}],\"n\":\"翻滚\",\"p\":{\"h\":108,\"w\":108,\"x\":0.845,\"y\":0.553},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":81,\"k\":\"Q\"}],\"n\":\"丢球\",\"p\":{\"h\":108,\"w\":108,\"x\":0.679,\"y\":0.554},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":69,\"k\":\"E\"}],\"n\":\"丢帕鲁\",\"p\":{\"h\":108,\"w\":108,\"x\":0.746,\"y\":0.553},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":50,\"k\":\"2\"}],\"n\":\"换帕鲁球\",\"p\":{\"h\":108,\"w\":108,\"x\":0.916,\"y\":0.219},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":82,\"k\":\"R\"}],\"n\":\"重新装填\",\"p\":{\"h\":108,\"w\":108,\"x\":0.845,\"y\":0.219},\"s\":0.81,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":86,\"k\":\"V\"}],\"n\":\"升级\",\"p\":{\"h\":108,\"w\":108,\"x\":0.917,\"y\":0.423},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":52,\"k\":\"4\"}],\"n\":\"帕鲁指示\",\"p\":{\"h\":108,\"w\":108,\"x\":0.916,\"y\":0.319},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":67,\"k\":\"C\"}],\"n\":\"下蹲\",\"p\":{\"h\":108,\"w\":108,\"x\":0.716,\"y\":0.854},\"s\":0.8,\"sT\":0},{\"kT\":11,\"ks\":[{\"c\":515,\"k\":\"WU\"}],\"n\":\"\",\"p\":{\"h\":108,\"w\":108,\"x\":0.675,\"y\":0.709},\"s\":0.9,\"sT\":0},{\"kT\":12,\"ks\":[{\"c\":515,\"k\":\"WD\"}],\"n\":\"\",\"p\":{\"h\":108,\"w\":108,\"x\":0.743,\"y\":0.709},\"s\":0.9,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":77,\"k\":\"M\"}],\"n\":\"地图\",\"p\":{\"h\":108,\"w\":108,\"x\":0.032,\"y\":0.319},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":66,\"k\":\"B\"}],\"n\":\"建造\",\"p\":{\"h\":108,\"w\":108,\"x\":0.102,\"y\":0.318},\"s\":0.8,\"sT\":0},{\"kT\":8,\"ks\":[{\"c\":512,\"k\":\"ML\"}],\"n\":\"\",\"p\":{\"h\":108,\"w\":108,\"x\":0.838,\"y\":0.703},\"s\":1,\"sT\":0},{\"kT\":2,\"ks\":[{\"c\":66,\"k\":\"B\"},{\"c\":67,\"k\":\"C\"}],\"n\":\"拆除\",\"p\":{\"h\":108,\"w\":108,\"x\":0.032,\"y\":0.425},\"s\":0.8,\"sT\":0},{\"kT\":1,\"ks\":[{\"c\":9,\"k\":\"Tab\"}],\"n\":\"背包11\",\"p\":{\"h\":108,\"w\":108,\"x\":0.032,\"y\":0.218},\"s\":0.8,\"sT\":0}]";
        x86KeyMapContentConfig.x86KeyMapContentXbox = "[{\"kT\":1,\"ks\":[{\"c\":0,\"k\":\"LT\"}],\"n\":\"LT\",\"p\":{\"h\":144,\"w\":144,\"x\":0.062,\"y\":0.222},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":256,\"k\":\"LB\"}],\"n\":\"LB1\",\"p\":{\"h\":144,\"w\":144,\"x\":0.062,\"y\":0.378},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":0,\"k\":\"RT\"}],\"n\":\"RT\",\"p\":{\"h\":144,\"w\":144,\"x\":0.863,\"y\":0.222},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":512,\"k\":\"RB\"}],\"n\":\"RB\",\"p\":{\"h\":144,\"w\":144,\"x\":0.863,\"y\":0.378},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":16,\"k\":\"START\"}],\"n\":\"START\",\"p\":{\"h\":96,\"w\":96,\"x\":0.509,\"y\":0.033},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":32,\"k\":\"SELECT\"}],\"n\":\"SELECT\",\"p\":{\"h\":96,\"w\":96,\"x\":0.441,\"y\":0.033},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":64,\"k\":\"LS\"}],\"n\":\"LS\",\"p\":{\"h\":120,\"w\":120,\"x\":0.01,\"y\":0.519},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":128,\"k\":\"RS\"}],\"n\":\"RS\",\"p\":{\"h\":120,\"w\":120,\"x\":0.927,\"y\":0.519},\"s\":1,\"sT\":2},{\"kT\":4,\"ks\":[{\"c\":0,\"k\":\"LR\"}],\"n\":\"LR\",\"p\":{\"h\":320,\"w\":320,\"x\":0.083,\"y\":0.611},\"s\":1,\"sT\":2},{\"kT\":3,\"ks\":[{\"c\":1,\"k\":\"UP\"},{\"c\":2,\"k\":\"DOWN\"},{\"c\":4,\"k\":\"LEFT\"},{\"c\":8,\"k\":\"RIGHT\"}],\"n\":\"DIRECTION\",\"p\":{\"h\":240,\"w\":240,\"x\":0.312,\"y\":0.722},\"s\":1,\"sT\":2},{\"kT\":5,\"ks\":[{\"c\":0,\"k\":\"RR\"}],\"n\":\"RR\",\"p\":{\"h\":240,\"w\":240,\"x\":0.562,\"y\":0.722},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":4096,\"k\":\"A\"}],\"n\":\"A\",\"p\":{\"h\":120,\"w\":120,\"x\":0.839,\"y\":0.833},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":8192,\"k\":\"B\"}],\"n\":\"B\",\"p\":{\"h\":120,\"w\":120,\"x\":0.896,\"y\":0.731},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":16384,\"k\":\"X\"}],\"n\":\"X\",\"p\":{\"h\":120,\"w\":120,\"x\":0.781,\"y\":0.731},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":32768,\"k\":\"Y\"}],\"n\":\"Y\",\"p\":{\"h\":120,\"w\":120,\"x\":0.839,\"y\":0.63},\"s\":1,\"sT\":2}]";
        x86KeyMapContentConfig.x86KeyMapContentConfig = "{\"default_layout\":\"xbox\",\"xbox_alpha\":1}";
    }

    public String getImeDigits(HashMap<String, String> map) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        String str = map.get(Constants.IME_DIGITS);
        LogUtils.d(TAG, "ime digits config: " + str);
        return str;
    }

    public void getMouseSlideConfig(HashMap<String, String> map, X86TouchConfig x86TouchConfig) {
        if (map == null || map.isEmpty()) {
            return;
        }
        String str = map.get(Constants.MOUSE_SLIDE_MODE_EXTRA);
        if (TextUtils.isEmpty(str)) {
            LogUtils.i(TAG, "=mouseSlideRMode==mouseSlideModeExtra is empty");
            return;
        }
        try {
            JSONObject object = a.parseObject(str);
            if (object == null) {
                LogUtils.i(TAG, "=mouseSlideRMode==mouseSlideModeExtraJson is null");
                return;
            }
            x86TouchConfig.isMouseSlideModeRClickModeOn = true;
            if (object.containsKey(Constants.MOUSE_SLIDE_MODE_RIGHT_DOWN_DURATION)) {
                x86TouchConfig.rightDownDuration = parseIntValue(object.getString(Constants.MOUSE_SLIDE_MODE_RIGHT_DOWN_DURATION), 500);
            }
            if (object.containsKey(Constants.MOUSE_SLIDE_MODE_LEFT_DOWN_DURATION)) {
                x86TouchConfig.leftDownDuration = parseIntValue(object.getString(Constants.MOUSE_SLIDE_MODE_LEFT_DOWN_DURATION), 2000);
            }
            if (object.containsKey(Constants.MOUSE_SLIDE_MODE_DOWN_MAX_DISTANCE)) {
                x86TouchConfig.downMaxDistance = parseIntValue(object.getString(Constants.MOUSE_SLIDE_MODE_DOWN_MAX_DISTANCE), 30);
            }
            LogUtils.i(TAG, "=mouseSlideRMode==x86TouchConfig.downMaxDistance=" + x86TouchConfig.downMaxDistance + " x86TouchConfig.rightDownDuration=" + x86TouchConfig.rightDownDuration + " x86TouchConfig.leftDownDuration=" + x86TouchConfig.leftDownDuration);
        } catch (JSONException unused) {
            LogUtils.i(TAG, "x86KeyboardMapConfigs config is invalid");
            CountlyUtil.recordErrorEvent("x86KeyboardMapConfigs config is invalid");
        }
    }

    public int getMouseSlideOffset(HashMap<String, String> map) {
        if (map == null || map.isEmpty()) {
            return 10;
        }
        String str = map.get(Constants.MOUSE_SLIDE_MODE_DOWN_MOVE_DISTANCE);
        LogUtils.d(HmScreenMonitor.TAG, "mouse slide offset config is: " + str);
        if (TextUtils.isEmpty(str)) {
            return 10;
        }
        try {
            int i10 = Integer.parseInt(str);
            if (i10 <= 0) {
                return 10;
            }
            return i10;
        } catch (NumberFormatException unused) {
            return 10;
        }
    }

    public long getMouseSlideTouchTime(HashMap<String, String> map) {
        if (map == null || map.isEmpty()) {
            return 800L;
        }
        String str = map.get(Constants.MOUSE_SLIDE_MODE_DOWN_DURATION);
        LogUtils.d(HmScreenMonitor.TAG, "mouse slide touch time config is: " + str);
        if (TextUtils.isEmpty(str)) {
            return 800L;
        }
        try {
            long j10 = Long.parseLong(str);
            if (j10 <= 0) {
                return 800L;
            }
            return j10;
        } catch (NumberFormatException unused) {
            return 800L;
        }
    }

    public int getScreenOrientationChangeEnable(HashMap<String, String> map) {
        if (map == null) {
            return 0;
        }
        String str = map.get(Constants.SCREEN_ORIENTATION_MONITOR_ENABLE);
        LogUtils.d(HmScreenMonitor.TAG, "Screen monitor enable config is: " + str);
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public Integer[] getScreenOrientationChangeOrderTimeout(HashMap<String, String> map) {
        if (map == null) {
            return null;
        }
        String str = map.get(Constants.SCREEN_ORIENTATION_ORDER_TIME_OUT);
        LogUtils.d(HmScreenMonitor.TAG, "Screen order timeout config is: " + str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        String[] strArrSplit = str.split(",");
        arrayList.clear();
        for (String str2 : strArrSplit) {
            try {
                arrayList.add(Integer.valueOf(Math.max(Integer.parseInt(str2), 1000)));
            } catch (NumberFormatException unused) {
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (Integer[]) arrayList.toArray(new Integer[arrayList.size()]);
    }

    public X86ScreenSlideConfig getScreenSlideConfig(HashMap<String, String> map) {
        X86ScreenSlideConfig x86ScreenSlideConfig = null;
        if (map == null || map.isEmpty()) {
            LogUtils.e(TAG, "getScreenSlideConfig tips is empty ");
            return null;
        }
        String str = map.get(Constants.X86_SCREEN_SLIDE_CONFIG);
        LogUtils.d(TAG, "x86_screen_slide_config getScreenSlideConfig config is: " + str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            x86ScreenSlideConfig = (X86ScreenSlideConfig) JsonUtil.parseObject(str, X86ScreenSlideConfig.class);
        } catch (Exception e10) {
            LogUtils.e(TAG, "getScreenSlideConfig config parse exception : " + e10);
        }
        String str2 = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getScreenSlideConfig config after parsed is: ");
        sb2.append(x86ScreenSlideConfig == null ? "null" : x86ScreenSlideConfig.toString());
        LogUtils.d(str2, sb2.toString());
        return x86ScreenSlideConfig;
    }

    public int getServerImeType(HashMap<String, String> map) {
        if (map == null || !map.containsKey(Constants.IME_TYPE)) {
            return 0;
        }
        try {
            return Integer.parseInt(map.get(Constants.IME_TYPE));
        } catch (NumberFormatException e10) {
            LogUtils.e(TAG, "ime_typeerror:" + e10.getLocalizedMessage());
            return 0;
        }
    }

    public int getTouchScreenModeClickDelay(HashMap<String, String> map) {
        int i10;
        if (map == null || map.isEmpty()) {
            return 0;
        }
        String str = map.get(Constants.TOUCH_SCREEN_MODE_CLICK_DELAY);
        LogUtils.d(HmScreenMonitor.TAG, "x86 touch screen mode click delay config is: " + str);
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            i10 = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            i10 = 0;
        }
        return Math.max(i10, 0);
    }

    public int getTouchUpPolicy(HashMap<String, String> map) {
        if (map == null || map.isEmpty()) {
            return 1;
        }
        String str = map.get(Constants.TOUCH_UP_POLICY);
        LogUtils.d(TAG, "touch up policy config value : " + str);
        if (TextUtils.isEmpty(str)) {
            return 1;
        }
        try {
            int i10 = Integer.parseInt(str);
            if (i10 < 1 || i10 > 2) {
                return 1;
            }
            return i10;
        } catch (NumberFormatException unused) {
            return 1;
        }
    }

    public boolean getVirtualKeyViewEnable() {
        return parseEnable(Constants.VIRTUAL_KEY_VIEW_ENABLE, false);
    }

    public void getX86KeyMapContentConfig(HashMap<String, String> map, Context context) {
        if (map == null || map.isEmpty()) {
            return;
        }
        String str = map.get(Constants.KEYBOARD_MAP_CONTENT_X86_CONFIG);
        String str2 = map.get(Constants.KEYBOARD_MAP_CONTENT_X86_MOUSE);
        String str3 = map.get(Constants.KEYBOARD_MAP_CONTENT_X86_XBOX);
        String str4 = map.get(Constants.KEYBOARD_MAP_CONTENT_X86_KEYBOARD);
        String str5 = map.get(Constants.KEYBOARD_MAP_CONTENT_X86_FN_BTNS);
        if (this.mKeyMapConfig == null) {
            this.mKeyMapConfig = new X86KeyMapContentConfig();
        }
        X86KeyMapContentConfig x86KeyMapContentConfig = this.mKeyMapConfig;
        x86KeyMapContentConfig.x86KeyMapContentConfig = str;
        x86KeyMapContentConfig.x86KeyMapContentMouse = str2;
        x86KeyMapContentConfig.x86KeyMapContentXbox = str3;
        x86KeyMapContentConfig.x86KeyMapContentKeyboard = str4;
        x86KeyMapContentConfig.x86KeyMapContentFnBtns = str5;
        String str6 = map.get(Constants.KEYBOARD_MAP_CONTENT_X86_LARGE_SCREEN_CONFIG);
        String str7 = map.get(Constants.KEYBOARD_MAP_CONTENT_X86_LARGE_SCREEN_MOUSE);
        String str8 = map.get(Constants.KEYBOARD_MAP_CONTENT_X86_LARGE_SCREEN_XBOX);
        String str9 = map.get(Constants.KEYBOARD_MAP_CONTENT_X86_LARGE_SCREEN_KEYBOARD);
        String str10 = map.get(Constants.KEYBOARD_MAP_CONTENT_X86_LARGE_SCREEN_FN_BTNS);
        X86KeyMapContentConfig x86KeyMapContentConfig2 = this.mKeyMapConfig;
        x86KeyMapContentConfig2.x86KeyMapContentLargeScreenConfig = str6;
        x86KeyMapContentConfig2.x86KeyMapContentLargeScreenMouse = str7;
        x86KeyMapContentConfig2.x86KeyMapContentLargeScreenXbox = str8;
        x86KeyMapContentConfig2.x86KeyMapContentLargeScreenKeyboard = str9;
        x86KeyMapContentConfig2.x86KeyMapContentLargeScreenFnBtns = str10;
    }

    public HmVirtualLayoutBean getX86VirtualLayoutConfig(HashMap<String, String> map, Context context, String str) {
        return HmVirtualDeviceManager.get().loadingLayoutFromJson(mergeConfig(HmVirtualDeviceUtils.getX86VirtualLayoutConfigStr(map, context)), str, context);
    }

    public String mergeConfig(String str) {
        JSONObject jSONObject;
        LogUtils.i(TAG, "mergeConfig begin configJsonStr=" + str + "\n" + this.mKeyMapConfig);
        if (!Constants.CONFIG_IS_CLOUD_COMPUTER_KEYBOARD_EDIT_MODE || this.mKeyMapConfig == null) {
            return str;
        }
        if (TextUtils.isEmpty(str)) {
            jSONObject = new JSONObject();
        } else {
            try {
                jSONObject = a.parseObject(str);
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
            } catch (JSONException e10) {
                LogUtils.e(TAG, "mergeConfig parse error: " + e10.getMessage());
                jSONObject = new JSONObject();
            }
        }
        processConfig(jSONObject);
        processMouse(jSONObject);
        processXbox(jSONObject);
        processKeyboard(jSONObject);
        processFnBtns(jSONObject);
        if (jSONObject.isEmpty()) {
            return str;
        }
        String jSONString = jSONObject.toJSONString();
        LogUtils.i(TAG, "mergeConfig end configJsonStr=" + jSONString);
        return jSONString;
    }

    public boolean parseClientImeTypeEnable(HashMap<String, String> map) {
        if (map == null || !map.containsKey(Constants.CLIENT_IME_TYPE_ENABLE)) {
            LogUtils.d(TAG, "client_ime_type-> client_ime_type_enable is not config");
            return false;
        }
        String str = map.get(Constants.CLIENT_IME_TYPE_ENABLE);
        LogUtils.d(TAG, "client_ime_type-> enable: " + str);
        return "1".equals(str);
    }

    public void parseGamepadMappingConfig(HashMap<String, String> map) {
        if (map == null || map.isEmpty()) {
            LogUtils.e(TAG, "getGamepadMappingConfig tips is empty ");
            return;
        }
        String str = map.get(Constants.X86_KEYBOARD_MAPPER_GAMEPAD);
        String str2 = TAG;
        LogUtils.d(str2, "x86_keyboard_mapper_gamepad getGamepadMappingConfig config is: " + str);
        if (TextUtils.isEmpty(str)) {
            LogUtils.e(str2, "getGamepadMappingConfig value is empty ");
            return;
        }
        try {
            JoyStickMappingConfig joyStickMappingConfig = (JoyStickMappingConfig) JsonUtil.parseObject(str, JoyStickMappingConfig.class);
            this.mJoyStickMappingConfig = joyStickMappingConfig;
            if (joyStickMappingConfig != null) {
                joyStickMappingConfig.sortMouseRefreshRatesByIntervalAsc();
            }
        } catch (Exception e10) {
            LogUtils.e(TAG, "getGamepadMappingConfig config parse exception : " + e10);
        }
    }

    public void parseIsUseLargeConfig(HashMap<String, String> map, Context context) {
        if (this.mKeyMapConfig == null) {
            this.mKeyMapConfig = new X86KeyMapContentConfig();
        }
        if (map != null && map.containsKey(Constants.KEYBOARD_MAP_CONTENT_X86_ASPECT_RATIO)) {
            this.mKeyMapConfig.isContainsRatioConfig = true;
        }
        this.mKeyMapConfig.isUseLargeConfig = HmVirtualDeviceUtils.usingLargeScreenConfig(map, context);
        LogUtils.i(TAG, "parseKeyboardMapConfigs usingLargeScreen " + this.mKeyMapConfig.isUseLargeConfig);
        if (this.mKeyMapConfig.isUseLargeConfig) {
            HmVirtualDeviceUtils.dealUsingLargeLayoutConfig(true);
        } else {
            HmVirtualDeviceUtils.dealUsingLargeLayoutConfig(false);
        }
    }

    public void parseKeyboardMapConfigs(HashMap<String, String> map, Context context) {
        if (map == null || map.isEmpty()) {
            LogUtils.e(TAG, "parseKeyboardMapConfigs failed:params is invalid");
            return;
        }
        String str = map.get(Constants.KEYBOARD_MAP_CONTENT_X86_LIST);
        String str2 = map.get(Constants.KEYBOARD_MAP_CONTENT_X86_LIST_LARGE_SCREEN);
        if (!HmVirtualDeviceUtils.usingLargeScreenConfig(map, context) || TextUtils.isEmpty(str2)) {
            LogUtils.i(TAG, "parseKeyboardMapConfigs usingLargeScreen false");
            HmVirtualDeviceUtils.dealUsingLargeLayoutConfig(false);
        } else {
            LogUtils.i(TAG, "parseKeyboardMapConfigs usingLargeScreen true");
            HmVirtualDeviceUtils.dealUsingLargeLayoutConfig(true);
            str = str2;
        }
        try {
            this.x86KeyboardMapConfigs = a.parseObject(str);
        } catch (JSONException unused) {
            LogUtils.i(TAG, "x86KeyboardMapConfigs config is invalid");
            CountlyUtil.recordErrorEvent("x86KeyboardMapConfigs config is invalid");
        }
        JSONObject jSONObject = this.x86KeyboardMapConfigs;
        if (jSONObject == null || jSONObject.isEmpty()) {
            LogUtils.i(TAG, "x86KeyboardMapConfigs is null or empty, please reset config");
            CountlyUtil.recordErrorEvent("x86KeyboardMapConfigs is null or empty, please reset config");
            return;
        }
        LogUtils.i(TAG, "x86KeyboardMapConfigs size: " + this.x86KeyboardMapConfigs.size());
    }

    public Map<String, LongTouchBtnConfig> parseLongTouchBtnList() {
        HashMap<String, String> map = this.configs;
        if (map == null || map.isEmpty()) {
            return null;
        }
        String str = this.configs.get(Constants.HANDLE_LONG_TOUCH_BTN_LIST);
        LogUtils.i(TAG, str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return (Map) a.parseObject(str, new h<Map<String, LongTouchBtnConfig>>() { // from class: com.haima.hmcp.beans.GlobalConfig.1
            }, new Feature[0]);
        } catch (Exception unused) {
            LogUtils.e(TAG, "parse handle_long_touch_btn_list config failure");
            CountlyUtil.recordErrorEvent("parse handle_long_touch_btn_list config failure");
            return null;
        }
    }

    public void parseTouchesMappingConfig(HashMap<String, String> map) {
        if (map == null || map.isEmpty()) {
            LogUtils.e(TAG, "parseTouchesMappingConfig tips is empty ");
            return;
        }
        String str = map.get(Constants.X86_TOUCHES_MAPPER_INPUT_DEVICE);
        String str2 = TAG;
        LogUtils.d(str2, "x86_touches_mapper_input_device parseTouchesMappingConfig config is: " + str);
        if (TextUtils.isEmpty(str)) {
            LogUtils.e(str2, "parseTouchesMappingConfig value is empty ");
            return;
        }
        try {
            this.mTouchesMappingConfig = (TouchesMappingConfig) JsonUtil.parseObject(str, TouchesMappingConfig.class);
        } catch (Exception e10) {
            LogUtils.e(TAG, "parseTouchesMappingConfig config parse exception : " + e10);
        }
    }
}
