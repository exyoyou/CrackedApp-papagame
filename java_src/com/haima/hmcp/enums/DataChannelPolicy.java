package com.haima.hmcp.enums;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public enum DataChannelPolicy {
    UNKNOWN,
    START,
    BACKUP;

    public static DataChannelPolicy parsePolicy(String str) {
        if (!TextUtils.isEmpty(str)) {
            String upperCase = str.trim().toUpperCase();
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
