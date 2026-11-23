package com.kwad.sdk.liteapi.oaid.helpers;

import androidx.annotation.Keep;
import java.io.Closeable;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class OaidInnerUtils {
    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }
}
