package cn.com.chinatelecom.account.api.d;

import android.content.Context;
import cn.com.chinatelecom.account.api.CtAuth;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f869a = "f";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Map<String, e> f871c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static List<e> f872d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static e f873e = null;

    public static synchronized e a(String str) {
        e eVar;
        try {
            eVar = f871c.containsKey(str) ? f871c.get(str) : null;
            if (eVar == null) {
                eVar = new e(str);
                f871c.put(str, eVar);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            return new e(str);
        }
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context) {
        if (context == null) {
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            synchronized (f.class) {
                e eVar = f873e;
                if (eVar != null) {
                    arrayList.add(eVar.toString());
                    f873e = null;
                }
                Iterator<e> it2 = f872d.iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next().toString());
                }
                f870b = 0;
                f872d.clear();
            }
            if (arrayList.isEmpty()) {
                return;
            }
            cn.com.chinatelecom.account.a.c.a(context, arrayList);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void c(String str) {
        try {
            synchronized (f.class) {
                if (f871c.containsKey(str)) {
                    e eVar = f871c.get(str);
                    eVar.b();
                    f872d.add(eVar);
                    f871c.remove(str);
                }
                if (f870b != 1 && !f872d.isEmpty()) {
                    f870b = 1;
                    new Timer().schedule(new TimerTask() { // from class: cn.com.chinatelecom.account.api.d.f.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            f.b(CtAuth.mContext);
                        }
                    }, 8000L);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static synchronized void b(String str) {
        try {
            if (f871c.containsKey(str)) {
                e eVar = f871c.get(str);
                f873e = eVar;
                eVar.b();
                f871c.remove(str);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Context context, String str) {
        cn.com.chinatelecom.account.a.c.a(context, str);
    }

    public static void b(String str, JSONObject jSONObject, String str2) {
        try {
            int iOptInt = jSONObject.optInt("result");
            String strOptString = jSONObject.optString("msg");
            if (iOptInt == 0) {
                a(str).a(iOptInt).e(strOptString);
            } else {
                a(str).a(iOptInt).e(strOptString).d(str2);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static synchronized void a(String str, JSONObject jSONObject, String str2) {
        try {
            if (f871c.containsKey(str)) {
                f871c.get(str).g(str2);
                return;
            }
            if (f872d.size() > 0) {
                for (e eVar : f872d) {
                    if (eVar.a() != null && eVar.a().equals(str) && jSONObject != null) {
                        jSONObject.remove("data");
                        eVar.g(jSONObject.toString());
                        eVar.g(str2);
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
