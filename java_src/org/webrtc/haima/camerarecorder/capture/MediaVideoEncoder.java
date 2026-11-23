package org.webrtc.haima.camerarecorder.capture;

import android.annotation.SuppressLint;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.opengl.EGLContext;
import android.view.Surface;
import java.io.IOException;
import org.webrtc.haima.camerarecorder.egl.filter.GlFilter;

/* JADX INFO: loaded from: classes10.dex */
public class MediaVideoEncoder extends MediaEncoder {
    private static final float BPP = 0.25f;
    private static final String MIME_TYPE = "video/avc";
    private static final String TAG = "MediaVideoEncoder";
    private final int bitrate;
    private EncodeRenderHandler encodeRenderHandler;
    private final int fileHeight;
    private final int fileWidth;
    private final int frameRate;
    private Surface surface;

    public MediaVideoEncoder(MediaMuxerCaptureWrapper mediaMuxerCaptureWrapper, MediaEncoder.MediaEncoderListener mediaEncoderListener, int i10, int i11, boolean z10, boolean z11, float f10, float f11, int i12, int i13, boolean z12, GlFilter glFilter) {
        super(mediaMuxerCaptureWrapper, mediaEncoderListener);
        this.fileWidth = i10;
        this.fileHeight = i11;
        this.frameRate = i12;
        this.bitrate = i13;
        this.encodeRenderHandler = EncodeRenderHandler.createHandler(TAG, z11, z10, f10 > f11 ? f10 / f11 : f11 / f10, i10, i11, z12, glFilter);
    }

    @SuppressLint({"InlinedApi"})
    private static boolean isRecognizedViewoFormat(int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isRecognizedViewoFormat:colorFormat=");
        sb2.append(i10);
        return i10 == 2130708361;
    }

    private static int selectColorFormat(MediaCodecInfo mediaCodecInfo, String str) {
        try {
            Thread.currentThread().setPriority(10);
            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
            Thread.currentThread().setPriority(5);
            int i10 = 0;
            int i11 = 0;
            while (true) {
                int[] iArr = capabilitiesForType.colorFormats;
                if (i11 >= iArr.length) {
                    break;
                }
                int i12 = iArr[i11];
                if (isRecognizedViewoFormat(i12)) {
                    i10 = i12;
                    break;
                }
                i11++;
            }
            if (i10 == 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("couldn't find a good color format for ");
                sb2.append(mediaCodecInfo.getName());
                sb2.append(" / ");
                sb2.append(str);
            }
            return i10;
        } catch (Throwable th) {
            Thread.currentThread().setPriority(5);
            throw th;
        }
    }

    @SuppressLint({"InlinedApi"})
    private static MediaCodecInfo selectVideoCodec(String str) {
        for (MediaCodecInfo mediaCodecInfo : new MediaCodecList(1).getCodecInfos()) {
            if (mediaCodecInfo.isEncoder()) {
                String[] supportedTypes = mediaCodecInfo.getSupportedTypes();
                for (int i10 = 0; i10 < supportedTypes.length; i10++) {
                    if (supportedTypes[i10].equalsIgnoreCase(str)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("codec:");
                        sb2.append(mediaCodecInfo.getName());
                        sb2.append(",MIME=");
                        sb2.append(supportedTypes[i10]);
                        if (selectColorFormat(mediaCodecInfo, str) > 0) {
                            return mediaCodecInfo;
                        }
                    }
                }
            }
        }
        return null;
    }

    public void frameAvailableSoon(int i10, float[] fArr, float[] fArr2, float f10) {
        if (super.frameAvailableSoon()) {
            this.encodeRenderHandler.draw(i10, fArr, fArr2, f10);
        }
    }

    @Override // org.webrtc.haima.camerarecorder.capture.MediaEncoder
    @SuppressLint({"InlinedApi"})
    protected void prepare() throws IOException {
        this.trackIndex = -1;
        this.isEOS = false;
        this.muxerStarted = false;
        MediaCodecInfo mediaCodecInfoSelectVideoCodec = selectVideoCodec("video/avc");
        if (mediaCodecInfoSelectVideoCodec == null) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("selected codec: ");
        sb2.append(mediaCodecInfoSelectVideoCodec.getName());
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", this.fileWidth, this.fileHeight);
        mediaFormatCreateVideoFormat.setInteger("color-format", 2130708361);
        mediaFormatCreateVideoFormat.setInteger("bitrate", this.bitrate);
        mediaFormatCreateVideoFormat.setInteger("frame-rate", this.frameRate);
        mediaFormatCreateVideoFormat.setInteger("i-frame-interval", 5);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("format: ");
        sb3.append(mediaFormatCreateVideoFormat);
        MediaCodec mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType("video/avc");
        this.mediaCodec = mediaCodecCreateEncoderByType;
        mediaCodecCreateEncoderByType.configure(mediaFormatCreateVideoFormat, (Surface) null, (MediaCrypto) null, 1);
        this.surface = this.mediaCodec.createInputSurface();
        this.mediaCodec.start();
        MediaEncoder.MediaEncoderListener mediaEncoderListener = this.listener;
        if (mediaEncoderListener != null) {
            try {
                mediaEncoderListener.onPrepared(this);
            } catch (Exception unused) {
            }
        }
    }

    @Override // org.webrtc.haima.camerarecorder.capture.MediaEncoder
    protected void release() {
        Surface surface = this.surface;
        if (surface != null) {
            surface.release();
            this.surface = null;
        }
        EncodeRenderHandler encodeRenderHandler = this.encodeRenderHandler;
        if (encodeRenderHandler != null) {
            encodeRenderHandler.release();
            this.encodeRenderHandler = null;
        }
        super.release();
    }

    public void setEglContext(EGLContext eGLContext, int i10) {
        this.encodeRenderHandler.setEglContext(eGLContext, i10, this.surface);
    }

    @Override // org.webrtc.haima.camerarecorder.capture.MediaEncoder
    protected void signalEndOfInputStream() {
        this.mediaCodec.signalEndOfInputStream();
        this.isEOS = true;
    }

    @Override // org.webrtc.haima.camerarecorder.capture.MediaEncoder
    public boolean frameAvailableSoon() {
        boolean zFrameAvailableSoon = super.frameAvailableSoon();
        if (zFrameAvailableSoon) {
            this.encodeRenderHandler.prepareDraw();
        }
        return zFrameAvailableSoon;
    }
}
