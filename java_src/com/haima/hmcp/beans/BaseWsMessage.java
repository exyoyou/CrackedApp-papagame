package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseWsMessage<T> {
    public String bid;
    public String cid;
    public T data;
    public String mid;
    public String type;

    public boolean dataIsValid() {
        return true;
    }

    public String toString() {
        return "BaseWsMessage{type='" + this.type + "', cid='" + this.cid + "', bid='" + this.bid + "', mid='" + this.mid + "', data=" + this.data + '}';
    }
}
