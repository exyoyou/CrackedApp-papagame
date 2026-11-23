package com.sigmob.sdk.base.utils;

import com.czhj.sdk.common.models.ModelBuilderCreator;
import com.czhj.sdk.common.models.Network;
import com.czhj.sdk.common.mta.DeviceContext;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class l {
    public static Network.Builder a(DeviceContext deviceContext) {
        Network.Builder builderCreateNetwork = ModelBuilderCreator.createNetwork(deviceContext);
        Map<String, List<String>> mapA = h.a();
        if (e.b(mapA)) {
            String strA = i.a(mapA);
            if (t.b(strA)) {
                builderCreateNetwork.all_ipv6(strA);
            }
        }
        return builderCreateNetwork;
    }
}
