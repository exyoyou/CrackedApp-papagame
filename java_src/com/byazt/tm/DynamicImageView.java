package com.byazt.tm;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.aggmoread.sdk.z.a.i.k;
import com.aggmoread.sdk.z.a.i.l;
import com.byazt.aq.x;
import com.byazt.du.i;
import com.byazt.nr.z;
import com.byazt.nwh.AnimationImageView;
import com.byazt.oq.DynamicLottieView;
import com.byazt.oq.GifView;
import com.byazt.oq.TTRoundRectImageView;
import com.byazt.or.a;
import com.byazt.ui.UpieImageView;
import com.byazt.xl.u;
import com.byazt.yj.da;
import com.byazt.yj.gr;
import com.byazt.yj.m;
import com.byazt.yj.qy;
import com.byazt.yj.yp;
import com.join.mgps.activity.InstallAppDialogV2Activity_;
import com.umeng.analytics.pro.aw;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 1274})
public class DynamicImageView extends DynamicBaseWidgetImp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f20294c;

    @com.byazt.zqa.c(c = {0, 1, 48, 73})
    private static class c implements da {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WeakReference<Context> f20297c;

        public c(Context context) {
            this.f20297c = new WeakReference<>(context);
        }

        @Override // com.byazt.yj.da
        public Bitmap coverterTo(Bitmap bitmap) {
            Context context = this.f20297c.get();
            if (context != null) {
                return com.byazt.or.tt.c(context, bitmap, 25);
            }
            return null;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 48, 1016})
    private static class tt implements gr<Bitmap> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public WeakReference<View> f20298c;
        public Resources tt;

        public tt(View view, Resources resources) {
            this.f20298c = new WeakReference<>(view);
            this.tt = resources;
        }

        @Override // com.byazt.yj.gr
        public void onFailed(int i10, String str, Throwable th) {
        }

        @Override // com.byazt.yj.gr
        public void onSuccess(m<Bitmap> mVar) {
            Bitmap result;
            View view = this.f20298c.get();
            if (view == null || (result = mVar.getResult()) == null || mVar.getOriginResult() == null) {
                return;
            }
            view.setBackground(new BitmapDrawable(this.tt, result));
        }
    }

    public DynamicImageView(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        if (!TextUtils.isEmpty(this.f20273t.s()) && xVar.my()) {
            DynamicLottieView dynamicLottieView = new DynamicLottieView(context);
            dynamicLottieView.setAnimationsLoop(this.f20273t.y());
            dynamicLottieView.setImageLottieTosPath(this.f20273t.s());
            dynamicLottieView.setLottieAppNameMaxLength(this.f20273t.dz());
            dynamicLottieView.setLottieAdTitleMaxLength(this.f20273t.j());
            dynamicLottieView.setLottieAdDescMaxLength(this.f20273t.iu());
            dynamicLottieView.setData(xVar.gt());
            this.f20276z = dynamicLottieView;
        } else if (this.f20273t.z() > 0.0f) {
            TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(context);
            this.f20276z = tTRoundRectImageView;
            tTRoundRectImageView.setXRound((int) com.byazt.or.x.c(context, this.f20273t.z()));
            ((TTRoundRectImageView) this.f20276z).setYRound((int) com.byazt.or.x.c(context, this.f20273t.z()));
        } else if (!sp() && "arrowButton".equals(xVar.da().getType())) {
            AnimationImageView animationImageView = new AnimationImageView(context);
            animationImageView.setBrickNativeValue(this.f20273t);
            this.f20276z = animationImageView;
        } else if (com.byazt.or.da.tt(this.f20273t.sl())) {
            this.f20276z = new GifView(context);
        } else {
            String strSl = this.f20273t.sl();
            u renderRequest = dynamicRootView.getRenderRequest();
            if (renderRequest == null || renderRequest.tt() == null || !TextUtils.equals(strSl, renderRequest.c())) {
                this.f20276z = new ImageView(context);
            } else {
                this.f20276z = renderRequest.tt();
            }
        }
        this.f20294c = tt(this.f20273t.sl());
        this.f20276z.setTag(Integer.valueOf(getClickArea()));
        if ("arrowButton".equals(xVar.da().getType())) {
            if (this.f20273t.tt() > 0 || this.f20273t.c() > 0) {
                int iMin = Math.min(this.sp, this.f20275x);
                this.sp = iMin;
                this.f20275x = Math.min(iMin, this.f20275x);
                this.f20270i = (int) (this.f20270i + com.byazt.or.x.c(context, this.f20273t.tt() + (this.f20273t.c() / 2) + 0.5f));
            } else {
                int iMax = Math.max(this.sp, this.f20275x);
                this.sp = iMax;
                this.f20275x = Math.max(iMax, this.f20275x);
            }
            this.f20273t.c(this.sp / 2);
        }
        addView(this.f20276z, new FrameLayout.LayoutParams(this.sp, this.f20275x));
    }

    private void c(yp ypVar) {
        ypVar.type(3).to(new gr() { // from class: com.byazt.tm.DynamicImageView.2
            @Override // com.byazt.yj.gr
            public void onFailed(int i10, String str, Throwable th) {
            }

            @Override // com.byazt.yj.gr
            public void onSuccess(m mVar) {
                Object result = mVar.getResult();
                if (result instanceof byte[]) {
                    DynamicImageView dynamicImageView = DynamicImageView.this;
                    View view = dynamicImageView.f20276z;
                    if (view instanceof ImageView) {
                        a.tt((ImageView) view, (byte[]) result, dynamicImageView.sp, dynamicImageView.f20275x);
                    }
                }
            }
        }, 4);
    }

    private boolean i() {
        String strT = this.f20273t.t();
        if (this.f20273t.gt()) {
            return true;
        }
        if (TextUtils.isEmpty(strT)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(strT);
            return Math.abs((((float) this.sp) / (((float) this.f20275x) * 1.0f)) - (((float) jSONObject.optInt("width")) / (((float) jSONObject.optInt("height")) * 1.0f))) > 0.01f;
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
            return false;
        }
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        View view = this.f20276z;
        if (view instanceof ImageView) {
            Drawable drawable = ((ImageView) view).getDrawable();
            if (Build.VERSION.SDK_INT < 28 || !k.a(drawable)) {
                return;
            }
            l.a(drawable).start();
        }
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        View view = this.f20276z;
        if (view instanceof ImageView) {
            Drawable drawable = ((ImageView) view).getDrawable();
            if (Build.VERSION.SDK_INT < 28 || !k.a(drawable)) {
                return;
            }
            l.a(drawable).stop();
        }
    }

    public String tt(String str) {
        Map<String, String> mapU = this.yp.getRenderRequest().u();
        if (mapU == null || mapU.size() <= 0) {
            return null;
        }
        return mapU.get(str);
    }

    @Override // com.byazt.tm.DynamicBaseWidgetImp, com.byazt.tm.uj
    public boolean x() {
        super.x();
        try {
            View view = this.f20276z;
            if (view instanceof UpieImageView) {
                view.setBackgroundColor(this.f20273t.md());
                if (i()) {
                    ((UpieImageView) this.f20276z).setScaleType(ImageView.ScaleType.FIT_CENTER);
                } else {
                    ((UpieImageView) this.f20276z).setScaleType(ImageView.ScaleType.FIT_XY);
                }
                if (InstallAppDialogV2Activity_.COVER_EXTRA.equals(getImageObjectFit())) {
                    ((UpieImageView) this.f20276z).setScaleType(ImageView.ScaleType.CENTER_CROP);
                }
                return true;
            }
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
        if (!TextUtils.isEmpty(this.f20273t.s())) {
            ((ImageView) this.f20276z).setScaleType(ImageView.ScaleType.CENTER_CROP);
            return true;
        }
        if ("arrowButton".equals(this.f20274u.da().getType())) {
            z.c(this.sl, "tt_white_righterbackicon_titlebar", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.tm.DynamicImageView.1
                @Override // com.byazt.qr.c
                public void c(Bitmap bitmap) {
                    ((ImageView) DynamicImageView.this.f20276z).setImageDrawable(new BitmapDrawable(DynamicImageView.this.sl.getResources(), bitmap));
                    if (((ImageView) DynamicImageView.this.f20276z).getDrawable() != null) {
                        ((ImageView) DynamicImageView.this.f20276z).getDrawable().setAutoMirrored(true);
                    }
                }
            }, 320);
            this.f20276z.setPadding(0, 0, 0, 0);
            ((ImageView) this.f20276z).setScaleType(ImageView.ScaleType.FIT_XY);
            return true;
        }
        this.f20276z.setBackgroundColor(this.f20273t.md());
        String strTt = this.f20274u.da().tt();
        if (aw.f84332m.equals(strTt)) {
            ((ImageView) this.f20276z).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            ((ImageView) this.f20276z).setColorFilter(this.f20273t.sp());
            z.c(getContext(), "tt_user", (ImageView) this.f20276z, 320);
            ImageView imageView = (ImageView) this.f20276z;
            int i10 = this.sp;
            imageView.setPadding(i10 / 10, this.f20275x / 5, i10 / 10, 0);
        } else if (strTt != null && strTt.startsWith("@")) {
            try {
                ((ImageView) this.f20276z).setImageResource(Integer.parseInt(strTt.substring(1)));
            } catch (Exception e10) {
                com.byazt.nr.m.c(e10);
            }
        }
        qy qyVarN = com.byazt.mf.c.c().n();
        String strSl = this.f20273t.sl();
        if (!TextUtils.isEmpty(strSl) && !strSl.startsWith("http:") && !strSl.startsWith("https:")) {
            DynamicRootView dynamicRootView = this.yp;
            strSl = i.tt(strSl, (dynamicRootView == null || dynamicRootView.getRenderRequest() == null) ? null : this.yp.getRenderRequest().yv());
        }
        yp ypVarKey = qyVarN.from(strSl).key(this.f20294c);
        String strM = this.yp.getRenderRequest().m();
        if (!TextUtils.isEmpty(strM)) {
            ypVarKey.cacheDir(strM);
        }
        if (i()) {
            ((ImageView) this.f20276z).setScaleType(ImageView.ScaleType.FIT_CENTER);
            ypVarKey.config(Bitmap.Config.ARGB_4444).type(2).converter(new c(this.sl)).to(new tt(this.f20276z, getResources()));
        } else {
            if (com.byazt.sr.uj.c()) {
                ypVarKey.to((ImageView) this.f20276z);
            }
            ((ImageView) this.f20276z).setScaleType(ImageView.ScaleType.FIT_XY);
        }
        if ((this.f20276z instanceof ImageView) && InstallAppDialogV2Activity_.COVER_EXTRA.equals(getImageObjectFit())) {
            ((ImageView) this.f20276z).setScaleType(ImageView.ScaleType.CENTER_CROP);
        }
        if (!com.byazt.sr.uj.c()) {
            c(ypVarKey);
        }
        return true;
    }
}
