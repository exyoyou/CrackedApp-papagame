package com.bykv.vk.component.ttvideo.model;

import android.text.TextUtils;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.log.MyLog;
import com.bykv.vk.component.ttvideo.network.DnsHelper;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.Util.v0;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.hmwebrtc.PeerConnectionFactory;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import x.a;

/* JADX INFO: loaded from: classes9.dex */
public class LiveStreamInfo {
    public static final int LIVE_STREAM_INFO_CMAF_INVALID = 1;
    public static final int LIVE_STREAM_INFO_LLS_INVALID = 2;
    public static final String MPD_VERSION = "1.0";
    private JSONObject mCommonInfo;
    private String mDefaultResolution;
    private int mFlag;
    private String mHost;
    private String mIp;
    private boolean mIsABRListMatch;
    private String mRequestParams;
    private JSONObject mStreamInfo;
    private boolean mEnableOriginResolution = false;
    private long mAdjustedOriginBitRate = -1;
    private int mIsCodecSame = -1;
    private String mTransportProtocol = "";
    private String mPortNum = "";
    private int mRtcFallback = 0;
    private final String TAG = "LiveStreamInfo";
    public int mSRShorterSideUpperBound = 0;
    public int mSRLongerSideUpperBound = 0;
    private int mSRFrameRateUpperBound = 0;
    public int mSharpenLongerSideUpperBound = 0;
    public int mSharpenLongerSideLowerBound = 0;
    public int mSharpenShorterSideUpperBound = 0;
    public int mSharpenShorterSideLowerBound = 0;

