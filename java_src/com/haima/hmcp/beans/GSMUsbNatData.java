package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class GSMUsbNatData implements Serializable {
    private static final long serialVersionUID = 1;
    public String usbNatIp;
    public int usbNatPort;

    public String toString() {
        return "GSMUsbNatData{usbNatIp='" + this.usbNatIp + "', usbNatPort=" + this.usbNatPort + '}';
    }
}
