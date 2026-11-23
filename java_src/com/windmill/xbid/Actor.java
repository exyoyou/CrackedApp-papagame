package com.windmill.xbid;

import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class Actor {
    private static Actor sInstance;
    private XBiddingInfo xBiddingInfo;

    public static abstract class XBiddingInfo {
        public abstract Map<String, String> getBidInfoFromYou(int i10, boolean z10, Map<String, Object> map, Map<String, String> map2);
    }

    public static Actor getInstance() {
        Actor actor;
        synchronized (Actor.class) {
            if (sInstance == null) {
                sInstance = new Actor();
            }
            actor = sInstance;
        }
        return actor;
    }

    public XBiddingInfo getXBiddingInfo() {
        return this.xBiddingInfo;
    }

    public void registerBiddingInfo(XBiddingInfo xBiddingInfo) {
        if (xBiddingInfo != null) {
            this.xBiddingInfo = xBiddingInfo;
        }
    }
}
