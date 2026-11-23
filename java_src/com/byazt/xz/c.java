package com.byazt.xz;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.mg.da;
import com.byazt.mg.yp;
import com.byazt.nr.m;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.haima.hmcp.Constants;
import com.umeng.analytics.pro.f;
import com.umeng.umcrash.UMCrash;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1730, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONObject f22134c;

    public c() {
        this.f22134c = new JSONObject();
    }

    public static c c(long j10, Context context, @Nullable Thread thread, @NonNull Throwable th) {
        if (j10 == 0) {
            j10 = System.currentTimeMillis();
        }
        c cVar = new c();
        cVar.c("isJava", (Object) 1);
        cVar.c("event_type", "java_crash");
        cVar.c(UMCrash.SP_KEY_TIMESTAMP, Long.valueOf(System.currentTimeMillis()));
        cVar.c("data", yp.c(th));
        cVar.c("isOOM", Boolean.valueOf(yp.tt(th)));
        cVar.c("crash_time", Long.valueOf(j10));
        cVar.c(ContentProviderManager.PLUGIN_PROCESS_NAME, com.byazt.mg.c.uj(context));
        if (!com.byazt.mg.c.tt(context)) {
            cVar.c("remote_process", (Object) 1);
        }
        com.byazt.mg.c.c(context, cVar.c());
        String name = thread == null ? null : thread.getName();
        if (name != null) {
            cVar.c("crash_thread_name", name);
        }
        cVar.c("all_thread_stacks", yp.c(name));
        return cVar;
    }

    public c tt(Map<Integer, String> map) {
        if (map != null && map.size() > 0) {
            JSONObject jSONObject = new JSONObject();
            for (Integer num : map.keySet()) {
                try {
                    jSONObject.put(String.valueOf(num), map.get(num));
                } catch (JSONException e10) {
                    da.tt(e10);
                }
            }
            try {
                this.f22134c.put("sdk_info", jSONObject);
            } catch (JSONException e11) {
                m.c(e11);
            }
        }
        return this;
    }

    public c ve(Map<? extends String, ? extends String> map) {
        if (map != null) {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                try {
                    jSONObject.put(str, map.get(str));
                } catch (JSONException e10) {
                    m.c(e10);
                }
            }
            c("filters", jSONObject);
        }
        return this;
    }

    public c(JSONObject jSONObject) {
        this.f22134c = jSONObject;
    }

    public c tt(List<String> list) {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            jSONArray.put(it2.next());
        }
        c("logcat", jSONArray);
        return this;
    }

    public JSONObject c() {
        return this.f22134c;
    }

    public c c(tt ttVar) {
        c("header", ttVar.c());
        return this;
    }

    public c c(long j10) {
        try {
            c(f.f84665p, Long.valueOf(j10));
            c("app_start_time_readable", new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.getDefault()).format(new Date(j10)));
        } catch (Exception e10) {
            m.c(e10);
        }
        return this;
    }

    public c c(@NonNull String str) {
        if (!TextUtils.isEmpty(str)) {
            c("session_id", str);
        }
        return this;
    }

    public c c(com.byazt.ia.tt ttVar) {
        c("activity_trace", ttVar.c());
        c("running_tasks", ttVar.tt());
        return this;
    }

    public c c(Map<String, Integer> map) {
        JSONArray jSONArray = new JSONArray();
        try {
            if (map == null) {
                this.f22134c.put("plugin_info", jSONArray);
                return this;
            }
            for (String str : map.keySet()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("package_name", str);
                jSONObject.put("version_code", map.get(str));
                jSONArray.put(jSONObject);
            }
            this.f22134c.put("plugin_info", jSONArray);
            return this;
        } catch (Exception unused) {
        }
    }

    public c c(int i10, String str) {
        try {
            this.f22134c.put("miniapp_id", i10);
            this.f22134c.put("miniapp_version", str);
        } catch (JSONException e10) {
            m.c(e10);
        }
        return this;
    }

    public c c(List<String> list) {
        JSONArray jSONArray = new JSONArray();
        if (list != null && !list.isEmpty()) {
            Iterator<String> it2 = list.iterator();
            while (it2.hasNext()) {
                jSONArray.put(it2.next());
            }
            c("patch_info", jSONArray);
            return this;
        }
        c("patch_info", jSONArray);
        return this;
    }

    public c c(JSONObject jSONObject) {
        c(Constants.WS_MESSAGE_TYPE_STORAGE, jSONObject);
        return this;
    }

    public void c(@NonNull String str, @Nullable Object obj) {
        try {
            this.f22134c.put(str, obj);
        } catch (Exception e10) {
            da.tt(e10);
        }
    }
}
