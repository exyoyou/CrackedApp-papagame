package com.haima.hmcp.utils;

import android.content.Context;
import android.content.Intent;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public class MediaUtil {
    public static boolean isSupportPicture(String str) {
        return TextUtils.equals("jpg", str) || TextUtils.equals("jpeg", str) || TextUtils.equals("png", str);
    }

    public static boolean isSupportVideo(String str) {
        return TextUtils.equals("mp4", str);
    }

    public static void scanMedia(final Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        MediaScannerConnection.scanFile(context, new String[]{str}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.haima.hmcp.utils.MediaUtil.1
            @Override // android.media.MediaScannerConnection.OnScanCompletedListener
            public void onScanCompleted(String str2, Uri uri) {
                Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
                intent.setData(uri);
                context.sendBroadcast(intent);
            }
        });
    }
}
