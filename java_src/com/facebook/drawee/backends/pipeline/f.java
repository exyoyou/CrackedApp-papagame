package com.facebook.drawee.backends.pipeline;

import android.content.Context;
import com.facebook.common.executors.i;
import com.facebook.common.internal.l;
import com.facebook.imagepipeline.core.h;
import com.facebook.imagepipeline.core.k;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class f implements l<e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f27015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f27016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g f27017c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<com.facebook.drawee.controller.c> f27018d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set<b4.c> f27019e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private final q3.g f27020f;

    public f(Context context) {
        this(context, null);
    }

    @Override // com.facebook.common.internal.l
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public e get() {
        return new e(this.f27015a, this.f27017c, this.f27016b, this.f27018d, this.f27019e).d0(this.f27020f);
    }

    public f(Context context, @Nullable c draweeConfig) {
        this(context, k.l(), draweeConfig);
    }

    public f(Context context, k imagePipelineFactory, @Nullable c draweeConfig) {
        this(context, imagePipelineFactory, null, null, draweeConfig);
    }

    public f(Context context, k imagePipelineFactory, Set<com.facebook.drawee.controller.c> boundControllerListeners, Set<b4.c> boundControllerListeners2, @Nullable c draweeConfig) {
        this.f27015a = context;
        h hVarJ = imagePipelineFactory.j();
        this.f27016b = hVarJ;
        if (draweeConfig != null && draweeConfig.d() != null) {
            this.f27017c = draweeConfig.d();
        } else {
            this.f27017c = new g();
        }
        this.f27017c.a(context.getResources(), com.facebook.drawee.components.a.b(), imagePipelineFactory.b(context), i.f(), hVarJ.r(), draweeConfig != null ? draweeConfig.a() : null, draweeConfig != null ? draweeConfig.b() : null);
        this.f27018d = boundControllerListeners;
        this.f27019e = boundControllerListeners2;
        this.f27020f = draweeConfig != null ? draweeConfig.c() : null;
    }
}
