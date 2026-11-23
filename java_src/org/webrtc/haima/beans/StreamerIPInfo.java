package org.webrtc.haima.beans;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.hmwebrtc.Logging;
import org.json.JSONArray;
import org.json.JSONObject;
import org.webrtc.haima.util.Utils;

/* JADX INFO: loaded from: classes10.dex */
public class StreamerIPInfo {
    public static final int IP_FORMAT_IPV4 = 0;
    public static final int IP_FORMAT_IPV6 = 1;
    public static final int IP_PRIORITY_BACKUP = 1;
    public static final int IP_PRIORITY_PRIMARY = 0;
    String ip;
    int ipFormat;
    int ipPriority;

    public static List<StreamerIPInfo> parseIPList(String str) {
        String[] strArrSplit;
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str) && (strArrSplit = str.split(",")) != null && strArrSplit.length != 0) {
            StreamerIPInfo streamerIPInfo = new StreamerIPInfo();
            String str2 = strArrSplit[0];
            streamerIPInfo.ip = str2;
            streamerIPInfo.ipFormat = !Utils.isIpv4AddressWithPort(str2) ? 1 : 0;
            streamerIPInfo.ipPriority = 0;
            arrayList.add(streamerIPInfo);
            if (strArrSplit.length > 1) {
                StreamerIPInfo streamerIPInfo2 = new StreamerIPInfo();
                String str3 = strArrSplit[1];
                streamerIPInfo2.ip = str3;
                streamerIPInfo2.ipFormat = !Utils.isIpv4AddressWithPort(str3) ? 1 : 0;
                streamerIPInfo2.ipPriority = 1;
                arrayList.add(streamerIPInfo2);
            }
        }
        return arrayList;
    }

    public static JSONObject parseIPListToJSON(String str) {
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        JSONArray jSONArray = new JSONArray();
        String[] strArrSplit = str.split(",");
        if (strArrSplit != null && strArrSplit.length != 0) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("ip", strArrSplit[0]);
                jSONObject2.put("ipFormat", Utils.isIpv4AddressWithPort(strArrSplit[0]) ? 0 : 1);
                jSONObject2.put("ipPriority", 0);
                jSONArray.put(jSONObject2);
                if (strArrSplit.length > 1) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("ip", strArrSplit[1]);
                    jSONObject3.put("ipFormat", Utils.isIpv4AddressWithPort(strArrSplit[1]) ? 0 : 1);
                    jSONObject3.put("ipPriority", 0);
                    jSONArray.put(jSONObject3);
                }
                jSONObject.put("ipList", jSONArray);
            } catch (Exception e10) {
                Logging.e("StreamerIPInfo", e10.getMessage());
            }
        }
        return jSONObject;
    }

    public static JSONObject parseIPToJSON(String str) {
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        JSONArray jSONArray = new JSONArray();
        String[] strArrSplit = str.split(",");
        if (strArrSplit != null && strArrSplit.length >= 2) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                int i10 = 0;
                jSONObject2.put("remoteIp", strArrSplit[0]);
                jSONObject2.put("localIp", strArrSplit[1]);
                if (!Utils.isIpv4AddressWithPort(strArrSplit[0])) {
                    i10 = 1;
                }
                jSONObject2.put("ipFormat", i10);
                jSONArray.put(jSONObject2);
                jSONObject.put("ipList", jSONArray);
            } catch (Exception e10) {
                Logging.e("StreamerIPInfo", e10.getMessage());
            }
        }
        return jSONObject;
    }
}
