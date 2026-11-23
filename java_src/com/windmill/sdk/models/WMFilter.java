package com.windmill.sdk.models;

import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMLogUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public abstract class WMFilter {
    public static final String C2S = "c2s";
    public static final String KEY_ADN_PLACEMENT_ID = "adnPlacementId";
    public static final String KEY_ADN_PLACEMENT_RENDER_TYPE = "adnPlacementRenderType";
    public static final String KEY_ADN_PLACEMENT_SUB_TYPE = "adnPlacementSubType";
    public static final String KEY_BIDDING_TYPE = "biddingType";
    public static final String KEY_CHANNEL_ID = "channelId";
    public static final String KEY_E_CPM = "eCpm";
    public static final String NORMAL = "normal";
    public static final int OP_EQUAL = 1;
    public static final int OP_GT = 6;
    public static final int OP_GTE = 4;
    public static final int OP_IN = 2;
    public static final int OP_LT = 7;
    public static final int OP_LTE = 5;
    private static final int OP_NOT = 3;
    public static final String S2S = "s2s";
    protected ArrayList<List<WMFilterItem>> stack = new ArrayList<>();

    public static class WMFilterItem {
        public String key;
        public int op;
        public Object value;
    }

    private WMFilter operator(String key, Object value, int op) {
        List<WMFilterItem> arrayList;
        if (this.stack.isEmpty()) {
            arrayList = null;
        } else {
            ArrayList<List<WMFilterItem>> arrayList2 = this.stack;
            arrayList = arrayList2.get(arrayList2.size() - 1);
        }
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        WMFilterItem wMFilterItem = new WMFilterItem();
        wMFilterItem.key = key;
        wMFilterItem.value = value;
        wMFilterItem.op = op;
        arrayList.add(wMFilterItem);
        this.stack.add(arrayList);
        return this;
    }

    public WMFilter and() {
        return this;
    }

    public abstract WindMillError doFilter(WaterfallFilterData filterData);

    /* JADX WARN: Code duplicated, block: B:54:0x00cd  */
    public WindMillError doFilter(WaterfallFilterData filterData, List<WMFilterItem> group) {
        try {
            HashSet hashSet = new HashSet();
            if (filterData != null && !group.isEmpty()) {
                for (WMFilterItem wMFilterItem : group) {
                    String str = wMFilterItem.key;
                    if (str != null && wMFilterItem.value != null) {
                        Object withKey = filterData.getWithKey(str);
                        int i10 = wMFilterItem.op;
                        boolean z10 = true;
                        boolean zEquals = false;
                        if (i10 != 1) {
                            if (i10 == 2) {
                                Object obj = wMFilterItem.value;
                                if (obj instanceof Collection) {
                                    zEquals = ((Collection) obj).contains(withKey);
                                }
                            } else if (i10 != 4) {
                                if (i10 != 5) {
                                    if (i10 != 6) {
                                        if (i10 == 7 && doubleValue(withKey) != null && doubleValue(wMFilterItem.value) != null) {
                                            if (doubleValue(withKey).doubleValue() <= 0.0d || doubleValue(withKey).doubleValue() >= doubleValue(wMFilterItem.value).doubleValue()) {
                                                z10 = false;
                                            }
                                            zEquals = z10;
                                        }
                                    } else if (doubleValue(withKey) != null && doubleValue(wMFilterItem.value) != null) {
                                        if (doubleValue(withKey).doubleValue() <= doubleValue(wMFilterItem.value).doubleValue()) {
                                            z10 = false;
                                        }
                                        zEquals = z10;
                                    }
                                } else if (doubleValue(withKey) != null && doubleValue(wMFilterItem.value) != null) {
                                    if (doubleValue(withKey).doubleValue() <= 0.0d || doubleValue(withKey).doubleValue() > doubleValue(wMFilterItem.value).doubleValue()) {
                                        z10 = false;
                                    }
                                    zEquals = z10;
                                }
                            } else if (doubleValue(withKey) != null && doubleValue(wMFilterItem.value) != null) {
                                if (doubleValue(withKey).doubleValue() < doubleValue(wMFilterItem.value).doubleValue()) {
                                    z10 = false;
                                }
                                zEquals = z10;
                            }
                        } else if (!str.equals("eCpm")) {
                            zEquals = withKey.equals(String.valueOf(wMFilterItem.value));
                        } else if (doubleValue(withKey) != null && doubleValue(wMFilterItem.value) != null) {
                            if (doubleValue(withKey).doubleValue() <= 0.0d || !doubleValue(withKey).equals(doubleValue(wMFilterItem.value))) {
                                z10 = false;
                            }
                            zEquals = z10;
                        }
                        if (!zEquals) {
                            return null;
                        }
                        hashSet.add(str);
                    }
                }
                if (hashSet.contains("eCpm")) {
                    return WindMillError.ERROR_AD_LOAD_NETWORK_PRICE_FILTER;
                }
                if (hashSet.contains(KEY_ADN_PLACEMENT_ID)) {
                    return WindMillError.ERROR_AD_LOAD_NETWORK_SOURCE_FILTER;
                }
                if (hashSet.contains(KEY_BIDDING_TYPE)) {
                    return WindMillError.ERROR_AD_LOAD_NETWORK_BIDDING_FILTER;
                }
                if (!hashSet.contains(KEY_ADN_PLACEMENT_SUB_TYPE) && !hashSet.contains(KEY_ADN_PLACEMENT_RENDER_TYPE)) {
                    if (hashSet.contains("channelId")) {
                        return WindMillError.ERROR_AD_LOAD_NETWORK_FILTER;
                    }
                }
                return WindMillError.ERROR_AD_LOAD_NETWORK_TYPE_FILTER;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    Double doubleValue(Object value) {
        if (value instanceof String) {
            try {
                return Double.valueOf(Double.parseDouble((String) value));
            } catch (Exception unused) {
                return null;
            }
        }
        if (value instanceof Number) {
            return Double.valueOf(((Number) value).doubleValue());
        }
        return null;
    }

    public WMFilter equalTo(String key, String value) {
        return operator(key, value, 1);
    }

    public WMFilter greaterThan(String key, String value) {
        return operator(key, value, 6);
    }

    public WMFilter greaterThanEqual(String key, String value) {
        return operator(key, value, 4);
    }

    public WMFilter in(String key, List<String> values) {
        return operator(key, values, 2);
    }

    public WMFilter lessThan(String key, String value) {
        return operator(key, value, 7);
    }

    public WMFilter lessThanEqual(String key, String value) {
        return operator(key, value, 5);
    }

    public WMFilter or() {
        this.stack.add(new ArrayList());
        return this;
    }

    public void printFilterInfo(WaterfallFilterData filterData, int i10, WindMillError windMillError) {
        if (filterData != null) {
            try {
                WMLogUtil.i("-----------WaterfallFilterData-----------" + filterData.toString() + ":" + windMillError.toString());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }
}
