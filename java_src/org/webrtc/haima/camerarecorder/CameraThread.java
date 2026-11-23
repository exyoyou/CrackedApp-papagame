package org.webrtc.haima.camerarecorder;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Size;
import android.view.Surface;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class CameraThread extends Thread {
    private static final String TAG = "CameraThread";
    private CameraCaptureSession cameraCaptureSession;

    @SuppressLint({"NewApi"})
    private CameraCaptureSession.StateCallback cameraCaptureSessionCallback;
    private CameraDevice cameraDevice;

    @SuppressLint({"NewApi"})
    private CameraDevice.StateCallback cameraDeviceCallback;
    private final CameraManager cameraManager;
    private final CameraRecordListener cameraRecordListener;
    private Size cameraSize;
    private boolean flashSupport;
    private CameraHandler handler;
    private boolean isFlashTorch;
    volatile boolean isRunning;
    private final LensFacing lensFacing;
    private final OnStartPreviewListener listener;
    private final Object readyFence;
    private CaptureRequest.Builder requestBuilder;
    private Rect sensorArraySize;
    private SurfaceTexture surfaceTexture;

    interface OnStartPreviewListener {
        void onStart(Size size, boolean z10);
    }

    CameraThread(CameraRecordListener cameraRecordListener, OnStartPreviewListener onStartPreviewListener, SurfaceTexture surfaceTexture, CameraManager cameraManager, LensFacing lensFacing) {
        super("Camera thread");
        this.readyFence = new Object();
        this.cameraDeviceCallback = new CameraDevice.StateCallback() { // from class: org.webrtc.haima.camerarecorder.CameraThread.1
            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onDisconnected(CameraDevice cameraDevice) {
                cameraDevice.close();
                CameraThread.this.cameraDevice = null;
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onError(CameraDevice cameraDevice, int i10) {
                cameraDevice.close();
                CameraThread.this.cameraDevice = null;
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onOpened(CameraDevice cameraDevice) {
                CameraThread.this.cameraDevice = cameraDevice;
                CameraThread.this.createCaptureSession();
            }
        };
        this.cameraCaptureSessionCallback = new CameraCaptureSession.StateCallback() { // from class: org.webrtc.haima.camerarecorder.CameraThread.2
            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onConfigured(CameraCaptureSession cameraCaptureSession) {
                CameraThread.this.cameraCaptureSession = cameraCaptureSession;
                CameraThread.this.updatePreview();
            }
        };
        this.listener = onStartPreviewListener;
        this.cameraRecordListener = cameraRecordListener;
        this.surfaceTexture = surfaceTexture;
        this.cameraManager = cameraManager;
        this.lensFacing = lensFacing;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"InlinedApi"})
    public void createCaptureSession() {
        this.surfaceTexture.setDefaultBufferSize(this.cameraSize.getWidth(), this.cameraSize.getHeight());
        Surface surface = new Surface(this.surfaceTexture);
        try {
            this.requestBuilder = this.cameraDevice.createCaptureRequest(3);
        } catch (CameraAccessException e10) {
            e10.printStackTrace();
        }
        this.requestBuilder.addTarget(surface);
        try {
            this.cameraDevice.createCaptureSession(Collections.singletonList(surface), this.cameraCaptureSessionCallback, null);
        } catch (CameraAccessException e11) {
            e11.printStackTrace();
        }
        this.listener.onStart(this.cameraSize, this.flashSupport);
    }

    @SuppressLint({"NewApi"})
    private static Size getClosestSupportedSize(List<Size> list, final int i10, final int i11) {
        return (Size) Collections.min(list, new Comparator<Size>() { // from class: org.webrtc.haima.camerarecorder.CameraThread.3
            private int diff(Size size) {
                return Math.abs(i10 - size.getWidth()) + Math.abs(i11 - size.getHeight());
            }

            @Override // java.util.Comparator
            public int compare(Size size, Size size2) {
                return diff(size) - diff(size2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"InlinedApi"})
    public void updatePreview() {
        this.requestBuilder.set(CaptureRequest.CONTROL_AF_MODE, 3);
        HandlerThread handlerThread = new HandlerThread("CameraPreview");
        handlerThread.start();
        try {
            this.cameraCaptureSession.setRepeatingRequest(this.requestBuilder.build(), null, new Handler(handlerThread.getLooper()));
        } catch (CameraAccessException e10) {
            e10.printStackTrace();
        }
    }

    @SuppressLint({"InlinedApi"})
    void changeAutoFocus() {
        this.requestBuilder.set(CaptureRequest.CONTROL_AF_MODE, 3);
        this.requestBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
        try {
            this.cameraCaptureSession.setRepeatingRequest(this.requestBuilder.build(), null, null);
        } catch (CameraAccessException e10) {
            e10.printStackTrace();
        }
    }

    @SuppressLint({"InlinedApi"})
    void changeManualFocusPoint(float f10, float f11, int i10, int i11) {
        this.requestBuilder.set(CaptureRequest.CONTROL_AF_REGIONS, new MeteringRectangle[]{new MeteringRectangle(Math.max(((int) ((f11 / i11) * this.sensorArraySize.width())) - 400, 0), Math.max(((int) ((f10 / i10) * this.sensorArraySize.height())) - 400, 0), 800, 800, 999)});
        try {
            this.cameraCaptureSession.setRepeatingRequest(this.requestBuilder.build(), null, null);
        } catch (CameraAccessException e10) {
            e10.printStackTrace();
        }
        this.requestBuilder.set(CaptureRequest.CONTROL_MODE, 1);
        this.requestBuilder.set(CaptureRequest.CONTROL_AF_MODE, 1);
        this.requestBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
        try {
            this.cameraCaptureSession.setRepeatingRequest(this.requestBuilder.build(), null, null);
        } catch (CameraAccessException e11) {
            e11.printStackTrace();
        }
    }

    public CameraHandler getHandler() {
        synchronized (this.readyFence) {
            try {
                this.readyFence.wait();
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }
        return this.handler;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        synchronized (this.readyFence) {
            this.handler = new CameraHandler(this);
            this.isRunning = true;
            this.readyFence.notify();
        }
        Looper.loop();
        CameraRecordListener cameraRecordListener = this.cameraRecordListener;
        if (cameraRecordListener != null) {
            cameraRecordListener.onCameraThreadFinish();
        }
        synchronized (this.readyFence) {
            this.handler = null;
            this.isRunning = false;
        }
    }

    @SuppressLint({"NewApi"})
    final void startPreview(int i10, int i11) {
        try {
            CameraManager cameraManager = this.cameraManager;
            if (cameraManager == null) {
                return;
            }
            for (String str : cameraManager.getCameraIdList()) {
                CameraCharacteristics cameraCharacteristics = this.cameraManager.getCameraCharacteristics(str);
                if (cameraCharacteristics.get(CameraCharacteristics.LENS_FACING) != null && cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION) != null && ((Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING)).intValue() == this.lensFacing.getFacing()) {
                    this.sensorArraySize = (Rect) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
                    this.flashSupport = ((Boolean) cameraCharacteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE)).booleanValue();
                    StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
                    if (i10 < 0 || i11 < 0) {
                        this.cameraSize = streamConfigurationMap.getOutputSizes(SurfaceTexture.class)[0];
                    } else {
                        this.cameraSize = getClosestSupportedSize(Arrays.asList(streamConfigurationMap.getOutputSizes(SurfaceTexture.class)), i10, i11);
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("cameraSize =");
                    sb2.append(this.cameraSize);
                    HandlerThread handlerThread = new HandlerThread("OpenCamera");
                    handlerThread.start();
                    this.cameraManager.openCamera(str, this.cameraDeviceCallback, new Handler(handlerThread.getLooper()));
                    return;
                }
            }
        } catch (CameraAccessException e10) {
            e10.printStackTrace();
        }
    }

    @SuppressLint({"InlinedApi"})
    void stopPreview() {
        this.isFlashTorch = false;
        CaptureRequest.Builder builder = this.requestBuilder;
        if (builder != null) {
            builder.set(CaptureRequest.FLASH_MODE, 0);
            try {
                this.cameraCaptureSession.setRepeatingRequest(this.requestBuilder.build(), null, null);
                this.cameraDevice.close();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @SuppressLint({"InlinedApi"})
    void switchFlashMode() {
        if (this.flashSupport) {
            try {
                if (this.isFlashTorch) {
                    this.isFlashTorch = false;
                    this.requestBuilder.set(CaptureRequest.FLASH_MODE, 0);
                } else {
                    this.isFlashTorch = true;
                    this.requestBuilder.set(CaptureRequest.FLASH_MODE, 2);
                }
                this.cameraCaptureSession.setRepeatingRequest(this.requestBuilder.build(), null, null);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }
}
