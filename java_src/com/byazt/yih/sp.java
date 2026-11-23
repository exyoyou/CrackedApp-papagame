package com.byazt.yih;

import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.dk.z;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.join.mgps.activity.TagGameListActivity_;
import com.tencent.cos.common.COSHttpResponseKey;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 730, 91})
public class sp implements uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ve f22267c;

    public sp(ve veVar) {
        this.f22267c = veVar;
    }

    @Override // com.byazt.yih.uj
    public boolean c(final com.byazt.qt.c cVar) {
        if (!this.f22267c.ve()) {
            return false;
        }
        long jUj = this.f22267c.uj();
        final com.byazt.ocd.tt ttVarC = z.c();
        if (ttVarC == null || !c(1440L, this.f22267c.sp())) {
            return false;
        }
        da.c().postDelayed(new Runnable() { // from class: com.byazt.yih.sp.1
            @Override // java.lang.Runnable
            public void run() {
                HashMap map = new HashMap();
                map.put("app_name", cVar.c());
                map.put("app_icon_url", cVar.tt());
                map.put("event_id", Integer.valueOf(cVar.uj()));
                map.put("package_name", cVar.ve());
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt(HmInputMappingContent.FIELD_VALUE, cVar.x());
                    jSONObject.putOpt("log_extra", cVar.n());
                    jSONObject.putOpt(TagGameListActivity_.TAG_EXTRA, cVar.sp());
                    jSONObject.putOpt(COSHttpResponseKey.DOWNLOAD_URL, cVar.da());
                    jSONObject.putOpt("save_path", cVar.i());
                } catch (Exception unused) {
                }
                boolean zTt = nb.tt(cVar.ve());
                map.put("event_token", com.byazt.nr.c.tt(jSONObject.toString()));
                ttVarC.c(zTt ? 102 : 101, map);
            }
        }, jUj * 1000);
        return true;
    }

    @Override // com.byazt.yih.uj
    public boolean tt(com.byazt.qt.c cVar) {
        return false;
    }

    public boolean c(long j10, int i10) {
        try {
            Long lValueOf = -1L;
            boolean z10 = true;
            try {
                lValueOf = Long.valueOf(j10 * 60 * 1000);
            } catch (Exception e10) {
                m.tt("notification", "error", e10.getMessage());
                i10 = -1;
            }
            if (lValueOf.longValue() >= 0 && i10 >= 0 && lValueOf.longValue() != 0 && i10 != 0) {
                String strC = c();
                StringBuilder sb2 = new StringBuilder();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (TextUtils.isEmpty(strC)) {
                    sb2.append(jCurrentTimeMillis);
                    c(sb2.toString());
                    return true;
                }
                String[] strArrSplit = strC.split("_");
                int length = strArrSplit.length;
                if (length < i10) {
                    Long.parseLong(strArrSplit[length - 1]);
                    for (String str : strArrSplit) {
                        sb2.append(str);
                        sb2.append("_");
                    }
                    sb2.append(jCurrentTimeMillis);
                    c(sb2.toString());
                    return true;
                }
                int i11 = length - i10;
                if (jCurrentTimeMillis - Long.valueOf(Long.parseLong(strArrSplit[i11])).longValue() <= lValueOf.longValue()) {
                    z10 = false;
                }
                for (int i12 = i11; i12 < length; i12++) {
                    String str2 = strArrSplit[i12];
                    if (i12 != i11 && !TextUtils.isEmpty(str2)) {
                        sb2.append(str2);
                        sb2.append("_");
                    }
                }
                sb2.append(jCurrentTimeMillis);
                c(sb2.toString());
                return z10;
            }
            return false;
        } catch (Exception e11) {
            m.c(e11);
            return false;
        }
    }

    public static String c() {
        return com.byazt.omf.tt.c().get("notification_b", "");
    }

    public static void c(String str) {
        com.byazt.omf.tt.c().put("notification_b", str);
    }
}
