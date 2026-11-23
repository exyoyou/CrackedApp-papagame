package com.bykv.vk.component.ttvideo.mediakit.medialoader;

/* JADX INFO: loaded from: classes9.dex */
public interface AVMDLDataLoaderListener {
    String getCheckSumInfo(String str);

    long getInt64Value(int i10, long j10);

    String getStringValue(int i10, long j10, String str);

    void onNotify(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo);
}
