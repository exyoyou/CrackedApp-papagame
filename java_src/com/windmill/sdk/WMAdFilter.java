package com.windmill.sdk;

import com.windmill.sdk.models.WMFilter;
import com.windmill.sdk.models.WaterfallFilterData;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class WMAdFilter extends WMFilter {
    @Override // com.windmill.sdk.models.WMFilter
    public WMAdFilter and() {
        return this;
    }

    @Override // com.windmill.sdk.models.WMFilter
    public WindMillError doFilter(WaterfallFilterData filterData) {
        if (filterData == null) {
            return null;
        }
        try {
            if (this.stack.isEmpty()) {
                return null;
            }
            for (int i10 = 0; i10 < this.stack.size(); i10++) {
                WindMillError windMillErrorDoFilter = doFilter(filterData, this.stack.get(i10));
                if (windMillErrorDoFilter != null) {
                    return windMillErrorDoFilter;
                }
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.windmill.sdk.models.WMFilter
    public /* bridge */ /* synthetic */ WMFilter in(String key, List values) {
        return in(key, (List<String>) values);
    }

    @Override // com.windmill.sdk.models.WMFilter
    public WMAdFilter equalTo(String key, String value) {
        super.equalTo(key, value);
        return this;
    }

    @Override // com.windmill.sdk.models.WMFilter
    public WMAdFilter greaterThan(String key, String value) {
        super.greaterThan(key, value);
        return this;
    }

    @Override // com.windmill.sdk.models.WMFilter
    public WMAdFilter greaterThanEqual(String key, String value) {
        super.greaterThanEqual(key, value);
        return this;
    }

    @Override // com.windmill.sdk.models.WMFilter
    public WMAdFilter in(String key, List<String> values) {
        super.in(key, values);
        return this;
    }

    @Override // com.windmill.sdk.models.WMFilter
    public WMAdFilter lessThan(String key, String value) {
        super.lessThan(key, value);
        return this;
    }

    @Override // com.windmill.sdk.models.WMFilter
    public WMAdFilter lessThanEqual(String key, String value) {
        super.lessThanEqual(key, value);
        return this;
    }

    @Override // com.windmill.sdk.models.WMFilter
    public WMAdFilter or() {
        super.or();
        return this;
    }
}
