package com.sigmob.sdk.base.common;

import android.os.Bundle;
import com.sigmob.sdk.base.models.BaseAdUnit;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected p f79298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected BaseAdUnit f79299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private EventForwardingBroadcastReceiver f79300c;

    protected y(p customEventInterstitialListener) {
        this.f79298a = customEventInterstitialListener;
    }

    protected abstract void a(p customEventInterstitialListener);

    public void a(BaseAdUnit baseAdUnit, Bundle option) {
        if (baseAdUnit == null) {
            if (com.sigmob.sdk.base.utils.w.b(this.f79298a)) {
                this.f79298a.b(null, "ad unit is unavailable.");
            }
        } else {
            EventForwardingBroadcastReceiver eventForwardingBroadcastReceiver = new EventForwardingBroadcastReceiver(baseAdUnit, this.f79298a, baseAdUnit.getUuid());
            this.f79300c = eventForwardingBroadcastReceiver;
            eventForwardingBroadcastReceiver.a(eventForwardingBroadcastReceiver);
        }
    }

    protected abstract boolean a(BaseAdUnit adUnit);

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
    public void b(BaseAdUnit baseAdUnit) {
        if (com.sigmob.sdk.base.utils.w.b(baseAdUnit)) {
            h.b(baseAdUnit);
            baseAdUnit.destroy();
        }
        this.f79299b = null;
        if (com.sigmob.sdk.base.utils.w.b(this.f79300c)) {
            EventForwardingBroadcastReceiver eventForwardingBroadcastReceiver = this.f79300c;
            eventForwardingBroadcastReceiver.b(eventForwardingBroadcastReceiver);
        }
    }

    public void a(Map<String, Object> localExtras, BaseAdUnit adUnit) {
        this.f79299b = adUnit;
        a(this.f79298a);
    }
}
