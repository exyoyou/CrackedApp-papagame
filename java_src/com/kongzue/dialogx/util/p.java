package com.kongzue.dialogx.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.provider.Settings;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.interfaces.BaseDialog;

/* JADX INFO: loaded from: classes3.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static c f74219a;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Activity f74220b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f74221c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f74222d;

        a(Activity activity, View view, boolean z10) {
            this.f74220b = activity;
            this.f74221c = view;
            this.f74222d = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.d(this.f74220b, this.f74221c, this.f74222d);
        }
    }

    class b implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Activity f74223b;

        b(Activity activity) {
            this.f74223b = activity;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            for (int size = BaseDialog.Q().size() - 1; size >= 0; size--) {
                BaseDialog baseDialog = BaseDialog.Q().get(size);
                if (!(baseDialog instanceof com.kongzue.dialogx.interfaces.o) && baseDialog.N() == this.f74223b) {
                    if (baseDialog.C() == null) {
                        return false;
                    }
                    return baseDialog.q(motionEvent);
                }
            }
            return this.f74223b.dispatchTouchEvent(motionEvent);
        }
    }

    public static abstract class c {
        public ViewGroup a(Context context) {
            return null;
        }

        public abstract WindowManager.LayoutParams b(Context context, View view, WindowManager.LayoutParams layoutParams);
    }

    public static void b(View view) {
        BaseDialog baseDialog = (BaseDialog) view.getTag();
        if (baseDialog == null || baseDialog.N() == null) {
            return;
        }
        ((WindowManager) baseDialog.N().getSystemService("window")).removeViewImmediate((View) view.getParent());
    }

    public static void c(Activity activity, View view, boolean z10) {
        try {
            if (activity.getWindow().getDecorView().isAttachedToWindow()) {
                d(activity, view, z10);
            } else {
                activity.getWindow().getDecorView().post(new a(activity, view, z10));
            }
        } catch (Exception unused) {
            if (activity == null || activity.isDestroyed()) {
                return;
            }
            d(activity, view, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Activity activity, View view, boolean z10) {
        WindowManager.LayoutParams layoutParamsB;
        if (DialogX.K && Build.VERSION.SDK_INT >= 23 && !Settings.canDrawOverlays(activity)) {
            Toast.makeText(activity, "使用 DialogX.globalHoverWindow 必须开启悬浮窗权限", 1).show();
            Intent intent = new Intent();
            intent.setAction("android.settings.action.MANAGE_OVERLAY_PERMISSION");
            activity.startActivity(intent);
            return;
        }
        c cVar = f74219a;
        ViewGroup viewGroupA = cVar != null ? cVar.a(activity) : null;
        if (viewGroupA == null) {
            viewGroupA = new FrameLayout(activity);
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        viewGroupA.addView(view, new FrameLayout.LayoutParams(-1, -1));
        WindowManager windowManager = (WindowManager) activity.getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = 16;
        layoutParams.format = -2;
        if (!DialogX.K) {
            layoutParams.type = 1003;
        } else if (Build.VERSION.SDK_INT >= 26) {
            layoutParams.type = 2038;
        } else {
            layoutParams.type = 2002;
        }
        layoutParams.flags = 201327872;
        layoutParams.softInputMode = 16;
        if (!z10) {
            view.setOnTouchListener(new b(activity));
        }
        if (Build.VERSION.SDK_INT >= 28) {
            layoutParams.layoutInDisplayCutoutMode = 1;
        }
        c cVar2 = f74219a;
        if (cVar2 != null && (layoutParamsB = cVar2.b(activity, view, layoutParams)) != null) {
            layoutParams = layoutParamsB;
        }
        windowManager.addView(viewGroupA, layoutParams);
    }
}
