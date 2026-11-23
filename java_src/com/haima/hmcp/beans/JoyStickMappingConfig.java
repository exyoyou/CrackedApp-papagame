package com.haima.hmcp.beans;

import android.text.TextUtils;
import com.alibaba.fastjson.a;
import com.google.zxing.client.result.ExpandedProductParsedResult;
import com.haima.hmcp.utils.LogUtils;
import com.sdk.base.module.manager.SDKManager;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class JoyStickMappingConfig {
    private static String TAG = "JoyStickMappingConfig";
    public ButtonConfig A;
    public ButtonConfig B;
    public ButtonConfig BACK;
    public DpadConfig DPAD;
    public ButtonConfig LB;
    public StickConfig LEFT_STICK;
    public ButtonConfig LS;
    public ButtonConfig LT;
    public List<MouseRefreshRate> MOUSE_REFRESH_RATES;
    public ButtonConfig RB;
    public StickConfig RIGHT_STICK;
    public ButtonConfig RS;
    public ButtonConfig RT;
    public ButtonConfig START;
    public ButtonConfig X;
    public ButtonConfig Y;

    public static class ButtonConfig {
        public Integer inputOp;
        public List<String> keyboardKey;
        public MouseConfig mouse;
        public Integer value;
    }

    public static class DirectionConfig {
        public List<String> keyboardKey;
        public Integer value;
    }

    public static class DpadConfig {
        public Integer inputOp;
        public Map<String, DirectionConfig> keyboard;
    }

    public static class InputOpConfig {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public Integer f33820x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public Integer f33821y;
    }

    public static class MouseConfig {
        public String button;
        public Boolean enabled;
    }

    public static class MouseRefreshRate {
        public Integer detectionTime;
        public Double interval;
        public Integer rate;
    }

    public static class StickConfig {
        public InputOpConfig inputOp;
        public Map<String, DirectionConfig> keyboard;
        public MouseConfig mouse;
    }

    private String findJoyStickButtonByKeyboardKey(String str) {
        List<String> list;
        if (str != null && !str.isEmpty()) {
            ButtonConfig[] buttonConfigArr = {this.A, this.B, this.X, this.Y, this.LB, this.RB, this.LT, this.RT, this.BACK, this.START, this.LS, this.RS};
            String[] strArr = {"A", SDKManager.ALGO_B_AES_SHA256_RSA, "X", "Y", ExpandedProductParsedResult.POUND, "RB", "LT", "RT", "BACK", "START", "LS", "RS"};
            for (int i10 = 0; i10 < 12; i10++) {
                ButtonConfig buttonConfig = buttonConfigArr[i10];
                if (buttonConfig != null && (list = buttonConfig.keyboardKey) != null) {
                    Iterator<String> it2 = list.iterator();
                    while (it2.hasNext()) {
                        if (str.equals(it2.next())) {
                            return strArr[i10];
                        }
                    }
                }
            }
        }
        return null;
    }

    private String findJoyStickButtonByMouseButton(String str) {
        MouseConfig mouseConfig;
        if (str != null && !str.isEmpty()) {
            ButtonConfig[] buttonConfigArr = {this.A, this.B, this.X, this.Y, this.LB, this.RB, this.LT, this.RT, this.BACK, this.START, this.LS, this.RS};
            String[] strArr = {"A", SDKManager.ALGO_B_AES_SHA256_RSA, "X", "Y", ExpandedProductParsedResult.POUND, "RB", "LT", "RT", "BACK", "START", "LS", "RS"};
            for (int i10 = 0; i10 < 12; i10++) {
                ButtonConfig buttonConfig = buttonConfigArr[i10];
                if (buttonConfig != null && (mouseConfig = buttonConfig.mouse) != null && str.equals(mouseConfig.button)) {
                    return strArr[i10];
                }
            }
        }
        return null;
    }

    private String findJoyStickByKeyboardKey(String str) {
        Map<String, DirectionConfig> map;
        List<String> list;
        Map<String, DirectionConfig> map2;
        List<String> list2;
        if (str != null && !str.isEmpty()) {
            StickConfig stickConfig = this.LEFT_STICK;
            if (stickConfig != null && (map2 = stickConfig.keyboard) != null) {
                for (Map.Entry<String, DirectionConfig> entry : map2.entrySet()) {
                    DirectionConfig value = entry.getValue();
                    if (value != null && (list2 = value.keyboardKey) != null) {
                        Iterator<String> it2 = list2.iterator();
                        while (it2.hasNext()) {
                            if (str.equals(it2.next())) {
                                return "LEFT_STICK:" + entry.getKey();
                            }
                        }
                    }
                }
            }
            StickConfig stickConfig2 = this.RIGHT_STICK;
            if (stickConfig2 != null && (map = stickConfig2.keyboard) != null) {
                for (Map.Entry<String, DirectionConfig> entry2 : map.entrySet()) {
                    DirectionConfig value2 = entry2.getValue();
                    if (value2 != null && (list = value2.keyboardKey) != null) {
                        Iterator<String> it3 = list.iterator();
                        while (it3.hasNext()) {
                            if (str.equals(it3.next())) {
                                return "RIGHT_STICK:" + entry2.getKey();
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    private String findJoyStickDpadByKeyboardKey(String str) {
        DpadConfig dpadConfig;
        Map<String, DirectionConfig> map;
        List<String> list;
        if (str != null && !str.isEmpty() && (dpadConfig = this.DPAD) != null && (map = dpadConfig.keyboard) != null) {
            for (Map.Entry<String, DirectionConfig> entry : map.entrySet()) {
                DirectionConfig value = entry.getValue();
                if (value != null && (list = value.keyboardKey) != null) {
                    Iterator<String> it2 = list.iterator();
                    while (it2.hasNext()) {
                        if (str.equals(it2.next())) {
                            return entry.getKey();
                        }
                    }
                }
            }
        }
        return null;
    }

    private String findJoyStickStickByMouseButton(String str) {
        MouseConfig mouseConfig;
        MouseConfig mouseConfig2;
        if (str != null && !str.isEmpty()) {
            StickConfig stickConfig = this.LEFT_STICK;
            if (stickConfig != null && (mouseConfig2 = stickConfig.mouse) != null && str.equals(mouseConfig2.button)) {
                return "LEFT_STICK";
            }
            StickConfig stickConfig2 = this.RIGHT_STICK;
            if (stickConfig2 != null && (mouseConfig = stickConfig2.mouse) != null && str.equals(mouseConfig.button)) {
                return "RIGHT_STICK";
            }
        }
        return null;
    }

    public static void main(String[] strArr) {
        JoyStickMappingConfig joyStickMappingConfig = (JoyStickMappingConfig) a.parseObject("{\n  \"A\": { \"inputOp\": 1024, \"value\": 4096, \"keyboardKey\": [\"Space\"] },\n  \"B\": { \"inputOp\": 1024, \"value\": 8192, \"keyboardKey\": [\"ControlLeft\"] },\n  \"X\": { \"inputOp\": 1024, \"value\": 16384, \"keyboardKey\": [\"KeyF\"] },\n  \"Y\": { \"inputOp\": 1024, \"value\": 32768, \"keyboardKey\": [\"KeyR\"] },\n  \"LB\": { \"inputOp\": 1024, \"value\": 256, \"keyboardKey\": [\"KeyG\"] },\n  \"RB\": { \"inputOp\": 1024, \"value\": 512, \"keyboardKey\": [\"KeyT\"] },\n  \"LT\": { \"inputOp\": 1025, \"value\": 255, \"keyboardKey\": [\"KeyQ\"], \"mouse\": { \"button\": \"right\" } },\n  \"RT\": { \"inputOp\": 1026, \"value\": 255, \"keyboardKey\": [\"KeyE\"], \"mouse\": { \"button\": \"left\" } },\n  \"BACK\": { \"inputOp\": 1024, \"value\": 32, \"keyboardKey\": [\"Tab\"] },\n  \"START\": { \"inputOp\": 1024, \"value\": 16, \"keyboardKey\": [\"KeyL\"] },\n  \"LS\": { \"inputOp\": 1024, \"value\": 64, \"keyboardKey\": [\"ShiftLeft\"] },\n  \"RS\": { \"inputOp\": 1024, \"value\": 128, \"keyboardKey\": [\"KeyC\"], \"mouse\": { \"button\": \"middle\" } },\n  \"DPAD\": {\n    \"inputOp\": 1024,\n    \"keyboard\": {\n      \"UP\": { \"value\": 1, \"keyboardKey\": [\"Digit1\"] },\n      \"DOWN\": { \"value\": 2, \"keyboardKey\": [\"Digit2\"] },\n      \"LEFT\": { \"value\": 4, \"keyboardKey\": [\"Digit3\"] },\n      \"RIGHT\": { \"value\": 8, \"keyboardKey\": [\"Digit4\"] }\n    }\n  },\n  \"LEFT_STICK\": {\n    \"inputOp\": { \"x\": 1027, \"y\": 1028 },\n    \"keyboard\": {\n      \"UP\": { \"value\": 32767, \"keyboardKey\": [\"KeyW\"] },\n      \"DOWN\": { \"value\": -32767, \"keyboardKey\": [\"KeyS\"] },\n      \"LEFT\": { \"value\": -32767, \"keyboardKey\": [\"KeyA\"] },\n      \"RIGHT\": { \"value\": 32767, \"keyboardKey\": [\"KeyD\"] }\n    },\n    \"mouse\": { \"enabled\": false }\n  },\n  \"RIGHT_STICK\": {\n    \"inputOp\": { \"x\": 1029, \"y\": 1030 },\n    \"keyboard\": {\n      \"UP\": { \"value\": 32767, \"keyboardKey\": [\"ArrowUp\"] },\n      \"DOWN\": { \"value\": -32767, \"keyboardKey\": [\"ArrowDown\"] },\n      \"LEFT\": { \"value\": -32767, \"keyboardKey\": [\"ArrowLeft\"] },\n      \"RIGHT\": { \"value\": 32767, \"keyboardKey\": [\"ArrowRight\"] }\n    },\n    \"mouse\": { \"enabled\": true }\n  },\n  \"MOUSE_REFRESH_RATES\": [\n    { \"rate\": 2000, \"interval\": 0.5, \"detectionTime\": 1 },\n    { \"rate\": 1000, \"interval\": 1, \"detectionTime\": 2 },\n    { \"rate\": 250, \"interval\": 4, \"detectionTime\": 5 },\n    { \"rate\": 125, \"interval\": 8, \"detectionTime\": 8 },\n    { \"rate\": 0, \"interval\": 1000000, \"detectionTime\": 20 }\n  ]\n}  ", JoyStickMappingConfig.class);
        System.out.println("=== 反向查找测试 ===");
        String strFindJoystickControlByKeyboard = joyStickMappingConfig.findJoystickControlByKeyboard("Space");
        System.out.println("键盘键 'Space' 对应手柄控制: " + strFindJoystickControlByKeyboard);
        String strFindJoystickControlByKeyboard2 = joyStickMappingConfig.findJoystickControlByKeyboard("KeyF");
        System.out.println("键盘键 'KeyF' 对应手柄控制: " + strFindJoystickControlByKeyboard2);
        String strFindJoystickControlByKeyboard3 = joyStickMappingConfig.findJoystickControlByKeyboard("Digit1");
        System.out.println("键盘键 'Digit1' 对应手柄控制: " + strFindJoystickControlByKeyboard3);
        String strFindJoystickControlByKeyboard4 = joyStickMappingConfig.findJoystickControlByKeyboard("Digit2");
        System.out.println("键盘键 'Digit2' 对应手柄控制: " + strFindJoystickControlByKeyboard4);
        String strFindJoystickControlByKeyboard5 = joyStickMappingConfig.findJoystickControlByKeyboard("KeyW");
        System.out.println("键盘键 'KeyW' 对应手柄控制: " + strFindJoystickControlByKeyboard5);
        String strFindJoystickControlByKeyboard6 = joyStickMappingConfig.findJoystickControlByKeyboard("ArrowUp");
        System.out.println("键盘键 'ArrowUp' 对应手柄控制: " + strFindJoystickControlByKeyboard6);
        String strFindJoystickControlByKeyboard7 = joyStickMappingConfig.findJoystickControlByKeyboard("UnknownKey");
        System.out.println("键盘键 'UnknownKey' 对应手柄控制: " + strFindJoystickControlByKeyboard7);
    }

    public String findJoystickControlByKeyboard(String str) {
        if (str == null || str.isEmpty()) {
            LogUtils.i(TAG, "findJoystickControlByKeyboard, keyName is empty");
            return null;
        }
        String strFindJoyStickButtonByKeyboardKey = findJoyStickButtonByKeyboardKey(str);
        if (strFindJoyStickButtonByKeyboardKey != null) {
            return strFindJoyStickButtonByKeyboardKey;
        }
        String strFindJoyStickDpadByKeyboardKey = findJoyStickDpadByKeyboardKey(str);
        if (strFindJoyStickDpadByKeyboardKey != null) {
            return strFindJoyStickDpadByKeyboardKey;
        }
        String strFindJoyStickByKeyboardKey = findJoyStickByKeyboardKey(str);
        if (strFindJoyStickByKeyboardKey != null) {
            return strFindJoyStickByKeyboardKey;
        }
        LogUtils.i(TAG, "findJoystickControlByKeyboard finish, no mapping control");
        return null;
    }

    public String findJoystickControlByMouse(String str) {
        LogUtils.i(TAG, "findJoystickControlByMouse, mouseButton: " + str);
        if (TextUtils.isEmpty(str)) {
            LogUtils.i(TAG, "findJoystickControlByMouse, mouseButton is empty");
            return null;
        }
        String strFindJoyStickButtonByMouseButton = findJoyStickButtonByMouseButton(str);
        if (strFindJoyStickButtonByMouseButton != null) {
            LogUtils.i(TAG, "findJoystickControlByMouse, button=" + strFindJoyStickButtonByMouseButton);
            return strFindJoyStickButtonByMouseButton;
        }
        String strFindJoyStickStickByMouseButton = findJoyStickStickByMouseButton(str);
        if (strFindJoyStickStickByMouseButton == null) {
            return null;
        }
        LogUtils.i(TAG, "findJoystickControlByMouse, stick=" + strFindJoyStickStickByMouseButton);
        return strFindJoyStickStickByMouseButton;
    }

    public String getStickEnabled() {
        MouseConfig mouseConfig;
        Boolean bool;
        MouseConfig mouseConfig2;
        Boolean bool2;
        if (this.LEFT_STICK == null && this.RIGHT_STICK == null) {
            return "";
        }
        StickConfig stickConfig = this.RIGHT_STICK;
        if (stickConfig != null && (mouseConfig2 = stickConfig.mouse) != null && (bool2 = mouseConfig2.enabled) != null && bool2.booleanValue()) {
            return "RIGHT_STICK";
        }
        StickConfig stickConfig2 = this.LEFT_STICK;
        return (stickConfig2 == null || (mouseConfig = stickConfig2.mouse) == null || (bool = mouseConfig.enabled) == null || !bool.booleanValue()) ? "" : "LEFT_STICK";
    }

    public boolean isMouseConfigured() {
        return !TextUtils.isEmpty(getStickEnabled());
    }

    public void sortMouseRefreshRatesByIntervalAsc() {
        List<MouseRefreshRate> list = this.MOUSE_REFRESH_RATES;
        if (list == null || list.size() <= 1) {
            return;
        }
        Collections.sort(this.MOUSE_REFRESH_RATES, new Comparator<MouseRefreshRate>() { // from class: com.haima.hmcp.beans.JoyStickMappingConfig.1
            @Override // java.util.Comparator
            public int compare(MouseRefreshRate mouseRefreshRate, MouseRefreshRate mouseRefreshRate2) {
                if (mouseRefreshRate == mouseRefreshRate2) {
                    return 0;
                }
                if (mouseRefreshRate == null) {
                    return 1;
                }
                if (mouseRefreshRate2 == null) {
                    return -1;
                }
                Double d10 = mouseRefreshRate.interval;
                Double d11 = mouseRefreshRate2.interval;
                if (d10 == d11) {
                    return 0;
                }
                if (d10 == null) {
                    return 1;
                }
                if (d11 == null) {
                    return -1;
                }
                return Double.compare(d10.doubleValue(), d11.doubleValue());
            }
        });
    }
}
