package org.hmwebrtc;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import org.webrtc.haima.camerarecorder.egl.GlPreview;

/* JADX INFO: loaded from: classes10.dex */
public class SurfaceTextureAccelerator implements VideoSink {
    private static final String TAG = "TexAcc";
    EglBase14.Context mEglContext;
    private Handler mHandler;
    private int mLastUsingIndex;
    private long mLastUsingTimeMs;
    private int mSize;

    @Nullable
    private VideoSink mVideoSink;
    private final GlRectDrawer mGlDrawer = new GlRectDrawer();
    private final VideoFrameDrawer mVideoFrameDrawer = new VideoFrameDrawer();
    private final YuvConverter mYuvConverter = new YuvConverter();
    private ArrayList<TextureInfo> mFreeTextureList = new ArrayList<>();
    private ArrayList<TextureInfo> mUsingTextureList = new ArrayList<>();

    private static class TextureInfo implements TextureBufferImpl.RefCountMonitor {
        EglBase14 egl;
        int height;
        int index;
        SurfaceTextureAccelerator owner;
        SurfaceTexture surface;
        int textureId;
        int width;

        @Override // org.hmwebrtc.TextureBufferImpl.RefCountMonitor
        public void onDestroy(TextureBufferImpl textureBufferImpl) {
            this.owner.addFreeTextureInfo(this);
        }

        @Override // org.hmwebrtc.TextureBufferImpl.RefCountMonitor
        public void onRelease(TextureBufferImpl textureBufferImpl) {
        }

        @Override // org.hmwebrtc.TextureBufferImpl.RefCountMonitor
        public void onRetain(TextureBufferImpl textureBufferImpl) {
        }

        public void updateSize(int i10, int i11) {
            if (this.width == i10 && this.height == i11) {
                return;
            }
            this.width = i10;
            this.height = i11;
            this.surface.setDefaultBufferSize(i10, i11);
        }
    }

    public SurfaceTextureAccelerator(EglBase14.Context context, int i10, Handler handler) {
        this.mHandler = handler;
        this.mEglContext = context;
        i10 = i10 < 2 ? 2 : i10;
        i10 = i10 > 5 ? 5 : i10;
        this.mSize = i10;
        this.mLastUsingIndex = -1;
        this.mLastUsingTimeMs = 0L;
        Logging.e(TAG, "create texinfo size=" + i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addFreeTextureInfo(TextureInfo textureInfo) {
        this.mFreeTextureList.add(0, textureInfo);
        this.mUsingTextureList.remove(textureInfo);
    }

    private TextureInfo createOesTexture(EglBase14.Context context) {
        EglBase14 eglBase14J = h.j(context, EglBase.CONFIG_RECORDABLE);
        int iGenerateTexture = GlUtil.generateTexture(GlPreview.GL_TEXTURE_EXTERNAL_OES);
        if (iGenerateTexture == 0) {
            return null;
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(iGenerateTexture);
        eglBase14J.createSurface(new Surface(surfaceTexture));
        surfaceTexture.setDefaultBufferSize(800, 600);
        SurfaceTexture.OnFrameAvailableListener onFrameAvailableListener = new SurfaceTexture.OnFrameAvailableListener() { // from class: org.hmwebrtc.SurfaceTextureAccelerator.1
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                SurfaceTextureAccelerator.this.deliverTextureFrame(surfaceTexture2);
            }
        };
        Handler handler = this.mHandler;
        if (handler != null) {
            surfaceTexture.setOnFrameAvailableListener(onFrameAvailableListener, handler);
        } else {
            surfaceTexture.setOnFrameAvailableListener(onFrameAvailableListener);
        }
        TextureInfo textureInfo = new TextureInfo();
        textureInfo.egl = eglBase14J;
        textureInfo.textureId = iGenerateTexture;
        textureInfo.surface = surfaceTexture;
        textureInfo.owner = this;
        return textureInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deliverTextureFrame(SurfaceTexture surfaceTexture) {
        if (!isValid() || surfaceTexture == null) {
            return;
        }
        synchronized (EglBase.lock) {
            try {
                surfaceTexture.updateTexImage();
            } catch (Exception e10) {
                Logging.e(TAG, "updateTexImage error!" + e10.toString());
                return;
            }
        }
        TextureInfo textureInfoFindUsingTextureInfo = findUsingTextureInfo(surfaceTexture);
        if (textureInfoFindUsingTextureInfo == null) {
            Logging.e(TAG, "not find textureinfo!");
        }
        float[] fArr = new float[16];
        surfaceTexture.getTransformMatrix(fArr);
        VideoFrame videoFrame = new VideoFrame(new TextureBufferImpl(textureInfoFindUsingTextureInfo.width, textureInfoFindUsingTextureInfo.height, VideoFrame.TextureBuffer.Type.OES, textureInfoFindUsingTextureInfo.textureId, RendererCommon.convertMatrixToAndroidGraphicsMatrix(fArr), this.mHandler, this.mYuvConverter, textureInfoFindUsingTextureInfo), 0, surfaceTexture.getTimestamp());
        this.mVideoSink.onFrame(videoFrame);
        videoFrame.release();
    }

    private TextureInfo findUsingTextureInfo(SurfaceTexture surfaceTexture) {
        int size = this.mUsingTextureList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.mUsingTextureList.get(i10).surface == surfaceTexture) {
                return this.mUsingTextureList.get(i10);
            }
        }
        return null;
    }

    private TextureInfo getFreeTextureInfo() {
        if (this.mFreeTextureList.size() == 0) {
            Logging.e(TAG, "getFreeTextureInfo not find");
            return null;
        }
        TextureInfo textureInfoRemove = this.mFreeTextureList.remove(0);
        this.mUsingTextureList.add(textureInfoRemove);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.mLastUsingIndex != textureInfoRemove.index) {
            if (this.mLastUsingTimeMs != 0) {
                Logging.e(TAG, "getFreeTextureInfo index=" + textureInfoRemove.index + ",preIndex:" + this.mLastUsingIndex + ",delayms:" + (jCurrentTimeMillis - this.mLastUsingTimeMs));
            }
            this.mLastUsingIndex = textureInfoRemove.index;
        }
        this.mLastUsingTimeMs = jCurrentTimeMillis;
        return textureInfoRemove;
    }

