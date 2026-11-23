package org.hmwebrtc.utils;

import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public class Assert {
    public static void that(boolean z10, String str) {
        if (z10) {
            return;
        }
        Logging.e("Assert", str);
        throw new AssertionError(str);
    }
}
