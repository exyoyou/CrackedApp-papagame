package com.sigmob.sdk.base;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.bykv.vk.component.ttvideo.player.C;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.Constants;
import com.sigmob.sdk.base.common.AdActivity;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.common.LandscapeAdActivity;
import com.sigmob.sdk.base.common.LandscapeTransparentAdActivity;
import com.sigmob.sdk.base.common.PortraitAdActivity;
import com.sigmob.sdk.base.common.PortraitTransparentAdActivity;
import com.sigmob.sdk.base.common.TransparentAdActivity;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class BaseAdActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f78789a = "LandPage";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f78790b = "reward";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f78791c = "mraid";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f78792d = "mraid_two";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f78793e = "LandNative";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f78794f = "DisLike";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected static final String f78795g = "ad_view_class_name";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected static final String f78796h = "adUnit_requestId_key";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f78797i = "land_page_url";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f78798j = "new_interstitial";

    private static Intent a(Context context, Class<? extends BaseAdActivity> cls, String uuid, String adCls) {
        Intent intentPutExtra = new Intent(context, cls).setFlags(C.ENCODING_PCM_MU_LAW).putExtra(f78795g, adCls).putExtra(f78796h, uuid);
        int requestedOrientation = context instanceof Activity ? ((Activity) context).getRequestedOrientation() : 3;
        if (requestedOrientation != 7 && requestedOrientation != 6) {
            requestedOrientation = context.getResources().getDisplayMetrics().widthPixels > context.getResources().getDisplayMetrics().heightPixels ? 6 : 7;
        }
        intentPutExtra.putExtra(n.f79598y, requestedOrientation);
        intentPutExtra.putExtra(Constants.BROADCAST_IDENTIFIER_KEY, uuid);
        return intentPutExtra;
    }

    public static void a(Context context, Class<? extends BaseAdActivity> cls, BaseAdUnit adUnit) {
        try {
            context.startActivity(a(context, cls, adUnit.getUuid(), f78789a));
        } catch (Throwable th) {
            new HashMap().put("error", th.getMessage());
        }
    }

    public static void a(Context context, Class<? extends BaseAdActivity> cls, String uuid) {
        a(context, cls, uuid, null, f78789a);
    }

    public static void a(Context context, Class<? extends BaseAdActivity> cls, String uuid, Bundle bundle, String adClass) {
        try {
            int display_orientation = com.sigmob.sdk.base.common.h.c(uuid).getDisplay_orientation();
            if (display_orientation == 0) {
                display_orientation = ClientMetadata.getInstance().getOrientationInt().intValue();
            }
            Class<? extends BaseAdActivity> cls2 = TransparentAdActivity.class;
            if (cls == cls2) {
                if (display_orientation == 1) {
                    cls2 = PortraitTransparentAdActivity.class;
                } else if (display_orientation == 2) {
                    cls2 = LandscapeTransparentAdActivity.class;
                }
            } else if (display_orientation != 1) {
                cls2 = display_orientation != 2 ? AdActivity.class : LandscapeAdActivity.class;
            } else {
                cls2 = PortraitAdActivity.class;
            }
            Intent intentA = a(context, cls2, uuid, adClass);
            if (bundle != null) {
                intentA.putExtras(bundle);
            }
            context.startActivity(intentA);
        } catch (Throwable th) {
            HashMap map = new HashMap();
            map.put("error", th.getMessage());
            BaseBroadcastReceiver.a(context, uuid, map, IntentActions.ACTION_REWARDED_VIDEO_PLAYFAIL);
        }
    }
}
