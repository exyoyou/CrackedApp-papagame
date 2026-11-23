package com.netease.nis.quicklogin.utils;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.kuaishou.weapon.p0.t;
import com.netease.nis.basesdk.HttpUtil;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.QuickLogin;
import com.umeng.analytics.pro.bm;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static volatile g f76148b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f76149a = new b();

    class a implements HttpUtil.ResponseCallBack {
        a(g gVar) {
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i10, String str) {
            Logger.d("上报异常失败, error code:" + i10 + " msg:" + str);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            Logger.d("上报异常成功");
        }
    }

    public static class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f76151b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f76152c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f76154e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f76155f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        String f76156g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        String f76157h;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f76150a = "quickpass";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f76153d = "Android";

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        String f76158i = "v1";

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        a f76159j = new a();

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            String f76160a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            String f76161b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            String f76162c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            int f76163d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            String f76164e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            String f76165f;
        }
    }

    private g() {
    }

    private void b() {
        b bVar = this.f76149a;
        bVar.f76154e = QuickLogin.SDK_VERSION;
        bVar.f76152c = String.valueOf(System.currentTimeMillis());
        b bVar2 = this.f76149a;
        bVar2.f76156g = Build.MODEL;
        bVar2.f76157h = Build.VERSION.RELEASE;
    }

    public static g c() {
        if (f76148b == null) {
            synchronized (g.class) {
                if (f76148b == null) {
                    f76148b = new g();
                }
            }
        }
        return f76148b;
    }

    public void a(String str) {
        this.f76149a.f76151b = str;
    }

    public void d() {
        if (QuickLogin.isAllowedUploadInfo) {
            try {
                HttpUtil.doGetRequestByForm("https://da.dun.163.com/sn.gif?d=" + URLEncoder.encode(a(), "utf-8"), new a(this));
            } catch (Exception e10) {
                Logger.e(e10.getMessage());
            }
        }
    }

    public void a(int i10, String str) {
        b();
        b bVar = this.f76149a;
        bVar.f76155f = "userErr";
        b.a aVar = bVar.f76159j;
        aVar.f76163d = i10;
        aVar.f76162c = str;
        aVar.f76160a = "";
        aVar.f76161b = "";
        aVar.f76164e = "";
        aVar.f76165f = "";
    }

    public void a(String str, String str2, String str3, int i10, String str4, String str5, String str6) {
        b();
        b bVar = this.f76149a;
        bVar.f76155f = str;
        b.a aVar = bVar.f76159j;
        aVar.f76160a = str2;
        aVar.f76161b = str3;
        aVar.f76163d = i10;
        aVar.f76162c = str4;
        aVar.f76164e = str5;
        aVar.f76165f = str6;
    }

    private String a() throws JSONException, UnsupportedEncodingException {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("pid=");
        sb2.append(this.f76149a.f76150a);
        sb2.append("&bid=");
        sb2.append(this.f76149a.f76151b);
        sb2.append("&nts=");
        sb2.append(this.f76149a.f76152c);
        sb2.append("&tt=");
        sb2.append(this.f76149a.f76153d);
        sb2.append("&os=");
        sb2.append(this.f76149a.f76157h);
        sb2.append("&model=");
        sb2.append(this.f76149a.f76156g);
        sb2.append("&version=");
        sb2.append(this.f76149a.f76154e);
        sb2.append("&dataVersion=");
        sb2.append(this.f76149a.f76158i);
        sb2.append("&type=");
        sb2.append(this.f76149a.f76155f);
        sb2.append("&name=");
        sb2.append("");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errType", this.f76149a.f76159j.f76160a);
        jSONObject.put(TypedValues.AttributesType.S_TARGET, this.f76149a.f76159j.f76161b);
        jSONObject.put("msg", this.f76149a.f76159j.f76162c);
        jSONObject.put("status", this.f76149a.f76159j.f76163d);
        jSONObject.put("params", this.f76149a.f76159j.f76164e);
        jSONObject.put(GrantCredentialsPermissionActivity.f89267i, this.f76149a.f76159j.f76165f);
        jSONObject.put(t.f74888m, this.f76149a.f76156g);
        jSONObject.put(bm.f84421x, this.f76149a.f76157h);
        sb2.append("&value=");
        sb2.append(URLEncoder.encode(jSONObject.toString(), "utf-8"));
        return sb2.toString();
    }
}
