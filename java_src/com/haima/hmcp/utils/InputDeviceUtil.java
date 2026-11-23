package com.haima.hmcp.utils;

import android.view.InputDevice;
import android.view.KeyEvent;
import com.haima.hmcp.Constants;

/* JADX INFO: loaded from: classes5.dex */
public class InputDeviceUtil {
    public static boolean isExternalKeyboardByDeviceSources(KeyEvent keyEvent) {
        if (keyEvent == null || keyEvent.getDevice() == null) {
            return false;
        }
        return ((keyEvent.getDevice().getSources() & 257) != 0) && !HmInputDeviceManager.isJoyStick(keyEvent);
    }

    public static boolean isMouseOrKeyboardDevice(int i10, KeyEvent keyEvent) {
        String name;
        if (keyEvent.getSource() == 8194) {
            return true;
        }
        if (keyEvent.getSource() == 257) {
            return true;
        }
        if ((i10 <= 95 && i10 >= 29) || (i10 <= 163 && i10 >= 111)) {
            return true;
        }
        InputDevice device = keyEvent.getDevice();
        if (device == null || (name = device.getName()) == null) {
            return false;
        }
        if (name.toLowerCase().contains(Constants.KEYBOARD_MAP_CONTENT_X86_MOUSE_TAG)) {
            return true;
        }
        return name.toLowerCase().contains("keyboard") && ((device.getSources() & 257) == 257);
    }

    public static boolean isRemoteControlDevice(int i10, KeyEvent keyEvent) {
        String name;
        InputDevice device = keyEvent.getDevice();
        if (device == null) {
            return false;
        }
        if (!((device.getSources() & 513) == 513) || (name = device.getName()) == null || name.toLowerCase().contains(Constants.KEYBOARD_MAP_CONTENT_X86_MOUSE_TAG) || name.toLowerCase().contains("keyboard")) {
            return false;
        }
        return (i10 < 29 || i10 == 82 || i10 == 135) || name.contains("遥控器");
    }
}
