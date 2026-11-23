package com.sigmob.sdk.base.common;

import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.SigmobRequestQueue;
import com.czhj.volley.toolbox.FileDownloader;

/* JADX INFO: loaded from: classes5.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static FileDownloader f79270a;

    public static FileDownloader a() {
        if (f79270a == null) {
            synchronized (t.class) {
                SigmobRequestQueue downloadRequestQueue = Networking.getDownloadRequestQueue();
                if (f79270a == null && downloadRequestQueue != null) {
                    f79270a = new FileDownloader(downloadRequestQueue, 3);
                }
            }
        }
        return f79270a;
    }
}
