package com.haima.hmcp.utils;

import android.content.Context;
import android.media.AudioManager;

/* JADX INFO: loaded from: classes5.dex */
public class VolumeUtils {
    public static final String EXTRA_VOLUME_STREAM_TYPE = "android.media.EXTRA_VOLUME_STREAM_TYPE";
    public static final String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";
    public static final String VOLUME_PREFIX_STR = "current music volume:";

    private VolumeUtils() {
    }

    public static String getCurrentMediaVolume(Context context) {
        return VOLUME_PREFIX_STR + getCurrentMediaVolumeInt(context);
    }

    public static int getCurrentMediaVolumeInt(Context context) {
        if (context == null) {
            return -1;
        }
        return ((AudioManager) context.getSystemService("audio")).getStreamVolume(3);
    }
}
