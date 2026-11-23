package com.sigmob.sdk.base.common;

import com.czhj.sdk.common.track.AdTracker;

/* JADX INFO: loaded from: classes5.dex */
public class ah extends AdTracker {
    public ah(String trackingUrl, String event, String requestId) {
        super(AdTracker.MessageType.TRACKING_URL, trackingUrl, event, requestId);
    }
}
