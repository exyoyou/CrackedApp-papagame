package com.haima.hmcp.utils;

import android.text.TextUtils;
import android.view.InputDevice;
import android.view.KeyEvent;
import com.haima.hmcp.Constants;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes5.dex */
public class KeyMapUtil {
    public static final int KEYCODE_DEL_HAIMA = 8;
    public static final int KEYCODE_ENTER_HAIMA = 13;
    private static final int KEY_MAP_LENGTH = 2;
    private static final String TAG = "KeyMapUtil";
    private static final int[] KeyMap_androidKeyCode2PASSKey = {59, 16, 111, 27, 61, 9, 4, 158, 66, 232, 23, 232, 113, 17, 3, 36, 21, 37, 19, 38, 22, 39, 20, 40, 67, 8, 115, 20, 143, 144, 57, 18, 7, 48, 8, 49, 9, 50, 10, 51, 11, 52, 12, 53, 13, 54, 14, 55, 15, 56, 16, 57, 82, 16777301, 29, 65, 30, 66, 31, 67, 32, 68, 33, 69, 34, 70, 35, 71, 36, 72, 37, 73, 38, 74, 39, 75, 40, 76, 41, 77, 42, 78, 43, 79, 44, 80, 45, 81, 46, 82, 47, 83, 48, 84, 49, 85, 50, 86, 51, 87, 52, 88, 53, 89, 54, 90, 62, 32, 74, 186, 70, 187, 69, 189, 56, 190, 76, 191, 68, 192, 71, 219, 73, 220, 72, 221, ButtonMappingUtil.KEYBOARD_DIRECTION, ButtonMappingUtil.KEYBOARD_DIRECTION, -2, -2, -1, -1};
    private static Set<Integer> KEY_INTERNAL_CONSUME_SET = new HashSet<Integer>() { // from class: com.haima.hmcp.utils.KeyMapUtil.1
    };

    public static int androidKeyCode2PASSKey(int i10) {
        int i11 = 0;
        while (true) {
            int[] iArr = KeyMap_androidKeyCode2PASSKey;
            if (i11 >= iArr.length) {
                return 0;
            }
            if (i10 == iArr[i11]) {
                return iArr[i11 + 1];
            }
            i11 += 2;
        }
    }

    private static HashSet<Integer> getDefaultInternalConsumeSet() {
        return new HashSet<Integer>() { // from class: com.haima.hmcp.utils.KeyMapUtil.2
        };
    }

    public static boolean isDirectionKey(int i10) {
        switch (i10) {
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                return true;
            default:
                return false;
        }
    }

    public static boolean isDpadNumKey(KeyEvent keyEvent) {
        if (isKeyboardEvent(keyEvent)) {
            return false;
        }
        switch (keyEvent.getKeyCode()) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                return true;
            default:
                return false;
        }
    }

    public static boolean isJoyPadKey(int i10) {
        return i10 == 29 || i10 == 32 || i10 == 47 || i10 == 51;
    }

    public static boolean isKeyboardEvent(KeyEvent keyEvent) {
        InputDevice device;
        return (keyEvent == null || (device = InputDevice.getDevice(keyEvent.getDeviceId())) == null || (device.getSources() & 257) != 257) ? false : true;
    }

    public static boolean isNeedInternalConsume(int i10) {
        return KEY_INTERNAL_CONSUME_SET.contains(Integer.valueOf(i10));
    }

    public static void parseKeyboardConsumedConfig(HashMap<String, String> map) {
        if (map != null && map.size() > 0) {
            String str = map.get(Constants.KEY_X86_KEYBOARD_CONSUMED_KEYS);
            LogUtils.d(TAG, "parseKeyboardConsumedConfig configData is " + str);
            if (!TextUtils.isEmpty(str)) {
                try {
                    JSONArray jSONArray = new JSONArray(str);
                    HashSet hashSet = new HashSet();
                    boolean z10 = false;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= jSONArray.length()) {
                            z10 = true;
                            break;
                        }
                        Object obj = jSONArray.get(i10);
                        if (!(obj instanceof Integer)) {
                            LogUtils.d(TAG, "parseKeyboardConsumedConfig: invalid element type at index " + i10 + ", element: " + obj);
                            break;
                        }
                        hashSet.add((Integer) obj);
                        i10++;
                    }
                    if (z10) {
                        KEY_INTERNAL_CONSUME_SET = hashSet;
                        LogUtils.d(TAG, "parseKeyboardConsumedConfig: successfully updated KEY_INTERNAL_CONSUME_SET with " + hashSet.size() + " keys");
                        return;
                    }
                } catch (Exception e10) {
                    LogUtils.e(TAG, "parseKeyboardConsumedConfig: JSON parse error", e10);
                }
            }
        }
        KEY_INTERNAL_CONSUME_SET = getDefaultInternalConsumeSet();
        LogUtils.d(TAG, "parseKeyboardConsumedConfig: reset to default values");
    }

    public static int passKey2AndroidKeyCode(int i10) {
        int i11 = 1;
        while (true) {
            int[] iArr = KeyMap_androidKeyCode2PASSKey;
            if (i11 >= iArr.length) {
                return 0;
            }
            if (i10 == iArr[i11]) {
                return iArr[i11 - 1];
            }
            i11 += 2;
        }
    }
}
