package com.byazt.ouz;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.ete.ic;
import com.byazt.ete.v;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 110})
public class qy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<com.byazt.xj.ve<View>> f18477a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public double f18478c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public NativeExpressView f18479i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f18480n;
    public boolean sp = true;
    public int tt;
    public int uj;
    public List<com.byazt.ete.m> ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f18481x;

    public qy(ic icVar, JSONObject jSONObject, NativeExpressView nativeExpressView) {
        com.byazt.ete.m mVarC;
        this.uj = -1;
        this.f18481x = -1;
        this.f18479i = nativeExpressView;
        this.f18481x = nb.c(icVar);
        if (jSONObject != null) {
            this.f18478c = jSONObject.optDouble("slide_threshold", 0.0d);
            this.tt = jSONObject.optInt(HmInputMappingContent.FIELD_DIRECTION, 30);
            this.uj = jSONObject.optInt("type", -1);
            this.f18480n = jSONObject.optString("rgb_color");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("rects");
            if (jSONArrayOptJSONArray != null) {
                this.ve = new ArrayList();
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
                    if (jSONObjectOptJSONObject != null && (mVarC = com.byazt.ete.m.c(jSONObjectOptJSONObject)) != null) {
                        this.ve.add(mVarC);
                    }
                }
            }
        }
        List<com.byazt.ete.m> list = this.ve;
        com.byazt.nr.m.c("xdy", "priority:" + this.f18481x + " dirction:" + this.tt + " type:" + this.uj + " hold:" + this.f18478c + " size:" + (list != null ? list.size() : 0));
    }

    public void c(NativeExpressView nativeExpressView) {
        if (this.ve != null) {
            Context context = nativeExpressView.getContext();
            for (com.byazt.ete.m mVar : this.ve) {
                View siteGestureView = new SiteGestureView(context, new v(this.uj, this.f18478c, this.tt, this.f18481x), this);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(pf.ve(context, (float) mVar.ve), pf.ve(context, (float) mVar.uj));
                layoutParams.leftMargin = pf.ve(context, (float) mVar.f13805c);
                layoutParams.topMargin = pf.ve(context, (float) mVar.tt);
                try {
                    if (!TextUtils.isEmpty(this.f18480n) && com.byazt.nr.m.ve()) {
                        siteGestureView.setBackgroundColor(Color.parseColor(this.f18480n));
                    }
                } catch (Exception e10) {
                    com.byazt.nr.m.c(e10);
                }
                nativeExpressView.addView(siteGestureView, layoutParams);
                com.byazt.nr.m.c("xdy", "(" + mVar.f13805c + "," + mVar.tt + "," + mVar.ve + "," + mVar.uj + ")");
            }
        }
    }

    public void tt() {
        this.f18479i.gt();
    }

    public void uj() {
        this.sp = false;
    }

    public boolean ve() {
        return this.sp;
    }

    public boolean c() {
        View viewI;
        List<com.byazt.xj.ve<View>> list = this.f18477a;
        if (list == null || list.size() == 0) {
            return false;
        }
        for (com.byazt.xj.ve<View> veVar : this.f18477a) {
            if (veVar != null && (viewI = veVar.i()) != null && viewI.getVisibility() == 0) {
                return true;
            }
        }
        return false;
    }

    public void c(List<com.byazt.xj.ve<View>> list) {
        this.f18477a = list;
    }

    public void c(MotionEvent motionEvent) {
        this.f18479i.c(motionEvent);
    }

    public void c(View view, int i10, com.byazt.sr.ve veVar, v vVar) {
        NativeExpressView nativeExpressView = this.f18479i;
        if (nativeExpressView != null) {
            nativeExpressView.c(view, i10, veVar, vVar);
        }
    }
}
