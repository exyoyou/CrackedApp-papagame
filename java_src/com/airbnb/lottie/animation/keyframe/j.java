package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class j extends g<PointF> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final PointF f5539i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final float[] f5540j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final PathMeasure f5541k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private i f5542l;

    public j(List<? extends com.airbnb.lottie.value.a<PointF>> list) {
        super(list);
        this.f5539i = new PointF();
        this.f5540j = new float[2];
        this.f5541k = new PathMeasure();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.airbnb.lottie.animation.keyframe.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public PointF i(com.airbnb.lottie.value.a<PointF> aVar, float f10) {
        PointF pointF;
        i iVar = (i) aVar;
        Path pathK = iVar.k();
        if (pathK == null) {
            return aVar.f6133b;
        }
        com.airbnb.lottie.value.j<A> jVar = this.f5513e;
        if (jVar != 0 && (pointF = (PointF) jVar.b(iVar.f6138g, iVar.f6139h.floatValue(), (PointF) iVar.f6133b, (PointF) iVar.f6134c, e(), f10, f())) != null) {
            return pointF;
        }
        if (this.f5542l != iVar) {
            this.f5541k.setPath(pathK, false);
            this.f5542l = iVar;
        }
        PathMeasure pathMeasure = this.f5541k;
        pathMeasure.getPosTan(f10 * pathMeasure.getLength(), this.f5540j, null);
        PointF pointF2 = this.f5539i;
        float[] fArr = this.f5540j;
        pointF2.set(fArr[0], fArr[1]);
        return this.f5539i;
    }
}
