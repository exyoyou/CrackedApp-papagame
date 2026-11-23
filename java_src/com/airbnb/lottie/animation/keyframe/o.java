package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.model.DocumentData;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class o extends g<DocumentData> {

    class a extends com.airbnb.lottie.value.j<DocumentData> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.airbnb.lottie.value.b f5554d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.airbnb.lottie.value.j f5555e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ DocumentData f5556f;

        a(com.airbnb.lottie.value.b bVar, com.airbnb.lottie.value.j jVar, DocumentData documentData) {
            this.f5554d = bVar;
            this.f5555e = jVar;
            this.f5556f = documentData;
        }

        @Override // com.airbnb.lottie.value.j
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public DocumentData a(com.airbnb.lottie.value.b<DocumentData> bVar) {
            this.f5554d.h(bVar.f(), bVar.a(), bVar.g().f5709a, bVar.b().f5709a, bVar.d(), bVar.c(), bVar.e());
            String str = (String) this.f5555e.a(this.f5554d);
            DocumentData documentDataB = bVar.c() == 1.0f ? bVar.b() : bVar.g();
            this.f5556f.a(str, documentDataB.f5710b, documentDataB.f5711c, documentDataB.f5712d, documentDataB.f5713e, documentDataB.f5714f, documentDataB.f5715g, documentDataB.f5716h, documentDataB.f5717i, documentDataB.f5718j, documentDataB.f5719k, documentDataB.f5720l, documentDataB.f5721m);
            return this.f5556f;
        }
    }

    public o(List<com.airbnb.lottie.value.a<DocumentData>> list) {
        super(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
    public DocumentData i(com.airbnb.lottie.value.a<DocumentData> aVar, float f10) {
        DocumentData documentData;
        com.airbnb.lottie.value.j<A> jVar = this.f5513e;
        if (jVar == 0) {
            return (f10 != 1.0f || (documentData = aVar.f6134c) == null) ? aVar.f6133b : documentData;
        }
        float f11 = aVar.f6138g;
        Float f12 = aVar.f6139h;
        float fFloatValue = f12 == null ? Float.MAX_VALUE : f12.floatValue();
        DocumentData documentData2 = aVar.f6133b;
        DocumentData documentData3 = documentData2;
        DocumentData documentData4 = aVar.f6134c;
        return (DocumentData) jVar.b(f11, fFloatValue, documentData3, documentData4 == null ? documentData2 : documentData4, f10, d(), f());
    }

    public void q(com.airbnb.lottie.value.j<String> jVar) {
        super.n(new a(new com.airbnb.lottie.value.b(), jVar, new DocumentData()));
    }
}
