package com.byazt.nk;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.byazt.oq.WriggleGuideAnimationView;
import com.byazt.tm.DynamicBaseWidget;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 234, 145})
public class my implements sp<WriggleGuideAnimationView> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f17395a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17396c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.aq.sp f17397n;
    public com.byazt.aq.da sp;
    public WriggleGuideAnimationView tt;
    public DynamicBaseWidget uj;
    public Context ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f17398x;

    public my(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.aq.sp spVar, String str, com.byazt.aq.da daVar, boolean z10, int i10) {
        this.ve = context;
        this.uj = dynamicBaseWidget;
        this.f17397n = spVar;
        this.f17395a = str;
        this.sp = daVar;
        this.f17398x = z10;
        this.f17396c = i10;
        n();
    }

    private void n() {
        int iLr = this.f17397n.lr();
        final com.byazt.wl.c dynamicClickListener = this.uj.getDynamicClickListener();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("convertActionType", 2);
            dynamicClickListener.c(jSONObject);
        } catch (Throwable unused) {
        }
        if ("18".equals(this.f17395a)) {
            Context context = this.ve;
            WriggleGuideAnimationView wriggleGuideAnimationView = new WriggleGuideAnimationView(context, com.byazt.xc.tt.i(context), this.sp, this.f17398x, this.f17396c);
            this.tt = wriggleGuideAnimationView;
            if (wriggleGuideAnimationView.getWriggleLayout() != null) {
                this.tt.getWriggleLayout().setOnClickListener((View.OnClickListener) dynamicClickListener);
            }
            if (this.tt.getTopTextView() != null) {
                if (TextUtils.isEmpty(this.f17397n.r())) {
                    this.tt.getTopTextView().setText("扭动手机 或 点击图标");
                } else {
                    this.tt.getTopTextView().setText(this.f17397n.r());
                }
            }
        } else {
            Context context2 = this.ve;
            this.tt = new WriggleGuideAnimationView(context2, com.byazt.xc.tt.i(context2), this.sp, this.f17398x, this.f17396c);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        this.tt.setTranslationY(-((int) com.byazt.or.x.c(this.ve, iLr)));
        this.tt.setLayoutParams(layoutParams);
        this.tt.setShakeText(this.f17397n.lt());
        this.tt.setClipChildren(false);
        final View wriggleProgressIv = this.tt.getWriggleProgressIv();
        this.tt.setOnShakeViewListener(new WriggleGuideAnimationView.c() { // from class: com.byazt.nk.my.1
            @Override // com.byazt.oq.WriggleGuideAnimationView.c
            public void c() {
                if (wriggleProgressIv != null) {
                    if (my.this.tt != null) {
                        my.this.tt.setOnClickListener((View.OnClickListener) dynamicClickListener);
                        my.this.tt.performClick();
                    }
                    if (my.this.f17397n == null || !my.this.f17397n.kp()) {
                        return;
                    }
                    my.this.tt.setOnClickListener(null);
                }
            }
        });
    }

    @Override // com.byazt.nk.sp
    /* JADX INFO: renamed from: uj, reason: merged with bridge method [inline-methods] */
    public WriggleGuideAnimationView ve() {
        return this.tt;
    }

    @Override // com.byazt.nk.sp
    public void c() {
        this.tt.c();
    }

    @Override // com.byazt.nk.sp
    public void tt() {
        this.tt.clearAnimation();
    }
}
