package com.haima.hmcp.beans;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public class GPSData {
    public Float altitude;
    public Float course;
    public Float latitude;
    public Float longitude;
    public Float speed;

    public static boolean checkItude(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        return str.trim().matches("[\\-+]?(0?\\d{1,2}|0?\\d{1,2}\\.\\d{1,15}|1[0-7]?\\d|1[0-7]?\\d\\.\\d{1,15}|180|180\\.0{1,15})") && str2.trim().matches("[\\-+]?([0-8]?\\d|[0-8]?\\d\\.\\d{1,15}|90|90\\.0{1,15})");
    }

    public static boolean isValid(GPSData gPSData) {
        if (gPSData == null || !checkItude(String.valueOf(gPSData.longitude), String.valueOf(gPSData.latitude))) {
            return false;
        }
        Float f10 = gPSData.course;
        if (f10 != null) {
            return f10.floatValue() >= 0.0f && gPSData.course.floatValue() < 360.0f;
        }
        return true;
    }
}
