package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.STRICT)
public class y0 extends d {
    public y0(ProducerContext context) {
        this(context.a(), context.getId(), context.k(), context.d(), context.b(), context.p(), context.o(), context.m(), context.getPriority(), context.c());
    }

    public void A(boolean isIntermediateResultExpected) {
        d.r(x(isIntermediateResultExpected));
    }

    public void B(boolean isPrefetch) {
        d.s(y(isPrefetch));
    }

    public void C(Priority priority) {
        d.t(z(priority));
    }

    public y0(ImageRequest overrideRequest, ProducerContext context) {
        this(overrideRequest, context.getId(), context.k(), context.d(), context.b(), context.p(), context.o(), context.m(), context.getPriority(), context.c());
    }

    public y0(ImageRequest imageRequest, String id2, t0 producerListener, Object callerContext, ImageRequest.RequestLevel lowestPermittedRequestLevel, boolean isPrefetch, boolean isIntermediateResultExpected, Priority priority, com.facebook.imagepipeline.core.i imagePipelineConfig) {
        super(imageRequest, id2, producerListener, callerContext, lowestPermittedRequestLevel, isPrefetch, isIntermediateResultExpected, priority, imagePipelineConfig);
    }

    public y0(ImageRequest imageRequest, String id2, @Nullable String uiComponentId, t0 producerListener, Object callerContext, ImageRequest.RequestLevel lowestPermittedRequestLevel, boolean isPrefetch, boolean isIntermediateResultExpected, Priority priority, com.facebook.imagepipeline.core.i imagePipelineConfig) {
        super(imageRequest, id2, uiComponentId, producerListener, callerContext, lowestPermittedRequestLevel, isPrefetch, isIntermediateResultExpected, priority, imagePipelineConfig);
    }
}
