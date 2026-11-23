package com.windmill.sdk.utils;

import android.location.Location;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.mta.DeviceContext;
import com.windmill.sdk.WMCustomController;

/* JADX INFO: loaded from: classes8.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static d f87352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WMCustomController f87353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private DeviceContext f87354c;

    private d() {
    }

    public DeviceContext b() {
        DeviceContext deviceContext = this.f87354c;
        if (deviceContext != null) {
            return deviceContext;
        }
        DeviceContext deviceContext2 = new DeviceContext() { // from class: com.windmill.sdk.utils.d.1
            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getAndroidId() {
                if (d.this.f87353b == null) {
                    return ClientMetadata.getInstance().getAndroidId();
                }
                return d.this.f87353b.isCanUseAndroidId() ? ClientMetadata.getInstance().getAndroidId() : d.this.f87353b.getAndroidId();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getCarrier() {
                if (d.this.f87353b != null) {
                    return d.this.f87353b.isCanUsePhoneState() ? ClientMetadata.getInstance().getNetworkOperatorForUrl() : super.getCarrier();
                }
                return ClientMetadata.getInstance().getNetworkOperatorForUrl();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getCarrierName() {
                if (d.this.f87353b == null) {
                    return ClientMetadata.getInstance().getNetworkOperatorName();
                }
                return d.this.f87353b.isCanUsePhoneState() ? ClientMetadata.getInstance().getNetworkOperatorName() : super.getCarrier();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getImei() {
                if (d.this.f87353b == null) {
                    return ClientMetadata.getInstance().getDeviceId();
                }
                return d.this.f87353b.isCanUsePhoneState() ? ClientMetadata.getInstance().getDeviceId() : d.this.f87353b.getDevImei();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getImei1() {
                if (d.this.f87353b != null) {
                    return d.this.f87353b.isCanUsePhoneState() ? ClientMetadata.getInstance().getDeviceId(0) : d.this.f87353b.getDevImei();
                }
                return ClientMetadata.getInstance().getDeviceId(0);
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getImei2() {
                if (d.this.f87353b != null) {
                    return d.this.f87353b.isCanUsePhoneState() ? ClientMetadata.getInstance().getDeviceId(1) : d.this.f87353b.getDevImei();
                }
                return ClientMetadata.getInstance().getDeviceId(1);
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public Location getLocation() {
                if (d.this.f87353b != null) {
                    return d.this.f87353b.isCanUseLocation() ? ClientMetadata.getInstance().getLocation() : d.this.f87353b.getLocation();
                }
                return ClientMetadata.getInstance().getLocation();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getOaid() {
                return (d.this.f87353b == null || d.this.f87353b.isCanUseOaid()) ? ClientMetadata.getInstance().getOAID() : d.this.f87353b.getDevOaid();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public boolean isCustomAndroidId() {
                return d.this.f87353b == null ? super.isCustomAndroidId() : d.this.f87353b.isCanUseAndroidId();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public boolean isCustomOaId() {
                return d.this.f87353b != null ? !d.this.f87353b.isCanUseOaid() : super.isCustomOaId();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public boolean isCustomPhoneState() {
                return d.this.f87353b != null ? d.this.f87353b.isCanUsePhoneState() : super.isCustomPhoneState();
            }
        };
        this.f87354c = deviceContext2;
        return deviceContext2;
    }

    public static d a() {
        if (f87352a == null) {
            synchronized (d.class) {
                if (f87352a == null) {
                    f87352a = new d();
                }
            }
        }
        return f87352a;
    }

    public void a(WMCustomController controller) {
        this.f87353b = controller;
    }
}
