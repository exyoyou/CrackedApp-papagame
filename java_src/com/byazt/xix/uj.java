package com.byazt.xix;

import com.byazt.nr.a;
import com.haima.hmcp.countly.CountlyDbPolicy;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.dto.Constant;
import com.umeng.umcrash.UMCrash;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 664, 15})
public class uj {
    private static String c(long j10) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j10);
        return simpleDateFormat.format(calendar.getTime());
    }

    public static String c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appId", "300012449765");
            jSONObject.put("version", "1.0");
            String strC = c(System.currentTimeMillis());
            jSONObject.put(UMCrash.SP_KEY_TIMESTAMP, strC);
            jSONObject.put("appkey", "90E4DEDAD9B1CB57EA1538871ED468A7");
            jSONObject.put("businessType", "3");
            String string = UUID.randomUUID().toString();
            jSONObject.put("traceId", string);
            jSONObject.put("msgId", string);
            jSONObject.put(Constant.MD5, a.tt("3000124497653" + string + strC + string + "1.090E4DEDAD9B1CB57EA1538871ED468A7"));
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public static String c(String str, String str2) {
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append("?");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appId", "9386206798");
            jSONObject.put("clientType", "Android-30100");
            jSONObject.put("format", CountlyDbPolicy.FIELD_COUNTLY_JSON);
            jSONObject.put("version", "v1.5");
            String strC = c.c(str2.getBytes(), "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC5se07mkN71qsSJHjZ2Z0+Z+4LlLvf2sz7Md38VAa3EmAOvI7vZp3hbAxicL724ylcmisTPtZQhT/9C+25AELqy9PN9JmzKpwoVTUoJvxG4BoyT49+gGVl6s6zo1byNoHUzTfkmRfmC9MC53HvG8GwKP5xtcdptFjAIcgIR7oAWQIDAQAB");
            jSONObject.put("paramKey", strC);
            String strC2 = c.c(true, ("timeStamp=" + System.currentTimeMillis()).getBytes(), str2);
            jSONObject.put("paramStr", strC2);
            String[] strArr = {"9386206798", "Android-30100", CountlyDbPolicy.FIELD_COUNTLY_JSON, strC, strC2, "v1.5"};
            StringBuilder sb3 = new StringBuilder();
            for (int i10 = 0; i10 < 6; i10++) {
                sb3.append(strArr[i10]);
            }
            jSONObject.put(Constant.MD5, c.c(sb3.toString(), "tgIBkg304BUpjGHLSq1wYYb0Xs77pMIm"));
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String string = jSONObject.getString(next);
                sb2.append(next);
                sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
                sb2.append(string);
                sb2.append(x.a.f97576d);
            }
            sb2.deleteCharAt(sb2.length() - 1);
            return sb2.toString();
        } catch (Exception unused) {
            return null;
        }
    }
}
