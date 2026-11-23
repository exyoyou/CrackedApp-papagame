package com.bykv.vk.component.ttvideo.mediakit.net;

import android.os.Handler;
import android.text.TextUtils;
import com.byazt.nr.m;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.lang.reflect.Method;
import org.json.JSONArray;
import org.json.JSONObject;
import u.c;

/* JADX INFO: loaded from: classes9.dex */
public class HTTPDNSHosts {
    private static final String TAG = "BatchParseHTTPDNSHosts";
    private static String mTTDNSServer = "/q?host=";
    protected boolean mCancelled = false;
    protected Handler mHandler;
    public String[] mHostnames;
    private int mHttpDNSType;
    public String mId;
    protected AVMDLNetClient mNetClient;

    public HTTPDNSHosts(String[] strArr, AVMDLNetClient aVMDLNetClient, int i10, Handler handler) throws Exception {
        this.mHttpDNSType = 2;
        this.mNetClient = null;
        if (i10 != 2) {
            throw new Exception("type is not own");
        }
        if (strArr == null || strArr.length == 0) {
            throw new Exception("host array is valid");
        }
        this.mHttpDNSType = i10;
        this.mHostnames = strArr;
        this.mNetClient = aVMDLNetClient;
        if (aVMDLNetClient == null) {
            this.mNetClient = new AVMDLHTTPNetwork();
        }
        this.mHttpDNSType = i10;
        this.mHandler = handler;
    }

    private String _getURL() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("https://" + AVMDLDNSParser.mGlobalOwnDNSParseHost + mTTDNSServer);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            String[] strArr = this.mHostnames;
            if (i10 >= strArr.length) {
                return sb2.toString();
            }
            if (!TextUtils.isEmpty(strArr[i10])) {
                if (i11 == 0) {
                    sb2.append(this.mHostnames[i10]);
                } else {
                    sb2.append("," + this.mHostnames[i10]);
                }
                i11++;
            }
            i10++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _handleResponse(JSONObject jSONObject, Error error) {
        String.format("****http dns id:%s type:%d", this.mId, Integer.valueOf(this.mHttpDNSType));
        if (error != null) {
            String.format("handle response receive err:%s", error.errStr);
            return;
        }
        if (jSONObject == null || jSONObject.length() == 0) {
            String.format("json null err", new Object[0]);
            return;
        }
        try {
            parseResult(jSONObject);
        } catch (Throwable th) {
            String.format("handle response exception:%s", th.toString());
        }
        String.format("****parse end", new Object[0]);
    }

    private void parseResult(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("dns");
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                AVMDLDNSInfo aVMDLDNSInfo = parserResultForSingleHost(jSONArray.getJSONObject(i10));
                if (aVMDLDNSInfo != null) {
                    IPCache.getInstance().put(aVMDLDNSInfo.mHost, aVMDLDNSInfo);
                }
            }
        } catch (Exception unused) {
        }
    }

    private AVMDLDNSInfo parserResultForSingleHost(JSONObject jSONObject) {
        String str;
        String str2;
        long j10;
        String string;
        int i10 = this.mHttpDNSType;
        String str3 = "";
        if (i10 == 2 || i10 == 1) {
            if (jSONObject != null && jSONObject.length() != 0) {
                int iOptInt = jSONObject.has(RtspHeaders.Values.TTL) ? jSONObject.optInt(RtspHeaders.Values.TTL) : 60;
                String strOptString = jSONObject.has(c.f97430f) ? jSONObject.optString(c.f97430f) : null;
                long jCurrentTimeMillis = System.currentTimeMillis() + ((long) (iOptInt * 1000));
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ips");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                    for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                        try {
                            string = jSONArrayOptJSONArray.getString(i11);
                        } catch (Exception e10) {
                            m.c(e10);
                            string = null;
                        }
                        if (!TextUtils.isEmpty(string)) {
                            str3 = TextUtils.isEmpty(str3) ? str3 + string : str3 + "," + string;
                        }
                    }
                    str = str3;
                    str2 = strOptString;
                    j10 = jCurrentTimeMillis;
                }
            }
            return null;
        }
        str = "";
        str2 = null;
        j10 = 0;
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
            String.format("parse result host:%s ips:%s expiredT:%d", str2, str, Long.valueOf(j10));
            return new AVMDLDNSInfo(this.mHttpDNSType, str2, str, j10, this.mId);
        }
        return null;
    }

    public void cancel() {
        if (this.mCancelled) {
            return;
        }
        this.mCancelled = true;
        this.mNetClient.cancel();
    }

    public void start() {
        String str_getURL = _getURL();
        boolean z10 = false;
        for (Method method : this.mNetClient.getClass().getDeclaredMethods()) {
            if (method.getName().equals("startTask") && method.getParameterTypes().length == 5) {
                z10 = true;
                break;
            }
        }
        if (z10) {
            this.mNetClient.startTask(str_getURL, null, null, 0, new AVMDLNetClient.CompletionListener() { // from class: com.bykv.vk.component.ttvideo.mediakit.net.HTTPDNSHosts.1
                @Override // com.bykv.vk.component.ttvideo.mediakit.net.AVMDLNetClient.CompletionListener
                public void onCompletion(JSONObject jSONObject, Error error) {
                    HTTPDNSHosts.this._handleResponse(jSONObject, error);
                }
            });
        } else {
            this.mNetClient.startTask(str_getURL, null, new AVMDLNetClient.CompletionListener() { // from class: com.bykv.vk.component.ttvideo.mediakit.net.HTTPDNSHosts.2
                @Override // com.bykv.vk.component.ttvideo.mediakit.net.AVMDLNetClient.CompletionListener
                public void onCompletion(JSONObject jSONObject, Error error) {
                    HTTPDNSHosts.this._handleResponse(jSONObject, error);
                }
            });
        }
    }
}
