package com.sigmob.sdk.mraid;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.SensorEntity;
import com.sigmob.sdk.base.views.ag;
import com.sigmob.sdk.base.views.ai;
import com.sigmob.sdk.base.views.ap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class l extends o {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f81035e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.sigmob.sdk.base.views.r f81036f;

    /* JADX WARN: Code duplicated, block: B:18:0x003b  */
    /* JADX WARN: Code duplicated, block: B:21:0x0048  */
    /* JADX WARN: Code duplicated, block: B:23:? A[RETURN, SYNTHETIC] */
    public l(Context context, String uniqueId, int type, BaseAdUnit adUnit) {
        com.sigmob.sdk.base.views.r yVar;
        super(uniqueId);
        this.f81035e = l.class.getSimpleName();
        if (type == 0) {
            yVar = new com.sigmob.sdk.base.views.y(context);
        } else if (type == 1) {
            yVar = new ap(context);
        } else {
            if (type != 2) {
                if (type == 3) {
                    yVar = new ai(context);
                }
                a(context, type);
                if (com.sigmob.sdk.base.utils.w.b(this.f81036f)) {
                    this.f81036f.a();
                }
                if (com.sigmob.sdk.base.utils.w.b(this.f81048c)) {
                    this.f81048c.a(SensorEntity.format(adUnit));
                }
            }
            yVar = new ag(context);
        }
        this.f81036f = yVar;
        a(context, type);
        if (com.sigmob.sdk.base.utils.w.b(this.f81036f)) {
            this.f81036f.a();
        }
        if (com.sigmob.sdk.base.utils.w.b(this.f81048c)) {
            this.f81048c.a(SensorEntity.format(adUnit));
        }
    }

    @Override // com.sigmob.sdk.mraid.n
    public View a() {
        return this.f81036f;
    }

    @Override // com.sigmob.sdk.mraid.n
    public void b() {
        if (com.sigmob.sdk.base.utils.w.b(this.f81036f)) {
            com.sigmob.sdk.base.utils.x.a(this.f81036f);
            this.f81036f = null;
        }
        if (com.sigmob.sdk.base.utils.w.b(this.f81048c)) {
            this.f81048c.c();
        }
    }

    @Override // com.sigmob.sdk.mraid.o
    public void a(float progress) {
        com.sigmob.sdk.base.views.r rVar = this.f81036f;
        if (rVar != null && (rVar instanceof ai)) {
            ((ai) rVar).a(progress);
            SigmobLogger.d(this.f81035e, "onMotionViewUpdateProcess: progress = " + progress, new Object[0]);
        }
    }

    @Override // com.sigmob.sdk.mraid.o
    public void b(float progress) {
        com.sigmob.sdk.base.views.r rVar = this.f81036f;
        if (rVar != null && (rVar instanceof ag)) {
            ((ag) rVar).a(progress);
            SigmobLogger.d(this.f81035e, "onMotionViewUpdateScreen: progress = " + progress, new Object[0]);
        }
    }

    public void a(JSONObject args) {
        JSONObject jSONObjectOptJSONObject;
        if (this.f81036f == null || args == null || (jSONObjectOptJSONObject = args.optJSONObject(TypedValues.AttributesType.S_FRAME)) == null) {
            return;
        }
        Context contextE = com.sigmob.sdk.b.e();
        int iOptDouble = (int) jSONObjectOptJSONObject.optDouble("x", 0.0d);
        int iOptDouble2 = (int) jSONObjectOptJSONObject.optDouble("y", 0.0d);
        int iOptDouble3 = (int) jSONObjectOptJSONObject.optDouble(IAdInterListener.AdReqParam.WIDTH, -1.0d);
        int iOptDouble4 = (int) jSONObjectOptJSONObject.optDouble("h", -1.0d);
        if (iOptDouble3 > 0) {
            iOptDouble3 = Dips.dipsToIntPixels(iOptDouble3, contextE);
        }
        if (iOptDouble4 > 0) {
            iOptDouble4 = Dips.dipsToIntPixels(iOptDouble4, contextE);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iOptDouble3, iOptDouble4);
        this.f81036f.setX(Dips.dipsToIntPixels(iOptDouble, contextE));
        this.f81036f.setY(Dips.dipsToIntPixels(iOptDouble2, contextE));
        this.f81036f.setLayoutParams(layoutParams);
        this.f81036f.requestLayout();
    }

    public void a(boolean hidden) {
        com.sigmob.sdk.base.views.r rVar = this.f81036f;
        if (rVar == null || this.f81048c == null) {
            return;
        }
        if (hidden) {
            rVar.setVisibility(4);
            this.f81048c.b();
        } else {
            rVar.setVisibility(0);
            this.f81048c.a();
        }
    }
}
