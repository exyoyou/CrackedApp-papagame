package com.join.kotlin.module.hmcloud.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u000e\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u0012J\u0010\u0010\u0013\u001a\u00020\u000e2\b\b\u0002\u0010\u0014\u001a\u00020\u0012J*\u0010\u0015\u001a\u00020\u000e2\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00172\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0017R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;", "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "themeResId", "", "(Landroid/content/Context;I)V", "content", "Landroid/widget/TextView;", "vConfirm", "vCancel", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "setContent", "", "setBtnConfirm", "text", "setCallback", "confirm", "Lkotlin/Function0;", "cancel", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMConfirmDialog extends HMBaseDialog {
    private TextView content;
    private TextView vCancel;
    private TextView vConfirm;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMConfirmDialog(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public static /* synthetic */ void setBtnConfirm$default(HMConfirmDialog hMConfirmDialog, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "确定";
        }
        hMConfirmDialog.setBtnConfirm(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setCallback$default(final HMConfirmDialog hMConfirmDialog, Function0 function0, Function0 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function0 = new Function0() { // from class: com.join.kotlin.module.hmcloud.dialog.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return HMConfirmDialog.setCallback$lambda$0(this.f48615b);
                }
            };
        }
        if ((i10 & 2) != 0) {
            function1 = new Function0() { // from class: com.join.kotlin.module.hmcloud.dialog.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return HMConfirmDialog.setCallback$lambda$1(this.f48617b);
                }
            };
        }
        hMConfirmDialog.setCallback(function0, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setCallback$lambda$0(HMConfirmDialog hMConfirmDialog) {
        hMConfirmDialog.dismiss();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setCallback$lambda$1(HMConfirmDialog hMConfirmDialog) {
        hMConfirmDialog.dismiss();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setCallback$lambda$2(Function0 function0, View view) {
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setCallback$lambda$3(Function0 function0, View view) {
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_hm_confirm);
        this.content = (TextView) findViewById(R.id.text);
        this.vConfirm = (TextView) findViewById(R.id.confirm);
        this.vCancel = (TextView) findViewById(R.id.cancel);
    }

    public final void setBtnConfirm(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        TextView textView = this.vConfirm;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vConfirm");
            textView = null;
        }
        textView.setText(text);
    }

    public final void setCallback(@Nullable final Function0<Unit> confirm, @Nullable final Function0<Unit> cancel) {
        TextView textView = this.vConfirm;
        TextView textView2 = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vConfirm");
            textView = null;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HMConfirmDialog.setCallback$lambda$2(confirm, view);
            }
        });
        TextView textView3 = this.vCancel;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vCancel");
        } else {
            textView2 = textView3;
        }
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HMConfirmDialog.setCallback$lambda$3(cancel, view);
            }
        });
    }

    public final void setContent(@NotNull String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        TextView textView = this.content;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("content");
            textView = null;
        }
        textView.setText(content);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMConfirmDialog(@NotNull Context context, int i10) {
        super(context, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
