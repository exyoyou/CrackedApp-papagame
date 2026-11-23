package org.webrtc.haima;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.opengl.GLSurfaceView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import java.lang.ref.WeakReference;
import org.hmwebrtc.Logging;
import org.hmwebrtc.RtcCountlyConstants;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.beans.CameraConfig;
import org.webrtc.haima.camerarecorder.CameraRecordListener;
import org.webrtc.haima.camerarecorder.CameraRecorder;
import org.webrtc.haima.camerarecorder.CameraRecorderBuilder;
import org.webrtc.haima.camerarecorder.LensFacing;
import org.webrtc.haima.countly.RtcCountlyUtil;
import org.webrtc.haima.enums.VirtualDeviceTransportType;
import org.webrtc.haima.listeners.HmPermissionCallback;
import org.webrtc.haima.listeners.HmPermissionChecker;
import org.webrtc.haima.listeners.HmPermissionHandler;

/* JADX INFO: loaded from: classes10.dex */
public class HmCameraWrapper {
    private static final String TAG = "HaimaCameraWrapper";

    @SuppressLint({"StaticFieldLeak"})
    private static HmCameraWrapper mInstance;
    protected CameraRecorder cameraRecorder;
    private LinearLayout ly;
    private WeakReference<Activity> mContext;
    private HmDCCamera mHmDCCamera;
    private GLSurfaceView sampleGLView;
    private HmPermissionHandler mPermissionHandler = null;
    private HmPermissionChecker mPermissionChecker = null;
    private CameraConfig mCameraConfig = new CameraConfig();

    private HmCameraWrapper() {
    }

    private boolean checkCameraPermission(Context context) {
        HmPermissionChecker hmPermissionChecker = this.mPermissionChecker;
        if (hmPermissionChecker != null) {
            return hmPermissionChecker.checkPermissionResult("android.permission.CAMERA");
        }
        return false;
    }

