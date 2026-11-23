package tv.haima.ijk.media.player.egl;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes10.dex */
public class TextureCloneHelper {
    private static final String TAG = "TextureCloneHelper";
    private RendererCommon.GlDrawer mLocalDrawer;
    private float[] finalGlMatrix = {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    private TextureBufferImpl.RefCountMonitor copyRefCountMonitor = new TextureBufferImpl.RefCountMonitor() { // from class: tv.haima.ijk.media.player.egl.TextureCloneHelper.1
        @Override // tv.haima.ijk.media.player.egl.TextureBufferImpl.RefCountMonitor
        public void onDestroy(TextureBufferImpl textureBufferImpl) {
        }

        @Override // tv.haima.ijk.media.player.egl.TextureBufferImpl.RefCountMonitor
        public void onRelease(TextureBufferImpl textureBufferImpl) {
        }

        @Override // tv.haima.ijk.media.player.egl.TextureBufferImpl.RefCountMonitor
        public void onRetain(TextureBufferImpl textureBufferImpl) {
        }
    };
    private GlTextureFrameBuffer mTextureFramebuffer = new GlTextureFrameBuffer(6408);

    /* JADX INFO: renamed from: tv.haima.ijk.media.player.egl.TextureCloneHelper$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$tv$haima$ijk$media$player$egl$VideoFrame$TextureBuffer$Type;

        static {
            int[] iArr = new int[VideoFrame.TextureBuffer.Type.values().length];
            $SwitchMap$tv$haima$ijk$media$player$egl$VideoFrame$TextureBuffer$Type = iArr;
            try {
                iArr[VideoFrame.TextureBuffer.Type.OES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$tv$haima$ijk$media$player$egl$VideoFrame$TextureBuffer$Type[VideoFrame.TextureBuffer.Type.RGB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private TextureCloneHelper(RendererCommon.GlDrawer glDrawer) {
        this.mLocalDrawer = glDrawer;
    }

    public static TextureCloneHelper create(RendererCommon.GlDrawer glDrawer) {
        return new TextureCloneHelper(glDrawer);
    }

    private int getDstId() {
        return this.mTextureFramebuffer.getTextureId();
    }

    public void release() {
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
        int i10 = AnonymousClass2.$SwitchMap$tv$haima$ijk$media$player$egl$VideoFrame$TextureBuffer$Type[((VideoFrame.TextureBuffer) videoFrame.getBuffer()).getType().ordinal()];
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
        VideoFrame videoFrame2 = new VideoFrame(new TextureBufferImpl(videoFrame.getRotatedWidth(), videoFrame.getRotatedHeight(), VideoFrame.TextureBuffer.Type.RGB, getDstId(), ((VideoFrame.TextureBuffer) videoFrame.getBuffer()).getTransformMatrix(), this.copyRefCountMonitor), videoFrame.getRotation(), videoFrame.getTimestampNs());
        videoFrame.release();
        return videoFrame2;
    }
}
