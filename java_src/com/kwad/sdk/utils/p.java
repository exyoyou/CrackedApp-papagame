package com.kwad.sdk.utils;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.Constants;

/* JADX INFO: loaded from: classes2.dex */
public final class p {
    public static boolean a(Context context, CharSequence charSequence, CharSequence charSequence2) {
        if (context != null) {
            try {
                if (!TextUtils.isEmpty(charSequence) && !TextUtils.isEmpty(charSequence2)) {
                    ((ClipboardManager) context.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setPrimaryClip(ClipData.newPlainText(charSequence, charSequence2));
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
