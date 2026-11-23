package cn.sharesdk.tencent.qq;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.authorize.SSOAuthorizeActivity;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.authorize.c;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.tencent.qq.utils.DownLoadWebPage;
import com.mob.MobSDK;
import com.mob.tools.utils.DH;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class b extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2866d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2867e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f2868f;

    public b(SSOAuthorizeActivity sSOAuthorizeActivity) {
        super(sSOAuthorizeActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        DownLoadWebPage downLoadWebPage = new DownLoadWebPage();
        downLoadWebPage.setListener(this.f2618c);
        downLoadWebPage.show(this.f2616a.getContext(), null);
    }

    public void a(String str, String str2, String str3) {
        this.f2866d = str;
        this.f2867e = str2;
        this.f2868f = str3;
    }

    @Override // cn.sharesdk.framework.authorize.c
    public void a() {
        if (!TextUtils.isEmpty(this.f2868f) && !this.f2868f.equals("com.tencent.qqlite")) {
            final Intent intent = new Intent();
            intent.setClassName(this.f2868f, "com.tencent.open.agent.AgentActivity");
            try {
                DH.requester(MobSDK.getContext()).resolveActivity(intent, 0).request(new DH.DHResponder() { // from class: cn.sharesdk.tencent.qq.b.1
                    @Override // com.mob.tools.utils.DH.DHResponder
                    public void onResponse(DH.DHResponse dHResponse) {
                        if (dHResponse.resolveActivity(new int[0]) == null) {
                            ((c) b.this).f2616a.finish();
                            if (((c) b.this).f2618c != null) {
                                b.this.b();
                                return;
                            }
                            return;
                        }
                        Bundle bundle = new Bundle();
                        bundle.putString("scope", b.this.f2867e);
                        bundle.putString("client_id", b.this.f2866d);
                        bundle.putString("pf", "openmobile_android");
                        bundle.putString("need_pay", "1");
                        intent.putExtra("key_params", bundle);
                        intent.putExtra("key_request_code", ((c) b.this).f2617b);
                        intent.putExtra("key_action", "action_login");
                        try {
                            ((c) b.this).f2616a.startActivityForResult(intent, ((c) b.this).f2617b);
                        } catch (Throwable th) {
                            ((c) b.this).f2616a.finish();
                            if (((c) b.this).f2618c != null) {
                                ((c) b.this).f2618c.onFailed(th);
                            }
                        }
                    }
                });
                return;
            } catch (Throwable th) {
                SSDKLog.b().a("qzone auth" + th, new Object[0]);
                return;
            }
        }
        b();
        this.f2616a.finish();
    }

    @Override // cn.sharesdk.framework.authorize.c
    public void a(int i10, int i11, Intent intent) {
        SSOListener sSOListener;
        this.f2616a.finish();
        if (i11 == 0 && intent == null) {
            SSOListener sSOListener2 = this.f2618c;
            if (sSOListener2 != null) {
                sSOListener2.onCancel();
                return;
            }
            return;
        }
        if (intent == null) {
            SSOListener sSOListener3 = this.f2618c;
            if (sSOListener3 != null) {
                sSOListener3.onFailed(new Throwable("response is empty"));
                return;
            }
            return;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            SSOListener sSOListener4 = this.f2618c;
            if (sSOListener4 != null) {
                sSOListener4.onFailed(new Throwable("response is empty"));
                return;
            }
            return;
        }
        if (!extras.containsKey("key_response")) {
            SSOListener sSOListener5 = this.f2618c;
            if (sSOListener5 != null) {
                sSOListener5.onFailed(new Throwable("response is empty"));
                return;
            }
            return;
        }
        String string = extras.getString("key_response");
        if (string != null && string.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject(string);
                Bundle bundle = new Bundle();
                bundle.putInt("ret", jSONObject.optInt("ret"));
                bundle.putString("pay_token", jSONObject.optString("pay_token"));
                bundle.putString("pf", jSONObject.optString("pf"));
                bundle.putString("open_id", jSONObject.optString("openid"));
                bundle.putString("expires_in", jSONObject.optString("expires_in"));
                bundle.putString("pfkey", jSONObject.optString("pfkey"));
                bundle.putString("msg", jSONObject.optString("msg"));
                bundle.putString("access_token", jSONObject.optString("access_token"));
                String strOptString = jSONObject.optString("msg");
                if (!TextUtils.isEmpty(strOptString) && (sSOListener = this.f2618c) != null) {
                    sSOListener.onFailed(new Throwable(strOptString));
                    return;
                }
                SSOListener sSOListener6 = this.f2618c;
                if (sSOListener6 != null) {
                    sSOListener6.onComplete(bundle);
                    this.f2618c = null;
                    return;
                }
                return;
            } catch (Throwable th) {
                SSOListener sSOListener7 = this.f2618c;
                if (sSOListener7 != null) {
                    sSOListener7.onFailed(th);
                    return;
                }
                return;
            }
        }
        SSOListener sSOListener8 = this.f2618c;
        if (sSOListener8 != null) {
            sSOListener8.onFailed(new Throwable("response is empty"));
        }
    }
}
