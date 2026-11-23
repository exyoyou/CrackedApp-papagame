package com.windmill.sdk.strategy;

import com.windmill.sdk.models.ChannelConfig;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class g {

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final g f87174a = new g();

        private a() {
        }
    }

    public Map<Integer, ChannelConfig> a() {
        return WMSdkConfig.sharedInstance().getChannelConfigs();
    }

    public boolean b(int channelId) {
        return a(channelId).is_support_repeat_init.booleanValue();
    }

    private g() {
    }

    public ChannelConfig a(int channelId) {
        Map<Integer, ChannelConfig> mapA = a();
        ChannelConfig channelConfig = mapA != null ? mapA.get(Integer.valueOf(channelId)) : null;
        return channelConfig == null ? new ChannelConfig.Builder().build() : channelConfig;
    }

    public static g b() {
        return a.f87174a;
    }
}
