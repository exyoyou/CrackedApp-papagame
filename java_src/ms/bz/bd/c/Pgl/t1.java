package ms.bz.bd.c.Pgl;

import android.content.Context;
import com.bytedance.framwork.core.sdkmonitor.SDKMonitor;
import com.bytedance.framwork.core.sdkmonitor.SDKMonitorUtils;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class t1 extends pblx {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SDKMonitor f94468c;

    final class pgla implements SDKMonitor.IGetExtendParams {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ JSONObject f94469c;
        final /* synthetic */ String tt;

        pgla(JSONObject jSONObject, String str) {
            this.f94469c = jSONObject;
            this.tt = str;
        }
    }

    @Override // ms.bz.bd.c.Pgl.pblx
    public final void c(long j10, long j11, String str, String str2, int i10) {
        SDKMonitor sDKMonitor = this.f94468c;
        if (sDKMonitor == null) {
            return;
        }
        sDKMonitor.monitorSLA(j10, j11, str, (String) null, str2, i10, (JSONObject) null);
    }

    @Override // ms.bz.bd.c.Pgl.pblx
    public final void tt(long j10, long j11, String str, String str2, int i10) {
        SDKMonitor sDKMonitor = this.f94468c;
        if (sDKMonitor == null) {
            return;
        }
        sDKMonitor.monitorApiError(j10, j11, str, (String) null, str2, i10, (JSONObject) null);
    }

    @Override // ms.bz.bd.c.Pgl.pblx
    public final void c(String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "666dd2", new byte[]{BinaryMemcacheOpcodes.DELETEQ, 56, 68, 2, 95, BinaryMemcacheOpcodes.GATKQ, 39, com.sigmob.sdk.archives.tar.e.J, 113, com.sigmob.sdk.archives.tar.e.I, 41, 32, 105, 31, 92, 8, com.sigmob.sdk.archives.tar.e.L, BinaryMemcacheOpcodes.APPENDQ, 102, com.sigmob.sdk.archives.tar.e.K, 34, 38, 5, 3, 94, com.sigmob.sdk.archives.tar.e.O, BinaryMemcacheOpcodes.GATK, BinaryMemcacheOpcodes.GATQ, 100, com.sigmob.sdk.archives.tar.e.I, 41, com.sigmob.sdk.archives.tar.e.M, 72, BinaryMemcacheOpcodes.INCREMENTQ, 27, 104, com.sigmob.sdk.archives.tar.e.R, 90, 39});
        if (this.f94468c == null) {
            return;
        }
        try {
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "6fc593", new byte[]{com.sigmob.sdk.archives.tar.e.L, 97, 2, 87, 15, 39, com.sigmob.sdk.archives.tar.e.H, 73, com.sigmob.sdk.archives.tar.e.K, 104, 34}), str);
            jSONObject4.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "f76843", new byte[]{116, com.sigmob.sdk.archives.tar.e.L, 81, 73, 12, 43, 119, 15}), jSONObject);
            jSONObject4.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "5b8f2e", new byte[]{41, 101, 95, 0, 4, 113}), jSONObject2);
            jSONObject4.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e12643", new byte[]{com.sigmob.sdk.archives.tar.e.R, 60, 70, com.sigmob.sdk.archives.tar.e.T, BinaryMemcacheOpcodes.REPLACEQ, com.sigmob.sdk.archives.tar.e.H, 116}), jSONObject3);
            com.byazt.nr.m.uj((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "177c0d", new byte[]{13, 16, 112, com.sigmob.sdk.archives.tar.e.N, 60, 86, BinaryMemcacheOpcodes.SETQ}), jSONObject4.toString());
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
        if (jSONObject.length() > 0 || jSONObject2.length() > 0) {
            this.f94468c.monitorEvent(str, jSONObject, jSONObject2, jSONObject3);
        }
    }

    @Override // ms.bz.bd.c.Pgl.pblx
    public final boolean c(String str) {
        JSONObject jSONObject;
        String str2;
        String string;
        Context contextTt = pblw.c().tt();
        String string2 = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
                com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "34a302", new byte[]{com.sigmob.sdk.archives.tar.e.I, com.sigmob.sdk.archives.tar.e.K, 31});
                jSONObject = null;
            }
        } else {
            jSONObject = null;
        }
        if (jSONObject == null) {
            return false;
        }
        try {
            string = jSONObject.getString((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "73ee60", new byte[]{com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.M, BinaryMemcacheOpcodes.GAT, 46, 8, 46, com.sigmob.sdk.archives.tar.e.H}));
            try {
                string2 = jSONObject.getString((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "bed5fc", new byte[]{123, 104, 4, 85, 102, 117, 104, 64}));
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                JSONArray jSONArray = jSONObject.getJSONArray((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e4603c", new byte[]{119, 57, 75, 66, 5, 115, com.sigmob.sdk.archives.tar.e.Q, 39, 75, 115}));
                JSONArray jSONArray2 = jSONObject.getJSONArray((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "743353", new byte[]{com.sigmob.sdk.archives.tar.e.L, com.sigmob.sdk.archives.tar.e.K, 80, 72, BinaryMemcacheOpcodes.FLUSHQ, com.sigmob.sdk.archives.tar.e.H, 1, 39, 78, 112}));
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    arrayList.add(jSONArray.getString(i10));
                }
                for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
                    arrayList2.add(jSONArray2.getString(i11));
                }
                if (arrayList.size() <= 0 || arrayList2.size() <= 0) {
                    return false;
                }
                SDKMonitorUtils.setConfigUrl(string, arrayList);
                SDKMonitorUtils.setDefaultReportUrl(string, arrayList2);
            } catch (JSONException unused2) {
                str2 = string2;
                string2 = string;
                com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "15fa4c", new byte[]{com.sigmob.sdk.archives.tar.e.K, com.sigmob.sdk.archives.tar.e.J, BinaryMemcacheOpcodes.FLUSHQ, 42, 2});
                string = string2;
                string2 = str2;
            }
        } catch (JSONException unused3) {
            str2 = null;
        }
        jSONObject.remove((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "15488b", new byte[]{BinaryMemcacheOpcodes.GATK, 56, 73, 74, 14, 114, 7, 38, 73, 123}));
        jSONObject.remove((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "0159f0", new byte[]{com.sigmob.sdk.archives.tar.e.K, com.sigmob.sdk.archives.tar.e.N, 86, 66, 75, com.sigmob.sdk.archives.tar.e.K, 6, 34, 72, 122}));
        SDKMonitorUtils.initMonitor(contextTt, string, jSONObject, new pgla(jSONObject, string2));
        this.f94468c = SDKMonitorUtils.getInstance(string);
        return true;
    }
}