    public LiveStreamInfo(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray;
        this.mIsABRListMatch = false;
        if (jSONObject == null) {
            return;
        }
        try {
            this.mStreamInfo = jSONObject.getJSONObject("data");
            if (jSONObject.has("common")) {
                this.mCommonInfo = jSONObject.getJSONObject("common");
            }
            JSONObject jSONObject2 = this.mCommonInfo;
            if (jSONObject2 != null) {
                JSONObject jSONObject3 = jSONObject2.getJSONObject("auto");
                if (jSONObject3 != null && jSONObject3.has(v0.f50057a)) {
                    this.mDefaultResolution = jSONObject3.getString(v0.f50057a);
                    MyLog.i("LiveStreamInfo", "mDefaultResolution: " + this.mDefaultResolution);
                }
                this.mIsABRListMatch = true;
                if (jSONObject3 != null && jSONObject3.has("list") && (jSONArrayOptJSONArray = jSONObject3.optJSONArray("list")) != null && jSONArrayOptJSONArray.length() > 0) {
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                        if (!isSupport(jSONArrayOptJSONArray.getString(i10))) {
                            this.mIsABRListMatch = false;
                            break;
                        }
                    }
                }
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
        this.mFlag = 0;
    }

    private boolean isNeedUseDefaultResolution(String str) {
        return (TextUtils.isEmpty(str) || !str.equals("auto") || TextUtils.isEmpty(this.mDefaultResolution)) ? false : true;
    }

    private String set_url_port_scheme(String str) {
        int iIndexOf;
        int iIndexOf2 = str.indexOf(".com");
        int iIndexOf3 = str.indexOf(".com:");
        StringBuilder sb2 = new StringBuilder(str);
        if (!TextUtils.isEmpty(this.mPortNum)) {
            if (iIndexOf3 != -1) {
                int i10 = iIndexOf3 + 5;
                int i11 = i10 + 1;
                while (i11 < sb2.length() && sb2.charAt(i11) - '0' >= 0 && sb2.charAt(i11) - '0' <= 9) {
                    i11++;
                }
                sb2.replace(i10, i11, this.mPortNum);
            } else if (iIndexOf2 != -1 && ((iIndexOf = str.indexOf("vhost")) == -1 || iIndexOf > iIndexOf2)) {
                sb2.insert(iIndexOf2 + 4, ":" + this.mPortNum);
            }
        }
        StringBuilder sb3 = new StringBuilder(sb2.toString());
        int iIndexOf4 = sb3.indexOf("://");
        if (!TextUtils.isEmpty(this.mTransportProtocol)) {
            if (this.mTransportProtocol.equals(LiveConfigKey.KCP)) {
                if (iIndexOf4 != -1) {
                    sb3.replace(0, iIndexOf4, "httpk");
                }
            } else if (this.mTransportProtocol.equals(LiveConfigKey.QUIC) || this.mTransportProtocol.equals(LiveConfigKey.QUICU)) {
                if (iIndexOf4 != -1) {
                    sb3.replace(0, iIndexOf4, "httpq");
                }
            } else if (this.mTransportProtocol.equals(LiveConfigKey.TLS)) {
                if (iIndexOf4 != -1) {
                    sb3.replace(0, iIndexOf4, "https");
                }
            } else if (this.mTransportProtocol.equals(LiveConfigKey.TCP) && iIndexOf4 != -1) {
                sb3.replace(0, iIndexOf4, "http");
            }
        }
        return sb3.toString();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public boolean adjustOriginBitRate(String str, String str2, long j10) {
        if (this.mAdjustedOriginBitRate > 0) {
            return true;
        }
        long j11 = -1;
        String str3 = LiveConfigKey.LOW;
        while (!TextUtils.isEmpty(str3)) {
            if (!TextUtils.isEmpty(getStreamUrlForResolution(str3, str, str2))) {
                long bitrate = getBitrate(str3, str2);
                if (str3.equals("origin") && bitrate <= j11 && j10 > 0) {
                    this.mAdjustedOriginBitRate = j10;
                    bitrate = j10;
                }
                j11 = bitrate;
            }
            str3.hashCode();
            byte b10 = -1;
            switch (str3.hashCode()) {
                case -1008619738:
                    if (str3.equals("origin")) {
                        b10 = 0;
                    }
                    break;
                case 3324:
                    if (str3.equals(LiveConfigKey.HIGH)) {
                        b10 = 1;
                    }
                    break;
                case 3448:
                    if (str3.equals(LiveConfigKey.LOW)) {
                        b10 = 2;
                    }
                    break;
                case 3665:
                    if (str3.equals(LiveConfigKey.STANDARD)) {
                        b10 = 3;
                    }
                    break;
                case 115761:
                    if (str3.equals(LiveConfigKey.UHD)) {
                        b10 = 4;
                    }
                    break;
            }
            str3 = null;
            switch (b10) {
                case 1:
                    str3 = LiveConfigKey.UHD;
                    break;
                case 2:
                    str3 = LiveConfigKey.STANDARD;
                    break;
                case 3:
                    str3 = LiveConfigKey.HIGH;
                    break;
                case 4:
                    str3 = "origin";
                    break;
            }
        }
        return this.mAdjustedOriginBitRate > 0;
    }

    public JSONObject getAbrInfo() {
        JSONObject jSONObject = this.mCommonInfo;
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.getJSONObject("auto");
        } catch (JSONException e10) {
            m.c(e10);
            return null;
        }
    }

    public String getAvLinesParams(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        try {
            String sDKParams = getSDKParams(str, str2);
            if (sDKParams != null) {
                return new JSONObject(sDKParams).optString("AvLines");
            }
            return null;
        } catch (JSONException e10) {
            m.c(e10);
            return null;
        }
    }

    public long getBitrate(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return 0L;
        }
        try {
            return new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optLong("vbitrate");
        } catch (JSONException e10) {
            m.c(e10);
            return 0L;
        }
    }

