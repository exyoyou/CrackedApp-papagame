package org.hmwebrtc;

/* JADX INFO: loaded from: classes10.dex */
public class CountlyObserver {
    public static long createNativeCountlyObserver(CountlyObserver countlyObserver) {
        return nativeCreateCountlyObserver(countlyObserver);
    }

    private static native long nativeCreateCountlyObserver(CountlyObserver countlyObserver);

    @CalledByNative
    public void onCountlyCallback(int i10, long j10, String str) {
    }
}
