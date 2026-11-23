package com.sdk.base.framework.utils.log;

import android.net.Uri;
import com.sdk.f.b;
import com.sdk.p.d;
import com.sdk.r.a;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class MobileLogManager {
    private static final String TAG = "MobileLogManager";
    private static b mobileLog;

    public static b getMobileLog() {
        if (mobileLog == null) {
            init();
        }
        return mobileLog;
    }

    private static JSONObject group$101005Logs() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        mobileLog.getClass();
        jSONObject.put("clientTimeOut", 0);
        jSONObject.put("type", 1);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("url", 2);
        jSONObject2.put("time", 3);
        jSONObject.put("fieldType", jSONObject2);
        JSONArray jSONArray = new JSONArray();
        for (b.a.C1012a c1012a : mobileLog.f78515b.f78517a) {
            JSONObject jSONObject3 = new JSONObject();
            c1012a.getClass();
            jSONObject3.put("url", "");
            jSONObject3.put("time", 0L);
            jSONArray.put(jSONObject3);
        }
        jSONObject.put("content", jSONArray);
        return jSONObject;
    }

    private static JSONObject group$302001Logs() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        mobileLog.getClass();
        jSONObject.put("clientTimeOut", 0);
        jSONObject.put("type", 2);
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it2 = mobileLog.f78515b.f78518b.iterator();
        while (it2.hasNext()) {
            jSONArray.put(it2.next());
        }
        jSONObject.put("content", jSONArray);
        return jSONObject;
    }

    private static JSONObject group$302002Logs() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        mobileLog.getClass();
        jSONObject.put("clientTimeOut", 0);
        jSONObject.put("type", 2);
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it2 = mobileLog.f78515b.f78519c.iterator();
        while (it2.hasNext()) {
            jSONArray.put(it2.next());
        }
        jSONObject.put("content", jSONArray);
        return jSONObject;
    }

    private static JSONObject group$302003Logs() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        mobileLog.getClass();
        jSONObject.put("clientTimeOut", 0);
        jSONObject.put("type", 2);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(mobileLog.f78515b.f78520d);
        jSONObject.put("content", jSONArray);
        return jSONObject;
    }

    public static String groupStatusLogs(int i10) throws JSONException {
        JSONObject jSONObjectGroup$101005Logs;
        if (i10 != 101005) {
            switch (i10) {
                case 302001:
                    jSONObjectGroup$101005Logs = group$302001Logs();
                    break;
                case 302002:
                    jSONObjectGroup$101005Logs = group$302002Logs();
                    break;
                case 302003:
                    jSONObjectGroup$101005Logs = group$302003Logs();
                    break;
                default:
                    jSONObjectGroup$101005Logs = null;
                    break;
            }
        } else {
            jSONObjectGroup$101005Logs = group$101005Logs();
        }
        return jSONObjectGroup$101005Logs != null ? jSONObjectGroup$101005Logs.toString() : "";
    }

    public static void init() {
        mobileLog = new b();
    }

    private static void setRequestSeq(String str) {
        if (a.b(str).booleanValue() && a.a(mobileLog.f78516c).booleanValue()) {
            Uri uri = Uri.parse(str);
            String queryParameter = uri.getQueryParameter("sequenceNumber");
            String queryParameter2 = uri.getQueryParameter("ret_url");
            if (a.b(queryParameter2).booleanValue()) {
                queryParameter = Uri.parse(new String(d.a(queryParameter2), Charset.defaultCharset())).getQueryParameter(RtspHeaders.Values.SEQ);
            }
            mobileLog.f78516c = queryParameter;
        }
    }

    public static void status101005(String str, long j10) {
    }

    public static void status302001(String str) {
        try {
            List<String> list = mobileLog.f78515b.f78518b;
            list.add(str);
            mobileLog.f78515b.f78518b = list;
        } catch (Throwable unused) {
        }
    }

    public static void status302002(String str) {
        try {
            List<String> list = mobileLog.f78515b.f78519c;
            list.add(str);
            mobileLog.f78515b.f78519c = list;
        } catch (Throwable unused) {
        }
    }

    public static void status302003(String str) {
        try {
            mobileLog.f78515b.f78520d = str;
        } catch (Throwable unused) {
        }
    }
}
