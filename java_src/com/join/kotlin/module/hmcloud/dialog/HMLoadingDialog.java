package com.join.kotlin.module.hmcloud.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import com.airbnb.lottie.LottieAnimationView;
import com.join.android.app.mgsim.wufun.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u0012\u0010\u001f\u001a\u00020\u000b2\b\u0010 \u001a\u0004\u0018\u00010!H\u0014J\b\u0010\"\u001a\u00020\u000bH\u0016J\b\u0010#\u001a\u00020\u000bH\u0016J\b\u0010$\u001a\u00020%H\u0002R\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/join/kotlin/module/hmcloud/dialog/HMLoadingDialog;", "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "themeResId", "", "(Landroid/content/Context;I)V", "onTimeUp", "Lkotlin/Function0;", "", "getOnTimeUp", "()Lkotlin/jvm/functions/Function0;", "setOnTimeUp", "(Lkotlin/jvm/functions/Function0;)V", "lottie", "Lcom/airbnb/lottie/LottieAnimationView;", "getLottie", "()Lcom/airbnb/lottie/LottieAnimationView;", "setLottie", "(Lcom/airbnb/lottie/LottieAnimationView;)V", "tip", "Landroid/widget/TextView;", "getTip", "()Landroid/widget/TextView;", "setTip", "(Landroid/widget/TextView;)V", "tipRunnable", "Ljava/lang/Runnable;", "timeUpRunnable", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "show", "dismiss", "isHostAlive", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMLoadingDialog extends HMBaseDialog {
    public LottieAnimationView lottie;

    @Nullable
    private Function0<Unit> onTimeUp;

    @NotNull
    private final Runnable timeUpRunnable;
    public TextView tip;

    @NotNull
    private final Runnable tipRunnable;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMLoadingDialog(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.tipRunnable = new Runnable() { // from class: com.join.kotlin.module.hmcloud.dialog.m0
            @Override // java.lang.Runnable
            public final void run() {
                HMLoadingDialog.tipRunnable$lambda$0(this.f48644b);
            }
        };
        this.timeUpRunnable = new Runnable() { // from class: com.join.kotlin.module.hmcloud.dialog.n0
            @Override // java.lang.Runnable
            public final void run() {
                HMLoadingDialog.timeUpRunnable$lambda$1(this.f48646b);
            }
        };
    }

    private final boolean isHostAlive() {
        View decorView;
        Context context = getContext();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null) {
            return (activity.isFinishing() || activity.isDestroyed()) ? false : true;
        }
        Window window = getWindow();
        return (window == null || (decorView = window.getDecorView()) == null || !decorView.isAttachedToWindow()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void timeUpRunnable$lambda$1(HMLoadingDialog hMLoadingDialog) {
        if (hMLoadingDialog.isHostAlive()) {
            Function0<Unit> function0 = hMLoadingDialog.onTimeUp;
            if (function0 != null) {
                function0.invoke();
            }
            if (hMLoadingDialog.isShowing()) {
                try {
                    hMLoadingDialog.dismiss();
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void tipRunnable$lambda$0(HMLoadingDialog hMLoadingDialog) {
        if (hMLoadingDialog.isHostAlive()) {
            hMLoadingDialog.getTip().setText("正在关闭游戏结算时长，请稍后..");
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.tip != null) {
            getTip().removeCallbacks(this.tipRunnable);
        }
        if (this.lottie != null) {
            getLottie().removeCallbacks(this.timeUpRunnable);
        }
        if (isHostAlive()) {
            try {
                super.dismiss();
            } catch (Exception unused) {
            }
        }
    }

    @NotNull
    public final LottieAnimationView getLottie() {
        LottieAnimationView lottieAnimationView = this.lottie;
        if (lottieAnimationView != null) {
            return lottieAnimationView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("lottie");
        return null;
    }

    @Nullable
    public final Function0<Unit> getOnTimeUp() {
        return this.onTimeUp;
    }

    @NotNull
    public final TextView getTip() {
        TextView textView = this.tip;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tip");
        return null;
    }

    @Override // android.app.Dialog
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCanceledOnTouchOutside(false);
        setContentView(R.layout.dialog_hm_loading);
        setLottie((LottieAnimationView) findViewById(R.id.lottie));
        setTip((TextView) findViewById(R.id.tip));
        getLottie().setAnimation("hmcloud/anim/loading.json");
        getLottie().setRepeatCount(-1);
        getLottie().E();
    }

    public final void setLottie(@NotNull LottieAnimationView lottieAnimationView) {
        Intrinsics.checkNotNullParameter(lottieAnimationView, "<set-?>");
        this.lottie = lottieAnimationView;
    }

    public final void setOnTimeUp(@Nullable Function0<Unit> function0) {
        this.onTimeUp = function0;
    }

    public final void setTip(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tip = textView;
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        getTip().removeCallbacks(this.tipRunnable);
        getLottie().removeCallbacks(this.timeUpRunnable);
        getTip().postDelayed(this.tipRunnable, 5000L);
        getLottie().postDelayed(this.timeUpRunnable, 10000L);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMLoadingDialog(@NotNull Context context, int i10) {
        super(context, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.tipRunnable = new Runnable() { // from class: com.join.kotlin.module.hmcloud.dialog.m0
            @Override // java.lang.Runnable
            public final void run() {
                HMLoadingDialog.tipRunnable$lambda$0(this.f48644b);
            }
        };
        this.timeUpRunnable = new Runnable() { // from class: com.join.kotlin.module.hmcloud.dialog.n0
            @Override // java.lang.Runnable
            public final void run() {
                HMLoadingDialog.timeUpRunnable$lambda$1(this.f48646b);
            }
        };
    }
}
