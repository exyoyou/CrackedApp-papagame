package com.join.kotlin.module.hmcloud.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.hmcloud.HandleType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u0012\u0010%\u001a\u00020\u001d2\b\u0010&\u001a\u0004\u0018\u00010'H\u0014J\u000e\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020\u0007J\"\u0010*\u001a\u00020\u001d2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cR\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\u0015\u001a\u00020\u0016X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001f\"\u0004\b$\u0010!¨\u0006+"}, d2 = {"Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;", "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "themeResId", "", "(Landroid/content/Context;I)V", "vJoy", "Landroid/view/View;", "getVJoy", "()Landroid/view/View;", "setVJoy", "(Landroid/view/View;)V", "vKeyboard", "getVKeyboard", "setVKeyboard", "vClose", "getVClose", "setVClose", "tvTip", "Landroid/widget/TextView;", "getTvTip", "()Landroid/widget/TextView;", "setTvTip", "(Landroid/widget/TextView;)V", "onJoy", "Lkotlin/Function0;", "", "getOnJoy", "()Lkotlin/jvm/functions/Function0;", "setOnJoy", "(Lkotlin/jvm/functions/Function0;)V", "onKeyboard", "getOnKeyboard", "setOnKeyboard", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "setTip", "type", "setCallback", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMOpModeDialog extends HMBaseDialog {

    @Nullable
    private Function0<Unit> onJoy;

    @Nullable
    private Function0<Unit> onKeyboard;
    public TextView tvTip;
    public View vClose;
    public View vJoy;
    public View vKeyboard;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMOpModeDialog(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$1(HMOpModeDialog hMOpModeDialog, View view) {
        Function0<Unit> function0 = hMOpModeDialog.onJoy;
        if (function0 != null) {
            function0.invoke();
        }
        hMOpModeDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$2(HMOpModeDialog hMOpModeDialog, View view) {
        Function0<Unit> function0 = hMOpModeDialog.onKeyboard;
        if (function0 != null) {
            function0.invoke();
        }
        hMOpModeDialog.dismiss();
    }

    @Nullable
    public final Function0<Unit> getOnJoy() {
        return this.onJoy;
    }

    @Nullable
    public final Function0<Unit> getOnKeyboard() {
        return this.onKeyboard;
    }

    @NotNull
    public final TextView getTvTip() {
        TextView textView = this.tvTip;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tvTip");
        return null;
    }

    @NotNull
    public final View getVClose() {
        View view = this.vClose;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("vClose");
        return null;
    }

    @NotNull
    public final View getVJoy() {
        View view = this.vJoy;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("vJoy");
        return null;
    }

    @NotNull
    public final View getVKeyboard() {
        View view = this.vKeyboard;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("vKeyboard");
        return null;
    }

    @Override // android.app.Dialog
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_hm_op_type);
        setTvTip((TextView) findViewById(R.id.tvTip));
        setVJoy(findViewById(R.id.llJoy));
        setVKeyboard(findViewById(R.id.llKeyboard));
        setVClose(findViewById(R.id.ivClose));
        getVClose().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.o0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f48648b.dismiss();
            }
        });
        getVJoy().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.p0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HMOpModeDialog.onCreate$lambda$1(this.f48650b, view);
            }
        });
        getVKeyboard().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HMOpModeDialog.onCreate$lambda$2(this.f48652b, view);
            }
        });
    }

    public final void setCallback(@NotNull Function0<Unit> onJoy, @NotNull Function0<Unit> onKeyboard) {
        Intrinsics.checkNotNullParameter(onJoy, "onJoy");
        Intrinsics.checkNotNullParameter(onKeyboard, "onKeyboard");
        this.onJoy = onJoy;
        this.onKeyboard = onKeyboard;
    }

    public final void setOnJoy(@Nullable Function0<Unit> function0) {
        this.onJoy = function0;
    }

    public final void setOnKeyboard(@Nullable Function0<Unit> function0) {
        this.onKeyboard = function0;
    }

    public final void setTip(int type) {
        String str;
        if (type == HandleType.GAME_PAD.getValue()) {
            str = "手柄";
        } else {
            HandleType.KEYBOARD.getValue();
            str = "键鼠";
        }
        getTvTip().setText(getContext().getString(R.string.hm_op_model_tip, str, str));
    }

    public final void setTvTip(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tvTip = textView;
    }

    public final void setVClose(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.vClose = view;
    }

    public final void setVJoy(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.vJoy = view;
    }

    public final void setVKeyboard(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.vKeyboard = view;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMOpModeDialog(@NotNull Context context, int i10) {
        super(context, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
