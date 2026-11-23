package com.haima.hmcp.utils;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.listeners.FrameCaptureCallback;
import com.haima.hmcp.rtc.widgets.IRenderView;

/* JADX INFO: loaded from: classes5.dex */
public class ScreenShotManager {
    private static final String TAG = "ScreenShotManager";
    private static ScreenShotManager mScreenShotManager;
    private IScreenShotCallback mCallback;
    private ScreenShotConfig mConfig;

    public interface IScreenShotCallback {
        void onScreenShot(Bitmap bitmap);

        void onScreenShotFailed(String str);
    }

    public static class ScreenShotConfig {
        public IRenderView rtcRenderView;
        public com.haima.hmcp.rtmp.widgets.IRenderView rtmpRenderView;
        public String streamType;

        public ScreenShotConfig setRtcRender(IRenderView iRenderView) {
            this.rtcRenderView = iRenderView;
            return this;
        }

        public ScreenShotConfig setRtmpRender(com.haima.hmcp.rtmp.widgets.IRenderView iRenderView) {
            this.rtmpRenderView = iRenderView;
            return this;
        }

        public ScreenShotConfig setStreamType(String str) {
            this.streamType = str;
            return this;
        }

        boolean validate() {
            if (TextUtils.isEmpty(this.streamType)) {
                return false;
            }
            if (Constants.STREAM_TYPE_RTC.equals(this.streamType) && this.rtcRenderView == null) {
                return false;
            }
            return (Constants.STREAM_TYPE_RTMP.equals(this.streamType) && this.rtmpRenderView == null) ? false : true;
        }
    }

    private ScreenShotManager() {
    }

    public static ScreenShotManager getInstance() {
        if (mScreenShotManager == null) {
            synchronized (ScreenShotManager.class) {
                if (mScreenShotManager == null) {
                    mScreenShotManager = new ScreenShotManager();
                }
            }
        }
        return mScreenShotManager;
    }

    private void rtcScreenShot(IRenderView iRenderView) {
        if (iRenderView != null && this.mCallback != null) {
            iRenderView.frameCapture(new FrameCaptureCallback() { // from class: com.haima.hmcp.utils.ScreenShotManager.1
                @Override // com.haima.hmcp.listeners.FrameCaptureCallback
                public void onFrameCapture(Bitmap bitmap) {
                    if (ScreenShotManager.this.mCallback != null) {
                        ScreenShotManager.this.mCallback.onScreenShot(bitmap);
                    }
                }
            });
            return;
        }
        IScreenShotCallback iScreenShotCallback = this.mCallback;
        if (iScreenShotCallback != null) {
            iScreenShotCallback.onScreenShotFailed("rtc render is null");
        }
    }

    private void rtmpScreenShot(com.haima.hmcp.rtmp.widgets.IRenderView iRenderView) {
        if (iRenderView != null && this.mCallback != null) {
            iRenderView.frameCapture(new FrameCaptureCallback() { // from class: com.haima.hmcp.utils.ScreenShotManager.2
                @Override // com.haima.hmcp.listeners.FrameCaptureCallback
                public void onFrameCapture(Bitmap bitmap) {
                    if (ScreenShotManager.this.mCallback != null) {
                        ScreenShotManager.this.mCallback.onScreenShot(bitmap);
                    }
                }
            });
            return;
        }
        IScreenShotCallback iScreenShotCallback = this.mCallback;
        if (iScreenShotCallback != null) {
            iScreenShotCallback.onScreenShotFailed("rtmp render is null");
        }
    }

    public void clearCallback() {
        ScreenShotManager screenShotManager = mScreenShotManager;
        if (screenShotManager != null) {
            screenShotManager.mConfig = null;
        }
        this.mConfig = null;
        this.mCallback = null;
        mScreenShotManager = null;
    }

    public void screenShot(IScreenShotCallback iScreenShotCallback) {
        if (iScreenShotCallback == null) {
            LogUtils.d(TAG, "screen shot callback is null");
            return;
        }
        this.mCallback = iScreenShotCallback;
        ScreenShotConfig screenShotConfig = this.mConfig;
        if (screenShotConfig == null || !screenShotConfig.validate()) {
            iScreenShotCallback.onScreenShotFailed("ScreenShotConfig is null or parameters is not validate");
        } else if (Constants.STREAM_TYPE_RTC.equals(this.mConfig.streamType)) {
            rtcScreenShot(this.mConfig.rtcRenderView);
        } else {
            rtmpScreenShot(this.mConfig.rtmpRenderView);
        }
    }

    public void setConfig(ScreenShotConfig screenShotConfig) {
        this.mConfig = screenShotConfig;
    }
}
