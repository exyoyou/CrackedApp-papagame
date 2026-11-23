package com.byazt.dg;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 186, 72})
public class da extends sp<PointF> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PathMeasure f12878a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float[] f12879n;
    public i sp;
    public final PointF uj;

    public da(List<? extends com.byazt.vc.c<PointF>> list) {
        super(list);
        this.uj = new PointF();
        this.f12879n = new float[2];
        this.f12878a = new PathMeasure();
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
    @Override // com.byazt.dg.c
    /* JADX INFO: renamed from: tt, reason: merged with bridge method [inline-methods] */
    public PointF c(com.byazt.vc.c<PointF> cVar, float f10) {
        PointF pointF;
        i iVar = (i) cVar;
        Path pathTt = iVar.tt();
        if (pathTt == null) {
            return cVar.f21165c;
        }
        com.byazt.vc.ve<A> veVar = this.ve;
        if (veVar != 0 && (pointF = (PointF) veVar.c(iVar.f21164a, iVar.sp.floatValue(), iVar.f21165c, iVar.tt, uj(), f10, x())) != null) {
            return pointF;
        }
        if (this.sp != iVar) {
            this.f12878a.setPath(pathTt, false);
            this.sp = iVar;
        }
        PathMeasure pathMeasure = this.f12878a;
        pathMeasure.getPosTan(f10 * pathMeasure.getLength(), this.f12879n, null);
        PointF pointF2 = this.uj;
        float[] fArr = this.f12879n;
        pointF2.set(fArr[0], fArr[1]);
        return this.uj;
    }
}
