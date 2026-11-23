package j0;

import com.alipay.tscenter.biz.rpc.vkeydfp.request.AppListCmdRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListCmdResult;

/* JADX INFO: loaded from: classes7.dex */
public interface a {
    @com.alipay.mobile.framework.service.annotation.a(a = "alipay.security.vkeyDFP.appListCmd.reGet")
    AppListCmdResult a(AppListCmdRequest appListCmdRequest);

    @com.alipay.mobile.framework.service.annotation.a(a = "alipay.security.vkeyDFP.appListCmd.get")
    AppListCmdResult b(AppListCmdRequest appListCmdRequest);
}
