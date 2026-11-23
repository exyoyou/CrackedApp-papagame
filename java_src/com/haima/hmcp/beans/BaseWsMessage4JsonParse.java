package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class BaseWsMessage4JsonParse<T> {
    public String bid;
    public String cid;
    public T data;
    public String mid;
    public String type;

    public String toString() {
        return "BaseWsMessage{type='" + this.type + "', cid='" + this.cid + "', bid='" + this.bid + "', mid='" + this.mid + "', data=" + this.data + '}';
    }
}
