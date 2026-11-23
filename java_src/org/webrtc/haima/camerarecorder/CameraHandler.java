package org.webrtc.haima.camerarecorder;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes10.dex */
public class CameraHandler extends Handler {
    private static final boolean DEBUG = false;
    private static final int MSG_AUTO_FOCUS = 5;
    private static final int MSG_MANUAL_FOCUS = 3;
    private static final int MSG_PREVIEW_START = 1;
    private static final int MSG_PREVIEW_STOP = 2;
    private static final int MSG_SWITCH_FLASH = 4;
    private static final String TAG = "CameraHandler";
    private float eventX;
    private float eventY;
    private final Object mLock = new Object();
    private CameraThread thread;
    private int viewHeight;
    private int viewWidth;

    CameraHandler(CameraThread cameraThread) {
        this.thread = cameraThread;
        initValue();
    }

    private void initValue() {
        this.viewWidth = 0;
        this.viewHeight = 0;
        this.eventX = 0.0f;
        this.eventY = 0.0f;
    }

    void changeAutoFocus() {
        sendMessage(obtainMessage(5));
    }

    void changeManualFocusPoint(float f10, float f11, int i10, int i11) {
        this.viewWidth = i10;
        this.viewHeight = i11;
        this.eventX = f10;
        this.eventY = f11;
        sendMessage(obtainMessage(3));
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        synchronized (this.mLock) {
            int i10 = message.what;
            if (i10 == 1) {
                CameraThread cameraThread = this.thread;
                if (cameraThread != null) {
                    cameraThread.startPreview(message.arg1, message.arg2);
                }
            } else if (i10 == 2) {
                CameraThread cameraThread2 = this.thread;
                if (cameraThread2 != null) {
                    cameraThread2.stopPreview();
                }
                try {
                    notifyAll();
                    if (Looper.myLooper() != null) {
                        Looper.myLooper().quit();
                    }
                    removeCallbacks(this.thread);
                    removeMessages(1);
                    removeMessages(2);
                    removeMessages(3);
                    removeMessages(4);
                    removeMessages(5);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                this.thread = null;
            } else if (i10 == 3) {
                CameraThread cameraThread3 = this.thread;
                if (cameraThread3 != null) {
                    cameraThread3.changeManualFocusPoint(this.eventX, this.eventY, this.viewWidth, this.viewHeight);
                }
            } else if (i10 == 4) {
                CameraThread cameraThread4 = this.thread;
                if (cameraThread4 != null) {
                    cameraThread4.switchFlashMode();
                }
            } else {
                if (i10 != 5) {
                    throw new RuntimeException("unknown message:what=" + message.what);
                }
                CameraThread cameraThread5 = this.thread;
                if (cameraThread5 != null) {
                    cameraThread5.changeAutoFocus();
                }
            }
        }
    }

    void startPreview(int i10, int i11) {
        sendMessage(obtainMessage(1, i10, i11));
    }

    void stopPreview(boolean z10) {
        synchronized (this.mLock) {
            sendEmptyMessage(2);
            CameraThread cameraThread = this.thread;
            if (cameraThread == null) {
                return;
            }
            if (z10 && cameraThread.isRunning) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    void switchFlashMode() {
        sendMessage(obtainMessage(4));
    }
}
