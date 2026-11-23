package org.webrtc.haima.camerarecorder;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.res.Resources;
import android.hardware.camera2.CameraManager;
import android.opengl.GLSurfaceView;
import com.uc.crashsdk.export.LogType;
import org.webrtc.haima.HmCameraWrapper;
import org.webrtc.haima.camerarecorder.egl.filter.GlFilter;

/* JADX INFO: loaded from: classes10.dex */
public class CameraRecorderBuilder {
    private Activity activity;
    private int bitrate;
    private CameraRecordListener cameraRecordListener;
    private boolean flipHorizontal;
    private boolean flipVertical;
    private int fps;
    private GlFilter glFilter;
    private GLSurfaceView glSurfaceView;
    private HmCameraWrapper hmDCCameraWrapper;
    private boolean mute;
    private boolean recordNoFilter;
    private Resources resources;
    private LensFacing lensFacing = LensFacing.FRONT;
    private int fileWidth = 720;
    private int fileHeight = LogType.UNEXP_ANR;
    private int cameraWidth = LogType.UNEXP_ANR;
    private int cameraHeight = 720;

    public CameraRecorderBuilder(Activity activity, GLSurfaceView gLSurfaceView) {
        this.activity = activity;
        this.glSurfaceView = gLSurfaceView;
        this.resources = activity.getResources();
    }

    @SuppressLint({"InlinedApi"})
    public CameraRecorder build() {
        if (this.glSurfaceView == null) {
            throw new IllegalArgumentException("glSurfaceView and windowManager, multiVideoEffects is NonNull !!");
        }
        CameraRecorder cameraRecorder = new CameraRecorder(this.cameraRecordListener, this.glSurfaceView, this.fileWidth, this.fileHeight, this.cameraWidth, this.cameraHeight, this.fps, this.bitrate, this.lensFacing, this.flipHorizontal, this.flipVertical, this.mute, (CameraManager) this.activity.getSystemService("camera"), false, 0, this.recordNoFilter);
        cameraRecorder.setFilter(this.glFilter);
        cameraRecorder.setHmDCCarmera(this.hmDCCameraWrapper);
        this.activity = null;
        this.resources = null;
        return cameraRecorder;
    }

    public CameraRecorderBuilder cameraRecordListener(CameraRecordListener cameraRecordListener) {
        this.cameraRecordListener = cameraRecordListener;
        return this;
    }

    public CameraRecorderBuilder cameraSize(int i10, int i11) {
        this.cameraWidth = i10;
        this.cameraHeight = i11;
        return this;
    }

    public CameraRecorderBuilder filter(GlFilter glFilter) {
        this.glFilter = glFilter;
        return this;
    }

    public CameraRecorderBuilder flipHorizontal(boolean z10) {
        this.flipHorizontal = z10;
        return this;
    }

    public CameraRecorderBuilder flipVertical(boolean z10) {
        this.flipVertical = z10;
        return this;
    }

    public CameraRecorderBuilder fpsAndBitrate(int i10, int i11) {
        this.bitrate = i11;
        this.fps = i10;
        return this;
    }

    public CameraRecorderBuilder haimaCameraWrapper(HmCameraWrapper hmCameraWrapper) {
        this.hmDCCameraWrapper = hmCameraWrapper;
        return this;
    }

    public CameraRecorderBuilder lensFacing(LensFacing lensFacing) {
        this.lensFacing = lensFacing;
        return this;
    }

    public CameraRecorderBuilder mute(boolean z10) {
        this.mute = z10;
        return this;
    }

    public CameraRecorderBuilder recordNoFilter(boolean z10) {
        this.recordNoFilter = z10;
        return this;
    }

    public CameraRecorderBuilder videoSize(int i10, int i11) {
        this.fileWidth = i10;
        this.fileHeight = i11;
        return this;
    }
}
