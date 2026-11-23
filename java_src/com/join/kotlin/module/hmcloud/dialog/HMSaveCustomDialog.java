package com.join.kotlin.module.hmcloud.dialog;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import com.join.android.app.mgsim.wufun.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u0012\u0010\u001f\u001a\u00020\u001a2\b\u0010 \u001a\u0004\u0018\u00010!H\u0014J\u0010\u0010\"\u001a\u00020\u001a2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0019R\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.¢\u0006\u0002\n\u0000R(\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006#"}, d2 = {"Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;", "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "themeResId", "", "(Landroid/content/Context;I)V", "save", "Landroid/view/View;", "getSave", "()Landroid/view/View;", "setSave", "(Landroid/view/View;)V", "cancel", "getCancel", "setCancel", "close", "getClose", "setClose", "name", "Landroid/widget/EditText;", "onSave", "Lkotlin/Function1;", "", "", "getOnSave", "()Lkotlin/jvm/functions/Function1;", "setOnSave", "(Lkotlin/jvm/functions/Function1;)V", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "setName", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMSaveCustomDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMSaveCustomDialog.kt\ncom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,47:1\n65#2,16:48\n93#2,3:64\n*S KotlinDebug\n*F\n+ 1 HMSaveCustomDialog.kt\ncom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog\n*L\n33#1:48,16\n33#1:64,3\n*E\n"})
public final class HMSaveCustomDialog extends HMBaseDialog {
    public View cancel;
    public View close;
    private EditText name;

    @Nullable
    private Function1<? super String, Unit> onSave;
    public View save;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMSaveCustomDialog(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$2(HMSaveCustomDialog hMSaveCustomDialog, View view) {
        Function1<? super String, Unit> function1 = hMSaveCustomDialog.onSave;
        if (function1 != null) {
            EditText editText = hMSaveCustomDialog.name;
            if (editText == null) {
                Intrinsics.throwUninitializedPropertyAccessException("name");
                editText = null;
            }
            function1.invoke(editText.getText().toString());
        }
    }

    @NotNull
    public final View getCancel() {
        View view = this.cancel;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("cancel");
        return null;
    }

    @NotNull
    public final View getClose() {
        View view = this.close;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("close");
        return null;
    }

    @Nullable
    public final Function1<String, Unit> getOnSave() {
        return this.onSave;
    }

    @NotNull
    public final View getSave() {
        View view = this.save;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("save");
        return null;
    }

    @Override // android.app.Dialog
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_hm_save_custom);
        this.name = (EditText) findViewById(R.id.name);
        setSave(findViewById(R.id.confirm));
        setCancel(findViewById(R.id.cancel));
        setClose(findViewById(R.id.close));
        getCancel().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.w0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f48665b.dismiss();
            }
        });
        getClose().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.x0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f48667b.dismiss();
            }
        });
        getSave().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.y0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HMSaveCustomDialog.onCreate$lambda$2(this.f48669b, view);
            }
        });
        EditText editText = this.name;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("name");
            editText = null;
        }
        editText.addTextChangedListener(new TextWatcher() { // from class: com.join.kotlin.module.hmcloud.dialog.HMSaveCustomDialog$onCreate$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable s10) {
                if (s10 != null) {
                    String strReplace = new Regex("[\n\r\t]").replace(s10.toString(), "");
                    if (Intrinsics.areEqual(strReplace, s10.toString())) {
                        return;
                    }
                    EditText editText2 = this.this$0.name;
                    EditText editText3 = null;
                    if (editText2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("name");
                        editText2 = null;
                    }
                    editText2.setText(strReplace);
                    EditText editText4 = this.this$0.name;
                    if (editText4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("name");
                    } else {
                        editText3 = editText4;
                    }
                    editText3.setSelection(strReplace.length());
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence text, int start, int before, int count) {
            }
        });
    }

    public final void setCancel(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.cancel = view;
    }

    public final void setClose(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.close = view;
    }

    public final void setName(@Nullable String name) {
        EditText editText = this.name;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("name");
            editText = null;
        }
        if (name == null) {
            name = "";
        }
        editText.setText(name);
    }

    public final void setOnSave(@Nullable Function1<? super String, Unit> function1) {
        this.onSave = function1;
    }

    public final void setSave(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.save = view;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMSaveCustomDialog(@NotNull Context context, int i10) {
        super(context, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
