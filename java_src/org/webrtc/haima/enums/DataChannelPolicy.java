package org.webrtc.haima.enums;

import android.text.TextUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes10.dex */
public enum DataChannelPolicy {
    UNKNOWN,
    START,
    BACKUP;

    public static DataChannelPolicy parsePolicy(String str) {
        if (!TextUtils.isEmpty(str)) {
            String upperCase = str.trim().toUpperCase(Locale.getDefault());
            if ("START".equals(upperCase)) {
                return START;
            }
            if ("BACKUP".equals(upperCase)) {
                return BACKUP;
            }
        }
        return UNKNOWN;
    }
}
