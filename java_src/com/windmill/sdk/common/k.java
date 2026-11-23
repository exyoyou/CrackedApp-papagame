package com.windmill.sdk.common;

import com.windmill.sdk.WMAdFilter;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public interface k {
    void setActivityChannelFilterList(Set<Integer> channelIds);

    void setCustomGroup(HashMap<String, String> customGroup);

    void setFilter(WMAdFilter filter);
}
