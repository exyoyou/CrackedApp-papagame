package com.byazt.gf;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.byakv.z.SoftDecTool;
import com.haima.hmcp.Constants;
import com.kuaishou.weapon.p0.bg;
import com.umeng.analytics.pro.bm;
import java.util.Iterator;
import java.util.LinkedList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 914, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile tt f14514c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f14515a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public LinkedList<JSONObject> f14516n;
    public SharedPreferences tt;
    public LinkedList<JSONObject> uj;
    public LinkedList<JSONObject> ve;

    public tt() {
        this.tt = null;
        this.ve = null;
        this.uj = null;
        this.f14516n = null;
        this.f14515a = 0L;
        this.tt = SoftDecTool.getSharedPreferences("pithar");
        this.ve = ve("sp_angle");
        this.uj = ve("sp_screen");
        this.f14516n = ve("sp_net");
        this.f14515a = n.c().ve() / n.c().uj();
    }

    public static tt c() {
        if (f14514c == null) {
            synchronized (tt.class) {
                if (f14514c == null) {
                    f14514c = new tt();
                }
            }
        }
        return f14514c;
    }

    private LinkedList<JSONObject> ve(String str) {
        LinkedList<JSONObject> linkedList = new LinkedList<>();
        SharedPreferences sharedPreferences = this.tt;
        if (sharedPreferences == null) {
            return linkedList;
        }
        String string = sharedPreferences.getString(str, "");
        if (!TextUtils.isEmpty(string)) {
            for (String str2 : string.split(Constants.TIPS_SPECIAL_TAG)) {
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        linkedList.add(new JSONObject(str2));
                    } catch (Exception unused) {
                    }
                }
            }
        }
        return linkedList;
    }

    public synchronized void tt(String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if ("android.intent.action.SCREEN_OFF".equals(str)) {
            LinkedList<JSONObject> linkedListC = c("sp_screen");
            int i10 = 1;
            if (linkedListC != null && !linkedListC.isEmpty()) {
                JSONObject jSONObject = linkedListC.get(linkedListC.size() - 1);
                if (jSONObject.optLong(bm.aM, 0L) / bg.f74510s == jCurrentTimeMillis / bg.f74510s) {
                    int iOptInt = jSONObject.optInt("val", 0) + 1;
                    linkedListC.remove(linkedListC.size() - 1);
                    i10 = iOptInt;
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(bm.aM, jCurrentTimeMillis);
                jSONObject2.put("val", i10);
                c(jSONObject2, "sp_screen");
            } catch (JSONException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    public LinkedList<JSONObject> c(String str) {
        if ("sp_angle".equals(str)) {
            return this.ve;
        }
        if ("sp_screen".equals(str)) {
            return this.uj;
        }
        if ("sp_net".equals(str)) {
            return this.f14516n;
        }
        return null;
    }

    public void c(JSONObject jSONObject, String str) {
        LinkedList<JSONObject> linkedListC = c(str);
        if (linkedListC == null) {
            return;
        }
        linkedListC.add(jSONObject);
        if (linkedListC.size() > this.f14515a) {
            linkedListC.remove(0);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jVe = jCurrentTimeMillis - n.c().ve();
        Iterator<JSONObject> it2 = linkedListC.iterator();
        JSONObject jSONObject2 = null;
        while (it2.hasNext()) {
            JSONObject next = it2.next();
            long jOptLong = next.optLong(bm.aM, 0L);
            if (jOptLong < jVe) {
                it2.remove();
                jSONObject2 = next;
            } else if (jOptLong > jCurrentTimeMillis) {
                it2.remove();
            }
        }
        if (jSONObject2 != null && linkedListC.size() < 2) {
            linkedListC.add(0, jSONObject2);
        }
        c(str, linkedListC);
    }

    public synchronized void c(int i10) {
        int iOptInt;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (i10 == 4) {
            iOptInt = 1;
        } else {
            iOptInt = i10 > 0 ? 2 : 0;
        }
        LinkedList<JSONObject> linkedListC = c("sp_net");
        if (linkedListC != null && !linkedListC.isEmpty()) {
            JSONObject jSONObject = linkedListC.get(linkedListC.size() - 1);
            if (jSONObject.optLong(bm.aM, 0L) / bg.f74510s == jCurrentTimeMillis / bg.f74510s) {
                iOptInt |= jSONObject.optInt("val", 0);
                linkedListC.remove(linkedListC.size() - 1);
            }
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(bm.aM, jCurrentTimeMillis);
            jSONObject2.put("val", iOptInt);
            c(jSONObject2, "sp_net");
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    public void c(String str, LinkedList<JSONObject> linkedList) {
        if (linkedList == null || this.tt == null) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator<JSONObject> it2 = linkedList.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next().toString());
            sb2.append(Constants.TIPS_SPECIAL_TAG);
        }
        SharedPreferences.Editor editorEdit = this.tt.edit();
        editorEdit.putString(str, sb2.toString());
        editorEdit.apply();
    }

    public LinkedList<JSONObject> c(long j10) {
        if (j10 == 0) {
            return this.ve;
        }
        LinkedList<JSONObject> linkedList = new LinkedList<>();
        long jCurrentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObject = null;
        for (JSONObject jSONObject2 : this.ve) {
            if (jCurrentTimeMillis - jSONObject2.optLong(bm.aM, 0L) < j10) {
                linkedList.add(jSONObject2);
            } else {
                jSONObject = jSONObject2;
            }
        }
        if (jSONObject != null && linkedList.size() < 2) {
            linkedList.add(0, jSONObject);
        }
        return linkedList;
    }
}
