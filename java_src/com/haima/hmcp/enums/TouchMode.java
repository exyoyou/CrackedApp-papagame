package com.haima.hmcp.enums;

/* JADX INFO: loaded from: classes5.dex */
public enum TouchMode {
    TOUCH_MODE_NONE(0),
    TOUCH_MODE_MOUSE(1),
    TOUCH_MODE_SCREEN(2),
    TOUCH_MODE_MULTIPLE(3),
    TOUCH_MODE_SCREEN_SLIDE(4),
    TOUCH_MODE_MOUSE_SLIDE(5);

    int value;

    TouchMode(int i10) {
        this.value = i10;
    }

    public static TouchMode parse(int i10) {
        if (i10 == 1) {
            return TOUCH_MODE_MOUSE;
        }
        if (i10 == 2) {
            return TOUCH_MODE_SCREEN;
        }
        if (i10 == 3) {
            return TOUCH_MODE_MULTIPLE;
        }
        if (i10 != 4) {
            return i10 != 5 ? TOUCH_MODE_NONE : TOUCH_MODE_MOUSE_SLIDE;
        }
        return TOUCH_MODE_SCREEN_SLIDE;
    }
}
