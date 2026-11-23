package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.chip.Chip;
import com.google.android.material.internal.f0;
import com.google.android.material.internal.p0;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Chip f32286b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TextInputLayout f32287c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final EditText f32288d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextWatcher f32289e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f32290f;

    private class b extends f0 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final String f32291c = "00";

        private b() {
        }

        @Override // com.google.android.material.internal.f0, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView.this.f32286b.setText(ChipTextInputComboView.this.d("00"));
                return;
            }
            String strD = ChipTextInputComboView.this.d(editable);
            Chip chip = ChipTextInputComboView.this.f32286b;
            if (TextUtils.isEmpty(strD)) {
                strD = ChipTextInputComboView.this.d("00");
            }
            chip.setText(strD);
        }
    }

    public ChipTextInputComboView(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d(CharSequence charSequence) {
        return TimeModel.a(getResources(), charSequence);
    }

    private void k() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f32288d.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        }
    }

    public void c(InputFilter inputFilter) {
        InputFilter[] filters = this.f32288d.getFilters();
        InputFilter[] inputFilterArr = (InputFilter[]) Arrays.copyOf(filters, filters.length + 1);
        inputFilterArr[filters.length] = inputFilter;
        this.f32288d.setFilters(inputFilterArr);
    }

    @VisibleForTesting
    CharSequence e() {
        return this.f32286b.getText();
    }

    public TextInputLayout f() {
        return this.f32287c;
    }

    public void g(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f32286b, accessibilityDelegateCompat);
    }

    public void h(boolean z10) {
        this.f32288d.setCursorVisible(z10);
    }

    public void i(CharSequence charSequence) {
        this.f32290f.setText(charSequence);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f32286b.isChecked();
    }

    public void j(CharSequence charSequence) {
        String strD = d(charSequence);
        this.f32286b.setText(strD);
        if (TextUtils.isEmpty(strD)) {
            return;
        }
        this.f32288d.removeTextChangedListener(this.f32289e);
        this.f32288d.setText(strD);
        this.f32288d.addTextChangedListener(this.f32289e);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        k();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z10) {
        this.f32286b.setChecked(z10);
        this.f32288d.setVisibility(z10 ? 0 : 4);
        this.f32286b.setVisibility(z10 ? 8 : 0);
        if (isChecked()) {
            p0.z(this.f32288d, false);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f32286b.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i10, Object obj) {
        this.f32286b.setTag(i10, obj);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.f32286b.toggle();
    }

    public ChipTextInputComboView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ChipTextInputComboView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        Chip chip = (Chip) layoutInflaterFrom.inflate(R.layout.material_time_chip, (ViewGroup) this, false);
        this.f32286b = chip;
        chip.setAccessibilityClassName("android.view.View");
        TextInputLayout textInputLayout = (TextInputLayout) layoutInflaterFrom.inflate(R.layout.material_time_input, (ViewGroup) this, false);
        this.f32287c = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.f32288d = editText;
        editText.setVisibility(4);
        b bVar = new b();
        this.f32289e = bVar;
        editText.addTextChangedListener(bVar);
        k();
        addView(chip);
        addView(textInputLayout);
        this.f32290f = (TextView) findViewById(R.id.material_label);
        editText.setId(ViewCompat.generateViewId());
        ViewCompat.setLabelFor(this.f32290f, editText.getId());
        editText.setSaveEnabled(false);
        editText.setLongClickable(false);
    }
}
