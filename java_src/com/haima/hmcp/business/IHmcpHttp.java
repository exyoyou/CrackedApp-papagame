package com.haima.hmcp.business;

import com.haima.hmcp.listeners.OnVolleyListener;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public interface IHmcpHttp {
    void clear();

    void postRequest(String str, Serializable serializable, Class cls, OnVolleyListener onVolleyListener);

    void setIsStop(boolean z10);

    void setResponseFlag(boolean z10);

    void setURL(String str);
}
