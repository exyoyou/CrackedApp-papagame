package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.internal.f0;
import com.google.android.material.internal.p0;
import java.lang.reflect.Field;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
class l implements TimePickerView.f, i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LinearLayout f32424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TimeModel f32425c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TextWatcher f32426d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TextWatcher f32427e = new b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ChipTextInputComboView f32428f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ChipTextInputComboView f32429g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final j f32430h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final EditText f32431i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final EditText f32432j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private MaterialButtonToggleGroup f32433k;

    class a extends f0 {
        a() {
        }

        @Override // com.google.android.material.internal.f0, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    l.this.f32425c.C(0);
                } else {
                    l.this.f32425c.C(Integer.parseInt(editable.toString()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    class b extends f0 {
        b() {
        }

        @Override // com.google.android.material.internal.f0, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    l.this.f32425c.A(0);
                } else {
                    l.this.f32425c.A(Integer.parseInt(editable.toString()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l.this.d(((Integer) view.getTag(R.id.selection_type)).intValue());
        }
    }

    class d extends com.google.android.material.timepicker.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TimeModel f32437b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Context context, int i10, TimeModel timeModel) {
            super(context, i10);
            this.f32437b = timeModel;
        }

        @Override // com.google.android.material.timepicker.b, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(this.f32437b.d(), String.valueOf(this.f32437b.f())));
        }
    }

    class e extends com.google.android.material.timepicker.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TimeModel f32439b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(Context context, int i10, TimeModel timeModel) {
            super(context, i10);
            this.f32439b = timeModel;
        }

        @Override // com.google.android.material.timepicker.b, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R.string.material_minute_suffix, String.valueOf(this.f32439b.f32349f)));
        }
    }

    public l(LinearLayout linearLayout, TimeModel timeModel) {
        this.f32424b = linearLayout;
        this.f32425c = timeModel;
        Resources resources = linearLayout.getResources();
        ChipTextInputComboView chipTextInputComboView = (ChipTextInputComboView) linearLayout.findViewById(R.id.material_minute_text_input);
        this.f32428f = chipTextInputComboView;
        ChipTextInputComboView chipTextInputComboView2 = (ChipTextInputComboView) linearLayout.findViewById(R.id.material_hour_text_input);
        this.f32429g = chipTextInputComboView2;
        int i10 = R.id.material_label;
        TextView textView = (TextView) chipTextInputComboView.findViewById(i10);
        TextView textView2 = (TextView) chipTextInputComboView2.findViewById(i10);
        textView.setText(resources.getString(R.string.material_timepicker_minute));
        textView2.setText(resources.getString(R.string.material_timepicker_hour));
        int i11 = R.id.selection_type;
        chipTextInputComboView.setTag(i11, 12);
        chipTextInputComboView2.setTag(i11, 10);
        if (timeModel.f32347d == 0) {
            l();
        }
        c cVar = new c();
        chipTextInputComboView2.setOnClickListener(cVar);
        chipTextInputComboView.setOnClickListener(cVar);
        chipTextInputComboView2.c(timeModel.w());
        chipTextInputComboView.c(timeModel.y());
        this.f32431i = chipTextInputComboView2.f().getEditText();
        this.f32432j = chipTextInputComboView.f().getEditText();
        this.f32430h = new j(chipTextInputComboView2, chipTextInputComboView, timeModel);
        chipTextInputComboView2.g(new d(linearLayout.getContext(), R.string.material_hour_selection, timeModel));
        chipTextInputComboView.g(new e(linearLayout.getContext(), R.string.material_minute_selection, timeModel));
        initialize();
    }

    private void e() {
        this.f32431i.addTextChangedListener(this.f32427e);
        this.f32432j.addTextChangedListener(this.f32426d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(MaterialButtonToggleGroup materialButtonToggleGroup, int i10, boolean z10) {
        if (z10) {
            this.f32425c.D(i10 == R.id.material_clock_period_pm_button ? 1 : 0);
        }
    }

    private void h() {
        this.f32431i.removeTextChangedListener(this.f32427e);
        this.f32432j.removeTextChangedListener(this.f32426d);
    }

    private static void j(EditText editText, @ColorInt int i10) {
        try {
            Context context = editText.getContext();
            Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
            declaredField.setAccessible(true);
            int i11 = declaredField.getInt(editText);
            Field declaredField2 = TextView.class.getDeclaredField("mEditor");
            declaredField2.setAccessible(true);
            Object obj = declaredField2.get(editText);
            Field declaredField3 = obj.getClass().getDeclaredField("mCursorDrawable");
            declaredField3.setAccessible(true);
            Drawable drawable = AppCompatResources.getDrawable(context, i11);
            drawable.setColorFilter(i10, PorterDuff.Mode.SRC_IN);
            declaredField3.set(obj, new Drawable[]{drawable, drawable});
        } catch (Throwable unused) {
        }
    }

    private void k(TimeModel timeModel) {
        h();
        Locale locale = this.f32424b.getResources().getConfiguration().locale;
        String str = String.format(locale, TimeModel.f32343i, Integer.valueOf(timeModel.f32349f));
        String str2 = String.format(locale, TimeModel.f32343i, Integer.valueOf(timeModel.f()));
        this.f32428f.j(str);
        this.f32429g.j(str2);
        e();
        m();
    }

    private void l() {
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this.f32424b.findViewById(R.id.material_clock_period_toggle);
        this.f32433k = materialButtonToggleGroup;
        materialButtonToggleGroup.b(new MaterialButtonToggleGroup.d() { // from class: com.google.android.material.timepicker.k
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.d
            public final void a(MaterialButtonToggleGroup materialButtonToggleGroup2, int i10, boolean z10) {
                this.f32423a.g(materialButtonToggleGroup2, i10, z10);
            }
        });
        this.f32433k.setVisibility(0);
        m();
    }

    private void m() {
        MaterialButtonToggleGroup materialButtonToggleGroup = this.f32433k;
        if (materialButtonToggleGroup == null) {
            return;
        }
        materialButtonToggleGroup.e(this.f32425c.f32351h == 0 ? R.id.material_clock_period_am_button : R.id.material_clock_period_pm_button);
    }

    @Override // com.google.android.material.timepicker.i
    public void a() {
        View focusedChild = this.f32424b.getFocusedChild();
        if (focusedChild != null) {
            p0.r(focusedChild, false);
        }
        this.f32424b.setVisibility(8);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.f
    public void d(int i10) {
        this.f32425c.f32350g = i10;
        this.f32428f.setChecked(i10 == 12);
        this.f32429g.setChecked(i10 == 10);
        m();
    }

    public void f() {
        this.f32428f.setChecked(false);
        this.f32429g.setChecked(false);
    }

    public void i() {
        this.f32428f.setChecked(this.f32425c.f32350g == 12);
        this.f32429g.setChecked(this.f32425c.f32350g == 10);
    }

    @Override // com.google.android.material.timepicker.i
    public void initialize() {
        e();
        k(this.f32425c);
        this.f32430h.a();
    }

    @Override // com.google.android.material.timepicker.i
    public void invalidate() {
        k(this.f32425c);
    }

    @Override // com.google.android.material.timepicker.i
    public void show() {
        this.f32424b.setVisibility(0);
        d(this.f32425c.f32350g);
    }
}
