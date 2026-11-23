package com.byazt.a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 34, 67})
public class u extends c {
    public u(Context context, com.byazt.k.c cVar, String str) {
        super(context, cVar, str);
    }

    public static String c(Map<String, String> map) {
        if (map == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            stringBuffer.append(entry.getKey());
            stringBuffer.append(SimpleComparison.EQUAL_TO_OPERATION);
            stringBuffer.append(URLEncoder.encode(entry.getValue()));
            stringBuffer.append(x.a.f97576d);
        }
        String string = stringBuffer.toString();
        return string.endsWith(x.a.f97576d) ? string.substring(0, string.length() - 1) : string;
    }

    @Override // com.byazt.a.n
    public Intent tt() {
        String strVe = this.tt.ve("s");
        String strC = com.byazt.i.ve.c(this.tt.ve("bb"), strVe);
        if (!TextUtils.isEmpty(strC) && strC.split(",").length == 2) {
            String strC2 = com.byazt.i.ve.c(this.tt.ve("bc"), strVe);
            if (!TextUtils.isEmpty(strC2) && strC2.split(",").length == 2) {
                String[] strArrSplit = strC.split(",");
                String[] strArrSplit2 = strC2.split(",");
                String strC3 = com.byazt.i.ve.c(this.tt.ve("bd"), strVe);
                String strC4 = com.byazt.i.ve.c(this.tt.ve("be"), strVe);
                String strC5 = com.byazt.i.ve.c(this.tt.ve("bf"), strVe);
                HashMap map = new HashMap();
                map.put(strArrSplit[0], strArrSplit[1]);
                map.put(strArrSplit2[0], strArrSplit2[1]);
                map.put(strC3, this.ve);
                Intent intent = new Intent();
                intent.setAction(strC5);
                intent.setData(Uri.parse(strC4 + c(map)));
                intent.addFlags(268468224);
                return intent;
            }
        }
        return null;
    }
}
