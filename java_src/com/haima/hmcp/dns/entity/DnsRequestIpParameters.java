package com.haima.hmcp.dns.entity;

import com.haima.hmcp.beans.IParameter;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class DnsRequestIpParameters implements IParameter {
    private List<String> host;
    private int type;

    public List<String> getHost() {
        return this.host;
    }

    public int getType() {
        return this.type;
    }

    public void setHost(List<String> list) {
        this.host = list;
    }

    public void setType(int i10) {
        this.type = i10;
    }
}
