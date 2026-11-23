package com.haima.hmcp.utils;

import android.content.Context;
import android.hardware.input.InputManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.annotation.RequiresApi;
import androidx.core.view.InputDeviceCompat;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.InputDeviceInfo;
import com.haima.hmcp.beans.JoyStickBean;
import com.haima.hmcp.business.SwitchControllerManager;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.proto.GSSDK;
import com.haima.hmcp.widgets.JoyStickMappingManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class HmInputDeviceManager {
    private static final int JOYSTICK_CHECK_DELAY_MS = 100;
    private static InputManager.InputDeviceListener inputDeviceListener;
    private static String TAG = "HmInputDeviceManager";
    private static final String VIBRATOR_TAG = TAG + "_VIBRATOR";
    private static ConcurrentHashMap<InputDeviceInfo, Integer> mGamePads = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<InputDeviceInfo, Integer> mHistoryGamePads = new ConcurrentHashMap<>();
    private static Map<Integer, GSSDK.OneInputOPData.InputOP> keyBoardMaps = new HashMap();
    private static Set<Integer> usedIndicesPS = new HashSet();
    private static Set<Integer> usedIndicesXbox = new HashSet();
    private static final ConcurrentHashMap<Integer, JoyStickBean> mJoySticks = new ConcurrentHashMap<>();
    private static InputManager mInputManager = null;
    private static final Handler mHandler = new Handler(Looper.getMainLooper());

    public interface OnDeviceConnectStatusListener {
        void deviceConnected(InputDeviceInfo inputDeviceInfo, int i10);

        void deviceDisconnected(InputDeviceInfo inputDeviceInfo, int i10);

        void onInputDeviceAdded();
    }

    public enum Vendor {
        XBOX,
        PS
    }

    static {
        Map<Integer, GSSDK.OneInputOPData.InputOP> map = keyBoardMaps;
        GSSDK.OneInputOPData.InputOP inputOP = GSSDK.OneInputOPData.InputOP.OP_KEY_VK_ESCAPE;
        map.put(111, inputOP);
        keyBoardMaps.put(4, inputOP);
        keyBoardMaps.put(131, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_F1);
        keyBoardMaps.put(132, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_F2);
        keyBoardMaps.put(133, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_F3);
        keyBoardMaps.put(134, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_F4);
        keyBoardMaps.put(135, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_F5);
        keyBoardMaps.put(136, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_F6);
        keyBoardMaps.put(137, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_F7);
        keyBoardMaps.put(138, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_F8);
        keyBoardMaps.put(139, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_F9);
        keyBoardMaps.put(140, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_F10);
        keyBoardMaps.put(141, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_F11);
        keyBoardMaps.put(142, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_F12);
        keyBoardMaps.put(68, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_OEM_3);
        keyBoardMaps.put(8, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_1);
        keyBoardMaps.put(9, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_2);
        keyBoardMaps.put(10, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_3);
        keyBoardMaps.put(11, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_4);
        keyBoardMaps.put(12, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_5);
        keyBoardMaps.put(13, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_6);
        keyBoardMaps.put(14, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_7);
        keyBoardMaps.put(15, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_8);
        keyBoardMaps.put(16, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_9);
        keyBoardMaps.put(7, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_0);
        keyBoardMaps.put(69, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_OEM_MINUS);
        keyBoardMaps.put(70, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_OEM_PLUS);
        keyBoardMaps.put(67, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_BACK);
        keyBoardMaps.put(112, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_DELETE);
        keyBoardMaps.put(61, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_TAB);
        keyBoardMaps.put(45, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_Q);
        keyBoardMaps.put(51, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_W);
        keyBoardMaps.put(33, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_E);
        keyBoardMaps.put(46, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_R);
        keyBoardMaps.put(48, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_T);
        keyBoardMaps.put(53, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_Y);
        keyBoardMaps.put(49, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_U);
        keyBoardMaps.put(37, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_I);
        keyBoardMaps.put(43, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_O);
        keyBoardMaps.put(44, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_P);
        keyBoardMaps.put(71, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_OEM_4);
        keyBoardMaps.put(72, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_OEM_6);
        keyBoardMaps.put(73, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_OEM_5);
        keyBoardMaps.put(115, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_CAPITAL);
        keyBoardMaps.put(29, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_A);
        keyBoardMaps.put(47, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_S);
        keyBoardMaps.put(32, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_D);
        keyBoardMaps.put(34, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_F);
        keyBoardMaps.put(35, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_G);
        keyBoardMaps.put(36, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_H);
        keyBoardMaps.put(38, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_J);
        keyBoardMaps.put(39, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_K);
        keyBoardMaps.put(40, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_L);
        keyBoardMaps.put(74, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_OEM_1);
        keyBoardMaps.put(75, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_OEM_7);
        Map<Integer, GSSDK.OneInputOPData.InputOP> map2 = keyBoardMaps;
        GSSDK.OneInputOPData.InputOP inputOP2 = GSSDK.OneInputOPData.InputOP.OP_KEY_VK_RETURN;
        map2.put(66, inputOP2);
        keyBoardMaps.put(59, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_SHIFT);
        keyBoardMaps.put(54, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_Z);
        keyBoardMaps.put(52, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_X);
        keyBoardMaps.put(31, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_C);
        keyBoardMaps.put(50, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_V);
        keyBoardMaps.put(30, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_B);
        keyBoardMaps.put(42, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_N);
        keyBoardMaps.put(41, GSSDK.OneInputOPData.InputOP.OP_KEY_KEY_M);
        keyBoardMaps.put(55, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_OEM_COMMA);
        keyBoardMaps.put(56, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_OEM_PERIOD);
        keyBoardMaps.put(76, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_OEM_2);
        keyBoardMaps.put(60, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_RSHIFT);
        keyBoardMaps.put(113, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_CONTROL);
        keyBoardMaps.put(57, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_MENU);
        keyBoardMaps.put(62, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_SPACE);
        keyBoardMaps.put(58, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_RMENU);
        keyBoardMaps.put(19, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_UP);
        keyBoardMaps.put(114, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_RCONTROL);
        Map<Integer, GSSDK.OneInputOPData.InputOP> map3 = keyBoardMaps;
        GSSDK.OneInputOPData.InputOP inputOP3 = GSSDK.OneInputOPData.InputOP.OP_KEY_VK_RWIN;
        map3.put(171, inputOP3);
        keyBoardMaps.put(117, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_LWIN);
        keyBoardMaps.put(118, inputOP3);
        keyBoardMaps.put(82, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_APPS);
        keyBoardMaps.put(20, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_DOWN);
        keyBoardMaps.put(21, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_LEFT);
        keyBoardMaps.put(22, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_RIGHT);
        keyBoardMaps.put(23, inputOP2);
        keyBoardMaps.put(120, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_SNAPSHOT);
        keyBoardMaps.put(122, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_HOME);
        keyBoardMaps.put(121, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_PAUSE);
        keyBoardMaps.put(123, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_END);
        keyBoardMaps.put(92, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_PRIOR);
        keyBoardMaps.put(93, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_NEXT);
        keyBoardMaps.put(124, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_INSERT);
        keyBoardMaps.put(116, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_SCROLL);
        keyBoardMaps.put(145, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_NUMPAD1);
        keyBoardMaps.put(146, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_NUMPAD2);
        keyBoardMaps.put(147, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_NUMPAD3);
        keyBoardMaps.put(148, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_NUMPAD4);
        keyBoardMaps.put(149, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_NUMPAD5);
        keyBoardMaps.put(150, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_NUMPAD6);
        keyBoardMaps.put(151, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_NUMPAD7);
        keyBoardMaps.put(152, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_NUMPAD8);
        keyBoardMaps.put(153, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_NUMPAD9);
        keyBoardMaps.put(144, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_NUMPAD0);
        keyBoardMaps.put(158, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_DECIMAL);
        keyBoardMaps.put(160, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_SEPARATOR);
        keyBoardMaps.put(154, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_DIVIDE);
        keyBoardMaps.put(155, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_MULTIPLY);
        keyBoardMaps.put(156, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_SUBTRACT);
        keyBoardMaps.put(157, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_ADD);
        keyBoardMaps.put(143, GSSDK.OneInputOPData.InputOP.OP_KEY_VK_NUMLOCK);
    }

    private HmInputDeviceManager() {
    }

    public static void addIndex(InputDeviceInfo inputDeviceInfo, int i10) {
        Integer inputDeviceId = inputDeviceInfo.getInputDeviceId();
        ConcurrentHashMap<Integer, JoyStickBean> concurrentHashMap = mJoySticks;
        if (!concurrentHashMap.containsKey(inputDeviceId)) {
            concurrentHashMap.put(inputDeviceId, new JoyStickBean());
        }
        if (isGamepadPS(inputDeviceInfo.getVendorId())) {
            usedIndicesPS.add(Integer.valueOf(i10));
        } else {
            usedIndicesXbox.add(Integer.valueOf(i10));
        }
    }

    public static void clearGamePadsStatus() {
        ConcurrentHashMap<InputDeviceInfo, Integer> concurrentHashMap = mGamePads;
        if (concurrentHashMap != null) {
            concurrentHashMap.clear();
        }
        ConcurrentHashMap<InputDeviceInfo, Integer> concurrentHashMap2 = mHistoryGamePads;
        if (concurrentHashMap2 != null) {
            concurrentHashMap2.clear();
        }
        Set<Integer> set = usedIndicesPS;
        if (set != null) {
            set.clear();
        }
        Set<Integer> set2 = usedIndicesXbox;
        if (set2 != null) {
            set2.clear();
        }
        if (mInputManager == null || inputDeviceListener == null) {
            return;
        }
        mInputManager.unregisterInputDeviceListener(inputDeviceListener);
        inputDeviceListener = null;
    }

    public static boolean contains(int[] iArr, int i10) {
        if (iArr == null) {
            return false;
        }
        for (int i11 : iArr) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    public static InputDeviceInfo getDeviceInfoByEvent(InputEvent inputEvent) {
        ConcurrentHashMap<InputDeviceInfo, Integer> concurrentHashMap;
        if (inputEvent != null && (concurrentHashMap = mGamePads) != null) {
            for (InputDeviceInfo inputDeviceInfo : concurrentHashMap.keySet()) {
                LogUtils.d(TAG, "getDeviceInfoById inputDevices:" + inputDeviceInfo);
                if (inputEvent.getDeviceId() == inputDeviceInfo.getInputDeviceId().intValue()) {
                    return inputDeviceInfo;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputDeviceInfo getDeviceInfoById(int i10, ConcurrentHashMap<InputDeviceInfo, Integer> concurrentHashMap) {
        if (concurrentHashMap == null) {
            return null;
        }
        Set<InputDeviceInfo> setKeySet = concurrentHashMap.keySet();
        LogUtils.d(TAG, "getDeviceInfoById inputDevices:" + setKeySet + ",deviceId:" + i10);
        for (InputDeviceInfo inputDeviceInfo : setKeySet) {
            LogUtils.d(TAG, "getDeviceInfoById inputDevices:" + inputDeviceInfo);
            if (i10 == inputDeviceInfo.getInputDeviceId().intValue()) {
                return inputDeviceInfo;
            }
        }
        return null;
    }

    public static ConcurrentHashMap<InputDeviceInfo, Integer> getGamePads() {
        return mGamePads;
    }

    public static int getIndexByEvent(InputEvent inputEvent) {
        if (inputEvent == null) {
            LogUtils.e(TAG, "event == null");
            return -1;
        }
        InputDevice device = inputEvent.getDevice();
        if (device == null) {
            LogUtils.e(TAG, "event.getDevice() == null");
            return -1;
        }
        InputDeviceInfo inputDeviceInfo = new InputDeviceInfo();
        inputDeviceInfo.setVendorId(getVendorId(inputEvent));
        inputDeviceInfo.setInputDeviceId(Integer.valueOf(device.getId()));
        Integer num = mGamePads.get(inputDeviceInfo);
        LogUtils.d(TAG, "getIndexByEvent inputDeviceInfo:" + inputDeviceInfo + ",mGamePads:" + mGamePads + ",deviceIndex:" + num);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public static int getNextDeviceIndex(String str) {
        LogUtils.d(TAG, "getNextDeviceIndex usedIndicesPS:" + usedIndicesPS + ",usedIndicesXbox:" + usedIndicesXbox);
        int i10 = 0;
        if (isGamepadPS(str)) {
            while (usedIndicesPS.contains(Integer.valueOf(i10))) {
                i10++;
            }
        } else {
            while (usedIndicesXbox.contains(Integer.valueOf(i10))) {
                i10++;
            }
        }
        return i10;
    }

    public static GSSDK.OneInputOPData.InputOP getRealInputOp(int i10) {
        return keyBoardMaps.get(Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputDevice getValidInputDevice(int i10, String str) {
        InputDevice device = InputDevice.getDevice(i10);
        LogUtils.d(TAG, str + " deviceId:" + i10);
        if (device == null) {
            LogUtils.d(TAG, "inputDevice is null=====:" + i10);
            return null;
        }
        if (getDeviceInfoById(i10, mGamePads) == null) {
            return device;
        }
        LogUtils.d(TAG, str + " already added deviceId:" + i10);
        return null;
    }

    public static String getVendorId(InputDevice inputDevice) {
        if (inputDevice == null) {
            return "";
        }
        return inputDevice.getVendorId() + "";
    }

    private static Vendor getVendorType(String str) {
        return isGamepadPS(str) ? Vendor.PS : Vendor.XBOX;
    }

    @RequiresApi(api = 19)
    private static Vibrator getVibrator(int i10, Vendor vendor, int i11, String str) {
        if (i10 < 0 || vendor == null) {
            LogUtils.d(VIBRATOR_TAG, "getVibrator failed:" + i10 + " " + vendor);
            return null;
        }
        int i12 = Integer.MAX_VALUE;
        for (Map.Entry<InputDeviceInfo, Integer> entry : mGamePads.entrySet()) {
            int iIntValue = entry.getValue().intValue();
            InputDeviceInfo key = entry.getKey();
            String vendorId = key.getVendorId();
            int iIntValue2 = key.getInputDeviceId().intValue();
            if (iIntValue2 < i12) {
                i12 = iIntValue2;
            }
            if (i10 == iIntValue && getVendorType(vendorId) == vendor && !Constants.CONFIG_IS_SINGLE_GAMEPAD_MODE) {
                LogUtils.d(VIBRATOR_TAG, "getVibrator vendor=" + vendor);
                return getVibrator(i10, iIntValue2);
            }
        }
        if (Constants.CONFIG_IS_GAME_SUPPORT_GAMEPAD_HOT_SWAP && Constants.CONFIG_IS_SINGLE_GAMEPAD_MODE) {
            Vibrator vibrator = getVibrator(i10, i11, vendor, str);
            return vibrator == null ? getVibrator(0, i12, vendor, str) : vibrator;
        }
        LogUtils.d(VIBRATOR_TAG, "getVibrator failed:device not found " + i10 + " " + vendor);
        return null;
    }

    public static boolean hasJoyStick() {
        boolean zIsJoyStick = false;
        for (int i10 : InputDevice.getDeviceIds()) {
            zIsJoyStick = isJoyStick(InputDevice.getDevice(i10));
            if (zIsJoyStick) {
                break;
            }
        }
        return zIsJoyStick;
    }

    public static void initGamePadDevices(OnDeviceConnectStatusListener onDeviceConnectStatusListener) {
        int iIntValue;
        Integer inputDeviceId;
        if (mGamePads == null || mHistoryGamePads == null) {
            LogUtils.e(TAG, "updateGamePadDevices failure mGamePads == null || mHistoryGamePads == null");
            CountlyUtil.recordErrorEvent("updateGamePadDevices failure mGamePads == null || mHistoryGamePads == null");
            return;
        }
        if (onDeviceConnectStatusListener == null) {
            LogUtils.e(TAG, "updateGamePadDevices failure listener == null");
            CountlyUtil.recordErrorEvent("updateGamePadDevices failure listener == null");
            return;
        }
        int[] deviceIds = InputDevice.getDeviceIds();
        mHistoryGamePads.clear();
        mHistoryGamePads.putAll(mGamePads);
        mGamePads.clear();
        Iterator<Map.Entry<InputDeviceInfo, Integer>> it2 = mHistoryGamePads.entrySet().iterator();
        while (it2.hasNext()) {
            InputDeviceInfo key = it2.next().getKey();
            if (key != null && (inputDeviceId = key.getInputDeviceId()) != null && !contains(deviceIds, inputDeviceId.intValue())) {
                removeDevice(key);
                Integer num = mHistoryGamePads.get(key);
                LogUtils.e(TAG, "initGamePadDevices  cachedInputDeviceIndex" + num);
                if (num != null) {
                    removeIndex(key, num.intValue());
                }
            }
        }
        for (int i10 : deviceIds) {
            InputDevice device = InputDevice.getDevice(i10);
            LogUtils.d(TAG, "initGamePadDevices id:" + i10);
            if (isJoyStick(device)) {
                InputDeviceInfo inputDeviceInfo = new InputDeviceInfo();
                inputDeviceInfo.setInputDeviceId(Integer.valueOf(i10));
                if (isNewDevice(device)) {
                    LogUtils.d(TAG, "initGamePadDevices not contains device:" + StringUtils.replaceSpecialStr(device.toString()));
                    iIntValue = getNextDeviceIndex(getVendorId(device));
                    inputDeviceInfo.setVendorId(getVendorId(device));
                    mGamePads.put(inputDeviceInfo, Integer.valueOf(iIntValue));
                    addIndex(inputDeviceInfo, iIntValue);
                    SwitchControllerManager.getInstance().addDevice(device, iIntValue);
                } else {
                    inputDeviceInfo = getDeviceInfoById(i10, mHistoryGamePads);
                    Integer num2 = mHistoryGamePads.get(inputDeviceInfo);
                    iIntValue = num2 != null ? num2.intValue() : 0;
                    mGamePads.put(inputDeviceInfo, Integer.valueOf(iIntValue));
                    SwitchControllerManager.getInstance().addDevice(device, iIntValue);
                }
                LogUtils.e(TAG, "inputDevice :mGamePads.put " + inputDeviceInfo + "," + iIntValue);
            }
        }
        for (Map.Entry entry : new ArrayList(mGamePads.entrySet())) {
            onDeviceConnectStatusListener.deviceConnected((InputDeviceInfo) entry.getKey(), ((Integer) entry.getValue()).intValue());
        }
    }

    public static boolean isGamepadPS(String str) {
        return !TextUtils.isEmpty(str) && Constants.CONFIG_GAMEPAD_PS_VENDOR_IDS.contains(str);
    }

    public static boolean isJoyStick(InputEvent inputEvent) {
        InputDevice device = inputEvent.getDevice();
        if (device == null) {
            return false;
        }
        return isJoyStick(device);
    }

    public static boolean isMouse(InputEvent inputEvent) {
        InputDevice device = inputEvent.getDevice();
        if (device == null) {
            return false;
        }
        return isMouse(device);
    }

    public static boolean isMouseInput(InputEvent inputEvent) {
        LogUtils.d(TAG, "isMouseInput ");
        boolean z10 = false;
        if (inputEvent != null) {
            int source = inputEvent.getSource();
            if (Build.VERSION.SDK_INT < 26 ? (source & 8194) == 8194 : !((source & 8194) != 8194 && (source & 131076) != 131076)) {
                z10 = true;
            }
        }
        LogUtils.d(TAG, "isMouseInput isMouse:" + z10);
        return z10;
    }

    public static boolean isMouseLeftKeyEvent(MotionEvent motionEvent) {
        LogUtils.d(TAG, "isMouseEvent event" + motionEvent);
        boolean zIsMouseInput = isMouseInput(motionEvent);
        LogUtils.d(TAG, "isMouseEvent isMouseInput:" + zIsMouseInput);
        if (zIsMouseInput) {
            LogUtils.d(TAG, "isMouseEvent is mouse result:" + zIsMouseInput);
            if (Build.VERSION.SDK_INT >= 23) {
                int action = motionEvent.getAction();
                int actionButton = motionEvent.getActionButton();
                int buttonState = motionEvent.getButtonState();
                LogUtils.d(TAG, "isMouseEvent action:" + action + ",actionButton:" + actionButton + ",actionButtonState:" + buttonState);
                zIsMouseInput = actionButton == 1;
            }
        }
        LogUtils.d(TAG, "isMouseEvent is left mouse result:" + zIsMouseInput);
        return zIsMouseInput;
    }

    private static boolean isNewDevice(InputDevice inputDevice) {
        if (inputDevice == null) {
            return false;
        }
        for (InputDeviceInfo inputDeviceInfo : mHistoryGamePads.keySet()) {
            if (inputDeviceInfo != null && inputDeviceInfo.getInputDeviceId().intValue() == inputDevice.getId()) {
                return false;
            }
        }
        LogUtils.d(TAG, "GamePadData isNewDevice id:" + inputDevice.getId());
        return true;
    }

    public static boolean isSameVendorType(String str, String str2) {
        return getVendorType(str) == getVendorType(str2);
    }

    public static boolean isSystemAPISupportVibrator() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void joyStickActions(InputDevice inputDevice, OnDeviceConnectStatusListener onDeviceConnectStatusListener, String str, int i10) {
        int nextDeviceIndex = getNextDeviceIndex(getVendorId(inputDevice));
        LogUtils.d(TAG, str + "=singleGamePad= isJoyStick deviceId:" + i10 + ",index:" + nextDeviceIndex);
        InputDeviceInfo inputDeviceInfo = new InputDeviceInfo();
        inputDeviceInfo.setVendorId(getVendorId(inputDevice));
        inputDeviceInfo.setInputDeviceId(Integer.valueOf(inputDevice.getId()));
        mGamePads.put(inputDeviceInfo, Integer.valueOf(nextDeviceIndex));
        SwitchControllerManager.getInstance().addDevice(inputDevice, nextDeviceIndex);
        onDeviceConnectStatusListener.deviceConnected(inputDeviceInfo, nextDeviceIndex);
        addIndex(inputDeviceInfo, nextDeviceIndex);
    }

    public static JoyStickBean parseJoyKey(KeyEvent keyEvent) {
        JoyStickBean joyStickBean = new JoyStickBean();
        InputDevice device = keyEvent.getDevice();
        if (device == null) {
            LogUtils.d(TAG, "parseJoyKey interrupted:inputDevice is null");
            return joyStickBean;
        }
        Integer numValueOf = Integer.valueOf(device.getId());
        ConcurrentHashMap<Integer, JoyStickBean> concurrentHashMap = mJoySticks;
        JoyStickBean joyStickBean2 = concurrentHashMap.get(numValueOf);
        if (joyStickBean2 == null) {
            joyStickBean2 = new JoyStickBean();
        }
        boolean key = joyStickBean2.parseKey(keyEvent);
        LogUtils.d(TAG, "parseJoyKey hasChanged:" + key);
        concurrentHashMap.put(numValueOf, joyStickBean2);
        return joyStickBean2;
    }

    public static JoyStickBean parseJoyMotion(MotionEvent motionEvent) {
        JoyStickBean joyStickBean = new JoyStickBean();
        InputDevice device = motionEvent.getDevice();
        if (device == null) {
            LogUtils.d(TAG, "parseJoyMotion interrupted:inputDevice is null");
            return joyStickBean;
        }
        Integer numValueOf = Integer.valueOf(device.getId());
        ConcurrentHashMap<Integer, JoyStickBean> concurrentHashMap = mJoySticks;
        if (concurrentHashMap.get(numValueOf) == null) {
            concurrentHashMap.put(numValueOf, joyStickBean);
        }
        JoyStickBean joyStickBean2 = concurrentHashMap.get(numValueOf);
        if (joyStickBean2 == null) {
            joyStickBean2 = new JoyStickBean();
        }
        boolean motion = joyStickBean2.parseMotion(motionEvent);
        LogUtils.d(TAG, "parseJoyMotion hasChanged:" + motion);
        concurrentHashMap.put(numValueOf, joyStickBean2);
        return joyStickBean2;
    }

    public static JoyStickBean parseMappingMotion(InputEvent inputEvent, float f10, float f11, int i10) {
        JoyStickBean joyStickBean = new JoyStickBean();
        if (inputEvent.getDevice() == null) {
            LogUtils.d(TAG, "parseJoyKey interrupted:inputDevice is null");
            return joyStickBean;
        }
        ConcurrentHashMap<Integer, JoyStickBean> concurrentHashMap = mJoySticks;
        JoyStickBean joyStickBean2 = concurrentHashMap.get(1000);
        if (joyStickBean2 == null) {
            joyStickBean2 = new JoyStickBean();
        }
        if (i10 == 2) {
            joyStickBean2.parseMappingMotion(f10, f11, joyStickBean2.R_X, -joyStickBean2.R_Y);
        } else if (i10 == 3) {
            joyStickBean2.parseMappingMotion(joyStickBean2.L_X, -joyStickBean2.L_Y, f10, f11);
        }
        concurrentHashMap.put(1000, joyStickBean2);
        LogUtils.d(TAG, "parseMappingMotion joyStickBean=" + joyStickBean2.hashCode());
        return joyStickBean2;
    }

    public static void registGamePadListener(Context context, final OnDeviceConnectStatusListener onDeviceConnectStatusListener) {
        if (onDeviceConnectStatusListener == null) {
            LogUtils.e(TAG, "updateGamePadDevices failure listener == null");
            CountlyUtil.recordErrorEvent("updateGamePadDevices failure listener == null");
        } else if (inputDeviceListener == null) {
            mInputManager = (InputManager) context.getSystemService("input");
            InputManager.InputDeviceListener inputDeviceListener2 = new InputManager.InputDeviceListener() { // from class: com.haima.hmcp.utils.HmInputDeviceManager.1
                @Override // android.hardware.input.InputManager.InputDeviceListener
                public void onInputDeviceAdded(final int i10) {
                    final String str = "=singleGamePad= registGamePadListener onInputDeviceAdded ";
                    InputDevice validInputDevice = HmInputDeviceManager.getValidInputDevice(i10, "=singleGamePad= registGamePadListener onInputDeviceAdded ");
                    if (HmInputDeviceManager.isJoyStick(validInputDevice)) {
                        HmInputDeviceManager.joyStickActions(validInputDevice, onDeviceConnectStatusListener, "=singleGamePad= registGamePadListener onInputDeviceAdded ", i10);
                    } else {
                        LogUtils.d(HmInputDeviceManager.TAG, "=singleGamePad= registGamePadListener onInputDeviceAdded isJoyStick is false,start DoubleCheck");
                        HmInputDeviceManager.mHandler.postDelayed(new Runnable() { // from class: com.haima.hmcp.utils.HmInputDeviceManager.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                InputDevice validInputDevice2 = HmInputDeviceManager.getValidInputDevice(i10, str);
                                if (validInputDevice2 == null) {
                                    return;
                                }
                                if (HmInputDeviceManager.isJoyStick(validInputDevice2)) {
                                    HmInputDeviceManager.joyStickActions(validInputDevice2, onDeviceConnectStatusListener, str, i10);
                                    return;
                                }
                                LogUtils.d(HmInputDeviceManager.TAG, str + "DoubleCheck is over,isJoyStick is still false");
                            }
                        }, 100L);
                    }
                    onDeviceConnectStatusListener.onInputDeviceAdded();
                }

                @Override // android.hardware.input.InputManager.InputDeviceListener
                public void onInputDeviceChanged(int i10) {
                    LogUtils.d(HmInputDeviceManager.TAG, "registGamePadListener onInputDeviceChanged deviceId:" + i10);
                }

                @Override // android.hardware.input.InputManager.InputDeviceListener
                public void onInputDeviceRemoved(int i10) {
                    InputDeviceInfo deviceInfoById = HmInputDeviceManager.getDeviceInfoById(i10, HmInputDeviceManager.mGamePads);
                    SwitchControllerManager.getInstance().removeDevice(i10);
                    HmInputDeviceManager.removeDevice(deviceInfoById);
                    LogUtils.d(HmInputDeviceManager.TAG, "registGamePadListener onInputDeviceRemoved deviceId:" + i10 + ",inputDeviceInfo:" + deviceInfoById);
                    if (deviceInfoById == null || deviceInfoById.getInputDeviceId() == null) {
                        return;
                    }
                    Integer num = (Integer) HmInputDeviceManager.mGamePads.get(deviceInfoById);
                    HmInputDeviceManager.mGamePads.remove(deviceInfoById);
                    if (num != null) {
                        HmInputDeviceManager.removeIndex(deviceInfoById, num.intValue());
                        onDeviceConnectStatusListener.deviceDisconnected(deviceInfoById, num.intValue());
                    }
                }
            };
            inputDeviceListener = inputDeviceListener2;
            InputManager inputManager = mInputManager;
            if (inputManager != null) {
                inputManager.registerInputDeviceListener(inputDeviceListener2, null);
            }
        }
    }

    public static void removeDevice(InputDeviceInfo inputDeviceInfo) {
        String str = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("removeDevice:");
        sb2.append(inputDeviceInfo);
        sb2.append(",mJoySticks:");
        ConcurrentHashMap<Integer, JoyStickBean> concurrentHashMap = mJoySticks;
        sb2.append(concurrentHashMap);
        LogUtils.d(str, sb2.toString());
        if (inputDeviceInfo != null) {
            concurrentHashMap.remove(inputDeviceInfo.getInputDeviceId());
        }
        LogUtils.d(TAG, "removeDevice mJoySticks:" + concurrentHashMap);
    }

    public static void removeIndex(InputDeviceInfo inputDeviceInfo, int i10) {
        LogUtils.d(TAG, "removeIndex inputDevice:" + inputDeviceInfo + ",index:" + i10);
        if (inputDeviceInfo == null) {
            LogUtils.e(TAG, "removeIndex inputDevice==null");
        } else if (isGamepadPS(inputDeviceInfo.getVendorId())) {
            usedIndicesPS.remove(Integer.valueOf(i10));
        } else {
            usedIndicesXbox.remove(Integer.valueOf(i10));
        }
    }

    public static JoyStickBean resetJoyStickBean(InputEvent inputEvent) {
        InputDevice device;
        JoyStickBean joyStickBean = new JoyStickBean();
        if (inputEvent == null || (device = inputEvent.getDevice()) == null) {
            return joyStickBean;
        }
        mJoySticks.put(Integer.valueOf(device.getId()), joyStickBean);
        return joyStickBean;
    }

    @RequiresApi(api = 19)
    public static void startVibrator(int i10, Vendor vendor, int i11, int i12, Context context, int i13, String str) {
        Vibrator vibrator;
        LogUtils.d(VIBRATOR_TAG, "startVibrator " + i10 + " " + vendor + " " + i11 + " " + i12);
        if (VibratorUtil.hasVibratorPermission(context) && (vibrator = getVibrator(i10, vendor, i13, str)) != null) {
            if (Build.VERSION.SDK_INT >= 26) {
                vibrator.vibrate(VibrationEffect.createOneShot(i12, i11));
            } else {
                vibrator.vibrate(i12);
            }
        }
    }

    @RequiresApi(api = 19)
    public static void stopAllVibrators(Context context) {
        InputDevice device;
        Vibrator vibrator;
        LogUtils.d(VIBRATOR_TAG, "stopAllVibrators");
        if (VibratorUtil.hasVibratorPermission(context)) {
            Iterator<Map.Entry<InputDeviceInfo, Integer>> it2 = mGamePads.entrySet().iterator();
            while (it2.hasNext() && (device = InputDevice.getDevice(it2.next().getKey().getInputDeviceId().intValue())) != null && (vibrator = device.getVibrator()) != null && vibrator.hasVibrator()) {
                vibrator.cancel();
            }
        }
    }

    @RequiresApi(api = 19)
    public static void stopVibrator(int i10, Vendor vendor, Context context, int i11, String str) {
        Vibrator vibrator;
        LogUtils.d(VIBRATOR_TAG, "stopVibrator " + i10 + " " + vendor);
        if (VibratorUtil.hasVibratorPermission(context) && (vibrator = getVibrator(i10, vendor, i11, str)) != null) {
            vibrator.cancel();
        }
    }

    public static String getVendorId(InputEvent inputEvent) {
        InputDevice device;
        InputDeviceInfo deviceInfoById;
        return (inputEvent == null || (device = inputEvent.getDevice()) == null || (deviceInfoById = getDeviceInfoById(device.getId(), mGamePads)) == null) ? "" : deviceInfoById.getVendorId();
    }

    public static boolean isJoyStick(InputDevice inputDevice) {
        if (inputDevice == null) {
            LogUtils.e(TAG, "isJoyStick device is null");
            return false;
        }
        boolean z10 = (inputDevice.getSources() & InputDeviceCompat.SOURCE_JOYSTICK) == 16777232 || (inputDevice.getSources() & 1025) == 1025;
        boolean z11 = (inputDevice.getMotionRange(0) == null && inputDevice.getMotionRange(1) == null && inputDevice.getMotionRange(11) == null && inputDevice.getMotionRange(12) == null && inputDevice.getMotionRange(13) == null && inputDevice.getMotionRange(14) == null) ? false : true;
        boolean z12 = ((inputDevice.getSources() & 8194) == 8194 || (inputDevice.getSources() & 131076) == 131076) && !inputDevice.hasKeys(96, 97, 99, 100)[0];
        LogUtils.i(TAG, "isJoyStick: sourceJoy = " + z10 + ", hasJoyMotion = " + z11 + ", isMouse = " + z12);
        return z10 && z11 && !z12;
    }

    public static boolean isMouse(InputDevice inputDevice) {
        return ((inputDevice.getSources() & 8194) == 8194 || (inputDevice.getSources() & 131076) == 131076) && !inputDevice.hasKeys(96, 97, 99, 100)[0];
    }

    public static JoyStickBean parseJoyKey(String str, InputEvent inputEvent, int i10) {
        JoyStickBean joyStickBean = new JoyStickBean();
        if (inputEvent.getDevice() == null) {
            LogUtils.d(TAG, "parseJoyKey interrupted:inputDevice is null");
            return joyStickBean;
        }
        JoyStickBean joyStickBean2 = mJoySticks.get(1000);
        if (joyStickBean2 == null) {
            joyStickBean2 = new JoyStickBean();
        }
        LogUtils.d(TAG, "parseJoyKey: keyCodeName:" + str);
        if (str != null && str.contains("|")) {
            boolean z10 = false;
            for (String str2 : str.split(Constants.TIPS_SPECIAL_TAG)) {
                if (str2 != null && !str2.trim().isEmpty()) {
                    int keyCode = JoyStickMappingManager.getKeyCode(str2.trim());
                    if (keyCode != -1) {
                        boolean mappingKey = joyStickBean2.parseMappingKey(keyCode, i10);
                        z10 = z10 || mappingKey;
                        LogUtils.d(TAG, "parseJoyKey multi-key: " + str2.trim() + " (keyCode:" + keyCode + ") hasChanged:" + mappingKey);
                    } else {
                        LogUtils.w(TAG, "parseJoyKey multi-key: invalid keyCode for " + str2.trim());
                    }
                }
            }
            LogUtils.d(TAG, "parseJoyKey multi-key total hasChanged:" + z10);
        } else {
            LogUtils.d(TAG, "parseJoyKey single-key: " + str + " hasChanged:" + joyStickBean2.parseMappingKey(JoyStickMappingManager.getKeyCode(str), i10));
        }
        mJoySticks.put(1000, joyStickBean2);
        LogUtils.d(TAG, "parseJoyKey joyStickBean=" + joyStickBean2.hashCode());
        return joyStickBean2;
    }

    @RequiresApi(api = 19)
    private static Vibrator getVibrator(int i10, int i11) {
        Vibrator vibrator;
        InputDevice device = InputDevice.getDevice(i11);
        if (device == null || (vibrator = device.getVibrator()) == null || !vibrator.hasVibrator()) {
            return null;
        }
        LogUtils.d(VIBRATOR_TAG, "getVibrator succeed: index=" + i10 + " deviceId=" + i11);
        return vibrator;
    }

    @RequiresApi(api = 19)
    private static Vibrator getVibrator(int i10, int i11, Vendor vendor, String str) {
        if (InputDevice.getDevice(i11) == null) {
            return null;
        }
        return getVibrator(i10, i11);
    }
}
