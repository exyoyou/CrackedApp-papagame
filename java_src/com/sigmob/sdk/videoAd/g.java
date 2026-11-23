package com.sigmob.sdk.videoAd;

import android.os.Bundle;
import com.czhj.wire.okio.ByteString;
import com.sigmob.sdk.base.BaseAdActivity;
import com.sigmob.sdk.base.common.AdActivity;
import com.sigmob.sdk.base.common.TransparentAdActivity;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class g extends com.sigmob.sdk.mraid.i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RewardVideoAdBroadcastReceiver f81816c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f81817d;

    public g(com.sigmob.sdk.base.common.p listener, boolean isHalfInterstitial) {
        super(listener);
        this.f81817d = isHalfInterstitial;
    }

    private static boolean c(MaterialMeta material) {
        boolean z10 = material.creative_type.intValue() == com.sigmob.sdk.base.common.n.CreativeTypeVideo_Html_Snippet.a() || material.creative_type.intValue() == com.sigmob.sdk.base.common.n.CreativeTypeVideo_transparent_html.a();
        boolean zB = com.sigmob.sdk.base.utils.t.b(material.video_url);
        ByteString byteString = material.html_snippet;
        return z10 && (byteString != null && byteString.size() > 10) && zB;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0042  */
    @Override // com.sigmob.sdk.mraid.i, com.sigmob.sdk.base.common.y
    public void a(BaseAdUnit baseAdUnit, Bundle option) {
        String str;
        com.sigmob.sdk.base.common.h.a(baseAdUnit);
        super.a(baseAdUnit, option);
        if (this.f79298a instanceof h) {
            RewardVideoAdBroadcastReceiver rewardVideoAdBroadcastReceiver = new RewardVideoAdBroadcastReceiver(baseAdUnit, (h) this.f79298a, baseAdUnit.getUuid());
            this.f81816c = rewardVideoAdBroadcastReceiver;
            rewardVideoAdBroadcastReceiver.a(rewardVideoAdBroadcastReceiver);
        }
        int ad_type = baseAdUnit.getAd_type();
        int creativeType = baseAdUnit.getCreativeType();
        if (ad_type != 1 && ad_type != 4) {
            str = "reward";
        } else if (creativeType == com.sigmob.sdk.base.common.n.CreativeTypeMRAID.a()) {
            str = BaseAdActivity.f78791c;
        } else if (creativeType == com.sigmob.sdk.base.common.n.CreativeTypeMRAIDTWO.a()) {
            str = BaseAdActivity.f78792d;
        } else {
            str = "reward";
        }
        if (com.sigmob.sdk.base.utils.w.b(option)) {
            option.putBoolean(com.sigmob.sdk.base.n.f79599z, this.f81817d);
        }
        final String adslot_id = baseAdUnit.getAdslot_id();
        ad.a("vopen", null, baseAdUnit, null, null, new ad.a() { // from class: com.sigmob.sdk.videoAd.n
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                g.a(adslot_id, obj);
            }
        });
        BaseAdActivity.a(com.sigmob.sdk.b.e(), ((ad_type == 4 && (baseAdUnit.getMaterial().theme_data.intValue() == 1 || this.f81817d)) || (creativeType == com.sigmob.sdk.base.common.n.CreativeTypeMRAIDTWO.a() && (baseAdUnit.getMaterial().theme_data.intValue() == 1 || baseAdUnit.getTemplateType() == 1))) ? TransparentAdActivity.class : AdActivity.class, baseAdUnit.getUuid(), option, str);
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
        if (com.sigmob.sdk.base.utils.w.b(this.f81816c)) {
            RewardVideoAdBroadcastReceiver rewardVideoAdBroadcastReceiver = this.f81816c;
            rewardVideoAdBroadcastReceiver.b(rewardVideoAdBroadcastReceiver);
            this.f81816c = null;
        }
        super.b(baseAdUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, Object obj) {
        Map<String, String> options;
        if (!(obj instanceof PointEntitySigmob) || (options = ((PointEntitySigmob) obj).getOptions()) == null) {
            return;
        }
        options.put("show_count", String.valueOf(com.sigmob.sdk.base.common.h.h(str)));
        com.sigmob.sdk.base.common.h.g(str);
    }

    private static boolean b(MaterialMeta material) {
        return (material.creative_type.intValue() == com.sigmob.sdk.base.common.n.CreativeTypeVideo_Tar.a()) && com.sigmob.sdk.base.utils.t.b(material.endcard_md5) && com.sigmob.sdk.base.utils.t.b(material.endcard_url) && com.sigmob.sdk.base.utils.t.b(material.video_url);
    }

    public static boolean d(BaseAdUnit baseAdUnit) {
        boolean zA;
        boolean zC = com.sigmob.sdk.mraid.i.c(baseAdUnit);
        MaterialMeta material = baseAdUnit.getMaterial();
        if (baseAdUnit.getCreativeType() == com.sigmob.sdk.base.common.n.CreativeTypeMRAID.a()) {
            zA = com.sigmob.sdk.mraid.i.a(material);
        } else {
            zA = b(material) || c(material) || d(material);
        }
        return zC && zA;
    }

    private static boolean d(MaterialMeta material) {
        return (material.creative_type.intValue() == com.sigmob.sdk.base.common.n.CreativeTypeVideo_EndCardURL.a()) && com.sigmob.sdk.base.utils.t.b(material.html_url) && com.sigmob.sdk.base.utils.t.b(material.video_url);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0023  */
    @Override // com.sigmob.sdk.mraid.i, com.sigmob.sdk.base.common.y
    public boolean a(BaseAdUnit baseAdUnit) {
        boolean zA;
        boolean zA2 = super.a(baseAdUnit);
        MaterialMeta material = baseAdUnit.getMaterial();
        int creativeType = baseAdUnit.getCreativeType();
        if (creativeType == com.sigmob.sdk.base.common.n.CreativeTypeMRAID.a()) {
            zA = com.sigmob.sdk.mraid.i.a(material);
        } else if (creativeType == com.sigmob.sdk.base.common.n.CreativeTypeMRAIDTWO.a()) {
            zA = true;
        } else {
            boolean zB = b(material);
            boolean zC = c(material);
            boolean zD = d(material);
            if (zB || zC || zD) {
                zA = true;
            } else {
                zA = false;
            }
        }
        return zA2 && zA;
    }
}
