package com.byazt.sgn;

import android.app.Activity;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.byazt.omf.gt;
import com.xinzhu.overmind.client.hook.proxies.context.providers.b;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 211, 67})
public class u extends ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.xs.x f19721a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public JSONObject f19722n;
    public volatile boolean sp;
    public com.byazt.ux.sp uj;
    public Window ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f19723x;

    public u(Activity activity, JSONObject jSONObject, com.byazt.ux.sp spVar) {
        super(activity);
        this.ve = activity == null ? null : activity.getWindow();
        this.f19722n = jSONObject;
        this.uj = spVar;
        this.f19721a = new com.byazt.xs.x(activity);
    }

    private void a() {
        JSONObject jSONObject = this.f19722n;
        if (jSONObject == null || this.uj == null) {
            return;
        }
        JSONObject jSONObjectC = com.byazt.xs.da.c(jSONObject.remove("ugen_url").toString(), this.f19722n.remove("ugen_md5").toString(), (com.byazt.xs.ve) null);
        if (jSONObjectC == null) {
            this.uj.c(11, "uegnTemplate is empty");
            this.sp = true;
        } else {
            final FrameLayout frameLayout = new FrameLayout(this.f19731c);
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.f19721a.c(jSONObjectC, this.f19722n, new com.byazt.ux.sp() { // from class: com.byazt.sgn.u.1
                @Override // com.byazt.ux.sp
                public void c(int i10, String str) {
                    u.this.sp = true;
                    if (u.this.uj != null) {
                        FrameLayout frameLayout2 = frameLayout;
                        if (frameLayout2 != null) {
                            frameLayout2.removeAllViews();
                        }
                        u.this.uj.c(i10, str);
                    }
                }

                @Override // com.byazt.ux.sp
                public void c(com.byazt.xj.ve<View> veVar) {
                    u.this.sp = false;
                    if (u.this.uj != null) {
                        u.this.uj.c(null);
                    }
                    frameLayout.addView(veVar.i(), new FrameLayout.LayoutParams(veVar.or(), veVar.cu()));
                    u.this.setContentView(frameLayout);
                }
            });
        }
    }

    private void n() {
        if (this.ve != null) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(-1);
            this.ve.setBackgroundDrawable(gradientDrawable);
            WindowManager.LayoutParams attributes = this.ve.getAttributes();
            attributes.alpha = 1.0f;
            this.ve.setAttributes(attributes);
        }
    }

    private void sp() {
        JSONObject jSONObject = this.f19722n;
        if (jSONObject == null) {
            return;
        }
        c(jSONObject.optString("app_name"));
        n(this.f19722n.optString("app_version"));
        a(this.f19722n.optString("reg_number"));
        sp(this.f19722n.optString("reg_url"));
        tt(this.f19722n.optString("icon_url"));
        x(this.f19722n.optString("developer_name"));
        c(this.f19722n.optInt("score"));
        c(this.f19722n.optJSONArray("creative_tags"));
        uj(this.f19722n.optString(b.f89370k));
    }

    @Override // com.byazt.sgn.ve, android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.byazt.sgn.ve, android.app.Dialog
    public void show() {
        super.show();
        if (this.sp) {
            hide();
            dismiss();
        }
    }

    @Override // com.byazt.sgn.ve
    public void tt() {
    }

    @Override // com.byazt.sgn.ve
    public void ve() {
        if (this.f19723x) {
            super.ve();
        }
    }

    public void tt(ve.c cVar) {
        super.c(cVar);
        com.byazt.xs.x xVar = this.f19721a;
        if (xVar != null) {
            xVar.c(cVar);
        }
    }

    @Override // com.byazt.sgn.ve
    public void c() {
        if (this.f19731c == null) {
            this.f19731c = gt.getContext();
        }
        if (this.f19731c.getResources().getConfiguration().orientation != 1) {
            this.f19723x = true;
            super.c();
            super.tt();
            sp();
            return;
        }
        n();
        a();
    }
}
