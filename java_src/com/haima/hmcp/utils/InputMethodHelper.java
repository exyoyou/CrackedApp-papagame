package com.haima.hmcp.utils;

import android.content.Context;
import android.provider.Settings;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;

/* JADX INFO: loaded from: classes5.dex */
public class InputMethodHelper {
    public static InputMethodInfo getCurrentInputMethodInfo(Context context) {
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        String string = Settings.Secure.getString(context.getContentResolver(), "default_input_method");
        for (InputMethodInfo inputMethodInfo : inputMethodManager.getEnabledInputMethodList()) {
            if (inputMethodInfo.getId().equals(string)) {
                return inputMethodInfo;
            }
        }
        return null;
    }

    public static String getCurrentInputMethodName(Context context) {
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        String string = Settings.Secure.getString(context.getContentResolver(), "default_input_method");
        for (InputMethodInfo inputMethodInfo : inputMethodManager.getEnabledInputMethodList()) {
            if (inputMethodInfo.getId().equals(string)) {
                return inputMethodInfo.loadLabel(context.getPackageManager()).toString();
            }
        }
        return null;
    }
}
