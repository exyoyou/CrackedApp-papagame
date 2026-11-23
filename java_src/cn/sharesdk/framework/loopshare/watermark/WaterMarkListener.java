package cn.sharesdk.framework.loopshare.watermark;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
public interface WaterMarkListener {
    void onCancel();

    void onEnd(int i10);

    void onFailed(String str, int i10);

    void onProgress(int i10);

    void onStart();
}
