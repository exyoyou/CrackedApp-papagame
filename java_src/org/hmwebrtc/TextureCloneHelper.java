package org.hmwebrtc;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes10.dex */
public class TextureCloneHelper {
    private static final String TAG = "TextureCloneHelper";
    private RendererCommon.GlDrawer mLocalDrawer;
    private GlTextureFrameBuffer mTextureFramebuffer;
    private float[] finalGlMatrix = {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    private TextureBufferImpl.RefCountMonitor copyRefCountMonitor = new TextureBufferImpl.RefCountMonitor() { // from class: org.hmwebrtc.TextureCloneHelper.1
        @Override // org.hmwebrtc.TextureBufferImpl.RefCountMonitor
        public void onDestroy(TextureBufferImpl textureBufferImpl) {
        }

        @Override // org.hmwebrtc.TextureBufferImpl.RefCountMonitor
        public void onRelease(TextureBufferImpl textureBufferImpl) {
        }

        @Override // org.hmwebrtc.TextureBufferImpl.RefCountMonitor
        public void onRetain(TextureBufferImpl textureBufferImpl) {
        }
    };

    /* JADX INFO: renamed from: org.hmwebrtc.TextureCloneHelper$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$org$hmwebrtc$VideoFrame$TextureBuffer$Type;

        static {
            int[] iArr = new int[VideoFrame.TextureBuffer.Type.values().length];
            $SwitchMap$org$hmwebrtc$VideoFrame$TextureBuffer$Type = iArr;
            try {
                iArr[VideoFrame.TextureBuffer.Type.OES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$hmwebrtc$VideoFrame$TextureBuffer$Type[VideoFrame.TextureBuffer.Type.RGB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private TextureCloneHelper() {
        Logging.d(TAG, "Creating TextureCloneHelper.");
        this.mLocalDrawer = new GlRectDrawer();
        this.mTextureFramebuffer = new GlTextureFrameBuffer(6408);
    }

    public static TextureCloneHelper create() {
        return new TextureCloneHelper();
    }

    private int getDstId() {
        return this.mTextureFramebuffer.getTextureId();
    }

    public void release() {
        Logging.d(TAG, "Release TextureCloneHelper.");
        RendererCommon.GlDrawer glDrawer = this.mLocalDrawer;
        if (glDrawer != null) {
            glDrawer.release();
            this.mLocalDrawer = null;
        }
        GlTextureFrameBuffer glTextureFrameBuffer = this.mTextureFramebuffer;
        if (glTextureFrameBuffer != null) {
            glTextureFrameBuffer.release();
        }
    }

    public VideoFrame renderToTexture(VideoFrame videoFrame) {
        this.mTextureFramebuffer.setSize(videoFrame.getBuffer().getWidth(), videoFrame.getBuffer().getHeight());
        GLES20.glBindFramebuffer(36160, this.mTextureFramebuffer.getFrameBufferId());
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.mTextureFramebuffer.getTextureId(), 0);
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glClear(16384);
        GlUtil.checkNoGLES2Error("SurfaceTextureSplitter.renderToTexture");
        int i10 = AnonymousClass2.$SwitchMap$org$hmwebrtc$VideoFrame$TextureBuffer$Type[((VideoFrame.TextureBuffer) videoFrame.getBuffer()).getType().ordinal()];
        if (i10 == 1) {
            this.mLocalDrawer.drawOes(((VideoFrame.TextureBuffer) videoFrame.getBuffer()).getTextureId(), this.finalGlMatrix, videoFrame.getRotatedWidth(), videoFrame.getRotatedHeight(), 0, 0, videoFrame.getRotatedWidth(), videoFrame.getRotatedHeight());
        } else {
            if (i10 != 2) {
                throw new RuntimeException("Unknown texture type.");
            }
            this.mLocalDrawer.drawRgb(((VideoFrame.TextureBuffer) videoFrame.getBuffer()).getTextureId(), this.finalGlMatrix, videoFrame.getRotatedWidth(), videoFrame.getRotatedHeight(), 0, 0, videoFrame.getRotatedWidth(), videoFrame.getRotatedHeight());
        }
        GLES20.glBindFramebuffer(36160, 0);
        GlUtil.checkNoGLES2Error("EglRenderer.cloneFrameThread");
        VideoFrame videoFrame2 = new VideoFrame(new TextureBufferImpl(videoFrame.getRotatedWidth(), videoFrame.getRotatedHeight(), VideoFrame.TextureBuffer.Type.RGB, getDstId(), ((VideoFrame.TextureBuffer) videoFrame.getBuffer()).getTransformMatrix(), ((TextureBufferImpl) videoFrame.getBuffer()).getToI420Handler(), ((TextureBufferImpl) videoFrame.getBuffer()).getYuvConverter(), this.copyRefCountMonitor), videoFrame.getRotation(), videoFrame.getTimestampNs());
        videoFrame.release();
        return videoFrame2;
    }
}
