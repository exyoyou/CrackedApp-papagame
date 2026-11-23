package com.alipay.security.mobile.module.a;

import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListResult;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;

/* JADX INFO: loaded from: classes7.dex */
public interface a {
    AppListResult a(String str, String str2, String str3, String str4);

    boolean a(String str);

    DeviceDataReportResult b(DeviceDataReportRequest deviceDataReportRequest);
}
