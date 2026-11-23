package cn.sharesdk.framework;

import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public interface PlatformActionListener {
    void onCancel(Platform platform, int i10);

    void onComplete(Platform platform, int i10, HashMap<String, Object> map);

    void onError(Platform platform, int i10, Throwable th);
}
