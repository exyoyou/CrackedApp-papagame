package com.haima.hmcp.widgets;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.beizi.fusion.widget.ScrollClickView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.zxing.client.result.ExpandedProductParsedResult;
import com.haima.hmcp.beans.JoyStickMappingConfig;
import com.haima.hmcp.utils.LogUtils;
import com.sdk.base.module.manager.SDKManager;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class JoyStickMappingManager {
    public static final int JOYSTICK_FIXED_DEVICE_ID = 1000;
    public static final int KEY_CODE_LEFT_STICK_DOWN = 998;
    public static final int KEY_CODE_LEFT_STICK_LEFT = 997;
    public static final int KEY_CODE_LEFT_STICK_RIGHT = 996;
    public static final int KEY_CODE_LEFT_STICK_UP = 999;
    public static final int KEY_CODE_RIGHT_STICK_DOWN = 992;
    public static final int KEY_CODE_RIGHT_STICK_LEFT = 993;
    public static final int KEY_CODE_RIGHT_STICK_RIGHT = 994;
    public static final int KEY_CODE_RIGHT_STICK_UP = 991;
    private static String TAG = "JoyStickMappingManager";
    private static final Set<Integer> actionMouseButtons;
    private static Map<Integer, String> keyCodeNameMaps = new HashMap();
    private static Map<String, Integer> sendEventCodeMaps = new HashMap();
    public static boolean isKeyboardMapperGamepadEnable = false;
    public static boolean isTouchesMoveMapperRockerEnable = true;

    static {
        keyCodeNameMaps.put(29, "KeyA");
        keyCodeNameMaps.put(30, "KeyB");
        keyCodeNameMaps.put(31, "KeyC");
        keyCodeNameMaps.put(32, "KeyD");
        keyCodeNameMaps.put(33, "KeyE");
        keyCodeNameMaps.put(34, "KeyF");
        keyCodeNameMaps.put(35, "KeyG");
        keyCodeNameMaps.put(36, "KeyH");
        keyCodeNameMaps.put(37, "KeyI");
        keyCodeNameMaps.put(38, "KeyJ");
        keyCodeNameMaps.put(39, "KeyK");
        keyCodeNameMaps.put(40, "KeyL");
        keyCodeNameMaps.put(41, "KeyM");
        keyCodeNameMaps.put(42, "KeyN");
        keyCodeNameMaps.put(43, "KeyO");
        keyCodeNameMaps.put(44, "KeyP");
        keyCodeNameMaps.put(45, "KeyQ");
        keyCodeNameMaps.put(46, "KeyR");
        keyCodeNameMaps.put(47, "KeyS");
        keyCodeNameMaps.put(48, "KeyT");
        keyCodeNameMaps.put(49, "KeyU");
        keyCodeNameMaps.put(50, "KeyV");
        keyCodeNameMaps.put(51, "KeyW");
        keyCodeNameMaps.put(52, "KeyX");
        keyCodeNameMaps.put(53, "KeyY");
        keyCodeNameMaps.put(54, "KeyZ");
        keyCodeNameMaps.put(7, "Digit0");
        keyCodeNameMaps.put(8, "Digit1");
        keyCodeNameMaps.put(9, "Digit2");
        keyCodeNameMaps.put(10, "Digit3");
        keyCodeNameMaps.put(11, "Digit4");
        keyCodeNameMaps.put(12, "Digit5");
        keyCodeNameMaps.put(13, "Digit6");
        keyCodeNameMaps.put(14, "Digit7");
        keyCodeNameMaps.put(15, "Digit8");
        keyCodeNameMaps.put(16, "Digit9");
        keyCodeNameMaps.put(131, "F1");
        keyCodeNameMaps.put(132, "F2");
        keyCodeNameMaps.put(133, "F3");
        keyCodeNameMaps.put(134, "F4");
        keyCodeNameMaps.put(135, "F5");
        keyCodeNameMaps.put(136, "F6");
        keyCodeNameMaps.put(137, "F7");
        keyCodeNameMaps.put(138, "F8");
        keyCodeNameMaps.put(139, "F9");
        keyCodeNameMaps.put(140, "F10");
        keyCodeNameMaps.put(141, "F11");
        keyCodeNameMaps.put(142, "F12");
        keyCodeNameMaps.put(66, "Enter");
        keyCodeNameMaps.put(111, "Escape");
        keyCodeNameMaps.put(67, "Backspace");
        keyCodeNameMaps.put(61, "Tab");
        keyCodeNameMaps.put(62, "Space");
        keyCodeNameMaps.put(115, "CapsLock");
        keyCodeNameMaps.put(120, "PrintScreen");
        keyCodeNameMaps.put(116, "ScrollLock");
        keyCodeNameMaps.put(121, "Pause");
        keyCodeNameMaps.put(124, "Insert");
        keyCodeNameMaps.put(122, "Home");
        keyCodeNameMaps.put(92, "PageUp");
        keyCodeNameMaps.put(112, "Delete");
        keyCodeNameMaps.put(123, "End");
        keyCodeNameMaps.put(93, "PageDown");
        keyCodeNameMaps.put(19, "ArrowUp");
        keyCodeNameMaps.put(20, "ArrowDown");
        keyCodeNameMaps.put(21, "ArrowLeft");
        keyCodeNameMaps.put(22, "ArrowRight");
        keyCodeNameMaps.put(69, "Minus");
        keyCodeNameMaps.put(70, "Equal");
        keyCodeNameMaps.put(71, "BracketLeft");
        keyCodeNameMaps.put(72, "BracketRight");
        keyCodeNameMaps.put(73, "Backslash");
        keyCodeNameMaps.put(74, "Semicolon");
        keyCodeNameMaps.put(75, "Quote");
        keyCodeNameMaps.put(68, "Backquote");
        keyCodeNameMaps.put(55, "Comma");
        keyCodeNameMaps.put(56, "Period");
        keyCodeNameMaps.put(76, "Slash");
        keyCodeNameMaps.put(73, "IntlBackslash");
        keyCodeNameMaps.put(144, "Numpad0");
        keyCodeNameMaps.put(145, "Numpad1");
        keyCodeNameMaps.put(146, "Numpad2");
        keyCodeNameMaps.put(147, "Numpad3");
        keyCodeNameMaps.put(148, "Numpad4");
        keyCodeNameMaps.put(149, "Numpad5");
        keyCodeNameMaps.put(150, "Numpad6");
        keyCodeNameMaps.put(151, "Numpad7");
        keyCodeNameMaps.put(152, "Numpad8");
        keyCodeNameMaps.put(153, "Numpad9");
        keyCodeNameMaps.put(143, "NumLock");
        keyCodeNameMaps.put(154, "NumpadDivide");
        keyCodeNameMaps.put(155, "NumpadMultiply");
        keyCodeNameMaps.put(156, "NumpadSubtract");
        keyCodeNameMaps.put(157, "NumpadAdd");
        keyCodeNameMaps.put(160, "NumpadEnter");
        keyCodeNameMaps.put(158, "NumpadDecimal");
        keyCodeNameMaps.put(161, "NumpadEqual");
        keyCodeNameMaps.put(113, "ControlLeft");
        keyCodeNameMaps.put(59, "ShiftLeft");
        keyCodeNameMaps.put(57, "AltLeft");
        keyCodeNameMaps.put(117, "MetaLeft");
        keyCodeNameMaps.put(114, "ControlRight");
        keyCodeNameMaps.put(60, "ShiftRight");
        keyCodeNameMaps.put(58, "AltRight");
        keyCodeNameMaps.put(118, "MetaRight");
        keyCodeNameMaps.put(164, "AudioVolumeMute");
        keyCodeNameMaps.put(24, "AudioVolumeUp");
        keyCodeNameMaps.put(25, "AudioVolumeDown");
        keyCodeNameMaps.put(26, "Power");
        keyCodeNameMaps.put(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME), "Help");
        keyCodeNameMaps.put(82, "Menu");
        keyCodeNameMaps.put(109, "Select");
        keyCodeNameMaps.put(86, "Stop");
        keyCodeNameMaps.put(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE), "Cut");
        keyCodeNameMaps.put(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC), "Copy");
        keyCodeNameMaps.put(Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS), "Paste");
        sendEventCodeMaps.put("A", 96);
        sendEventCodeMaps.put(SDKManager.ALGO_B_AES_SHA256_RSA, 97);
        sendEventCodeMaps.put("X", 99);
        sendEventCodeMaps.put("Y", 100);
        sendEventCodeMaps.put(ExpandedProductParsedResult.POUND, 102);
        sendEventCodeMaps.put("RB", 103);
        sendEventCodeMaps.put("LT", 104);
        sendEventCodeMaps.put("RT", 105);
        sendEventCodeMaps.put("BACK", 109);
        sendEventCodeMaps.put("START", 108);
        sendEventCodeMaps.put("LS", 106);
        sendEventCodeMaps.put("RS", 107);
        sendEventCodeMaps.put("UP", 19);
        sendEventCodeMaps.put("LEFT", 21);
        sendEventCodeMaps.put("DOWN", 20);
        sendEventCodeMaps.put("RIGHT", 22);
        sendEventCodeMaps.put("LEFT_STICK:UP", 999);
        sendEventCodeMaps.put("LEFT_STICK:DOWN", 998);
        sendEventCodeMaps.put("LEFT_STICK:LEFT", 997);
        sendEventCodeMaps.put("LEFT_STICK:RIGHT", 996);
        sendEventCodeMaps.put("RIGHT_STICK:UP", 991);
        sendEventCodeMaps.put("RIGHT_STICK:DOWN", Integer.valueOf(KEY_CODE_RIGHT_STICK_DOWN));
        sendEventCodeMaps.put("RIGHT_STICK:LEFT", 993);
        sendEventCodeMaps.put("RIGHT_STICK:RIGHT", 994);
        actionMouseButtons = new HashSet();
    }

    private static String getCurrentPressedButtonsMapping(String str, String str2, String str3) {
        Set<Integer> set = actionMouseButtons;
        if (set.isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = true;
        boolean z11 = false;
        if (set.contains(1) && !TextUtils.isEmpty(str)) {
            sb2.append(str);
            z10 = false;
        }
        if (!set.contains(2) || TextUtils.isEmpty(str2)) {
            z11 = z10;
        } else {
            if (!z10) {
                sb2.append("|");
            }
            sb2.append(str2);
        }
        if (set.contains(4) && !TextUtils.isEmpty(str3)) {
            if (!z11) {
                sb2.append("|");
            }
            sb2.append(str3);
        }
        String string = sb2.toString();
        LogUtils.i(TAG, "getCurrentPressedButtonsMapping, actionMouseButtons: " + set + ", mapping: " + string);
        return string;
    }

    private static String getCurrentReleaseButtonsMapping(String str, String str2, String str3, int i10) {
        StringBuilder sb2 = new StringBuilder();
        Set<Integer> set = actionMouseButtons;
        boolean z10 = true;
        boolean z11 = false;
        if (set.contains(1) && (i10 & 1) == 0 && !TextUtils.isEmpty(str)) {
            sb2.append(str);
            z10 = false;
        }
        if (set.contains(2) && (i10 & 2) == 0 && !TextUtils.isEmpty(str2)) {
            if (!z10) {
                sb2.append("|");
            }
            sb2.append(str2);
        } else {
            z11 = z10;
        }
        if (set.contains(4) && (i10 & 4) == 0 && !TextUtils.isEmpty(str3)) {
            if (!z11) {
                sb2.append("|");
            }
            sb2.append(str3);
        }
        String string = sb2.toString();
        LogUtils.i(TAG, "getCurrentReleaseButtonsMapping, actionMouseButtons: " + set + ", buttonState: " + i10 + ", release mapping: " + string);
        return string;
    }

    public static int getKeyCode(String str) {
        Integer num = sendEventCodeMaps.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public static String getKeyName(int i10) {
        String str = keyCodeNameMaps.get(Integer.valueOf(i10));
        return str != null ? str : "";
    }

    public static String getMappingButtonName(KeyEvent keyEvent, JoyStickMappingConfig joyStickMappingConfig) {
        if (keyEvent == null || joyStickMappingConfig == null) {
            return "";
        }
        String keyName = getKeyName(keyEvent.getKeyCode());
        String strFindJoystickControlByKeyboard = joyStickMappingConfig.findJoystickControlByKeyboard(keyName);
        LogUtils.i(TAG, "getMappingButtonName, mappingButtonName: " + strFindJoystickControlByKeyboard + " keyName:" + keyName);
        return strFindJoystickControlByKeyboard;
    }

    public static String getMouseMappingButtonName(MotionEvent motionEvent, JoyStickMappingConfig joyStickMappingConfig) {
        if (motionEvent == null || joyStickMappingConfig == null) {
            return "";
        }
        int actionMasked = motionEvent.getActionMasked();
        int buttonState = motionEvent.getButtonState();
        LogUtils.d(TAG, "getMouseMappingButtonName action:" + actionMasked + ", buttonState:" + buttonState);
        String strFindJoystickControlByMouse = joyStickMappingConfig.findJoystickControlByMouse(ScrollClickView.DIR_LEFT);
        String strFindJoystickControlByMouse2 = joyStickMappingConfig.findJoystickControlByMouse(ScrollClickView.DIR_RIGHT);
        String strFindJoystickControlByMouse3 = joyStickMappingConfig.findJoystickControlByMouse("middle");
        LogUtils.d(TAG, "getMouseMappingButtonName: leftMapping:" + strFindJoystickControlByMouse + ", rightMapping:" + strFindJoystickControlByMouse2 + ", middleMapping:" + strFindJoystickControlByMouse3);
        if (actionMasked == 0 || actionMasked == 11) {
            if ((buttonState & 1) != 0) {
                actionMouseButtons.add(1);
                LogUtils.d(TAG, "getMouseMappingButtonName: added BUTTON_PRIMARY");
            }
            if ((buttonState & 2) != 0) {
                actionMouseButtons.add(2);
                LogUtils.d(TAG, "getMouseMappingButtonName: added BUTTON_SECONDARY");
            }
            if ((buttonState & 4) != 0) {
                actionMouseButtons.add(4);
                LogUtils.d(TAG, "getMouseMappingButtonName: added BUTTON_TERTIARY");
            }
            return getCurrentPressedButtonsMapping(strFindJoystickControlByMouse, strFindJoystickControlByMouse2, strFindJoystickControlByMouse3);
        }
        if (actionMasked != 1 && actionMasked != 12) {
            LogUtils.i(TAG, "getMouseMappingButtonName, mappingButtonName: (empty)");
            return "";
        }
        String currentReleaseButtonsMapping = getCurrentReleaseButtonsMapping(strFindJoystickControlByMouse, strFindJoystickControlByMouse2, strFindJoystickControlByMouse3, buttonState);
        if ((buttonState & 1) == 0) {
            actionMouseButtons.remove(1);
            LogUtils.d(TAG, "getMouseMappingButtonName: removed BUTTON_PRIMARY");
        }
        if ((buttonState & 2) == 0) {
            actionMouseButtons.remove(2);
            LogUtils.d(TAG, "getMouseMappingButtonName: removed BUTTON_SECONDARY");
        }
        if ((buttonState & 4) == 0) {
            actionMouseButtons.remove(4);
            LogUtils.d(TAG, "getMouseMappingButtonName: removed BUTTON_TERTIARY");
        }
        return currentReleaseButtonsMapping;
    }

    public static boolean isKeyMapped(int i10) {
        return keyCodeNameMaps.containsKey(Integer.valueOf(i10));
    }

    public static void restoreSettingsState() {
        isKeyboardMapperGamepadEnable = false;
        isTouchesMoveMapperRockerEnable = true;
    }
}
