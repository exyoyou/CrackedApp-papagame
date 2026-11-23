package com.haima.hmcp.utils;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes5.dex */
public class PermissionUtil {
    public static boolean checkSelfPermission(@NonNull Context context, @NonNull String str) {
        return ContextCompat.checkSelfPermission(context, str) == 0;
    }
}
