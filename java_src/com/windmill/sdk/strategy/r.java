package com.windmill.sdk.strategy;

import android.text.TextUtils;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.FreEntity;
import com.windmill.sdk.models.StrategyWaterFall;
import com.windmill.sdk.models.WMFilter;
import com.windmill.sdk.models.WaterfallFilterData;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public abstract class r {
    public static boolean a(WindMillAdRequest adRequest, StrategyWaterFall waterFall) {
        FreEntity freEntityC;
        if (adRequest == null || waterFall == null) {
            return false;
        }
        int iIntValue = waterFall.frequency_day.intValue();
        if (iIntValue != 0) {
            List<FreEntity> listA = i.a().a(adRequest.getPlacementId(), 1);
            WMLogUtil.d(iIntValue + "---------WaterfallStrategyFilter----dayList--------------" + listA.size());
            if (listA.size() >= iIntValue) {
                return true;
            }
        }
        int iIntValue2 = waterFall.frequency_hour.intValue();
        if (iIntValue2 != 0) {
            List<FreEntity> listB = i.a().b(adRequest.getPlacementId(), 1);
            WMLogUtil.d(iIntValue2 + "--------WaterfallStrategyFilter-----hourList--------------" + listB.size());
            if (listB.size() >= iIntValue2) {
                return true;
            }
        }
        int iIntValue3 = waterFall.frequency_secs.intValue();
        if (iIntValue3 == 0 || (freEntityC = i.a().c(adRequest.getPlacementId(), 1)) == null) {
            return false;
        }
        long jCurrentTimeMillis = (System.currentTimeMillis() / 1000) - freEntityC.getTameStamp();
        WMLogUtil.d(iIntValue3 + "---------WaterfallStrategyFilter----freEntity--------------" + jCurrentTimeMillis);
        return jCurrentTimeMillis < ((long) iIntValue3);
    }

    public static WindMillError b(a adStrategy, WMFilter wmFilter) {
        WindMillError windMillErrorDoFilter;
        List<String> list;
        WindMillError windMillErrorDoFilter2;
        if (adStrategy == null) {
            return null;
        }
        String str = adStrategy.F() ? WMFilter.C2S : adStrategy.D() ? WMFilter.S2S : "normal";
        String strAL = adStrategy.aL();
        int iAN = adStrategy.aN();
        String strAW = adStrategy.aW();
        String strX = adStrategy.X();
        int iS = adStrategy.s();
        int iR = adStrategy.r();
        if (wmFilter != null && (windMillErrorDoFilter2 = wmFilter.doFilter(new WaterfallFilterData.Builder().filterIndex(0).placementId(strAL).channelId(String.valueOf(iAN)).adnPlacementId(strAW).price(strX).bidType(str).subType(String.valueOf(iS)).renderType(String.valueOf(iR)).build())) != null) {
            return windMillErrorDoFilter2;
        }
        if (d.a().e() != null) {
            Map<String, List<String>> mapE = d.a().e();
            if (!TextUtils.isEmpty(strAL) && mapE.containsKey(strAL) && (list = mapE.get(strAL)) != null && list.size() > 0) {
                for (int i10 = 0; i10 < list.size(); i10++) {
                    String str2 = list.get(i10);
                    if (!TextUtils.isEmpty(str2) && str2.equals(String.valueOf(iAN))) {
                        return WindMillError.ERROR_AD_LOAD_NETWORK_FILTER;
                    }
                }
            }
        }
        if (d.a().f() != null) {
            List<WMFilter> listF = d.a().f();
            if (!listF.isEmpty()) {
                for (int i11 = 0; i11 < listF.size(); i11++) {
                    WMFilter wMFilter = listF.get(i11);
                    if (wMFilter != null && (windMillErrorDoFilter = wMFilter.doFilter(new WaterfallFilterData.Builder().filterIndex(i11).placementId(strAL).channelId(String.valueOf(iAN)).adnPlacementId(strAW).price(strX).bidType(str).subType(String.valueOf(iS)).renderType(String.valueOf(iR)).build())) != null) {
                        return windMillErrorDoFilter;
                    }
                }
            }
        }
        return null;
    }

    public abstract void a();

    public abstract void a(a adStrategy);

    public abstract List<a> b();

    public abstract void c();

    public static WindMillError a(a adStrategy, WMFilter wmFilter) {
        FreEntity freEntityC;
        if (adStrategy == null) {
            return null;
        }
        int iAc = adStrategy.ac();
        if (iAc != 0) {
            List<FreEntity> listA = i.a().a(adStrategy.aW(), 0);
            WMLogUtil.d(iAc + "-------------dayList--------------" + listA.size());
            if (listA.size() >= iAc) {
                return WindMillError.ERROR_AD_LOAD_FRE_FILTER;
            }
        }
        int iAd = adStrategy.ad();
        if (iAd != 0) {
            List<FreEntity> listB = i.a().b(adStrategy.aW(), 0);
            WMLogUtil.d(iAd + "-------------hourList--------------" + listB.size());
            if (listB.size() >= iAd) {
                return WindMillError.ERROR_AD_LOAD_FRE_FILTER;
            }
        }
        int iAe = adStrategy.ae();
        if (iAe != 0 && (freEntityC = i.a().c(adStrategy.aW(), 0)) != null) {
            long jCurrentTimeMillis = (System.currentTimeMillis() / 1000) - freEntityC.getTameStamp();
            WMLogUtil.d(iAe + "-------------freEntity--------------" + jCurrentTimeMillis);
            if (jCurrentTimeMillis < iAe) {
                return WindMillError.ERROR_AD_LOAD_FRE_FILTER;
            }
        }
        WindMillError windMillErrorB = b(adStrategy, wmFilter);
        if (windMillErrorB != null) {
            return windMillErrorB;
        }
        return null;
    }
}
