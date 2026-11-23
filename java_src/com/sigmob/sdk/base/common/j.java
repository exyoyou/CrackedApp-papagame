package com.sigmob.sdk.base.common;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.IntentActions;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f79160a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f79161b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected RelativeLayout f79162c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected k f79163d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected g f79164e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f79165f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RelativeLayout f79166g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final WeakReference<Activity> f79167h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f79168i;

    public interface a {
        void onAdClicked();
    }

    protected j(Activity context, String broadcastIdentifier, k baseAdViewControllerListener) {
        this.f79160a = context.getApplicationContext();
        this.f79167h = new WeakReference<>(context);
        this.f79161b = broadcastIdentifier;
        this.f79163d = baseAdViewControllerListener;
        this.f79162c = new RelativeLayout(this.f79160a);
    }

    private void a() {
        ViewGroup viewGroup;
        View childAt;
        Activity activityC = com.sigmob.sdk.b.c();
        ViewGroup viewGroupM = m();
        if (activityC == null || viewGroupM == null || (viewGroup = (ViewGroup) activityC.getWindow().findViewById(R.id.content)) == null || (childAt = viewGroup.getChildAt(0)) == null) {
            return;
        }
        com.sigmob.sdk.base.blurkit.a.a(this.f79160a);
        Bitmap bitmapA = com.sigmob.sdk.base.blurkit.a.a().a(childAt, 25);
        if (this.f79165f == null) {
            this.f79165f = new ImageView(this.f79160a);
        }
        this.f79165f.setImageBitmap(bitmapA);
    }

    public abstract void a(Configuration configuration);

    public abstract void a(Bundle outState);

    public void b() {
        WindowManager.LayoutParams attributes = n().getWindow().getAttributes();
        attributes.dimAmount = 0.0f;
        n().getWindow().setAttributes(attributes);
    }

    public void c() {
        try {
            a();
            ImageView imageView = this.f79165f;
            if (imageView == null) {
                return;
            }
            this.f79162c.addView(imageView, 0, new ViewGroup.LayoutParams(-1, -1));
        } catch (Throwable unused) {
        }
    }

    public void d() {
        ImageView imageView = this.f79165f;
        if (imageView == null) {
            return;
        }
        try {
            com.sigmob.sdk.base.utils.x.a(imageView);
            this.f79165f = null;
        } catch (Throwable unused) {
        }
    }

    public abstract void e();

    public abstract void f();

    public abstract void g();

    public void h() {
        this.f79163d = null;
        if (Build.VERSION.SDK_INT >= 23) {
            Activity activityN = n();
            if (com.sigmob.sdk.base.utils.w.b(activityN)) {
                activityN.getWindow().getDecorView().setOnApplyWindowInsetsListener(null);
            }
        }
        if (com.sigmob.sdk.base.utils.w.b(this.f79162c)) {
            this.f79162c.removeAllViews();
        }
    }

    public abstract void i();

    public boolean j() {
        return true;
    }

    protected k k() {
        return this.f79163d;
    }

    protected Context l() {
        return this.f79160a;
    }

    protected ViewGroup m() {
        RelativeLayout relativeLayout = this.f79166g;
        return relativeLayout == null ? this.f79162c : relativeLayout;
    }

    protected Activity n() {
        Activity activityC = com.sigmob.sdk.base.utils.x.c(this.f79162c);
        if (activityC != null) {
            return activityC;
        }
        WeakReference<Activity> weakReference = this.f79167h;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public abstract void o();

    public void a(int requestCode, int resultCode, Intent data) {
    }

    protected void a(Context context, int orientation, Bundle intentExtras) {
        g gVar;
        if (intentExtras == null) {
            return;
        }
        try {
            if (intentExtras.getBoolean(com.sigmob.sdk.base.n.f79599z, false)) {
                int i10 = context.getResources().getDisplayMetrics().widthPixels;
                int i11 = context.getResources().getDisplayMetrics().heightPixels;
                if (orientation == 6) {
                    int iMin = (Math.min(i10, i11) * 85) / 100;
                    gVar = new g((iMin * 16) / 9, iMin);
                } else {
                    int iMin2 = (Math.min(i10, i11) * 85) / 100;
                    gVar = new g(iMin2, (iMin2 * 16) / 9);
                }
                this.f79164e = gVar;
                this.f79166g = new RelativeLayout(context);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.f79164e.a(), this.f79164e.b());
                layoutParams.addRule(13);
                this.f79166g.setLayoutParams(layoutParams);
                this.f79162c.removeAllViews();
                this.f79162c.addView(this.f79166g);
            }
        } catch (Throwable unused) {
        }
    }

    public void a(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        Activity activityN = n();
        if (activityN == null) {
            return;
        }
        activityN.getWindow().getDecorView().setOnApplyWindowInsetsListener(onApplyWindowInsetsListener);
    }

    public void a(a eventListener) {
        this.f79168i = eventListener;
    }

    protected void a(String action) {
        String str = this.f79161b;
        if (str == null) {
            SigmobLog.w("Tried to broadcast a video event without a broadcast identifier to send to.");
            return;
        }
        BaseBroadcastReceiver.a(this.f79160a, str, action);
        if (com.sigmob.sdk.base.utils.w.b(this.f79168i) && com.sigmob.sdk.base.utils.t.b(action) && action.equals(IntentActions.ACTION_INTERSTITIAL_CLICK)) {
            this.f79168i.onAdClicked();
        }
    }

    protected void a(String action, int delay) {
        String str = this.f79161b;
        if (str == null) {
            SigmobLog.w("Tried to broadcast a video event without a broadcast identifier to send to.");
        } else {
            BaseBroadcastReceiver.a(this.f79160a, str, action, delay);
        }
    }

    protected void a(String action, Map<String, Object> extras) {
        String str = this.f79161b;
        if (str == null) {
            SigmobLog.w("Tried to broadcast a video event without a broadcast identifier to send to.");
        } else {
            BaseBroadcastReceiver.a(this.f79160a, str, extras, action, 0);
        }
    }

    protected boolean a(Dialog dialog) {
        if (dialog == null) {
            return false;
        }
        return dialog.isShowing();
    }
}
