package j0;

import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListResult;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;

/* JADX INFO: loaded from: classes7.dex */
public interface b {
    @com.alipay.mobile.framework.service.annotation.a(a = "alipay.security.vkeyDFP.staticData.report")
    DeviceDataReportResult a(DeviceDataReportRequest deviceDataReportRequest);

    @com.alipay.mobile.framework.service.annotation.a(a = "alipay.security.vkeyDFP.appList.get")
    AppListResult b(String str);
}
