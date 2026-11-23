package com.join.kotlin.ui.cloudarchive.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J@\u0010\u001f\u001a\u00020\u001c2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010!2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010!2\b\u0010%\u001a\u0004\u0018\u00010&R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR\u001a\u0010\u000f\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000bR\u001a\u0010\u0012\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR\u001a\u0010\u0015\u001a\u00020\u0016X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006'"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;", "Landroid/app/AlertDialog;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "vTitle", "Landroid/widget/TextView;", "getVTitle", "()Landroid/widget/TextView;", "setVTitle", "(Landroid/widget/TextView;)V", "vDesc", "getVDesc", "setVDesc", "vPositive", "getVPositive", "setVPositive", "vNegative", "getVNegative", "setVNegative", "vClose", "Landroid/view/View;", "getVClose", "()Landroid/view/View;", "setVClose", "(Landroid/view/View;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "show", "title", "", "desc", "button1", "button2", com.alipay.sdk.authjs.a.f7124i, "Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nModPromptNormalDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModPromptNormalDialog.kt\ncom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1#2:63\n*E\n"})
public final class ModPromptNormalDialog extends AlertDialog {
    public View vClose;
    public TextView vDesc;
    public TextView vNegative;
    public TextView vPositive;
    public TextView vTitle;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModPromptNormalDialog(@NotNull Context context) {
        super(context, R.style.PapaTheme_Dialog);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void show$lambda$5(ModPromptCallback modPromptCallback, View view) {
        if (modPromptCallback != null) {
            modPromptCallback.callback1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void show$lambda$6(ModPromptCallback modPromptCallback, View view) {
        if (modPromptCallback != null) {
            modPromptCallback.callback2();
        }
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
    public final TextView getVDesc() {
        TextView textView = this.vDesc;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("vDesc");
        return null;
    }

    @NotNull
    public final TextView getVNegative() {
        TextView textView = this.vNegative;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("vNegative");
        return null;
    }

    @NotNull
    public final TextView getVPositive() {
        TextView textView = this.vPositive;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("vPositive");
        return null;
    }

    @NotNull
    public final TextView getVTitle() {
        TextView textView = this.vTitle;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("vTitle");
        return null;
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.dialog_mod_prompt1, (ViewGroup) null);
        setVTitle((TextView) viewInflate.findViewById(R.id.tv_title));
        setVDesc((TextView) viewInflate.findViewById(R.id.tv_desc));
        setVPositive((TextView) viewInflate.findViewById(R.id.tv_mod_opt_left));
        setVNegative((TextView) viewInflate.findViewById(R.id.tv_mod_opt_right));
        setVClose(viewInflate.findViewById(R.id.ivClose));
        getVClose().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f48979b.dismiss();
            }
        });
        setContentView(viewInflate);
    }

    public final void setVClose(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.vClose = view;
    }

    public final void setVDesc(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.vDesc = textView;
    }

    public final void setVNegative(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.vNegative = textView;
    }

    public final void setVPositive(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.vPositive = textView;
    }

    public final void setVTitle(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.vTitle = textView;
    }

    public final void show(@Nullable String title, @Nullable String desc, @Nullable String button1, @Nullable String button2, @Nullable final ModPromptCallback callback) {
        super.show();
        boolean z10 = true;
        getVDesc().setVisibility(desc == null || desc.length() == 0 ? 8 : 0);
        getVPositive().setVisibility(button1 == null || button1.length() == 0 ? 8 : 0);
        TextView vNegative = getVNegative();
        if (button2 != null && button2.length() != 0) {
            z10 = false;
        }
        vNegative.setVisibility(z10 ? 8 : 0);
        if (title != null) {
            getVTitle().setText(title);
        }
        if (desc != null) {
            getVDesc().setText(desc);
        }
        if (button1 != null) {
            getVPositive().setText(button1);
        }
        if (button2 != null) {
            getVNegative().setText(button2);
        }
        getVPositive().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ModPromptNormalDialog.show$lambda$5(callback, view);
            }
        });
        getVNegative().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ModPromptNormalDialog.show$lambda$6(callback, view);
            }
        });
    }
}
