package com.haima.hmcp.utils;

import android.view.KeyEvent;

/* JADX INFO: loaded from: classes5.dex */
public class LockKeyUtils {
    public static boolean isCapsLockOn(KeyEvent keyEvent) {
        return (keyEvent == null || (keyEvent.getMetaState() & 1048576) == 0) ? false : true;
    }

    public static boolean isNumLockOn(KeyEvent keyEvent) {
        return (keyEvent == null || (keyEvent.getMetaState() & 2097152) == 0) ? false : true;
    }

    public static boolean isScrollLockOn(KeyEvent keyEvent) {
        return (keyEvent == null || (keyEvent.getMetaState() & 4194304) == 0) ? false : true;
    }
}
