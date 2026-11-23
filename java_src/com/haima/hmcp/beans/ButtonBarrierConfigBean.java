package com.haima.hmcp.beans;

import android.view.KeyEvent;
import androidx.core.view.InputDeviceCompat;
import com.haima.hmcp.utils.InputDeviceUtil;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ButtonBarrierConfigBean {
    public HashMap<BarrierKeyType, List<ButtonBarrier>> buttonBarriers;

    public enum BarrierKeyType {
        GLOBAL(0),
        JOY_TO_MOUSE_KEY(1),
        JOY_KEY(InputDeviceCompat.SOURCE_JOYSTICK),
        DPAD_KEY(513),
        KEYBOARD_KEY(257),
        MOUSE_KEY(8194);

        private int type;

        BarrierKeyType(int i10) {
            this.type = i10;
        }

        public int getSourceType() {
            return this.type;
        }
    }

    private ButtonBarrier findButtonInList(BarrierKeyType barrierKeyType, int i10) {
        List<ButtonBarrier> list;
        HashMap<BarrierKeyType, List<ButtonBarrier>> map = this.buttonBarriers;
        if (map != null && !map.isEmpty() && (list = this.buttonBarriers.get(barrierKeyType)) != null && !list.isEmpty()) {
            for (int i11 = 0; i11 < list.size(); i11++) {
                ButtonBarrier buttonBarrier = list.get(i11);
                if (buttonBarrier != null && buttonBarrier.keyCode == i10) {
                    return buttonBarrier;
                }
            }
        }
        return null;
    }

    private ButtonBarrier findJoyToMouseOrFallback(int i10) {
        ButtonBarrier buttonBarrierFindButtonInList = findButtonInList(BarrierKeyType.JOY_TO_MOUSE_KEY, i10);
        return buttonBarrierFindButtonInList != null ? buttonBarrierFindButtonInList : findButtonInList(BarrierKeyType.GLOBAL, i10);
    }

    public ButtonBarrier findButtonBarrier(KeyEvent keyEvent, boolean z10) {
        HashMap<BarrierKeyType, List<ButtonBarrier>> map;
        if (keyEvent != null && (map = this.buttonBarriers) != null && !map.isEmpty()) {
            ButtonBarrier buttonBarrierFindJoyToMouseOrFallback = z10 ? findJoyToMouseOrFallback(keyEvent.getKeyCode()) : findButtonInList(BarrierKeyType.GLOBAL, keyEvent.getKeyCode());
            if (buttonBarrierFindJoyToMouseOrFallback != null) {
                return buttonBarrierFindJoyToMouseOrFallback;
            }
            if (InputDeviceUtil.isRemoteControlDevice(keyEvent.getKeyCode(), keyEvent)) {
                return findButtonInList(BarrierKeyType.DPAD_KEY, keyEvent.getKeyCode());
            }
            if (KeyEvent.isGamepadButton(keyEvent.getKeyCode())) {
                return findButtonInList(BarrierKeyType.JOY_KEY, keyEvent.getKeyCode());
            }
            if (InputDeviceUtil.isMouseOrKeyboardDevice(keyEvent.getKeyCode(), keyEvent)) {
                return keyEvent.getSource() == 8194 ? findButtonInList(BarrierKeyType.MOUSE_KEY, keyEvent.getKeyCode()) : findButtonInList(BarrierKeyType.KEYBOARD_KEY, keyEvent.getKeyCode());
            }
        }
        return null;
    }
}
