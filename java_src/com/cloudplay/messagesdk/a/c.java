package com.cloudplay.messagesdk.a;

import android.os.Environment;
import android.text.TextUtils;
import android.util.Base64;
import com.cloudplay.messagesdk.entity.CidInfo;
import com.cloudplay.messagesdk.entity.LinkBean;
import com.cloudplay.messagesdk.entity.PayInfo;
import com.haima.hmcp.Constants;
import com.join.mgps.dto.Constant;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class c {
    public static CidInfo a(String str) throws Throwable {
        String strF = f(a() + String.format("/hmcp-apkinfos/%s-cid", str));
        if (strF == null || strF.equals("")) {
            e.b("FileAccess", "getCidInfo cidInfo:" + strF);
        } else {
            try {
                return new CidInfo(strF.substring(0, strF.indexOf(",")), strF.substring(strF.indexOf(",") + 1, strF.lastIndexOf(",")), strF.substring(strF.lastIndexOf(",") + 1));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static String b() {
        return f("/system/hmcp-info");
    }

    public static boolean c(String str) throws Throwable {
        String strF = f(a() + String.format("/hmcp-apkinfos/AuthInfo/%s-AuthInfo.info", str));
        if (!TextUtils.isEmpty(strF)) {
            try {
                boolean zOptBoolean = new JSONObject(new String(Base64.decode(strF.getBytes(), 0))).optBoolean("isReportMsg", true);
                e.a("FileAccess", "getIsReportMSG() isReportMSG" + zOptBoolean);
                return zOptBoolean;
            } catch (Exception e10) {
                e.a("FileAccess", e10);
            }
        }
        return true;
    }

    public static LinkBean d(String str) throws Throwable {
        LinkBean linkBean = new LinkBean();
        String strF = f(a() + String.format("/hmcp-apkinfos/AuthInfo/%s-AuthInfo.info", str));
        if (!TextUtils.isEmpty(strF)) {
            try {
                JSONObject jSONObject = new JSONObject(new String(Base64.decode(strF.getBytes(), 0)));
                String strOptString = jSONObject.optString("socketUrl");
                String strOptString2 = jSONObject.optString(Constants.WS_MSG_KEY_BID);
                String strOptString3 = jSONObject.optString(Constant.MD5);
                e.a("FileAccess", "getLinkAddress() socketUrl" + strOptString);
                linkBean.setSocketUrl(strOptString);
                linkBean.setbId(strOptString2);
                linkBean.setSign(strOptString3);
                return linkBean;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return linkBean;
    }

    public static PayInfo e(String str) throws Throwable {
        String strF = f(a() + String.format("/hmcp-apkinfos/AuthInfo/%s-AuthInfo.info", str));
        PayInfo payInfo = null;
        if (TextUtils.isEmpty(strF)) {
            return null;
        }
        try {
            String str2 = new String(Base64.decode(strF.getBytes(), 0));
            JSONObject jSONObject = new JSONObject(str2);
            String strOptString = jSONObject.optString("authUrl");
            int iOptInt = jSONObject.optInt("clientType", 0);
            String strOptString2 = jSONObject.optString("payStr");
            e.a("FileAccess", "getPayInfo() payInfo:" + strOptString2);
            PayInfo payInfo2 = new PayInfo(iOptInt, strOptString2);
            try {
                if (!TextUtils.isEmpty(strOptString)) {
                    b.f23686c = strOptString;
                }
                e.a("FileAccess", "getPayInfo() info:" + str2 + ":" + b.f23686c);
                return payInfo2;
            } catch (Exception e10) {
                e = e10;
                payInfo = payInfo2;
                e.a("FileAccess", "getPayInfo() e:" + e.getMessage());
                return payInfo;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    private static String f(String str) throws Throwable {
        File file = new File(str);
        BufferedReader bufferedReader = null;
        if (!file.exists()) {
            e.b("FileAccess", "readSDFile() " + str + " no exists");
            g.a().c("4019", "file not exits:" + str);
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            stringBuffer.append(line);
                        } catch (IOException e10) {
                            e = e10;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return stringBuffer.toString();
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused) {
                                }
                            }
                            throw th;
                        }
                    }
                    bufferedReader2.close();
                    bufferedReader2.close();
                } catch (IOException e11) {
                    e = e11;
                }
                return stringBuffer.toString();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException unused2) {
        }
    }

    public static String b(String str) {
        return f(a() + String.format("/hmcp-apkinfos/%s.info", str));
    }

    public static String a() {
        if (Environment.getExternalStorageState().equals("mounted")) {
            return Environment.getExternalStorageDirectory().getAbsolutePath();
        }
        return null;
    }
}
