package com.beizi.fusion.update;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.c.n;
import com.beizi.fusion.model.GlobalConfig;
import com.beizi.fusion.model.IncentiveConfig;
import com.beizi.fusion.model.ResponseInfo;
import com.beizi.fusion.tool.aa;
import com.beizi.fusion.tool.as;
import com.beizi.fusion.tool.v;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10697a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f10698b = true;

    a(Context context, String str) {
        if (str == null) {
            return;
        }
        this.f10697a = context;
        a(str);
    }

    private void a(String str) {
        try {
            String strB = com.beizi.fusion.tool.b.b(aa.a(), str);
            if (TextUtils.isEmpty(strB)) {
                this.f10698b = false;
                return;
            }
            String strB2 = v.b(strB);
            if (!TextUtils.isEmpty(strB2) && !strB2.equalsIgnoreCase("null")) {
                String str2 = (String) as.b(this.f10697a, "globalConfig", "");
                if (TextUtils.isEmpty(str2)) {
                    as.a(this.f10697a, "globalConfig", (Object) com.beizi.fusion.tool.b.a(aa.a(), strB2));
                }
                String strB3 = com.beizi.fusion.tool.b.b(aa.a(), str2);
                GlobalConfig globalConfigObjectFromData = GlobalConfig.objectFromData(strB2);
                GlobalConfig globalConfigObjectFromData2 = GlobalConfig.objectFromData(strB3);
                if (globalConfigObjectFromData != null) {
                    ResponseInfo.getInstance(this.f10697a).setGlobalConfig(globalConfigObjectFromData);
                    if (!TextUtils.isEmpty(globalConfigObjectFromData.getConfigVersion())) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setConfigVersion(globalConfigObjectFromData.getConfigVersion());
                        }
                        if (ResponseInfo.getInstance(this.f10697a).getManager() == null) {
                            ResponseInfo.getInstance(this.f10697a).setConfigVersion(globalConfigObjectFromData.getConfigVersion());
                        }
                    }
                    if (globalConfigObjectFromData.getExpireTime() > 0) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setExpireTime(globalConfigObjectFromData.getExpireTime());
                        }
                        ResponseInfo.getInstance(this.f10697a).setExpireTime(globalConfigObjectFromData.getExpireTime());
                    }
                    if (globalConfigObjectFromData.getMaxValidTime() > 0) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setMaxValidTime(globalConfigObjectFromData.getMaxValidTime());
                        }
                        ResponseInfo.getInstance(this.f10697a).setMaxValidTime(globalConfigObjectFromData.getMaxValidTime());
                    }
                    if (globalConfigObjectFromData.getConfigurator() != null) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setConfigurator(globalConfigObjectFromData.getConfigurator());
                        }
                        if (ResponseInfo.getInstance(this.f10697a).getManager() == null) {
                            ResponseInfo.getInstance(this.f10697a).setConfigurator(globalConfigObjectFromData.getConfigurator());
                        }
                    }
                    if (globalConfigObjectFromData.getMessenger() != null) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setMessenger(globalConfigObjectFromData.getMessenger());
                        }
                        if (ResponseInfo.getInstance(this.f10697a).getManager() == null) {
                            ResponseInfo.getInstance(this.f10697a).setMessenger(globalConfigObjectFromData.getMessenger());
                        }
                    }
                    if (globalConfigObjectFromData.getManager() != null) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setManager(globalConfigObjectFromData.getManager());
                        }
                        if (ResponseInfo.getInstance(this.f10697a).getManager() == null) {
                            ResponseInfo.getInstance(this.f10697a).setManager(globalConfigObjectFromData.getManager());
                        }
                    }
                    if (globalConfigObjectFromData.getTaskConfig() != null) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setTaskConfig(globalConfigObjectFromData.getTaskConfig());
                        }
                        ResponseInfo.getInstance(this.f10697a).setTaskConfig(globalConfigObjectFromData.getTaskConfig());
                    }
                    if (globalConfigObjectFromData.getAdPlusConfig() != null) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setAdPlusConfig(globalConfigObjectFromData.getAdPlusConfig());
                        }
                        ResponseInfo.getInstance(this.f10697a).setAdPlusConfig(globalConfigObjectFromData.getAdPlusConfig());
                        n.a(this.f10697a);
                    }
                    IncentiveConfig incentiveConfig = globalConfigObjectFromData.getIncentiveConfig();
                    if (incentiveConfig != null) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setIncentiveConfig(incentiveConfig);
                        }
                        ResponseInfo.getInstance(this.f10697a).setIncentiveConfig(incentiveConfig);
                    }
                    if (!TextUtils.isEmpty(globalConfigObjectFromData.getCrashUrl())) {
                        if (globalConfigObjectFromData2 != null) {
                            globalConfigObjectFromData2.setCrashUrl(globalConfigObjectFromData.getCrashUrl());
                        }
                        ResponseInfo.getInstance(this.f10697a).setCrashUrl(globalConfigObjectFromData.getCrashUrl());
                    }
                    String strObjectToJson = GlobalConfig.objectToJson(globalConfigObjectFromData2);
                    if (TextUtils.isEmpty(strObjectToJson)) {
                        return;
                    }
                    as.a(this.f10697a, "globalConfig", (Object) com.beizi.fusion.tool.b.a(aa.a(), strObjectToJson));
                    return;
                }
                return;
            }
            this.f10698b = false;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public boolean a() {
        return this.f10698b;
    }
}
