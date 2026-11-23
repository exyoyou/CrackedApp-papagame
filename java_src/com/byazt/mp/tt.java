package com.byazt.mp;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.lu.uj;
import com.byazt.quv.AbsServerManager;
import com.byazt.vm.sp;
import com.byazt.yv.da;
import com.byazt.yv.n;
import com.byazt.yv.u;
import com.coremedia.iso.boxes.k1;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import com.tencent.stat.DeviceInfo;
import com.umeng.analytics.pro.bm;
import java.util.HashMap;
import kotlin.text.Typography;
import net.lingala.zip4j.util.e;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2108, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f16958c = {"ab_version", bm.F, "language", "os_api", bm.f84423z, "google_aid", "build_serial", bm.P, "install_id", AbsServerManager.PACKAGE_QUERY_BINDER, "app_version", "device_model", "udid", "density_dpi", "aliyun_uuid", "mcc_mnc", "sim_region", "ab_client", "ab_group", "ab_feature", "device_id", "openudid", "clientudid", DeviceInfo.TAG_ANDROID_ID};
    public static final String[] tt = {"ab_version", bm.F, "language", "os_api", bm.f84423z, "google_aid", "build_serial", bm.P, "iid", "app_name", NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME, bm.ai, k1.f24950p, "dpi", "aliyun_uuid", "mcc_mnc", "sim_region", "ab_client", "ab_group", "ab_feature", "device_id", "openudid", "clientudid", DeviceInfo.TAG_ANDROID_ID};

    public static String c(Context context, JSONObject jSONObject, String str, boolean z10, com.byazt.gj.tt ttVar) {
        HashMap<String, String> mapC;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        HashMap map = new HashMap(f16958c.length + 10);
        int i10 = 0;
        while (true) {
            String[] strArr = f16958c;
            if (i10 >= strArr.length) {
                break;
            }
            String strOptString = jSONObject.optString(strArr[i10], null);
            if (!TextUtils.isEmpty(strOptString)) {
                map.put(tt[i10], strOptString);
            }
            i10++;
        }
        if (ttVar != null) {
            try {
                mapC = ttVar.c(context);
            } catch (Exception e10) {
                da.tt(e10);
            }
        } else {
            mapC = null;
        }
        if (u.ve(context) && mapC != null) {
            map.putAll(mapC);
        }
        try {
            HashMap<String, String> mapC2 = com.byazt.gj.c.ve() == null ? null : com.byazt.gj.c.ve().c();
            if (mapC2 != null) {
                map.putAll(mapC2);
            }
        } catch (Exception e11) {
            da.tt(e11);
        }
        if (com.byazt.gj.c.ve.size() > 0) {
            map.putAll(com.byazt.gj.c.ve);
        }
        if (z10) {
            map.put("ssmix", "a");
        }
        String strC = n.c(context);
        if (!TextUtils.isEmpty(strC)) {
            map.put("ac", strC);
        }
        String str2 = (String) com.byazt.gj.c.c("tweaked_channel", "");
        if (TextUtils.isEmpty(str2)) {
            str2 = (String) com.byazt.gj.c.c("channel", "");
        }
        if (!TextUtils.isEmpty(str2)) {
            map.put("channel", str2);
        }
        String strOptString2 = jSONObject.optString(bm.f84422y, null);
        if (strOptString2 != null && strOptString2.length() > 10) {
            strOptString2 = strOptString2.substring(0, 10);
        }
        map.put(bm.f84422y, strOptString2);
        map.put("_rticket", String.valueOf(System.currentTimeMillis()));
        map.put("device_platform", "android");
        int iIntValue = ((Integer) com.byazt.gj.c.c("version_code", -1)).intValue();
        if (iIntValue != -1) {
            map.put("version_code", String.valueOf(iIntValue));
        }
        int iIntValue2 = ((Integer) com.byazt.gj.c.c("manifest_version_code", -1)).intValue();
        if (iIntValue2 != -1) {
            map.put("manifest_version_code", String.valueOf(iIntValue2));
        }
        int iIntValue3 = ((Integer) com.byazt.gj.c.c("update_version_code", -1)).intValue();
        if (iIntValue3 != -1) {
            map.put("update_version_code", String.valueOf(iIntValue3));
        }
        String strC2 = sp.c(jSONObject.optJSONObject("oaid"));
        if (!TextUtils.isEmpty(strC2)) {
            map.put("oaid", strC2);
        }
        String strOptString3 = jSONObject.optString("cdid");
        if (!TextUtils.isEmpty(strOptString3)) {
            map.put("cdid", strOptString3);
        }
        if (!str.endsWith(e.F0)) {
            str = str + e.F0;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str.indexOf(63) >= 0 ? Typography.amp : '?');
        return u.c(sb2.toString(), map, "UTF-8");
    }

    public static String[] c(uj ujVar, Context context, JSONObject jSONObject) {
        String[] strArrTt = ujVar.sp().tt();
        String[] strArr = new String[strArrTt.length];
        String str = com.byazt.gj.c.x() ? "?tt_data=a" : "?";
        for (int i10 = 0; i10 < strArrTt.length; i10++) {
            String strC = c(context, jSONObject, strArrTt[i10] + str, true, com.byazt.gj.c.uj());
            strArr[i10] = strC;
            strArr[i10] = c.c(strC, c.tt);
        }
        return strArr;
    }
}