    private boolean isValid() {
        return this.mVideoSink != null;
    }

    @Override // org.hmwebrtc.VideoSink
    public void onFrame(VideoFrame videoFrame) {
        TextureInfo freeTextureInfo;
        EglBase14 eglBase14;
        if (!isValid() || (freeTextureInfo = getFreeTextureInfo()) == null || (eglBase14 = freeTextureInfo.egl) == null) {
            return;
        }
        freeTextureInfo.updateSize(videoFrame.getRotatedWidth(), videoFrame.getRotatedHeight());
        try {
            eglBase14.makeCurrent();
            GLES20.glClear(16384);
            this.mVideoFrameDrawer.drawFrame(videoFrame, this.mGlDrawer, null);
            eglBase14.swapBuffers();
        } catch (Exception unused) {
        }
    }

    public void release() {
        this.mVideoSink = null;
        this.mYuvConverter.release();
        int size = this.mFreeTextureList.size();
        for (int i10 = 0; i10 < size; i10++) {
            TextureInfo textureInfo = this.mFreeTextureList.get(i10);
            GLES20.glDeleteTextures(1, new int[]{textureInfo.textureId}, 0);
            textureInfo.surface.release();
            textureInfo.egl.release();
        }
        this.mFreeTextureList.clear();
        int size2 = this.mUsingTextureList.size();
        for (int i11 = 0; i11 < size2; i11++) {
            TextureInfo textureInfo2 = this.mUsingTextureList.get(i11);
            GLES20.glDeleteTextures(1, new int[]{textureInfo2.textureId}, 0);
            textureInfo2.surface.release();
            textureInfo2.egl.release();
        }
        this.mUsingTextureList.clear();
    }

    public boolean startListening(VideoSink videoSink) {
        if (videoSink == null) {
            return false;
        }
        this.mVideoSink = videoSink;
        for (int i10 = 0; i10 < this.mSize; i10++) {
            TextureInfo textureInfoCreateOesTexture = createOesTexture(this.mEglContext);
            if (textureInfoCreateOesTexture != null) {
                textureInfoCreateOesTexture.index = i10;
                this.mFreeTextureList.add(textureInfoCreateOesTexture);
            }
        }
        return true;
    }
}
