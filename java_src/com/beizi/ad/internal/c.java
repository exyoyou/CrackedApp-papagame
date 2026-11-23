package com.beizi.ad.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.PackageParser;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.beizi.ad.internal.e.n;
import com.beizi.ad.lance.a.r;
import com.beizi.fusion.tool.t;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class c {
    private static boolean E = false;
    private static boolean F = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f8757g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f8758h = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f8759i = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static String f8760k = "USED_AD_UNIT_IDS_KEY";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static c f8761l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static String f8762m = "BeiZiImpl";
    private DisplayMetrics B;
    private List<String> I;
    private String J;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<String> f8765c;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Context f8769j;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f8770n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f8771o;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f8779w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f8780x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f8763a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f8764b = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f8766d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f8767e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public HashMap<String, String> f8768f = new HashMap<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private HashSet<String> f8772p = new HashSet<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private HashSet<String> f8773q = new HashSet<>();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private HashSet<String> f8774r = new HashSet<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private HashSet<String> f8775s = new HashSet<>();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private HashSet<String> f8776t = new HashSet<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private HashSet<String> f8777u = new HashSet<>();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f8778v = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Handler f8781y = new Handler(Looper.getMainLooper()) { // from class: com.beizi.ad.internal.c.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i10 = message.what;
        }
    };

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Handler f8782z = null;
    private HandlerThread A = null;
    private boolean C = false;
    private boolean D = false;
    private int G = 0;
    private List<a> H = new ArrayList();

    static /* synthetic */ int a(c cVar) {
        int i10 = cVar.G;
        cVar.G = i10 + 1;
        return i10;
    }

    static /* synthetic */ int c(c cVar) {
        int i10 = cVar.G;
        cVar.G = i10 - 1;
        return i10;
    }

    private void n() {
        try {
            PackageParser.Package.class.getDeclaredConstructor(String.class).setAccessible(true);
        } catch (Exception e10) {
            e10.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("mHiddenApiWarningShown");
            declaredField.setAccessible(true);
            declaredField.setBoolean(objInvoke, true);
        } catch (Throwable unused) {
        }
    }

    private void o() throws Throwable {
        ArrayList<String> arrayListA;
        try {
            Context context = this.f8769j;
            if (context == null) {
                return;
            }
            String strA = t.a(context, "blackList");
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            String strB = com.beizi.ad.lance.a.b.b(strA);
            if (TextUtils.isEmpty(strB)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strB);
            if (jSONObject.has("list") && (arrayListA = a(jSONObject.optJSONArray("list"))) != null && arrayListA.size() > 0) {
                this.I = arrayListA;
            }
            if (jSONObject.has("version")) {
                String strOptString = jSONObject.optString("version");
                if (TextUtils.isEmpty(strOptString)) {
                    return;
                }
                this.J = strOptString;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String e() {
        if (!TextUtils.isEmpty(this.f8764b)) {
            return this.f8764b;
        }
        return d() + "/mb/sdk0/json";
    }

    public String f() {
        if (TextUtils.isEmpty(this.f8770n)) {
            return null;
        }
        return this.f8770n;
    }

    public String g() {
        if (TextUtils.isEmpty(this.f8771o)) {
            return null;
        }
        return this.f8771o;
    }

    public void h() {
        try {
            ((Application) this.f8769j.getApplicationContext()).registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.beizi.ad.internal.c.2
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("count:");
                    sb2.append(c.this.G);
                    sb2.append(";onActivityDestroyed");
                    sb2.append(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                    try {
                        if (c.this.H == null || c.this.H.size() <= 0) {
                            return;
                        }
                        Iterator it2 = c.this.H.iterator();
                        while (it2.hasNext()) {
                            a aVar = (a) it2.next();
                            if (aVar != null) {
                                aVar.b();
                            }
                            it2.remove();
                        }
                        c.this.H.clear();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                    c.a(c.this);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                    try {
                        c.c(c.this);
                        if (c.this.G < 0) {
                            c.this.G = 0;
                        }
                        if (c.this.G != 0 || c.this.H == null || c.this.H.size() <= 0) {
                            return;
                        }
                        Iterator it2 = c.this.H.iterator();
                        while (it2.hasNext()) {
                            a aVar = (a) it2.next();
                            if (aVar != null) {
                                aVar.a();
                            }
                            it2.remove();
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public List<String> i() {
        return this.f8765c;
    }

    public int j() {
        return this.f8778v;
    }

    public boolean k() {
        if (this.f8780x) {
            return this.f8779w;
        }
        this.f8780x = true;
        boolean zA = r.a();
        this.f8779w = zA;
        return zA;
    }

    public List<String> l() {
        return this.I;
    }

    public String m() {
        return TextUtils.isEmpty(this.J) ? "0" : this.J;
    }

    public String b() {
        return f8757g;
    }

    public Context c() {
        return this.f8769j;
    }

    public String d() {
        String strB = com.beizi.ad.lance.a.b.b("aHR0cDovL2FwaS5odHAuYWQtc2NvcGUuY29tLmNuOjQ1NjAw");
        if (TextUtils.isEmpty(strB)) {
            return "";
        }
        return this.f8763a ? strB.replace("http:", "https:") : strB;
    }

    public static c a() {
        c cVar;
        synchronized (c.class) {
            if (f8761l == null) {
                f8761l = new c();
            }
            cVar = f8761l;
        }
        return cVar;
    }

    public void b(String str) {
        this.f8770n = str;
    }

    public void c(String str) {
        this.f8771o = str;
    }

    public String d(String str) {
        com.beizi.ad.model.b bVar = new com.beizi.ad.model.b();
        bVar.a(str);
        bVar.b(n.a());
        bVar.a(false);
        return new com.beizi.ad.v2.e.b().a(bVar);
    }

    public void a(Context context, String str) {
        synchronized (c.class) {
            try {
                if (context != null) {
                    this.f8769j = context.getApplicationContext();
                    try {
                        f8757g = str;
                        com.beizi.ad.internal.a.a.a().b();
                        h();
                        o();
                    } catch (Throwable unused) {
                    }
                    this.B = context.getResources().getDisplayMetrics();
                    this.D = true;
                    if (Build.VERSION.SDK_INT >= 28) {
                        n();
                    }
                } else {
                    throw new IllegalArgumentException("Context cannot be null.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(String str) {
        this.f8764b = str;
    }

    public void a(a aVar) {
        this.H.add(aVar);
    }

    public void a(List<String> list) {
        this.f8765c = list;
    }

    public void a(Context context) {
        this.f8769j = context;
    }

    public void a(final com.beizi.ad.model.d dVar) {
        if (dVar == null) {
            return;
        }
        try {
            String strB = dVar.b();
            if (TextUtils.isEmpty(strB) || strB.equals(this.J)) {
                return;
            }
            this.I = dVar.a();
            this.J = strB;
            com.beizi.ad.lance.a.c.b().f().execute(new Runnable() { // from class: com.beizi.ad.internal.c.3
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    try {
                        if (TextUtils.isEmpty(com.beizi.ad.lance.a.b.a(dVar.toString()))) {
                            return;
                        }
                        t.a(c.this.f8769j, "blackList", com.beizi.ad.lance.a.b.a(dVar.toString()));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private ArrayList<String> a(JSONArray jSONArray) {
        try {
            ArrayList<String> arrayList = new ArrayList<>();
            if (jSONArray != null && jSONArray.length() > 0) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    arrayList.add(jSONArray.getString(i10));
                }
            }
            return arrayList;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
