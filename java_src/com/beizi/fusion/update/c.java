package com.beizi.fusion.update;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.beizi.fusion.BeiZis;
import com.beizi.fusion.model.RequestInfo;
import com.beizi.fusion.tool.aa;
import com.beizi.fusion.tool.as;
import com.beizi.fusion.tool.at;
import com.beizi.fusion.tool.d;
import com.beizi.fusion.tool.v;
import com.beizi.fusion.tool.x;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class c extends AsyncTask<String, Integer, a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10719a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f10720b;

    c(Context context, b bVar) {
        try {
            this.f10719a = context;
            this.f10720b = bVar;
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a doInBackground(String... strArr) {
        String strB;
        try {
            if (!RequestInfo.getInstance(this.f10719a).isInit) {
                RequestInfo.getInstance(this.f10719a).init();
            }
            if (strArr == null || strArr.length <= 0) {
                strB = d.b("aHR0cDovL3Nkay5iZWl6aS5iaXovdjQvYXBpL3Nkay9jZi9wP2FwcElkPV9fQVBQSURfXyZwYWNrYWdlTmFtZT1fX1BBQ0tBR0VOQU1FX18maW5zdGFsbFRpbWU9X19JTlNUQUxMVElNRV9fJnVwZGF0ZVRpbWU9X19VUERBVEVUSU1FX18mbm93VGltZT1fX05PV1RJTUVfXyZhcHBWZXJzaW9uPV9fQVBQVkVSU0lPTl9fJmFwcFZlcnNpb25Db2RlPV9fQVBQVkVSU0lPTkNPREVfXyZzZGtWZXJzaW9uPV9fU0RLVkVSU0lPTl9fJlVzZXJBZ2VudD1fX1VTRVJBR0VOVF9fJnNka1VJRD1fX1NES1VJRF9fJmlkZmE9X19JREZBX18maWRmdj1fX0lERlZfXyZvcz1fX09TX18mcGxhdGZvcm09X19QTEFURk9STV9fJmRldlR5cGU9X19ERVZUWVBFX18mYnJhbmQ9X19CUkFORF9fJm1vZGVsPV9fTU9ERUxfXyZyZXNvbHV0aW9uPV9fUkVTT0xVVElPTl9fJnNjcmVlblNpemU9X19TQ1JFRU5TSVpFX18mbGFuZ3VhZ2U9X19MQU5HVUFHRV9fJmRlbnNpdHk9X19ERU5TSVRZX18mcm9vdD1fX1JPT1RfXyZuZXQ9X19ORVRfXyZpc3A9X19JU1BfXyZiYXR0ZXJ5PV9fQkFUVEVSWV9fJmRldmVsb3Blck1vZGU9X19ERVZFTE9QRVJNT0RFX18maXNVc2I9X19JU1VTQl9fJmlzRGVidWdBcGs9X19JU0RFQlVHQVBLX18maXNEZWJ1Z0Nvbm5lY3RlZD1fX0lTREVCVUdDT05ORUNURURfXyZkZWJ1Z1N5c3RlbT1fX0RFQlVHU1lTVEVNX18maXNXaWZpUHJveHk9X19JU1dJRklQUk9YWV9fJmlzQmx1ZXRvb3RoPV9fSVNCTFVFVE9PVEhfXyZpc0NhbWVyYT1fX0lTQ0FNRVJBX18maXNMb2NrU2NyZWVuPV9fSVNMT0NLU0NSRUVOX18mbmVpZ2hib3JpbmdMYWM9X19ORUlHSEJPUklOR0xBQ19fJmlzVnBuPV9fSVNWUE5fXyZpc1NpbXVsYXRvcj1fX0lTU0lNVUxBVE9SX18mY29uZmlnVmVyc2lvbj1fX0NPTkZJR1ZFUlNJT05fXyZjb25maWd1cmF0b3JDb25maWdWZXJzaW9uPV9fQ09ORklHVVJBVE9SQ09ORklHVkVSU0lPTl9fJm1lc3NlbmdlckNvbmZpZ1ZlcnNpb249X19NRVNTRU5HRVJDT05GSUdWRVJTSU9OX18mYmFubmVyRXhjdXRvckZvckxpZVlpbmdDb25maWdWZXJzaW9uPV9fQkFOTkVSRVhDVVRPUkZPUkxJRVlJTkdDT05GSUdWRVJTSU9OX18maHJDb25maWdWZXJzaW9uPV9fSFJDT05GSUdWRVJTSU9OX18mbWFuYWdlckNvbmZpZ1ZlcnNpb249X19NQU5BR0VSQ09ORklHVkVSU0lPTl9fJmxvZ1ZlcnNpb249X19MT0dWRVJTSU9OX18mZXZlbnRUaW1lPV9fRVZFTlRUSU1FX18mdXBsb2FkdGltZT1fX1VQTE9BRFRJTUVfXyZTZXNzaW9uSUQ9X19TRVNTSU9OSURfXyZldmVudElEPV9fRVZFTlRJRF9fJmV2ZW50Q29kZT1fX0VWRU5UQ09ERV9fJmFkVHlwZT1fX0FEVFlQRV9fJnJlc2VydmVUaW1lPV9fUkVTRVJWRVRJTUVfXyZhZHhJRD1fX0FEWElEX18mYWRQb3NpdGlvbklkPV9fQURQT1NJVElPTklEX18mT0FJRD1fX09BSURfXyZHQUlEPV9fR0FJRF9fJl9fRVJSSU5GT19fJmFwcFN0YXJ0PV9fQVBQU1RBUlRfXyZhcHBJbml0PV9fQVBQU0RLSU5JVF9fJmFwcFNwbGFzaFJlcXVlc3Q9X19BUFBTUExBU0hSRVFVRVNUX18=");
                if (TextUtils.isEmpty(strB)) {
                    return null;
                }
                if (BeiZis.getTransferProtocol()) {
                    strB = strB.replace("http:", "https:");
                }
            } else {
                strB = strArr[0];
            }
            int iIndexOf = strB.indexOf("?");
            String strSubstring = strB.substring(0, iIndexOf);
            String strA = com.beizi.fusion.tool.b.a(aa.a(), v.a(at.a(this.f10719a, strB.substring(iIndexOf + 1), null)));
            if (strA != null) {
                String strA2 = x.a(strSubstring, strA.getBytes());
                if (!TextUtils.isEmpty(strA2)) {
                    JSONObject jSONObject = new JSONObject(strA2);
                    if (jSONObject.optInt("code") == 200) {
                        as.a(this.f10719a, "lastUpdateTime", (Object) Long.valueOf(System.currentTimeMillis()));
                        String strOptString = jSONObject.optString("data");
                        if (!TextUtils.isEmpty(strOptString) && !strOptString.equalsIgnoreCase("null") && !strOptString.equals("{}")) {
                            return new a(this.f10719a, strOptString);
                        }
                    }
                }
            }
        } catch (Error e10) {
            e10.printStackTrace();
        } catch (RuntimeException e11) {
            e11.printStackTrace();
        } catch (Exception e12) {
            e12.printStackTrace();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(a aVar) {
        if (aVar != null && aVar.a()) {
            this.f10720b.a(aVar);
            return;
        }
        b bVar = this.f10720b;
        if (bVar != null) {
            bVar.a(1000);
        }
    }
}
