package org.hmwebrtc;

import androidx.annotation.Nullable;
import javax.microedition.khronos.egl.EGLContext;

/* JADX INFO: loaded from: classes10.dex */
public final /* synthetic */ class h {
    static {
        Object obj = EglBase.lock;
    }

    public static EglBase.ConfigBuilder a() {
        return new EglBase.ConfigBuilder();
    }

    public static EglBase b() {
        return d(null, EglBase.CONFIG_PLAIN);
    }

    public static EglBase c(EglBase.Context context) {
        return d(context, EglBase.CONFIG_PLAIN);
    }

    public static EglBase d(@Nullable EglBase.Context context, int[] iArr) {
        if (context == null) {
            return EglBase14Impl.isEGL14Supported() ? k(iArr) : h(iArr);
        }
        if (context instanceof EglBase14.Context) {
            return j((EglBase14.Context) context, iArr);
        }
        if (context instanceof EglBase10.Context) {
            return g((EglBase10.Context) context, iArr);
        }
        throw new IllegalArgumentException("Unrecognized Context");
    }

    public static EglBase e(boolean z10) {
        return z10 ? h(EglBase.CONFIG_PLAIN) : d(null, EglBase.CONFIG_PLAIN);
    }

    public static EglBase10 f(EGLContext eGLContext, int[] iArr) {
        return new EglBase10Impl(eGLContext, iArr);
    }

    public static EglBase10 g(EglBase10.Context context, int[] iArr) {
        return new EglBase10Impl(context == null ? null : context.getRawContext(), iArr);
    }

    public static EglBase10 h(int[] iArr) {
        return new EglBase10Impl(null, iArr);
    }

    public static EglBase14 i(android.opengl.EGLContext eGLContext, int[] iArr) {
        return new EglBase14Impl(eGLContext, iArr);
    }

    public static EglBase14 j(EglBase14.Context context, int[] iArr) {
        return new EglBase14Impl(context == null ? null : context.getRawContext(), iArr);
    }

    public static EglBase14 k(int[] iArr) {
        return new EglBase14Impl(null, iArr);
    }

    public static int l(int[] iArr) {
        for (int i10 = 0; i10 < iArr.length - 1; i10++) {
            if (iArr[i10] == 12352) {
                int i11 = iArr[i10 + 1];
                if (i11 != 4) {
                    return i11 != 64 ? 1 : 3;
                }
                return 2;
            }
        }
        return 1;
    }
}
