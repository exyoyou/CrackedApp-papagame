package com.haima.hmcp.beans;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class InputDeviceInfo implements Serializable {
    private static final long serialVersionUID = 1;
    Integer deviceIndex;
    Integer inputDeviceId;
    String vendorId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        InputDeviceInfo inputDeviceInfo = (InputDeviceInfo) obj;
        return Objects.equals(this.vendorId, inputDeviceInfo.vendorId) && Objects.equals(this.inputDeviceId, inputDeviceInfo.inputDeviceId) && Objects.equals(this.deviceIndex, inputDeviceInfo.deviceIndex);
    }

    public Integer getDeviceIndex() {
        return this.deviceIndex;
    }

    public Integer getInputDeviceId() {
        return this.inputDeviceId;
    }

    public String getVendorId() {
        return this.vendorId;
    }

    public int hashCode() {
        return Objects.hash(this.vendorId, this.inputDeviceId, this.deviceIndex);
    }

    public void setDeviceIndex(Integer num) {
        this.deviceIndex = num;
    }

    public void setInputDeviceId(Integer num) {
        this.inputDeviceId = num;
    }

    public void setVendorId(String str) {
        this.vendorId = str;
    }

    public String toString() {
        return "InputDeviceInfo{vendorId='" + this.vendorId + "', inputDeviceId=" + this.inputDeviceId + ", deviceIndex=" + this.deviceIndex + '}';
    }
}
