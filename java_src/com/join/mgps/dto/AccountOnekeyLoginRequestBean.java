package com.join.mgps.dto;

import com.umeng.analytics.pro.f;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class AccountOnekeyLoginRequestBean {
    private String deviceId;
    private String mobile;
    private Params params;
    private String provider;
    private String version;

    public static class Params {
        private String accessToken;
        private String token;

        public Params(String token, String accessToken) {
            this.token = token;
            this.accessToken = accessToken;
        }

        public String getAccessToken() {
            return this.accessToken;
        }

        public String getToken() {
            return this.token;
        }

        public void setAccessToken(String accessToken) {
            this.accessToken = accessToken;
        }

        public void setToken(String token) {
            this.token = token;
        }
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getMobile() {
        return this.mobile;
    }

    public Params getParams() {
        return this.params;
    }

    public LinkedMultiValueMap<String, Object> getParamsMap() {
        LinkedMultiValueMap<String, Object> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("deviceId", this.deviceId);
        linkedMultiValueMap.add("mobile", this.mobile);
        linkedMultiValueMap.add(f.M, this.provider);
        linkedMultiValueMap.add("version", this.version);
        linkedMultiValueMap.add("params", this.params);
        return linkedMultiValueMap;
    }

    public String getProvider() {
        return this.provider;
    }

    public String getVersion() {
        return this.version;
    }

    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public void setParams(Params params) {
        this.params = params;
    }

    public void setProvider(String provider) {
        this.provider = provider;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}
