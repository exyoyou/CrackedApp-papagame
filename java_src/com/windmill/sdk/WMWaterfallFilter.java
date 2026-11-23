package com.windmill.sdk;

import com.windmill.sdk.models.WMFilter;
import com.windmill.sdk.models.WaterfallFilterData;

/* JADX INFO: loaded from: classes8.dex */
public class WMWaterfallFilter extends WMFilter {
    public String placementID;

    public WMWaterfallFilter(String placementID) {
        this.placementID = placementID;
    }

    @Override // com.windmill.sdk.models.WMFilter
    public WindMillError doFilter(WaterfallFilterData filterData) {
        String str;
        if (filterData != null) {
            try {
                if (!this.stack.isEmpty() && (str = this.placementID) != null && str.equals(filterData.getPlacementId())) {
                    for (int i10 = 0; i10 < this.stack.size(); i10++) {
                        WindMillError windMillErrorDoFilter = doFilter(filterData, this.stack.get(i10));
                        if (windMillErrorDoFilter != null) {
                            return windMillErrorDoFilter;
                        }
                    }
                }
                return null;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }
}
