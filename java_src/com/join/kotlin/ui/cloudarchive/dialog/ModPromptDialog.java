package com.join.kotlin.ui.cloudarchive.dialog;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import com.join.android.app.mgsim.wufun.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u001f\u001a\u0004\u0018\u00010\u001a2\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010$\u001a\u0004\u0018\u00010%H\u0016J\b\u0010&\u001a\u00020'H\u0016J\u001a\u0010(\u001a\u00020'2\u0006\u0010)\u001a\u00020\u001a2\b\u0010$\u001a\u0004\u0018\u00010%H\u0016JB\u0010.\u001a\u00020'2\n\b\u0002\u0010/\u001a\u0004\u0018\u0001002\n\b\u0002\u00101\u001a\u0004\u0018\u0001002\n\b\u0002\u00102\u001a\u0004\u0018\u0001002\n\b\u0002\u00103\u001a\u0004\u0018\u0001002\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0005J\u000e\u00105\u001a\u00020'2\u0006\u00106\u001a\u000207R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\r\"\u0004\b\u0018\u0010\u000fR\u001a\u0010\u0019\u001a\u00020\u001aX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0014\u0010*\u001a\u00020+8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-¨\u00068"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "listener", "Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;", "getListener", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;", "setListener", "(Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;)V", "vTitle", "Landroid/widget/TextView;", "getVTitle", "()Landroid/widget/TextView;", "setVTitle", "(Landroid/widget/TextView;)V", "vDesc", "getVDesc", "setVDesc", "vPositive", "getVPositive", "setVPositive", "vNegative", "getVNegative", "setVNegative", "vClose", "Landroid/view/View;", "getVClose", "()Landroid/view/View;", "setVClose", "(Landroid/view/View;)V", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onStart", "", "onViewCreated", "view", "layoutId", "", "getLayoutId", "()I", "setContent", "title", "", "desc", "button1", "button2", com.alipay.sdk.authjs.a.f7124i, "show", "manager", "Landroidx/fragment/app/FragmentManager;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nModPromptDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModPromptDialog.kt\ncom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,122:1\n1#2:123\n*E\n"})
public class ModPromptDialog extends DialogFragment {

    @Nullable
    private ModPromptCallback listener;
    public View vClose;
    public TextView vDesc;
    public TextView vNegative;
    public TextView vPositive;
    public TextView vTitle;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$3(ModPromptDialog modPromptDialog, View view) {
        ModPromptCallback modPromptCallback = modPromptDialog.listener;
        if (modPromptCallback != null) {
            modPromptCallback.callback1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$4(ModPromptDialog modPromptDialog, View view) {
        ModPromptCallback modPromptCallback = modPromptDialog.listener;
        if (modPromptCallback != null) {
            modPromptCallback.callback2();
        }
    }

    public static /* synthetic */ void setContent$default(ModPromptDialog modPromptDialog, String str, String str2, String str3, String str4, ModPromptCallback modPromptCallback, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setContent");
        }
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        if ((i10 & 4) != 0) {
            str3 = null;
        }
        if ((i10 & 8) != 0) {
            str4 = null;
        }
        if ((i10 & 16) != 0) {
            modPromptCallback = null;
        }
        modPromptDialog.setContent(str, str2, str3, str4, modPromptCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setContent$lambda$10(ModPromptCallback modPromptCallback, View view) {
        if (modPromptCallback != null) {
            modPromptCallback.callback2();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setContent$lambda$9(ModPromptCallback modPromptCallback, View view) {
        if (modPromptCallback != null) {
            modPromptCallback.callback1();
        }
    }

    public int getLayoutId() {
        return R.layout.dialog_mod_prompt;
    }

    @Nullable
    public final ModPromptCallback getListener() {
        return this.listener;
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

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View viewInflate = inflater.inflate(getLayoutId(), container, false);
        setVTitle((TextView) viewInflate.findViewById(R.id.tv_title));
        setVDesc((TextView) viewInflate.findViewById(R.id.tv_desc));
        setVPositive((TextView) viewInflate.findViewById(R.id.tv_mod_opt_left));
        setVNegative((TextView) viewInflate.findViewById(R.id.tv_mod_opt_right));
        setVClose(viewInflate.findViewById(R.id.ivClose));
        getVClose().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f48974b.dismiss();
            }
        });
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("gameName", "") : "";
        String string2 = getString(R.string.mod_prompt_tips);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        Bundle arguments2 = getArguments();
        String string3 = arguments2 != null ? arguments2.getString("desc", "") : "";
        if (string3.length() == 0) {
            string3 = getString(R.string.mod_prompt_game_incompatible, string, "" + Build.VERSION.RELEASE);
        }
        String string4 = getString(R.string.game_start_continue);
        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
        String string5 = getString(R.string.game_start_standard);
        Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
        getVTitle().setText(string2);
        getVDesc().setText(string3);
        getVPositive().setText(string4);
        getVNegative().setText(string5);
        getVPositive().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ModPromptDialog.onCreateView$lambda$3(this.f48975b, view);
            }
        });
        getVNegative().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ModPromptDialog.onCreateView$lambda$4(this.f48976b, view);
            }
        });
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        requireActivity().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        Dialog dialog = getDialog();
        Intrinsics.checkNotNull(dialog);
        Window window = dialog.getWindow();
        Intrinsics.checkNotNull(window);
        int i10 = displayMetrics.widthPixels;
        Dialog dialog2 = getDialog();
        Intrinsics.checkNotNull(dialog2);
        Window window2 = dialog2.getWindow();
        Intrinsics.checkNotNull(window2);
        window.setLayout(i10, window2.getAttributes().height);
        Dialog dialog3 = getDialog();
        Intrinsics.checkNotNull(dialog3);
        Window window3 = dialog3.getWindow();
        Intrinsics.checkNotNull(window3);
        window3.setBackgroundDrawable(new ColorDrawable(0));
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
    }

    public final void setContent(@Nullable String title, @Nullable String desc, @Nullable String button1, @Nullable String button2, @Nullable final ModPromptCallback callback) {
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
        getVPositive().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ModPromptDialog.setContent$lambda$9(callback, view);
            }
        });
        getVNegative().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ModPromptDialog.setContent$lambda$10(callback, view);
            }
        });
    }

    public final void setListener(@Nullable ModPromptCallback modPromptCallback) {
        this.listener = modPromptCallback;
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

    public final void show(@NotNull FragmentManager manager) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        super.show(manager, "prompt");
    }
}
