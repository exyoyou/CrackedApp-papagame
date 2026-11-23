package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
class TimePickerView extends ConstraintLayout implements TimePickerControls {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final String f32352k = "android.view.View";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Chip f32353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Chip f32354c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ClockHandView f32355d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ClockFaceView f32356e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final MaterialButtonToggleGroup f32357f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final View.OnClickListener f32358g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private e f32359h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private f f32360i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private d f32361j;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TimePickerView.this.f32360i != null) {
                TimePickerView.this.f32360i.d(((Integer) view.getTag(R.id.selection_type)).intValue());
            }
        }
    }

    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            d dVar = TimePickerView.this.f32361j;
            if (dVar == null) {
                return false;
            }
            dVar.l();
            return true;
        }
    }

    class c implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GestureDetector f32364b;

        c(GestureDetector gestureDetector) {
            this.f32364b = gestureDetector;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (((Checkable) view).isChecked()) {
                return this.f32364b.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    interface d {
        void l();
    }

    interface e {
        void c(int i10);
    }

    interface f {
        void d(int i10);
    }

    public TimePickerView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(MaterialButtonToggleGroup materialButtonToggleGroup, int i10, boolean z10) {
        e eVar;
        if (z10 && (eVar = this.f32359h) != null) {
            eVar.c(i10 == R.id.material_clock_period_pm_button ? 1 : 0);
        }
    }

    private void u() {
        Chip chip = this.f32353b;
        int i10 = R.id.selection_type;
        chip.setTag(i10, 12);
        this.f32354c.setTag(i10, 10);
        this.f32353b.setOnClickListener(this.f32358g);
        this.f32354c.setOnClickListener(this.f32358g);
        this.f32353b.setAccessibilityClassName(f32352k);
        this.f32354c.setAccessibilityClassName(f32352k);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void v() {
        c cVar = new c(new GestureDetector(getContext(), new b()));
        this.f32353b.setOnTouchListener(cVar);
        this.f32354c.setOnTouchListener(cVar);
    }

    private void x(Chip chip, boolean z10) {
        chip.setChecked(z10);
        ViewCompat.setAccessibilityLiveRegion(chip, z10 ? 2 : 0);
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    public void a(int i10) {
        x(this.f32353b, i10 == 12);
        x(this.f32354c, i10 == 10);
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    @SuppressLint({"DefaultLocale"})
    public void b(int i10, int i11, int i12) {
        this.f32357f.e(i10 == 1 ? R.id.material_clock_period_pm_button : R.id.material_clock_period_am_button);
        Locale locale = getResources().getConfiguration().locale;
        String str = String.format(locale, TimeModel.f32343i, Integer.valueOf(i12));
        String str2 = String.format(locale, TimeModel.f32343i, Integer.valueOf(i11));
        if (!TextUtils.equals(this.f32353b.getText(), str)) {
            this.f32353b.setText(str);
        }
        if (TextUtils.equals(this.f32354c.getText(), str2)) {
            return;
        }
        this.f32354c.setText(str2);
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    public void c(String[] strArr, @StringRes int i10) {
        this.f32356e.c(strArr, i10);
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    public void d(float f10) {
        this.f32355d.q(f10);
    }

    public void i(ClockHandView.c cVar) {
        this.f32355d.b(cVar);
    }

    int j() {
        return this.f32356e.s();
    }

    public void l(boolean z10) {
        this.f32355d.n(z10);
    }

    void m(int i10) {
        this.f32356e.w(i10);
    }

    public void n(float f10, boolean z10) {
        this.f32355d.r(f10, z10);
    }

    public void o(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f32353b, accessibilityDelegateCompat);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (view == this && i10 == 0) {
            this.f32354c.sendAccessibilityEvent(8);
        }
    }

    public void p(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f32354c, accessibilityDelegateCompat);
    }

    public void q(ClockHandView.b bVar) {
        this.f32355d.u(bVar);
    }

    void r(@Nullable d dVar) {
        this.f32361j = dVar;
    }

    void s(e eVar) {
        this.f32359h = eVar;
    }

    void t(f fVar) {
        this.f32360i = fVar;
    }

    public void w() {
        this.f32357f.setVisibility(0);
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f32358g = new a();
        LayoutInflater.from(context).inflate(R.layout.material_timepicker, this);
        this.f32356e = (ClockFaceView) findViewById(R.id.material_clock_face);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R.id.material_clock_period_toggle);
        this.f32357f = materialButtonToggleGroup;
        materialButtonToggleGroup.b(new MaterialButtonToggleGroup.d() { // from class: com.google.android.material.timepicker.m
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.d
            public final void a(MaterialButtonToggleGroup materialButtonToggleGroup2, int i11, boolean z10) {
                this.f32441a.k(materialButtonToggleGroup2, i11, z10);
            }
        });
        this.f32353b = (Chip) findViewById(R.id.material_minute_tv);
        this.f32354c = (Chip) findViewById(R.id.material_hour_tv);
        this.f32355d = (ClockHandView) findViewById(R.id.material_clock_hand);
        v();
        u();
    }
}
