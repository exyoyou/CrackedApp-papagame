package com.haima.hmcp.beans;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceState {
    public static final String JOYSTICK_PS = "PS";
    public static final String JOYSTICK_XBOX = "XBOX";
    public static final String JOYSTICK_XBOX_VIRTUAL = "PS";
    public static final boolean STATE_CONNECT = true;
    public static final boolean STATE_DISCONNECT = false;
    private boolean active;
    private boolean connect;
    private String deviceInfo;
    private int slot;

    public DeviceState(int i10, boolean z10, String str, boolean z11) {
        this.slot = i10;
        this.connect = z10;
        this.deviceInfo = str;
        this.active = z11;
    }

    public boolean getActive() {
        return this.active;
    }

    public boolean getConnect() {
        return this.connect;
    }

    public String getDeviceInfo() {
        return this.deviceInfo;
    }

    public int getSlot() {
        return this.slot;
    }

    public void setActive(boolean z10) {
        this.active = z10;
    }

    public void setConnect(boolean z10) {
        this.connect = z10;
    }

    public void setDeviceInfo(String str) {
        this.deviceInfo = str;
    }

    public void setSlot(int i10) {
        this.slot = i10;
    }

    public String toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("connect", this.connect);
            jSONObject.put("slot", this.slot);
            jSONObject.put("deviceInfo", this.deviceInfo);
            jSONObject.put("active", this.active);
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public String toString() {
        return "SceneDevice{, connect=" + this.connect + ", slot='" + this.slot + "', deviceInfo='" + this.deviceInfo + "', active=" + this.active + '}';
    }
}
