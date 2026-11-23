package com.efs.sdk.base.core.config.a;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.efs.sdk.base.IConfigRefreshAction;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.util.Log;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.efs.sdk.base.http.HttpResponse;
import com.sigmob.sdk.base.n;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
public final class a implements IConfigRefreshAction {

    /* JADX INFO: renamed from: com.efs.sdk.base.core.config.a.a$a, reason: collision with other inner class name */
    static class C0549a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final a f26301a = new a();
    }

    public static a a() {
        return C0549a.f26301a;
    }

    @Override // com.efs.sdk.base.IConfigRefreshAction
    @NonNull
    public final String refresh() {
        String str = "";
        if (!NetworkUtil.isConnected(ControllerCenter.getGlobalEnvStruct().mAppContext)) {
            Log.i("efs.config", "Config refresh fail, network is disconnected.");
            return "";
        }
        String strA = c.a().a(true);
        com.efs.sdk.base.core.a.c cVarA = com.efs.sdk.base.core.a.c.a();
        for (int i10 = 0; i10 < 3; i10++) {
            com.efs.sdk.base.core.a.a aVarA = com.efs.sdk.base.core.a.a.a();
            String strB = cVarA.b();
            String str2 = strA + "/apm_cc";
            if (aVarA.f26229a) {
                Log.i("efs.px.api", "get config from server, url is ".concat(String.valueOf(str2)));
            }
            HashMap map = new HashMap(1);
            map.put("wpk-header", strB);
            com.efs.sdk.base.core.util.a.c cVarA2 = new com.efs.sdk.base.core.util.a.d(str2).a(map).a(com.efs.sdk.base.core.a.b.a()).a();
            cVarA2.f26391a.f26388e = "get";
            HttpResponse httpResponseA = cVarA2.a();
            if (httpResponseA.succ) {
                str = httpResponseA.data;
                break;
            }
            if (TextUtils.isEmpty(httpResponseA.getBizCode()) || !n.f79582i.equals(httpResponseA.getBizCode())) {
                return "";
            }
        }
        Log.i("efs.config", "config request succ, config is:\n ".concat(String.valueOf(str)));
        return str;
    }
}
