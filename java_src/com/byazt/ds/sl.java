package com.byazt.ds;

import android.content.Context;
import com.umeng.analytics.pro.bm;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1480, 158})
public class sl extends ve {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Context f13156n;

    public sl(Context context) {
        super(true, true);
        this.f13156n = context;
    }

    @Override // com.byazt.ds.ve
    public boolean c(JSONObject jSONObject) throws JSONException {
        i.c(jSONObject, "language", this.f13156n.getResources().getConfiguration().locale.getLanguage());
        jSONObject.put(bm.M, com.byazt.yv.c.ve());
        i.c(jSONObject, "region", Locale.getDefault().getCountry());
        TimeZone timeZone = Calendar.getInstance().getTimeZone();
        i.c(jSONObject, "tz_name", timeZone.getID());
        jSONObject.put("tz_offset", timeZone.getOffset(System.currentTimeMillis() / 1000));
        return true;
    }
}