    public static HmCameraWrapper getInstance() {
        if (mInstance == null) {
            mInstance = new HmCameraWrapper();
        }
        return mInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalPermissionCheck(final HmDCCamera hmDCCamera) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("permission_check_each_local", this.mCameraConfig.permissionCheckEachTimeLocal ? 1 : 0);
            jSONObject.put("permission_check_each_server", this.mCameraConfig.permissionCheckEachTimeServer ? 1 : 0);
        } catch (JSONException unused) {
        }
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CAMERA_CONFIG, jSONObject.toString());
        CameraConfig cameraConfig = this.mCameraConfig;
        if (cameraConfig != null && cameraConfig.allowPermissionCheck()) {
            Logging.d(TAG, "request permission each time.");
        } else {
            WeakReference<Activity> weakReference = this.mContext;
            if (weakReference != null && weakReference.get() != null && checkCameraPermission(this.mContext.get())) {
                Logging.d(TAG, "checkCameraPermission.");
                if (hmDCCamera.getVdTransportType() == VirtualDeviceTransportType.RTC_MEDIA_CHANNEL) {
                    hmDCCamera.openACK(true, 0, "camera opened.");
                    hmDCCamera.startRecordOverRtcChannel();
                    return;
                } else {
                    hmDCCamera.openACK(true, 0, "camera opened.");
                    setUpCameraInternal();
                    return;
                }
            }
            Logging.e(TAG, "Not Granted CameraPermission.");
        }
        HmPermissionHandler hmPermissionHandler = this.mPermissionHandler;
        if (hmPermissionHandler != null) {
            hmPermissionHandler.request("android.permission.CAMERA", new HmPermissionCallback() { // from class: org.webrtc.haima.d
                @Override // org.webrtc.haima.listeners.HmPermissionCallback
                public final void handlePermissionResult(boolean z10) {
                    this.f96083a.lambda$internalPermissionCheck$0(hmDCCamera, z10);
                }
            });
        } else {
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CAMERA_PERMISSION_NOT_GRANTED, "camera permission not granted, handler is null");
            hmDCCamera.openACK(false, 0, "camera permission not granted, handler is null.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$internalPermissionCheck$0(HmDCCamera hmDCCamera, boolean z10) {
        if (!z10) {
            Logging.d(TAG, "NOT_GRANTED");
            RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CAMERA_PERMISSION_NOT_GRANTED, "camera permission not granted.");
            hmDCCamera.openACK(false, 0, "permission not granted.");
            return;
        }
        Logging.d(TAG, "GRANTED");
        if (hmDCCamera.getVdTransportType() == VirtualDeviceTransportType.RTC_MEDIA_CHANNEL) {
            hmDCCamera.openACK(true, 0, "camera opened.");
            hmDCCamera.startRecordOverRtcChannel();
        } else {
            hmDCCamera.openACK(true, 0, "camera opened.");
            setUpCameraInternal();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setUpCameraInternal$2() {
        LinearLayout linearLayout = new LinearLayout(this.mContext.get());
        this.ly = linearLayout;
        linearLayout.setVisibility(4);
        this.mContext.get().addContentView(this.ly, new FrameLayout.LayoutParams(1, 1, 0));
        this.sampleGLView = null;
        this.sampleGLView = new GLSurfaceView(this.mContext.get());
        this.cameraRecorder = new CameraRecorderBuilder(this.mContext.get(), this.sampleGLView).cameraRecordListener(new CameraRecordListener() { // from class: org.webrtc.haima.HmCameraWrapper.2
            @Override // org.webrtc.haima.camerarecorder.CameraRecordListener
            public void onCameraThreadFinish() {
            }

            @Override // org.webrtc.haima.camerarecorder.CameraRecordListener
            public void onError(Exception exc) {
                exc.toString();
            }

            @Override // org.webrtc.haima.camerarecorder.CameraRecordListener
            public void onGetFlashSupport(boolean z10) {
            }

            @Override // org.webrtc.haima.camerarecorder.CameraRecordListener
            public void onRecordComplete() {
            }

            @Override // org.webrtc.haima.camerarecorder.CameraRecordListener
            public void onRecordStart() {
            }
        }).cameraSize(this.mHmDCCamera.getHeight(), this.mHmDCCamera.getWidth()).videoSize(this.mHmDCCamera.getWidth(), this.mHmDCCamera.getHeight()).lensFacing(this.mHmDCCamera.getLensFacing()).haimaCameraWrapper(mInstance).fpsAndBitrate(this.mHmDCCamera.getFps(), this.mHmDCCamera.getBitrate()).build();
        this.ly.addView(this.sampleGLView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopRecord$1() {
        this.ly.removeAllViews();
    }

    private void setUpCameraInternal() {
        WeakReference<Activity> weakReference = this.mContext;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.mContext.get().runOnUiThread(new Runnable() { // from class: org.webrtc.haima.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f96072b.lambda$setUpCameraInternal$2();
            }
        });
    }

    public boolean checkAudioRecordPermission() {
        HmPermissionChecker hmPermissionChecker = this.mPermissionChecker;
        if (hmPermissionChecker != null) {
            return hmPermissionChecker.checkPermissionResult("android.permission.RECORD_AUDIO");
        }
        return false;
    }

    public LensFacing getLensFacing() {
        HmDCCamera hmDCCamera = this.mHmDCCamera;
        if (hmDCCamera != null) {
            return hmDCCamera.getLensFacing();
        }
        return null;
    }

    public boolean installCamera(Activity activity) {
        this.mContext = new WeakReference<>(activity);
        return true;
    }

    public void registerPermissionChecker(HmPermissionChecker hmPermissionChecker) {
        this.mPermissionChecker = hmPermissionChecker;
    }

    public void registerPermissionHandler(HmPermissionHandler hmPermissionHandler) {
        this.mPermissionHandler = hmPermissionHandler;
    }

    public boolean requestAudioRecordPermission(HmPermissionCallback hmPermissionCallback) {
        HmPermissionHandler hmPermissionHandler = this.mPermissionHandler;
        if (hmPermissionHandler == null) {
            return false;
        }
        return hmPermissionHandler.request("android.permission.RECORD_AUDIO", hmPermissionCallback);
    }

    public void setCameraConfig(CameraConfig cameraConfig) {
        this.mCameraConfig = cameraConfig;
    }

    public void startRecord(final HmDCCamera hmDCCamera) {
        this.mHmDCCamera = hmDCCamera;
        RtcCountlyUtil.recordEvent(RtcCountlyConstants.RTC_CAMERA_APPLY_PERMISSION, "apply camera permission.");
        hmDCCamera.openACK(false, 1, "apply camera permission.");
        if (hmDCCamera.getVdTransportType() == VirtualDeviceTransportType.RTC_MEDIA_CHANNEL) {
            internalPermissionCheck(hmDCCamera);
        } else {
            new Thread() { // from class: org.webrtc.haima.HmCameraWrapper.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        Thread.sleep(100L);
                    } catch (Exception unused) {
                    }
                    HmCameraWrapper.this.internalPermissionCheck(hmDCCamera);
                }
            }.start();
        }
    }

    public void stopRecord() {
        GLSurfaceView gLSurfaceView = this.sampleGLView;
        if (gLSurfaceView != null) {
            gLSurfaceView.onPause();
        }
        CameraRecorder cameraRecorder = this.cameraRecorder;
        if (cameraRecorder != null) {
            cameraRecorder.stop();
            this.cameraRecorder.release();
            this.cameraRecorder = null;
        }
        WeakReference<Activity> weakReference = this.mContext;
        if (weakReference == null || weakReference.get() == null || this.ly == null) {
            return;
        }
        this.mContext.get().runOnUiThread(new Runnable() { // from class: org.webrtc.haima.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f96088b.lambda$stopRecord$1();
            }
        });
    }

    public void unRegisterPermissionChecker() {
        this.mPermissionChecker = null;
    }

    public void unRegisterPermissionHandler() {
        this.mPermissionHandler = null;
        this.mContext = null;
    }

    public void uninstallCamera() {
        stopRecord();
    }

    public void writeVideoData(byte[] bArr) {
        HmDCCamera hmDCCamera = this.mHmDCCamera;
        if (hmDCCamera != null) {
            hmDCCamera.send(bArr);
        }
    }
}
