package com.byazt.lr;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import com.byazt.gq.t;
import com.byazt.hu.u;
import com.byazt.nr.m;
import com.byazt.ou.my;
import com.byazt.quv.AbsServerManager;
import com.byazt.su.DownloadModel;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 155, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SoftReference<Activity> f16760c;

    @com.byazt.zqa.c(c = {0, 1, 155, 194})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static tt f16764c = new tt();
    }

    public void tt(long j10) {
        com.byazt.gq.n nVarC = com.byazt.di.x.c().c(com.byazt.nn.a.c().n(j10).tt.getDownloadUrl());
        if (nVarC != null) {
            nVarC.c(true, true);
        } else {
            sp.c(11, j10);
            com.byazt.dm.ve.c().tt("startDownload handler null");
        }
    }

    private tt() {
    }

    public static tt c() {
        return c.f16764c;
    }

    public void c(long j10) {
        TTDelegateActivity.c(j10);
    }

    public boolean c(DownloadModel downloadModel) {
        if (!downloadModel.isAd() || t.i().optInt("ad_lp_show_app_dialog") == 0) {
            return false;
        }
        String webUrl = downloadModel.getDeepLink() == null ? null : downloadModel.getDeepLink().getWebUrl();
        return (TextUtils.isEmpty(webUrl) || Pattern.compile(t.i().optString("ad_allow_web_url_regex", ".+(www.chengzijianzhan.com|www.toutiaopage.com/tetris/page|ad.toutiao.com/tetris/page).+")).matcher(webUrl).matches()) ? false : true;
    }

    public boolean c(@NonNull com.byazt.nn.n nVar) {
        long jC;
        long j10;
        if (!TextUtils.isEmpty(nVar.tt.getLogExtra())) {
            try {
                jC = u.c(new JSONObject(nVar.tt.getLogExtra()), "convert_id");
            } catch (Exception e10) {
                m.c(e10);
                jC = 0;
            }
            if (jC <= 0) {
                sp.c(3, nVar);
            }
            j10 = jC;
        } else {
            sp.c(9, nVar);
            com.byazt.dm.ve.c().c("requestAppInfo getLogExtra null");
            j10 = 0;
        }
        final long j11 = nVar.f17521c;
        com.byazt.nn.tt ttVarC = ve.c().c(j10, j11);
        if (ttVarC != null) {
            uj.c().c(ttVarC.c(), j11, ttVarC.uj);
            c(ttVarC.c());
            sp.c("lp_app_dialog_try_show", nVar);
            return true;
        }
        StringBuilder sb2 = new StringBuilder();
        if (j10 > 0) {
            sb2.append("convert_id=");
            sb2.append(j10);
        }
        if (!TextUtils.isEmpty(nVar.tt.getPackageName())) {
            if (sb2.length() > 0) {
                sb2.append(x.a.f97576d);
            }
            sb2.append("package_name=");
            sb2.append(nVar.tt.getPackageName());
        }
        if (sb2.length() <= 0) {
            sp.c(6, nVar);
            return false;
        }
        final long j12 = j10;
        com.byazt.hu.ve.c((com.byazt.hu.ve.c<String, R>) new com.byazt.hu.ve.c<String, Boolean>() { // from class: com.byazt.lr.tt.2
            @Override // com.byazt.hu.ve.c
            public Boolean c(String str) {
                final boolean[] zArr = {false};
                t.uj().c("GET", str, new HashMap(), new my() { // from class: com.byazt.lr.tt.2.1
                    @Override // com.byazt.ou.my
                    public void c(String str2) {
                        boolean[] zArr2 = zArr;
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        zArr2[0] = tt.this.c(j12, j11, str2);
                    }

                    @Override // com.byazt.ou.my
                    public void c(Throwable th) {
                        sp.c(2, j11);
                        zArr[0] = false;
                    }
                });
                return Boolean.valueOf(zArr[0]);
            }
        }, "https://apps.oceanengine.com/customer/api/app/pkg_info?" + sb2.toString()).c(new com.byazt.hu.ve.c<Boolean, Object>() { // from class: com.byazt.lr.tt.1
            @Override // com.byazt.hu.ve.c
            public Object c(Boolean bool) {
                if (!bool.booleanValue()) {
                    tt.this.tt(j11);
                    return null;
                }
                tt.this.c(com.byazt.nn.tt.c(j12, j11));
                sp.tt("lp_app_dialog_try_show", j11);
                return null;
            }
        }).c();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(long j10, long j11, String str) {
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject(AbsServerManager.PACKAGE_QUERY_BINDER);
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() != 0) {
                com.byazt.nn.tt ttVar = new com.byazt.nn.tt();
                ttVar.f17525c = j10;
                ttVar.tt = j11;
                ttVar.uj = jSONObjectOptJSONObject.optString("icon_url");
                ttVar.f17527n = jSONObjectOptJSONObject.optString("app_name");
                ttVar.ve = jSONObjectOptJSONObject.optString("package_name");
                ttVar.f17524a = jSONObjectOptJSONObject.optString(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME);
                ttVar.sp = jSONObjectOptJSONObject.optString("developer_name");
                ttVar.f17526i = jSONObjectOptJSONObject.optString("policy_url");
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("permissions");
                if (jSONArrayOptJSONArray != null) {
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                        JSONObject jSONObject = (JSONObject) jSONArrayOptJSONArray.get(i10);
                        ttVar.f17528x.add(new Pair<>(jSONObject.optString("permission_name"), jSONObject.optString("permission_desc")));
                    }
                }
                ve.c().c(ttVar);
                uj.c().c(ttVar.c(), j11, ttVar.uj);
                return true;
            }
            sp.c(7, j11);
            return false;
        } catch (Exception e10) {
            com.byazt.dm.ve.c().c(e10, "AdLpComplianceManager parseResponse");
            sp.c(7, j11);
            return false;
        }
    }

    public void c(Activity activity) {
        this.f16760c = new SoftReference<>(activity);
    }
}
