package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.baidu.mobads.sdk.api.IPromoteInstallAdInfo;
import com.baidu.mobads.sdk.api.PromoteInstallManager;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class aq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f7458a = z.f8072n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f7459b = "__sdk_remote_dl_no_install";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f7460c = 3600000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f7461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SharedPreferences f7462e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SharedPreferences.Editor f7463f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private au f7464g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private PromoteInstallManager.PromoteInstallListener f7465h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f7466i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f7467j;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final aq f7468a = new aq(null);

        private a() {
        }
    }

    /* synthetic */ aq(ar arVar) {
        this();
    }

    public static aq a(Context context, PromoteInstallManager.PromoteInstallListener promoteInstallListener) {
        a.f7468a.b(context, promoteInstallListener);
        return a.f7468a;
    }

    private void b(Context context, PromoteInstallManager.PromoteInstallListener promoteInstallListener) {
        this.f7461d = context;
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f7459b, 0);
        this.f7462e = sharedPreferences;
        this.f7463f = sharedPreferences.edit();
        this.f7464g = au.a(context, f7458a);
        this.f7465h = promoteInstallListener;
    }

    public int c() {
        Object objB = this.f7464g.b(null, "getInstallPopType", new Object[0]);
        if (objB instanceof Integer) {
            return ((Integer) objB).intValue();
        }
        return 0;
    }

    private aq() {
        this.f7466i = 0;
        this.f7467j = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean a() {
        try {
            Map<String, ?> all = this.f7462e.getAll();
            List<String> listA = a((Map<String, Long>) all);
            if (listA == null) {
                return false;
            }
            for (int i10 = 0; i10 < listA.size(); i10++) {
                String str = listA.get(i10);
                Object objB = this.f7464g.b(null, "getAdDownLoadInfo", this.f7461d, str);
                if ((objB instanceof JSONObject) && ((JSONObject) objB).length() > 0) {
                    Long l10 = (Long) all.get(str);
                    if (a((JSONObject) objB) && System.currentTimeMillis() - l10.longValue() < 3600000 && !bw.a(this.f7461d, str)) {
                        return true;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public boolean b() {
        Object objB = this.f7464g.b(null, "isInstallPopSwitch", new Object[0]);
        if (objB instanceof Boolean) {
            return ((Boolean) objB).booleanValue();
        }
        return false;
    }

    private List<String> a(Map<String, Long> map) {
        if (map != null && map.size() > 0) {
            ArrayList arrayList = new ArrayList(map.entrySet());
            Collections.sort(arrayList, new ar(this));
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList2.add((String) ((Map.Entry) it2.next()).getKey());
            }
            if (map.get(arrayList2.get(0)).longValue() > this.f7467j || this.f7466i < 3) {
                return arrayList2;
            }
            PromoteInstallManager.PromoteInstallListener promoteInstallListener = this.f7465h;
            if (promoteInstallListener != null) {
                promoteInstallListener.onFail("暂无可用物料，请稍后再试");
            }
            return null;
        }
        PromoteInstallManager.PromoteInstallListener promoteInstallListener2 = this.f7465h;
        if (promoteInstallListener2 != null) {
            promoteInstallListener2.onFail("暂无可用物料，请稍后再试");
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public IPromoteInstallAdInfo a(boolean z10) {
        String string;
        ap apVar = null;
        try {
            Map<String, ?> all = this.f7462e.getAll();
            List<String> listA = a((Map<String, Long>) all);
            if (listA == null) {
                return null;
            }
            for (int i10 = 0; i10 < listA.size(); i10++) {
                String str = listA.get(i10);
                Object objB = this.f7464g.b(null, "getAdDownLoadInfo", this.f7461d, str);
                if ((objB instanceof JSONObject) && ((JSONObject) objB).length() > 0) {
                    JSONObject jSONObject = (JSONObject) objB;
                    Long l10 = (Long) all.get(str);
                    if (a(jSONObject) && System.currentTimeMillis() - l10.longValue() < 3600000 && !bw.a(this.f7461d, str)) {
                        ap apVar2 = new ap(jSONObject, this.f7461d, this);
                        try {
                            if (z10) {
                                try {
                                    JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
                                    jSONObject2.put("install_ts", l10);
                                    string = jSONObject2.toString();
                                } catch (JSONException e10) {
                                    e10.printStackTrace();
                                    string = null;
                                }
                                this.f7464g.b(null, "startInstallDialogActivity", this.f7461d, string);
                            }
                            int i11 = this.f7466i + 1;
                            this.f7466i = i11;
                            if (i11 <= 3) {
                                this.f7467j = l10.longValue();
                            }
                            this.f7463f.remove(str);
                            this.f7463f.commit();
                            PromoteInstallManager.PromoteInstallListener promoteInstallListener = this.f7465h;
                            if (promoteInstallListener != null) {
                                promoteInstallListener.onSuccess();
                            }
                            return apVar2;
                        } catch (Throwable unused) {
                            apVar = apVar2;
                            break;
                        }
                    }
                    this.f7463f.remove(str);
                    this.f7463f.commit();
                } else {
                    this.f7463f.remove(str);
                    this.f7463f.commit();
                }
            }
        } catch (Throwable unused2) {
        }
        PromoteInstallManager.PromoteInstallListener promoteInstallListener2 = this.f7465h;
        if (promoteInstallListener2 != null) {
            promoteInstallListener2.onFail("暂无可用物料，请稍后再试");
        }
        return apVar;
    }

    private boolean a(JSONObject jSONObject) {
        File file = new File(jSONObject.optString("folder") + jSONObject.optString(com.sigmob.sdk.downloader.core.breakpoint.f.f80402e));
        return file.exists() && file.length() > 0;
    }

    public void a(Context context, String str) {
        this.f7464g.b(null, "handleAdInstall", context, str);
    }
}
