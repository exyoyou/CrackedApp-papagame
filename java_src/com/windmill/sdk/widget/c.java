package com.windmill.sdk.widget;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.utils.UIUtils;

/* JADX INFO: loaded from: classes8.dex */
public class c extends Dialog implements DialogInterface.OnDismissListener, DialogInterface.OnShowListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f87564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f87565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CircleWebView f87566c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f87567d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f87568e;

    public interface a {
        void a();

        void b();
    }

    public c(Context context, CircleWebView webView) {
        super(context, ResourceUtil.getStyleId(context, "tobid_dialog_custom"));
        this.f87568e = context;
        this.f87566c = webView;
        int i10 = context.getResources().getDisplayMetrics().widthPixels;
        int i11 = context.getResources().getDisplayMetrics().heightPixels;
        if (i11 > i10) {
            this.f87564a = (i11 * 2) / 5;
            this.f87565b = i10;
        } else {
            this.f87564a = (i11 * 4) / 5;
            this.f87565b = i11;
        }
    }

    private void b() {
        Window window = getWindow();
        if (window != null) {
            window.setGravity(80);
            window.setWindowAnimations(ResourceUtil.getId(this.f87568e, "tobid_dialog_window_anim"));
            window.getDecorView().setPadding(0, 0, 0, 0);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = this.f87565b;
            attributes.height = this.f87564a;
            window.setAttributes(attributes);
        }
    }

    public void a(a clickListener) {
        this.f87567d = clickListener;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        float fDp2px = UIUtils.dp2px(getContext(), 10.0f);
        gradientDrawable.setCornerRadii(new float[]{fDp2px, fDp2px, fDp2px, fDp2px, 0.0f, 0.0f, 0.0f, 0.0f});
        relativeLayout.setBackground(gradientDrawable);
        setContentView(relativeLayout);
        setOnShowListener(this);
        setOnDismissListener(this);
        WMLogUtil.i(WMLogUtil.TAG, "SixElementsDialog onCreate:" + this.f87565b + ":" + this.f87564a);
        if (this.f87566c != null) {
            relativeLayout.addView(this.f87566c, new RelativeLayout.LayoutParams(-1, -1));
        }
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        b();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        a aVar = this.f87567d;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialog) {
        a aVar = this.f87567d;
        if (aVar != null) {
            aVar.b();
        }
    }

    public void a() {
        CircleWebView circleWebView = this.f87566c;
        if (circleWebView != null) {
            circleWebView.destroy();
            this.f87566c = null;
        }
        if (this.f87567d != null) {
            this.f87567d = null;
        }
    }
}
