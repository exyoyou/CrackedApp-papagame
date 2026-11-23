package cn.sharesdk.tencent.qzone.utils;

import android.content.Intent;
import android.os.Bundle;
import cn.sharesdk.framework.authorize.SSOAuthorizeActivity;
import cn.sharesdk.framework.authorize.SSOListener;
import com.mob.MobSDK;
import com.mob.tools.utils.DH;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class c extends cn.sharesdk.framework.authorize.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2941d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2942e;

    public c(SSOAuthorizeActivity sSOAuthorizeActivity) {
        super(sSOAuthorizeActivity);
    }

    public void a(String str, String str2) {
        this.f2941d = str;
        this.f2942e = str2;
    }

    @Override // cn.sharesdk.framework.authorize.c
    public void a() {
        final Intent intent = new Intent();
        intent.setClassName("com.tencent.mobileqq", "com.tencent.open.agent.AgentActivity");
        DH.requester(MobSDK.getContext()).getPInfoForce(true, "com.tencent.mobileqq", 0).resolveActivity(intent, 0).request(new DH.DHResponder() { // from class: cn.sharesdk.tencent.qzone.utils.c.1
            @Override // com.mob.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                try {
                    if (dHResponse.getPInfoForce(new int[0]) == null) {
                        ((cn.sharesdk.framework.authorize.c) c.this).f2616a.finish();
                        if (((cn.sharesdk.framework.authorize.c) c.this).f2618c != null) {
                            ((cn.sharesdk.framework.authorize.c) c.this).f2618c.onFailed(new TencentSSOClientNotInstalledException());
                            return;
                        }
                        return;
                    }
                    if (dHResponse.resolveActivity(new int[0]) == null) {
                        ((cn.sharesdk.framework.authorize.c) c.this).f2616a.finish();
                        if (((cn.sharesdk.framework.authorize.c) c.this).f2618c != null) {
                            ((cn.sharesdk.framework.authorize.c) c.this).f2618c.onFailed(new TencentSSOClientNotInstalledException());
                            return;
                        }
                        return;
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("scope", c.this.f2942e);
                    bundle.putString("client_id", c.this.f2941d);
                    bundle.putString("pf", "openmobile_android");
                    bundle.putString("need_pay", "1");
                    intent.putExtra("key_params", bundle);
                    intent.putExtra("key_request_code", ((cn.sharesdk.framework.authorize.c) c.this).f2617b);
                    intent.putExtra("key_action", "action_login");
                    try {
                        ((cn.sharesdk.framework.authorize.c) c.this).f2616a.startActivityForResult(intent, ((cn.sharesdk.framework.authorize.c) c.this).f2617b);
                    } catch (Throwable th) {
                        ((cn.sharesdk.framework.authorize.c) c.this).f2616a.finish();
                        if (((cn.sharesdk.framework.authorize.c) c.this).f2618c != null) {
                            ((cn.sharesdk.framework.authorize.c) c.this).f2618c.onFailed(th);
                        }
                    }
                } catch (Throwable th2) {
                    ((cn.sharesdk.framework.authorize.c) c.this).f2616a.finish();
                    if (((cn.sharesdk.framework.authorize.c) c.this).f2618c != null) {
                        ((cn.sharesdk.framework.authorize.c) c.this).f2618c.onFailed(th2);
                    }
                }
            }
        });
    }

    @Override // cn.sharesdk.framework.authorize.c
    public void a(int i10, int i11, Intent intent) {
        this.f2616a.finish();
        if (i11 == 0) {
            SSOListener sSOListener = this.f2618c;
            if (sSOListener != null) {
                sSOListener.onCancel();
                return;
            }
            return;
        }
        if (intent == null) {
            SSOListener sSOListener2 = this.f2618c;
            if (sSOListener2 != null) {
                sSOListener2.onFailed(new Throwable("response is empty"));
                return;
            }
            return;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            SSOListener sSOListener3 = this.f2618c;
            if (sSOListener3 != null) {
                sSOListener3.onFailed(new Throwable("response is empty"));
                return;
            }
            return;
        }
        if (!extras.containsKey("key_response")) {
            SSOListener sSOListener4 = this.f2618c;
            if (sSOListener4 != null) {
                sSOListener4.onFailed(new Throwable("response is empty"));
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
                SSOListener sSOListener5 = this.f2618c;
                if (sSOListener5 != null) {
                    sSOListener5.onComplete(bundle);
                    return;
                }
                return;
            } catch (Throwable th) {
                SSOListener sSOListener6 = this.f2618c;
                if (sSOListener6 != null) {
                    sSOListener6.onFailed(th);
                    return;
                }
                return;
            }
        }
        SSOListener sSOListener7 = this.f2618c;
        if (sSOListener7 != null) {
            sSOListener7.onFailed(new Throwable("response is empty"));
        }
    }
}
