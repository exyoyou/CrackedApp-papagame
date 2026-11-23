package org.webrtc.haima.camerarecorder.egl;

import android.opengl.GLSurfaceView;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

/* JADX INFO: loaded from: classes10.dex */
public class DefaultConfigChooser implements GLSurfaceView.EGLConfigChooser {
    private static final int EGL_OPENGL_ES2_BIT = 4;
    private final int alphaSize;
    private final int blueSize;
    private final int[] configSpec;
    private final int depthSize;
    private final int greenSize;
    private final int redSize;
    private final int stencilSize;

    public DefaultConfigChooser(int i10) {
        this(true, i10);
    }

    private int[] filterConfigSpec(int[] iArr, int i10) {
        if (i10 != 2) {
            return iArr;
        }
        int length = iArr.length;
        int[] iArr2 = new int[length + 2];
        int i11 = length - 1;
        System.arraycopy(iArr, 0, iArr2, 0, i11);
        iArr2[i11] = 12352;
        iArr2[length] = 4;
        iArr2[length + 1] = 12344;
        return iArr2;
    }

    private int findConfigAttrib(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i10, int i11) {
        int[] iArr = new int[1];
        return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i10, iArr) ? iArr[0] : i11;
    }

    @Override // android.opengl.GLSurfaceView.EGLConfigChooser
    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
        int[] iArr = new int[1];
        if (!egl10.eglChooseConfig(eGLDisplay, this.configSpec, null, 0, iArr)) {
            throw new IllegalArgumentException("eglChooseConfig failed");
        }
        int i10 = iArr[0];
        if (i10 <= 0) {
            throw new IllegalArgumentException("No configs match configSpec");
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[i10];
        if (!egl10.eglChooseConfig(eGLDisplay, this.configSpec, eGLConfigArr, i10, iArr)) {
            throw new IllegalArgumentException("eglChooseConfig#2 failed");
        }
        EGLConfig eGLConfigChooseConfig = chooseConfig(egl10, eGLDisplay, eGLConfigArr);
        if (eGLConfigChooseConfig != null) {
            return eGLConfigChooseConfig;
        }
        throw new IllegalArgumentException("No config chosen");
    }

    public DefaultConfigChooser(boolean z10, int i10) {
        this(8, 8, 8, 0, z10 ? 16 : 0, 0, i10);
    }

    public DefaultConfigChooser(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.configSpec = filterConfigSpec(new int[]{12324, i10, 12323, i11, 12322, i12, 12321, i13, 12325, i14, 12326, i15, 12344}, i16);
        this.redSize = i10;
        this.greenSize = i11;
        this.blueSize = i12;
        this.alphaSize = i13;
        this.depthSize = i14;
        this.stencilSize = i15;
    }

    private EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
        for (EGLConfig eGLConfig : eGLConfigArr) {
            int iFindConfigAttrib = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12325, 0);
            int iFindConfigAttrib2 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12326, 0);
            if (iFindConfigAttrib >= this.depthSize && iFindConfigAttrib2 >= this.stencilSize) {
                int iFindConfigAttrib3 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12324, 0);
                int iFindConfigAttrib4 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12323, 0);
                int iFindConfigAttrib5 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12322, 0);
                int iFindConfigAttrib6 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12321, 0);
                if (iFindConfigAttrib3 == this.redSize && iFindConfigAttrib4 == this.greenSize && iFindConfigAttrib5 == this.blueSize && iFindConfigAttrib6 == this.alphaSize) {
                    return eGLConfig;
                }
            }
        }
        return null;
    }
}
