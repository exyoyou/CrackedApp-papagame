package com.kwad.sdk.core.response.helper;

import android.text.TextUtils;
import com.kwad.sdk.core.response.model.AdGlobalConfigInfo;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdResultData;
import com.kwad.sdk.core.response.model.AdTemplate;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    public static <R extends AdResultData, T extends AdTemplate> T a(R r10, String str) {
        if (r10 == null) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            Iterator<AdTemplate> it2 = r10.getAdTemplateList().iterator();
            while (it2.hasNext()) {
                T t10 = (T) it2.next();
                if (String.valueOf(e.eO(t10).adBaseInfo.creativeId).equals(str)) {
                    return t10;
                }
            }
        }
        return (T) r10.getFirstAdTemplate();
    }

    public static AdResultData ez(AdTemplate adTemplate) {
        if (adTemplate == null) {
            return null;
        }
        return adTemplate.createAdResultData();
    }

    public static <R extends AdResultData, T extends AdTemplate> T r(R r10) {
        if (r10 == null) {
            return null;
        }
        return (T) r10.getFirstAdTemplate();
    }

    public static AdInfo s(AdResultData adResultData) {
        AdTemplate firstAdTemplate = adResultData.getFirstAdTemplate();
        if (firstAdTemplate == null) {
            return null;
        }
        return e.eO(firstAdTemplate);
    }

    public static AdGlobalConfigInfo.CycleAggregationInfo t(AdResultData adResultData) {
        AdGlobalConfigInfo adGlobalConfigInfo;
        if (adResultData == null || (adGlobalConfigInfo = adResultData.adGlobalConfigInfo) == null) {
            return null;
        }
        return adGlobalConfigInfo.cycleAggregationInfo;
    }

    public static boolean u(AdResultData adResultData) {
        AdGlobalConfigInfo.CycleAggregationInfo cycleAggregationInfoT;
        if (adResultData == null || adResultData.getAdTemplateList() == null || adResultData.getAdTemplateList().size() <= 1 || (cycleAggregationInfoT = t(adResultData)) == null) {
            return false;
        }
        return cycleAggregationInfoT.cycleAggregationSwitch;
    }

    public static <T extends AdResultData> AdResultData a(AdResultData adResultData, AdTemplate adTemplate) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(adTemplate);
        AdResultData adResultDataM37clone = adResultData.m37clone();
        adResultDataM37clone.setAdTemplateList(arrayList);
        return adResultDataM37clone;
    }
}
