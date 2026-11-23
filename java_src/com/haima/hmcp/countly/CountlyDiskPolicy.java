package com.haima.hmcp.countly;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface CountlyDiskPolicy<T> {
    void deleteDiskCacheEvent(T t10);

    List<T> getDiskCacheEvent();

    void recordToDisk(T t10);
}
