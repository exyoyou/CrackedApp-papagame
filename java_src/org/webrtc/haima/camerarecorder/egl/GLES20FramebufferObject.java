package org.webrtc.haima.camerarecorder.egl;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes10.dex */
public class GLES20FramebufferObject {
    private int framebufferName;
    private int height;
    private int renderBufferName;
    private int texName;
    private int width;

    public void enable() {
        GLES20.glBindFramebuffer(36160, this.framebufferName);
    }

    public int getHeight() {
        return this.height;
    }

    public int getTexName() {
        return this.texName;
    }

    public int getWidth() {
        return this.width;
    }

    public void release() {
        int[] iArr = {this.texName};
        GLES20.glDeleteTextures(1, iArr, 0);
        this.texName = 0;
        iArr[0] = this.renderBufferName;
        GLES20.glDeleteRenderbuffers(1, iArr, 0);
        this.renderBufferName = 0;
        iArr[0] = this.framebufferName;
        GLES20.glDeleteFramebuffers(1, iArr, 0);
        this.framebufferName = 0;
    }

    public void setup(int i10, int i11) {
        int[] iArr = new int[1];
        GLES20.glGetIntegerv(3379, iArr, 0);
        int i12 = iArr[0];
        if (i10 > i12 || i11 > i12) {
            throw new IllegalArgumentException("GL_MAX_TEXTURE_SIZE " + iArr[0]);
        }
        GLES20.glGetIntegerv(34024, iArr, 0);
        int i13 = iArr[0];
        if (i10 > i13 || i11 > i13) {
            throw new IllegalArgumentException("GL_MAX_RENDERBUFFER_SIZE " + iArr[0]);
        }
        GLES20.glGetIntegerv(36006, iArr, 0);
        int i14 = iArr[0];
        GLES20.glGetIntegerv(36007, iArr, 0);
        int i15 = iArr[0];
        GLES20.glGetIntegerv(32873, iArr, 0);
        int i16 = iArr[0];
        release();
        try {
            this.width = i10;
            this.height = i11;
            GLES20.glGenFramebuffers(1, iArr, 0);
            int i17 = iArr[0];
            this.framebufferName = i17;
            GLES20.glBindFramebuffer(36160, i17);
            GLES20.glGenRenderbuffers(1, iArr, 0);
            int i18 = iArr[0];
            this.renderBufferName = i18;
            GLES20.glBindRenderbuffer(36161, i18);
            GLES20.glRenderbufferStorage(36161, 33189, i10, i11);
            GLES20.glFramebufferRenderbuffer(36160, 36096, 36161, this.renderBufferName);
            GLES20.glGenTextures(1, iArr, 0);
            int i19 = iArr[0];
            this.texName = i19;
            GLES20.glBindTexture(3553, i19);
            EglUtil.setupSampler(3553, 9729, 9728);
            GLES20.glTexImage2D(3553, 0, 6408, i10, i11, 0, 6408, 5121, null);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.texName, 0);
            int iGlCheckFramebufferStatus = GLES20.glCheckFramebufferStatus(36160);
            if (iGlCheckFramebufferStatus == 36053) {
                GLES20.glBindFramebuffer(36160, i14);
                GLES20.glBindRenderbuffer(36161, i15);
                GLES20.glBindTexture(3553, i16);
            } else {
                throw new RuntimeException("Failed to initialize framebuffer object " + iGlCheckFramebufferStatus);
            }
        } catch (RuntimeException e10) {
            release();
            throw e10;
        }
    }
}
