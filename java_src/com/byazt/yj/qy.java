package com.byazt.yj;

import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
public interface qy {
    void clearAllCache();

    void clearCache(double d10);

    void clearDiskCache(double d10);

    void clearMemoryCache(double d10);

    yp from(String str);

    InputStream getCacheStream(String str, String str2);

    InputStream getDiskCacheStream(String str, String str2, String str3);

    boolean hasDiskCache(String str, String str2, String str3);
}
