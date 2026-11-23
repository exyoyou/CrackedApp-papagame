package com.umeng.analytics.pro;

import android.text.TextUtils;
import com.umeng.ccg.ActionInfo;
import com.umeng.ccg.CcgAgent;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class ab implements ai {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f84242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<ac> f84243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f84244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f84245d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f84246e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f84247f;

    public ab(String str, ArrayList<ac> arrayList) {
        this.f84242a = null;
        new ArrayList();
        this.f84244c = "";
        this.f84245d = "";
        this.f84246e = "";
        this.f84247f = "";
        this.f84242a = str;
        this.f84243b = arrayList;
    }

    public String a() {
        return this.f84242a;
    }

    public String b() {
        return this.f84244c;
    }

    public String c() {
        return this.f84245d;
    }

    private String c(String str) {
        String[] strArrSplit = str.split(",");
        String str2 = "";
        if (strArrSplit.length <= 0) {
            return "";
        }
        ArrayList<String> forbidSdkArray = CcgAgent.getForbidSdkArray(this.f84242a);
        if (forbidSdkArray != null && forbidSdkArray.size() > 0) {
            this.f84247f = forbidSdkArray.toString();
            for (String str3 : strArrSplit) {
                if (CcgAgent.getActionInfo(str3) != null && !forbidSdkArray.contains(str3)) {
                    return str3;
                }
            }
            return "";
        }
        for (String str4 : strArrSplit) {
            ActionInfo actionInfo = CcgAgent.getActionInfo(str4);
            if (actionInfo != null) {
                String[] supportAction = actionInfo.getSupportAction(UMGlobalContext.getAppContext());
                if (supportAction.length > 0) {
                    for (String str5 : supportAction) {
                        if (this.f84242a.equals(str5)) {
                            str2 = str4;
                            break;
                        }
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        return str2;
                    }
                } else {
                    continue;
                }
            }
        }
        return str2;
    }

    public void a(String str) {
        this.f84244c = str;
    }

    public void b(String str) {
        this.f84245d = str;
    }

    @Override // com.umeng.analytics.pro.ai
    public JSONObject a(String str, JSONObject jSONObject) {
        try {
            int size = this.f84243b.size();
            if (size == 0) {
                return null;
            }
            for (int i10 = 0; i10 < size; i10++) {
                if (this.f84243b.get(i10).b()) {
                    return null;
                }
            }
            if (CcgAgent.hasRegistedActionInfo() && !TextUtils.isEmpty(this.f84245d)) {
                String strC = c(this.f84245d);
                this.f84246e = strC;
                if (TextUtils.isEmpty(strC)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "采集项：" + this.f84242a + "; 未选中可用Module ; sdk: " + this.f84245d);
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "采集项：" + this.f84242a + "; 选中Module: " + this.f84246e + "; sdk: " + this.f84245d);
                }
            }
            ac acVar = this.f84243b.get(size - 1);
            if (acVar == null || !(acVar instanceof ae)) {
                return null;
            }
            long jC = acVar.c();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("actionName", this.f84242a);
                jSONObject2.put("sdk", this.f84245d);
                jSONObject2.put(com.umeng.ccg.a.f84988o, this.f84244c);
                jSONObject2.put("delay", jC);
                jSONObject2.put(com.umeng.ccg.a.f84989p, this.f84246e);
                jSONObject2.put(com.umeng.ccg.a.f84990q, this.f84247f);
            } catch (Throwable unused) {
            }
            return jSONObject2;
        } catch (Throwable unused2) {
            return null;
        }
    }
}
