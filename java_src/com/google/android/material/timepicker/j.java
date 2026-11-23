package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: loaded from: classes5.dex */
class j implements TextView.OnEditorActionListener, View.OnKeyListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ChipTextInputComboView f32419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ChipTextInputComboView f32420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TimeModel f32421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f32422e = false;

    j(ChipTextInputComboView chipTextInputComboView, ChipTextInputComboView chipTextInputComboView2, TimeModel timeModel) {
        this.f32419b = chipTextInputComboView;
        this.f32420c = chipTextInputComboView2;
        this.f32421d = timeModel;
    }

    private void b(EditText editText) {
        if (editText.getSelectionStart() == 0 && editText.length() == 2) {
            editText.getText().clear();
        }
    }

    private void c(int i10) {
        this.f32420c.setChecked(i10 == 12);
        this.f32419b.setChecked(i10 == 10);
        this.f32421d.f32350g = i10;
    }

    private boolean d(int i10, KeyEvent keyEvent, EditText editText) {
        Editable text = editText.getText();
        if (text == null) {
            return false;
        }
        if (i10 >= 7 && i10 <= 16 && keyEvent.getAction() == 1 && editText.getSelectionStart() == 2 && text.length() == 2) {
            c(12);
            return true;
        }
        b(editText);
        return false;
    }

    private boolean e(int i10, KeyEvent keyEvent, EditText editText) {
        if (i10 == 67 && keyEvent.getAction() == 0 && TextUtils.isEmpty(editText.getText())) {
            c(10);
            return true;
        }
        b(editText);
        return false;
    }

    public void a() {
        TextInputLayout textInputLayoutF = this.f32419b.f();
        TextInputLayout textInputLayoutF2 = this.f32420c.f();
        EditText editText = textInputLayoutF.getEditText();
        EditText editText2 = textInputLayoutF2.getEditText();
        editText.setImeOptions(268435461);
        editText2.setImeOptions(268435462);
        editText.setOnEditorActionListener(this);
        editText.setOnKeyListener(this);
        editText2.setOnKeyListener(this);
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
        boolean z10 = i10 == 5;
        if (z10) {
            c(12);
        }
        return z10;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i10, KeyEvent keyEvent) {
        if (this.f32422e) {
            return false;
        }
        this.f32422e = true;
        EditText editText = (EditText) view;
        boolean zE = this.f32421d.f32350g == 12 ? e(i10, keyEvent, editText) : d(i10, keyEvent, editText);
        this.f32422e = false;
        return zE;
    }
}
