package com.bykv.vk.component.ttvideo;

/* JADX INFO: loaded from: classes9.dex */
public class PreloaderURLItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f23187a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f23188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f23189c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f23190d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String[] f23191e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private IPreLoaderItemCallBackListener f23192f;

    public PreloaderURLItem(String str, String str2, long j10, String[] strArr) {
        this.f23188b = null;
        this.f23192f = null;
        this.f23187a = str;
        this.f23189c = str2;
        this.f23190d = j10;
        this.f23191e = strArr;
    }

    public IPreLoaderItemCallBackListener getCallBackListener() {
        return this.f23192f;
    }

    public String getFilePath() {
        return this.f23188b;
    }

    public String getKey() {
        return this.f23187a;
    }

    public long getPreloadSize() {
        return this.f23190d;
    }

    public String[] getUrls() {
        return this.f23191e;
    }

    public String getVideoId() {
        return this.f23189c;
    }

    public void setCallBackListener(IPreLoaderItemCallBackListener iPreLoaderItemCallBackListener) {
        this.f23192f = iPreLoaderItemCallBackListener;
    }

    public void setKey(String str) {
        this.f23187a = str;
    }

    public PreloaderURLItem(String str, String str2, long j10, String[] strArr, String str3) {
        this.f23192f = null;
        this.f23187a = str;
        this.f23188b = str3;
        this.f23189c = str2;
        this.f23190d = j10;
        this.f23191e = strArr;
    }
}
