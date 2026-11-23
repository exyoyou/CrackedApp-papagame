package com.facebook.drawee.backends.pipeline;

import android.content.Context;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.core.ImagePipelineConfig;
import com.facebook.imagepipeline.core.h;
import com.facebook.imagepipeline.core.k;
import com.facebook.imagepipeline.core.l;
import com.facebook.imagepipeline.nativecode.NativeCodeInitializer;
import java.lang.reflect.InvocationTargetException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class Fresco {
    private static final Class<?> TAG = Fresco.class;
    private static f sDraweeControllerBuilderSupplier;
    private static volatile boolean sIsInitialized;

    private Fresco() {
    }

    public static f getDraweeControllerBuilderSupplier() {
        return sDraweeControllerBuilderSupplier;
    }

    public static h getImagePipeline() {
        return getImagePipelineFactory().j();
    }

    public static k getImagePipelineFactory() {
        return k.l();
    }

    public static boolean hasBeenInitialized() {
        return sIsInitialized;
    }

    public static void initialize(Context context) {
        initialize(context, null, null);
    }

    private static void initializeDrawee(Context context, @Nullable c draweeConfig) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("Fresco.initializeDrawee");
        }
        f fVar = new f(context, draweeConfig);
        sDraweeControllerBuilderSupplier = fVar;
        SimpleDraweeView.initialize(fVar);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    public static e newDraweeControllerBuilder() {
        return sDraweeControllerBuilderSupplier.get();
    }

    public static void shutDown() {
        sDraweeControllerBuilderSupplier = null;
        SimpleDraweeView.shutDown();
        k.A();
    }

    public static void initialize(Context context, @Nullable ImagePipelineConfig imagePipelineConfig) {
        initialize(context, imagePipelineConfig, null);
    }

    public static void initialize(Context context, @Nullable ImagePipelineConfig imagePipelineConfig, @Nullable c draweeConfig) {
        initialize(context, imagePipelineConfig, draweeConfig, true);
    }

    public static void initialize(Context context, @Nullable ImagePipelineConfig imagePipelineConfig, @Nullable c draweeConfig, boolean useNativeCode) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("Fresco#initialize");
        }
        if (sIsInitialized) {
            i3.a.k0(TAG, "Fresco has already been initialized! `Fresco.initialize(...)` should only be called 1 single time to avoid memory leaks!");
        } else {
            sIsInitialized = true;
        }
        l.b(useNativeCode);
        if (!r4.a.e()) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("Fresco.initialize->SoLoader.init");
            }
            try {
                NativeCodeInitializer.class.getMethod("init", Context.class).invoke(null, context);
            } catch (IllegalAccessException unused) {
                r4.a.d(new r4.c());
            } catch (NoSuchMethodException unused2) {
                r4.a.d(new r4.c());
            } catch (ClassNotFoundException unused3) {
                r4.a.d(new r4.c());
            } catch (InvocationTargetException unused4) {
                r4.a.d(new r4.c());
            } finally {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
        }
        Context applicationContext = context.getApplicationContext();
        if (imagePipelineConfig == null) {
            k.v(applicationContext);
        } else {
            k.w(imagePipelineConfig);
        }
        initializeDrawee(applicationContext, draweeConfig);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }
}
