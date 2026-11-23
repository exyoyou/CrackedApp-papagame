package com.byazt.dg;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 186, 15})
public class uj extends sp<Float> {
    public uj(List<com.byazt.vc.c<Float>> list) {
        super(list);
    }

    public float i() {
        return ve(ve(), n());
    }

    @Override // com.byazt.dg.c
    /* JADX INFO: renamed from: tt, reason: merged with bridge method [inline-methods] */
    public Float c(com.byazt.vc.c<Float> cVar, float f10) {
        return Float.valueOf(ve(cVar, f10));
    }

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
    public float ve(com.byazt.vc.c<Float> cVar, float f10) {
        Float f11;
        if (cVar.f21165c == null || cVar.tt == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        com.byazt.vc.ve<A> veVar = this.ve;
        return (veVar == 0 || (f11 = (Float) veVar.c(cVar.f21164a, cVar.sp.floatValue(), cVar.f21165c, cVar.tt, f10, uj(), x())) == null) ? com.byazt.kk.i.c(cVar.a(), cVar.sp(), f10) : f11.floatValue();
    }
}