    public int getCheckSilenceInterval(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return -1;
        }
        try {
            String sDKParams = getSDKParams(str, str2);
            if (sDKParams != null) {
                return new JSONObject(sDKParams).optInt("CheckSilenceInterval");
            }
            return -1;
        } catch (JSONException e10) {
            m.c(e10);
            return -1;
        }
    }

    public String getDefaultResolution() {
        return this.mDefaultResolution;
    }

    public long getGopDuration(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return 0L;
        }
        try {
            return new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optLong("gop");
        } catch (JSONException e10) {
            m.c(e10);
            return 0L;
        }
    }

    public Map<String, String> getHTTPHeaders() {
        JSONObject jSONObject = this.mCommonInfo;
        if (jSONObject != null && jSONObject.has("header")) {
            HashMap map = new HashMap();
            try {
                JSONObject jSONObject2 = this.mCommonInfo.getJSONObject("header");
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject2.getString(next));
                }
                return map;
            } catch (JSONException e10) {
                m.c(e10);
            }
        }
        return null;
    }

    public String getLabelfromBitrate(long j10, String str) {
        JSONObject jSONObject = this.mStreamInfo;
        if (jSONObject == null || jSONObject.length() <= 0) {
            return null;
        }
        Iterator<String> itKeys = this.mStreamInfo.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (isEnableAdaptive(next) && j10 == getBitrate(next, str) / 1000) {
                return next;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x009f  */
    /* JADX WARN: Code duplicated, block: B:28:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:31:0x00ad A[Catch: JSONException -> 0x0149, TryCatch #0 {JSONException -> 0x0149, blocks: (B:9:0x0024, B:10:0x0031, B:12:0x0037, B:14:0x0045, B:16:0x004b, B:20:0x0072, B:22:0x007a, B:25:0x0088, B:29:0x00a2, B:31:0x00ad, B:33:0x00b4, B:34:0x00c9, B:36:0x00d1, B:40:0x00ed, B:42:0x00f7, B:44:0x0106, B:46:0x0111, B:47:0x0115, B:43:0x0103, B:24:0x0081, B:54:0x012d), top: B:65:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00b4 A[Catch: JSONException -> 0x0149, TryCatch #0 {JSONException -> 0x0149, blocks: (B:9:0x0024, B:10:0x0031, B:12:0x0037, B:14:0x0045, B:16:0x004b, B:20:0x0072, B:22:0x007a, B:25:0x0088, B:29:0x00a2, B:31:0x00ad, B:33:0x00b4, B:34:0x00c9, B:36:0x00d1, B:40:0x00ed, B:42:0x00f7, B:44:0x0106, B:46:0x0111, B:47:0x0115, B:43:0x0103, B:24:0x0081, B:54:0x012d), top: B:65:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00c9 A[Catch: JSONException -> 0x0149, TryCatch #0 {JSONException -> 0x0149, blocks: (B:9:0x0024, B:10:0x0031, B:12:0x0037, B:14:0x0045, B:16:0x004b, B:20:0x0072, B:22:0x007a, B:25:0x0088, B:29:0x00a2, B:31:0x00ad, B:33:0x00b4, B:34:0x00c9, B:36:0x00d1, B:40:0x00ed, B:42:0x00f7, B:44:0x0106, B:46:0x0111, B:47:0x0115, B:43:0x0103, B:24:0x0081, B:54:0x012d), top: B:65:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00d1 A[Catch: JSONException -> 0x0149, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0149, blocks: (B:9:0x0024, B:10:0x0031, B:12:0x0037, B:14:0x0045, B:16:0x004b, B:20:0x0072, B:22:0x007a, B:25:0x0088, B:29:0x00a2, B:31:0x00ad, B:33:0x00b4, B:34:0x00c9, B:36:0x00d1, B:40:0x00ed, B:42:0x00f7, B:44:0x0106, B:46:0x0111, B:47:0x0115, B:43:0x0103, B:24:0x0081, B:54:0x012d), top: B:65:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x0103 A[Catch: JSONException -> 0x0149, TryCatch #0 {JSONException -> 0x0149, blocks: (B:9:0x0024, B:10:0x0031, B:12:0x0037, B:14:0x0045, B:16:0x004b, B:20:0x0072, B:22:0x007a, B:25:0x0088, B:29:0x00a2, B:31:0x00ad, B:33:0x00b4, B:34:0x00c9, B:36:0x00d1, B:40:0x00ed, B:42:0x00f7, B:44:0x0106, B:46:0x0111, B:47:0x0115, B:43:0x0103, B:24:0x0081, B:54:0x012d), top: B:65:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0111 A[Catch: JSONException -> 0x0149, TryCatch #0 {JSONException -> 0x0149, blocks: (B:9:0x0024, B:10:0x0031, B:12:0x0037, B:14:0x0045, B:16:0x004b, B:20:0x0072, B:22:0x007a, B:25:0x0088, B:29:0x00a2, B:31:0x00ad, B:33:0x00b4, B:34:0x00c9, B:36:0x00d1, B:40:0x00ed, B:42:0x00f7, B:44:0x0106, B:46:0x0111, B:47:0x0115, B:43:0x0103, B:24:0x0081, B:54:0x012d), top: B:65:0x0024 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:33:0x00b4, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:36:0x00d1, please report this as an issue */
    public String getMPDForFormat(String str, String str2, String str3, String str4) {
        long gopDuration;
        String streamUrlForResolution;
        int i10;
        long j10;
        int i11;
        int iIndexOf;
        JSONObject jSONObject = this.mStreamInfo;
        if (jSONObject == null || jSONObject.length() <= 0) {
            return null;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject3 = new JSONObject();
            int i12 = 0;
            long j11 = 0;
            for (Iterator<String> itKeys = this.mStreamInfo.keys(); itKeys.hasNext(); itKeys = itKeys) {
                String next = itKeys.next();
                if (!isEnableAdaptive(next) || (streamUrlForResolution = getStreamUrlForResolution(next, str, str2)) == null) {
                    gopDuration = j11;
                    i12 = i12;
                } else {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("id", i12);
                    jSONObject4.put("codec", getVCodec(next, str2));
                    jSONObject4.put("format", str);
                    if (next.equals("origin")) {
                        i10 = i12;
                        j10 = j11;
                        long j12 = this.mAdjustedOriginBitRate;
                        if (j12 > 0) {
                            jSONObject4.put("bitrate", j12);
                        }
                        jSONObject4.put("qualityType", next);
                        jSONObject4.put("hidden", 0);
                        if (this.mDefaultResolution.equals(next)) {
                            i11 = 1;
                        } else {
                            i11 = 0;
                        }
                        jSONObject4.put("defaultSelect", i11);
                        if (!this.mRequestParams.isEmpty()) {
                            iIndexOf = streamUrlForResolution.indexOf("?");
                            if (iIndexOf == -1) {
                                streamUrlForResolution = streamUrlForResolution + "?" + this.mRequestParams;
                            } else if (iIndexOf != streamUrlForResolution.length() - 1) {
                                streamUrlForResolution = streamUrlForResolution + a.f97576d + this.mRequestParams;
                            }
                        }
                        if (str3 == null && str4 != null && DnsHelper.getUrlHost(streamUrlForResolution).equals(str4)) {
                            jSONObject4.put("url", DnsHelper.hostToIPUrl(set_url_port_scheme(streamUrlForResolution), str3));
                        } else {
                            jSONObject4.put("url", streamUrlForResolution);
                        }
                        arrayList.add(jSONObject4);
                        gopDuration = j10;
                        if (gopDuration == 0) {
                            gopDuration = getGopDuration(next, str2);
                        }
                        i12 = i10 + 1;
                    } else {
                        i10 = i12;
                        j10 = j11;
                    }
                    jSONObject4.put("bitrate", getBitrate(next, str2));
                    jSONObject4.put("qualityType", next);
                    jSONObject4.put("hidden", 0);
                    if (this.mDefaultResolution.equals(next)) {
                        i11 = 1;
                    } else {
                        i11 = 0;
                    }
                    jSONObject4.put("defaultSelect", i11);
                    if (!this.mRequestParams.isEmpty()) {
                        iIndexOf = streamUrlForResolution.indexOf("?");
                        if (iIndexOf == -1) {
                            streamUrlForResolution = streamUrlForResolution + "?" + this.mRequestParams;
                        } else if (iIndexOf != streamUrlForResolution.length() - 1) {
                            streamUrlForResolution = streamUrlForResolution + a.f97576d + this.mRequestParams;
                        }
                    }
                    if (str3 == null) {
                        jSONObject4.put("url", streamUrlForResolution);
                    } else {
                        jSONObject4.put("url", streamUrlForResolution);
                    }
                    arrayList.add(jSONObject4);
                    gopDuration = j10;
                    if (gopDuration == 0) {
                        gopDuration = getGopDuration(next, str2);
                    }
                    i12 = i10 + 1;
                }
                j11 = gopDuration;
            }
            long j13 = j11;
            if (i12 == 0) {
                return null;
            }
            jSONObject3.put("gopDuration", j13);
            jSONObject3.put("representation", new JSONArray((Collection) arrayList));
            jSONObject2.put("version", "1.0");
            jSONObject2.put("adaptationSet", jSONObject3);
        } catch (JSONException e10) {
            m.c(e10);
            jSONObject2 = null;
        }
        if (jSONObject2 == null || jSONObject2.length() <= 0) {
            return null;
        }
        return jSONObject2.toString();
    }

    public String getPortNum(String str, String str2, String str3) {
        String strOptString;
        if (this.mCommonInfo == null) {
            return null;
        }
        try {
            strOptString = new JSONObject(this.mCommonInfo.getJSONObject(str.equals(LiveConfigKey.RTMP) ? "rtmp_ports" : "http_ports").optString(str2)).optString(str3);
        } catch (JSONException e10) {
            m.c(e10);
            strOptString = null;
        }
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        return strOptString;
    }

    public String getQueryItems() {
        JSONObject jSONObject = this.mCommonInfo;
        if (jSONObject != null && jSONObject.has("query")) {
            StringBuilder sb2 = new StringBuilder();
            try {
                JSONObject jSONObject2 = this.mCommonInfo.getJSONObject("query");
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    String string = jSONObject2.getString(next);
                    String strEncode = URLEncoder.encode(next, "UTF-8");
                    String strEncode2 = URLEncoder.encode(string, "UTF-8");
                    sb2.append(a.f97576d);
                    sb2.append(strEncode);
                    sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
                    sb2.append(strEncode2);
                }
                return sb2.toString();
            } catch (UnsupportedEncodingException | JSONException e10) {
                m.c(e10);
            }
        }
        return null;
    }

    public String getRuleIds() {
        JSONObject jSONObject = this.mCommonInfo;
        if (jSONObject == null || !jSONObject.has("rule_ids")) {
            return null;
        }
        return this.mCommonInfo.optString("rule_ids");
    }

    public String getSDKParams(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            return this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params");
        } catch (JSONException e10) {
            m.c(e10);
            return null;
        }
    }

    public boolean getSREnabled(String str, String str2, int i10) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params"));
            long jOptLong = jSONObject.optLong("vbitrate");
            JSONObject jSONObject2 = new JSONObject(jSONObject.optString("NNSR"));
            int iOptInt = i10 == 1 ? jSONObject2.optInt(PeerConnectionFactory.TRIAL_ENABLED) : 0;
            long jOptLong2 = jSONObject2.optLong("VBitrateLowerBoundInKbps");
            this.mSRShorterSideUpperBound = jSONObject2.optInt("ShorterSideUpperBound");
            this.mSRLongerSideUpperBound = jSONObject2.optInt("LongerSideUpperBound");
            int iOptInt2 = jSONObject2.optInt("FrameRateUpperBound");
            this.mSRFrameRateUpperBound = iOptInt2;
            return iOptInt == 1 && jOptLong >= jOptLong2 * 1000 && this.mSRShorterSideUpperBound > 0 && this.mSRLongerSideUpperBound > 0 && iOptInt2 > 0;
        } catch (JSONException e10) {
            m.c(e10);
            return false;
        }
    }

    public int getSRLongerSideUpperBound() {
        return this.mSRLongerSideUpperBound;
    }

    public int getSRShorterSideUpperBound() {
        return this.mSRShorterSideUpperBound;
    }

    public String getSessionID() {
        JSONObject jSONObject = this.mCommonInfo;
        if (jSONObject == null || !jSONObject.has("session_id")) {
            return null;
        }
        return this.mCommonInfo.optString("session_id");
    }

    public JSONObject getSharpenParams(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optString("ASF"));
            this.mSharpenLongerSideUpperBound = jSONObject.optInt("LongerSideUpperBound");
            this.mSharpenLongerSideLowerBound = jSONObject.optInt("LongerSideLowerBound");
            this.mSharpenShorterSideUpperBound = jSONObject.optInt("ShorterSideUpperBound");
            this.mSharpenShorterSideLowerBound = jSONObject.optInt("ShorterSideLowerBound");
            return jSONObject;
        } catch (JSONException e10) {
            m.c(e10);
            return null;
        }
    }

    public String getStreamUrlForResolution(String str, String str2, String str3) {
        JSONObject jSONObject;
        String strOptString;
        String queryItems;
        String strOptString2 = null;
        if (!TextUtils.isEmpty(str) && str.equals("auto")) {
            if (TextUtils.isEmpty(this.mDefaultResolution)) {
                return null;
            }
            return getMPDForFormat(str2, str3, this.mIp, this.mHost);
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(this.mStreamInfo.optString(str));
            if (jSONObject2.has(str3)) {
                jSONObject = new JSONObject(jSONObject2.optString(str3));
                try {
                    JSONObject jSONObject3 = new JSONObject(jSONObject.optString("sdk_params"));
                    strOptString = jSONObject3.has("SuggestFormat") ? jSONObject3.optString("SuggestFormat") : null;
                } catch (JSONException e10) {
                    e = e10;
                    m.c(e);
                }
            } else {
                strOptString = null;
                jSONObject = null;
            }
        } catch (JSONException e11) {
            e = e11;
            jSONObject = null;
        }
        boolean zEquals = LiveConfigKey.AVPH.equals(str2);
        String str4 = LiveConfigKey.FLV;
        if (zEquals) {
            str2 = LiveConfigKey.FLV;
        }
        if (strOptString == null || strOptString.equals("") || strOptString.equals(LiveConfigKey.AVPH)) {
            strOptString = str2;
        }
        if ((this.mFlag & 1) <= 0 || !strOptString.equals(LiveConfigKey.CMAF)) {
            str2 = strOptString;
        }
        if (this.mRtcFallback == 1 || (this.mFlag & 2) > 0) {
            str2 = LiveConfigKey.FLV;
        }
        if (jSONObject != null) {
            if (str2 == null || !str2.equals(LiveConfigKey.AVPH)) {
                str4 = str2;
            }
            strOptString2 = jSONObject.optString(str4);
        }
        if (strOptString2 == null || (queryItems = getQueryItems()) == null || queryItems.equals("")) {
            return strOptString2;
        }
        int iIndexOf = strOptString2.indexOf("?");
        if (iIndexOf == -1) {
            queryItems = "?" + queryItems.substring(1);
        } else if (iIndexOf == strOptString2.length() - 1) {
            queryItems = queryItems.substring(1);
        }
        return strOptString2 + queryItems;
    }

    public String getSuggestFormat(String str, String str2) {
        String strOptString;
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            strOptString = new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optString("SuggestFormat");
        } catch (JSONException e10) {
            m.c(e10);
            strOptString = null;
        }
        if (strOptString == null || strOptString.isEmpty()) {
            return null;
        }
        return strOptString;
    }

    public String getSuggestProtocol(String str, String str2) {
        String str3;
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optString("SuggestProtocol");
            str3 = LiveConfigKey.TCP;
        } catch (JSONException e10) {
            m.c(e10);
            str3 = null;
        }
        if (str3 == null || str3.isEmpty()) {
            return null;
        }
        return str3;
    }

    public String getVCodec(String str, String str2) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return null;
        }
        try {
            return new JSONObject(this.mStreamInfo.getJSONObject(str).getJSONObject(str2).optString("sdk_params")).optString("VCodec");
        } catch (JSONException e10) {
            m.c(e10);
            return null;
        }
    }

    public boolean isABRListMatch() {
        return this.mIsABRListMatch;
    }

    public boolean isCodecSame(String str) {
        JSONObject jSONObject = this.mStreamInfo;
        if (jSONObject == null || jSONObject.length() <= 0) {
            return false;
        }
        int i10 = this.mIsCodecSame;
        if (i10 >= 0) {
            return i10 == 1;
        }
        this.mIsCodecSame = 1;
        Iterator<String> itKeys = this.mStreamInfo.keys();
        String str2 = null;
        String vCodec = null;
        while (itKeys.hasNext()) {
            vCodec = getVCodec(itKeys.next(), str);
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(vCodec) && !vCodec.equals(str2)) {
                this.mIsCodecSame = 0;
                break;
            }
            if (!TextUtils.isEmpty(vCodec)) {
                str2 = vCodec;
            }
        }
        if (TextUtils.isEmpty(vCodec) && TextUtils.isEmpty(str2)) {
            this.mIsCodecSame = 0;
        }
        return this.mIsCodecSame == 1;
    }

    public boolean isEnableAdaptive(String str) {
        JSONArray jSONArrayOptJSONArray;
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (!isSupport(str)) {
            return false;
        }
        try {
            JSONObject abrInfo = getAbrInfo();
            if (abrInfo != null && abrInfo.has("list") && (jSONArrayOptJSONArray = abrInfo.optJSONArray("list")) != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    String string = jSONArrayOptJSONArray.getString(i10);
                    if (string != null && string.equals(str) && (!string.equals("origin") || this.mEnableOriginResolution)) {
                        return true;
                    }
                }
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
        return false;
    }

    public boolean isSupport(String str) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = this.mStreamInfo;
        if (jSONObject2 == null) {
            return false;
        }
        try {
            jSONObject = jSONObject2.getJSONObject(str);
        } catch (JSONException e10) {
            m.c(e10);
            jSONObject = null;
        }
        return jSONObject != null;
    }

    public boolean isSupportSR(int i10, int i11, float f10) {
        return Math.max(i10, i11) <= this.mSRLongerSideUpperBound && Math.min(i10, i11) <= this.mSRShorterSideUpperBound && f10 <= ((float) this.mSRFrameRateUpperBound) && i10 < i11;
    }

    public boolean isSupportSharpen(int i10, int i11) {
        int iMax = Math.max(i10, i11);
        int iMin = Math.min(i10, i11);
        return iMax >= this.mSharpenLongerSideLowerBound && iMax <= this.mSharpenLongerSideUpperBound && iMin >= this.mSharpenShorterSideLowerBound && iMin <= this.mSharpenShorterSideUpperBound;
    }

    public void setDefaultResolution(String str) {
        if (isNeedUseDefaultResolution(str)) {
            str = this.mDefaultResolution;
        }
        if (isSupport(str)) {
            this.mDefaultResolution = str;
        }
    }

    public void setEnableOriginResolution(boolean z10) {
        this.mEnableOriginResolution = z10;
    }

    public boolean setFlag(int i10) {
        this.mFlag = i10 | this.mFlag;
        return true;
    }

    public void setRequestParams(String str) {
        this.mRequestParams = str;
    }

    public void setRequestParamsWithDNSIp(String str, String str2, String str3) {
        this.mRequestParams = str;
        this.mIp = str2;
        this.mHost = str3;
    }

    public void setRtcFallback(int i10) {
        this.mRtcFallback = i10;
    }

    public void setTransportProtocol(String str, String str2) {
        this.mTransportProtocol = str;
        this.mPortNum = str2;
    }
}
