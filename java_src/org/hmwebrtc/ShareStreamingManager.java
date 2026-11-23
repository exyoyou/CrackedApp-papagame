package org.hmwebrtc;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes10.dex */
public class ShareStreamingManager {
    private static final String TAG = "ShareStreamingManager";
    private static ShareStreamingManager mInstance;
    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private volatile boolean isActive;
    private KeyFrameRequestCallBack mKeyFrameRequestCallBack;
    private long nativeKeyFrameRequestCallBack;

    public interface KeyFrameRequestCallBack {
        @CalledByNative
        void onKeyFrameRequested();
    }

    private long CreateKeyFrameRequestCallBack() {
        if (!this.isActive) {
            Logging.e(TAG, "Failed to create callback, ShareStreamingManager is not active");
            return 0L;
        }
        if (this.nativeKeyFrameRequestCallBack == 0) {
            this.nativeKeyFrameRequestCallBack = nativeCreateKeyFrameRequestCallBack(this);
        }
        return this.nativeKeyFrameRequestCallBack;
    }

    public static ShareStreamingManager getInstance() {
        if (mInstance == null) {
            mInstance = new ShareStreamingManager();
        }
        return mInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$0() {
        try {
            Logging.d(TAG, "Starting share streaming");
            nativeStart();
            this.isActive = true;
            Logging.d(TAG, "Share streaming started successfully");
        } catch (Exception e10) {
            Logging.e(TAG, "Error in share streaming thread: " + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stop$1() {
        try {
            Logging.d(TAG, "Stopping share streaming");
            nativeStop();
            this.isActive = false;
            this.nativeKeyFrameRequestCallBack = 0L;
            Logging.d(TAG, "Share streaming stopped successfully");
            if (this.mKeyFrameRequestCallBack != null) {
                Logging.d(TAG, "Clearing key frame request callback reference");
                this.mKeyFrameRequestCallBack = null;
            }
        } catch (Exception e10) {
            Logging.e(TAG, "Error in share streaming thread: " + e10.getMessage());
        }
    }

    private static native void nativeClearKeyFrameRequestCallBack();

    private static native long nativeCreateKeyFrameRequestCallBack(ShareStreamingManager shareStreamingManager);

    private static native void nativeSetKeyFrameRequestCallBack(long j10);

    private static native void nativeStart();

    private static native void nativeStop();

    public void clearKeyFrameRequestCallBack() {
        if (this.isActive) {
            nativeClearKeyFrameRequestCallBack();
        } else {
            Logging.e(TAG, "clearKeyFrameRequestCallBack failed, ShareStreamingManager is not active");
        }
    }

    public void onKeyFrameRequested() {
        KeyFrameRequestCallBack keyFrameRequestCallBack = this.mKeyFrameRequestCallBack;
        if (keyFrameRequestCallBack != null) {
            try {
                keyFrameRequestCallBack.onKeyFrameRequested();
            } catch (Exception e10) {
                Logging.e(TAG, "Error in onKeyFrameRequested: " + e10.getMessage());
            }
        }
    }

    public void setKeyFrameRequestCallBack(KeyFrameRequestCallBack keyFrameRequestCallBack) {
        if (keyFrameRequestCallBack == null) {
            Logging.e(TAG, "setKeyFrameRequestCallBack failed, callback is null");
            return;
        }
        this.mKeyFrameRequestCallBack = keyFrameRequestCallBack;
        long jCreateKeyFrameRequestCallBack = CreateKeyFrameRequestCallBack();
        this.nativeKeyFrameRequestCallBack = jCreateKeyFrameRequestCallBack;
        if (jCreateKeyFrameRequestCallBack == 0) {
            Logging.e(TAG, "setKeyFrameRequestCallBack failed, nativeKeyFrameRequestCallBack is null");
        } else {
            nativeSetKeyFrameRequestCallBack(jCreateKeyFrameRequestCallBack);
        }
    }

    public void start() {
        if (this.isActive) {
            Logging.d(TAG, "Share streaming is already active, skipping start");
        } else {
            this.executor.execute(new Runnable() { // from class: org.hmwebrtc.e0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f95372b.lambda$start$0();
                }
            });
        }
    }

    public void stop() {
        if (this.isActive) {
            this.executor.execute(new Runnable() { // from class: org.hmwebrtc.d0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f95369b.lambda$stop$1();
                }
            });
        } else {
            Logging.d(TAG, "Share streaming is not active, skipping stop");
        }
    }
}
