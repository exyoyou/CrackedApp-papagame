package com.sigmob.sdk.splash;

import android.os.Bundle;
import android.text.TextUtils;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;

/* JADX INFO: loaded from: classes3.dex */
class d extends com.sigmob.sdk.base.common.y {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    a f81689c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SplashAdBroadcastReceiver f81690d;

    protected d(com.sigmob.sdk.base.common.p listener) {
        super(listener);
    }

    public static boolean c(BaseAdUnit adUnit) {
        MaterialMeta material = adUnit.getMaterial();
        if (TextUtils.isEmpty(adUnit.getCrid())) {
            return false;
        }
        return (TextUtils.isEmpty(material.video_url) && TextUtils.isEmpty(material.image_src)) ? false : true;
    }

    @Override // com.sigmob.sdk.base.common.y
    protected void a(com.sigmob.sdk.base.common.p listener) {
        this.f79298a = listener;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.sigmob.sdk.base.common.y
    public void b(BaseAdUnit baseAdUnit) {
        super.b(baseAdUnit);
        SplashAdBroadcastReceiver splashAdBroadcastReceiver = this.f81690d;
        if (splashAdBroadcastReceiver == null) {
            return;
        }
        splashAdBroadcastReceiver.b(splashAdBroadcastReceiver);
        this.f81690d = null;
    }

    @Override // com.sigmob.sdk.base.common.y
    public void a(BaseAdUnit baseAdUnit, Bundle options) {
        if (baseAdUnit == null) {
            baseAdUnit = this.f79299b;
        }
        if (com.sigmob.sdk.base.utils.w.b(baseAdUnit)) {
            this.f81689c = (a) baseAdUnit.getAdConfig();
        }
        super.a(baseAdUnit, options);
        com.sigmob.sdk.base.common.p pVar = this.f79298a;
        if (pVar instanceof e) {
            SplashAdBroadcastReceiver splashAdBroadcastReceiver = new SplashAdBroadcastReceiver((e) pVar, baseAdUnit.getUuid());
            this.f81690d = splashAdBroadcastReceiver;
            splashAdBroadcastReceiver.a(splashAdBroadcastReceiver);
        }
    }

    @Override // com.sigmob.sdk.base.common.y
    protected boolean a(BaseAdUnit adUnit) {
        return c(adUnit);
    }
}
