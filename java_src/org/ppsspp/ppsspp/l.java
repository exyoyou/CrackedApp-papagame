package org.ppsspp.ppsspp;

import android.opengl.GLSurfaceView;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

/* JADX INFO: loaded from: classes10.dex */
public class l implements GLSurfaceView.EGLConfigChooser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f95943a = "NativeEGLConfigChooser";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f95944b = 4;

    private class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        EGLConfig f95945a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f95946b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f95947c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f95948d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f95949e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f95950f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f95951g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f95952h;

        private b() {
        }

        public void a() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("EGLConfig: red=");
            sb2.append(this.f95946b);
            sb2.append(" green=");
            sb2.append(this.f95947c);
            sb2.append(" blue=");
            sb2.append(this.f95948d);
            sb2.append(" alpha=");
            sb2.append(this.f95949e);
            sb2.append(" depth=");
            sb2.append(this.f95951g);
            sb2.append(" stencil=");
            sb2.append(this.f95950f);
            sb2.append(" samples=");
            sb2.append(this.f95952h);
        }
    }

    l() {
    }

    b[] a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
        b[] bVarArr = new b[eGLConfigArr.length];
        for (int i10 = 0; i10 < eGLConfigArr.length; i10++) {
            b bVar = new b();
            EGLConfig eGLConfig = eGLConfigArr[i10];
            bVar.f95945a = eGLConfig;
            bVar.f95946b = b(egl10, eGLDisplay, eGLConfig, 12324);
            bVar.f95947c = b(egl10, eGLDisplay, eGLConfigArr[i10], 12323);
            bVar.f95948d = b(egl10, eGLDisplay, eGLConfigArr[i10], 12322);
            bVar.f95949e = b(egl10, eGLDisplay, eGLConfigArr[i10], 12321);
            bVar.f95951g = b(egl10, eGLDisplay, eGLConfigArr[i10], 12325);
            bVar.f95950f = b(egl10, eGLDisplay, eGLConfigArr[i10], 12326);
            bVar.f95952h = b(egl10, eGLDisplay, eGLConfigArr[i10], 12337);
            bVarArr[i10] = bVar;
        }
        return bVarArr;
    }

    int b(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i10) {
        int[] iArr = new int[1];
        try {
            if (egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i10, iArr)) {
                return iArr[0];
            }
            return -1;
        } catch (IllegalArgumentException unused) {
            if (eGLConfig != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Illegal argument to getEglConfigAttrib: attr=");
                sb2.append(i10);
            }
            return -1;
        }
    }

    @Override // android.opengl.GLSurfaceView.EGLConfigChooser
    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
        b bVar;
        int[] iArr = {12324, 5, 12323, 6, 12322, 5, 12325, 16, 12326, 0, 12339, 4, 12352, 4, 12344};
        int[] iArr2 = new int[1];
        if (!egl10.eglChooseConfig(eGLDisplay, iArr, null, 0, iArr2)) {
            throw new IllegalArgumentException("eglChooseConfig failed when counting");
        }
        int i10 = iArr2[0];
        StringBuilder sb2 = new StringBuilder();
        sb2.append("There are ");
        sb2.append(i10);
        sb2.append(" egl configs");
        if (i10 <= 0) {
            throw new IllegalArgumentException("No configs match configSpec");
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[i10];
        if (!egl10.eglChooseConfig(eGLDisplay, iArr, eGLConfigArr, i10, iArr2)) {
            throw new IllegalArgumentException("eglChooseConfig failed when retrieving");
        }
        b[] bVarArrA = a(egl10, eGLDisplay, eGLConfigArr);
        for (b bVar2 : bVarArrA) {
            bVar2.a();
        }
        int i11 = 0;
        while (true) {
            if (i11 >= bVarArrA.length) {
                bVar = null;
                break;
            }
            bVar = bVarArrA[i11];
            if (bVar.f95946b == 8 && bVar.f95947c == 8 && bVar.f95948d == 8 && bVar.f95949e == 0 && bVar.f95950f >= 8 && bVar.f95951g >= 24) {
                break;
            }
            i11++;
        }
        if (bVar == null) {
            for (b bVar3 : bVarArrA) {
                if (bVar3.f95946b == 8 && bVar3.f95947c == 8 && bVar3.f95948d == 8 && bVar3.f95949e == 0 && bVar3.f95950f >= 8 && bVar3.f95951g >= 20) {
                    bVar = bVar3;
                    break;
                }
            }
        }
        if (bVar == null) {
            for (b bVar4 : bVarArrA) {
                if (bVar4.f95946b == 8 && bVar4.f95947c == 8 && bVar4.f95948d == 8 && bVar4.f95949e == 0 && bVar4.f95950f >= 8 && bVar4.f95951g >= 16) {
                    bVar = bVar4;
                    break;
                }
            }
        }
        if (bVar == null) {
            for (b bVar5 : bVarArrA) {
                if (bVar5.f95946b == 8 && bVar5.f95947c == 8 && bVar5.f95948d == 8 && bVar5.f95949e == 0 && bVar5.f95951g >= 16) {
                    bVar = bVar5;
                    break;
                }
            }
        }
        if (bVar == null) {
            for (b bVar6 : bVarArrA) {
                if (bVar6.f95946b == 8 && bVar6.f95947c == 8 && bVar6.f95948d == 8 && bVar6.f95949e == 8 && bVar6.f95950f >= 8 && bVar6.f95951g >= 24) {
                    bVar = bVar6;
                    break;
                }
            }
        }
        if (bVar == null) {
            for (b bVar7 : bVarArrA) {
                if (bVar7.f95946b == 8 && bVar7.f95947c == 8 && bVar7.f95948d == 8 && bVar7.f95949e == 8 && bVar7.f95950f >= 8 && bVar7.f95951g >= 16) {
                    bVar = bVar7;
                    break;
                }
            }
        }
        if (bVar == null) {
            for (b bVar8 : bVarArrA) {
                if (bVar8.f95946b >= 5 && bVar8.f95947c >= 6 && bVar8.f95948d >= 5 && bVar8.f95951g >= 16 && bVar8.f95950f >= 8) {
                    bVar = bVar8;
                    break;
                }
            }
        }
        if (bVar == null) {
            for (b bVar9 : bVarArrA) {
                if (bVar9.f95946b >= 5 && bVar9.f95947c >= 6 && bVar9.f95948d >= 5 && bVar9.f95951g >= 16) {
                    bVar = bVar9;
                    break;
                }
            }
        }
        if (bVar == null && bVarArrA.length > 0) {
            bVar = bVarArrA[0];
        }
        if (bVar == null) {
            throw new IllegalArgumentException("Failed to find a valid EGL config");
        }
        bVar.a();
        return bVar.f95945a;
    }
}
