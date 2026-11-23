package com.haima.hmcp.beans;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class GetCloudServiceParametersV3 implements IParameter {
    public List<String> actIds;
    public RequestConfigure configureRequest;
    public GetCloudServiceParametersV2 getCloudServiceRequestV2;
    public DeviceIdParameters registerRequest;

    public String toString() {
        return "GetCloudServiceParametersV3{registerRequest=" + this.registerRequest + ", configureRequest=" + this.configureRequest + ", getCloudServiceRequestV2=" + this.getCloudServiceRequestV2 + ", actIds=" + this.actIds + '}';
    }
}
