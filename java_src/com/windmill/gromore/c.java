package com.windmill.gromore;

import android.text.TextUtils;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMAdBaseAdapter;
import com.windmill.sdk.point.PointCategory;
import com.windmill.sdk.point.PointType;
import com.windmill.sdk.strategy.WMSdkConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes8.dex */
public final class c {
    public static void a(WMAdBaseAdapter wMAdBaseAdapter, q qVar) {
        if (wMAdBaseAdapter == null) {
            WMLogUtil.e("GmTrackUtils ---trackShowAdSuccessPriceEvent : adapter is null, return");
            return;
        }
        if (wMAdBaseAdapter.getBiddingType() != 1) {
            return;
        }
        if (qVar == null) {
            WMLogUtil.e("GmTrackUtils ---trackShowAdSuccessPriceEvent : reflectionGetPriceEntity or getAllPathAndPrices is null, return");
            return;
        }
        int gMPricePercent = WMSdkConfig.sharedInstance().getGMPricePercent();
        WMLogUtil.d("GmTrackUtils ---trackShowAdSuccessPriceEvent : gmPricePercent is ".concat(String.valueOf(gMPricePercent)));
        int iNextInt = new Random().nextInt(100) + 1;
        if (gMPricePercent <= 0 || iNextInt > gMPricePercent) {
            WMLogUtil.d("GmTrackUtils ---trackShowAdSuccessPriceEvent : gmPricePercent is " + gMPricePercent + ", randomValue is " + iNextInt + ", return");
            return;
        }
        List<q.a> list = qVar.f86347b;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (list.get(i10).f86355a == qVar.f86346a) {
                arrayList.add(list.get(i10));
            }
        }
        a.a();
        String strA = a.a((List<q.a>) arrayList);
        ArrayList arrayList2 = new ArrayList();
        String groEcpm = wMAdBaseAdapter.getGroEcpm();
        for (int i11 = 0; i11 < list.size(); i11++) {
            double d10 = list.get(i11).f86355a;
            if (TextUtils.isEmpty(groEcpm)) {
                break;
            }
            if (Double.parseDouble(groEcpm) == d10) {
                arrayList2.add(list.get(i11));
            }
        }
        a.a();
        String strA2 = a.a((List<q.a>) arrayList2);
        HashMap map = new HashMap();
        map.put("load_path", strA);
        map.put("start_path", strA2);
        map.put("gm_version", wMAdBaseAdapter.getChannelSdkVersion());
        map.put("gm_plugin_version", GroAdapterProxy.getPluginVersion());
        wMAdBaseAdapter.track(PointType.WIND_MILL_ADAPTER, PointCategory.SHOW_AD_SUCCESS_PRICE_GM_PRICE_PATH, map);
    }
}
