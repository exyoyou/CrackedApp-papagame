package com.google.android.material.textfield;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
class y extends t {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f32273e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private EditText f32274f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final View.OnClickListener f32275g;

    y(@NonNull s sVar, @DrawableRes int i10) {
        super(sVar);
        this.f32273e = R.drawable.design_password_eye;
        this.f32275g = new View.OnClickListener() { // from class: com.google.android.material.textfield.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f32272b.y(view);
            }
        };
        if (i10 != 0) {
            this.f32273e = i10;
        }
    }

    private boolean w() {
        EditText editText = this.f32274f;
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private static boolean x(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(View view) {
        EditText editText = this.f32274f;
        if (editText == null) {
            return;
        }
        int selectionEnd = editText.getSelectionEnd();
        if (w()) {
            this.f32274f.setTransformationMethod(null);
        } else {
            this.f32274f.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
        if (selectionEnd >= 0) {
            this.f32274f.setSelection(selectionEnd);
        }
        r();
    }

    @Override // com.google.android.material.textfield.t
    void b(CharSequence charSequence, int i10, int i11, int i12) {
        r();
    }

    @Override // com.google.android.material.textfield.t
    @StringRes
    int c() {
        return R.string.password_toggle_content_description;
    }

    @Override // com.google.android.material.textfield.t
    @DrawableRes
    int d() {
        return this.f32273e;
    }

    @Override // com.google.android.material.textfield.t
    View.OnClickListener f() {
        return this.f32275g;
    }

    @Override // com.google.android.material.textfield.t
    boolean l() {
        return true;
    }

    @Override // com.google.android.material.textfield.t
    boolean m() {
        return !w();
    }

    @Override // com.google.android.material.textfield.t
    void n(@Nullable EditText editText) {
        this.f32274f = editText;
        r();
    }

    @Override // com.google.android.material.textfield.t
    void s() {
        if (x(this.f32274f)) {
            this.f32274f.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    @Override // com.google.android.material.textfield.t
    void u() {
        EditText editText = this.f32274f;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
