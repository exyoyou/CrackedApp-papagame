package com.haima.hmcp.beans;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class CheckCloudServiceResult extends BaseResult {
    public List<ChannelInfo> channelInfoList;

    public class ChannelInfo {
        public String appChannel;
        public String cid;
        public String pkgName;

        public ChannelInfo() {
        }
    }
}
