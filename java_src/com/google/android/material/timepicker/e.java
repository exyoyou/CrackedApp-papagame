package com.google.android.material.timepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class e extends DialogFragment implements TimePickerView.d {
    static final String A = "TIME_PICKER_TIME_MODEL";
    static final String B = "TIME_PICKER_INPUT_MODE";
    static final String C = "TIME_PICKER_TITLE_RES";
    static final String D = "TIME_PICKER_TITLE_TEXT";
    static final String E = "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES";
    static final String F = "TIME_PICKER_POSITIVE_BUTTON_TEXT";
    static final String G = "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES";
    static final String H = "TIME_PICKER_NEGATIVE_BUTTON_TEXT";
    static final String I = "TIME_PICKER_OVERRIDE_THEME_RES_ID";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f32369y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f32370z = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TimePickerView f32375g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ViewStub f32376h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private h f32377i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private l f32378j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private i f32379k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @DrawableRes
    private int f32380l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @DrawableRes
    private int f32381m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private CharSequence f32383o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private CharSequence f32385q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private CharSequence f32387s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private MaterialButton f32388t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Button f32389u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private TimeModel f32391w;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<View.OnClickListener> f32371c = new LinkedHashSet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<View.OnClickListener> f32372d = new LinkedHashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set<DialogInterface.OnCancelListener> f32373e = new LinkedHashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Set<DialogInterface.OnDismissListener> f32374f = new LinkedHashSet();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @StringRes
    private int f32382n = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @StringRes
    private int f32384p = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @StringRes
    private int f32386r = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f32390v = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f32392x = 0;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it2 = e.this.f32371c.iterator();
            while (it2.hasNext()) {
                ((View.OnClickListener) it2.next()).onClick(view);
            }
            e.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it2 = e.this.f32372d.iterator();
            while (it2.hasNext()) {
                ((View.OnClickListener) it2.next()).onClick(view);
            }
            e.this.dismiss();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e eVar = e.this;
            eVar.f32390v = eVar.f32390v == 0 ? 1 : 0;
            e eVar2 = e.this;
            eVar2.u0(eVar2.f32388t);
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        private Integer f32397b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CharSequence f32399d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private CharSequence f32401f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private CharSequence f32403h;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TimeModel f32396a = new TimeModel();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @StringRes
        private int f32398c = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @StringRes
        private int f32400e = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @StringRes
        private int f32402g = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f32404i = 0;

        @NonNull
        public e j() {
            return e.k0(this);
        }

        @NonNull
        @CanIgnoreReturnValue
        public d k(@IntRange(from = 0, to = 23) int i10) {
            this.f32396a.B(i10);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public d l(int i10) {
            this.f32397b = Integer.valueOf(i10);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public d m(@IntRange(from = 0, to = 59) int i10) {
            this.f32396a.C(i10);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public d n(@StringRes int i10) {
            this.f32402g = i10;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public d o(@Nullable CharSequence charSequence) {
            this.f32403h = charSequence;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public d p(@StringRes int i10) {
            this.f32400e = i10;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public d q(@Nullable CharSequence charSequence) {
            this.f32401f = charSequence;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public d r(@StyleRes int i10) {
            this.f32404i = i10;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public d s(int i10) {
            TimeModel timeModel = this.f32396a;
            int i11 = timeModel.f32348e;
            int i12 = timeModel.f32349f;
            TimeModel timeModel2 = new TimeModel(i10);
            this.f32396a = timeModel2;
            timeModel2.C(i12);
            this.f32396a.B(i11);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public d t(@StringRes int i10) {
            this.f32398c = i10;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public d u(@Nullable CharSequence charSequence) {
            this.f32399d = charSequence;
            return this;
        }
    }

    private Pair<Integer, Integer> c0(int i10) {
        if (i10 == 0) {
            return new Pair<>(Integer.valueOf(this.f32380l), Integer.valueOf(R.string.material_timepicker_text_input_mode_description));
        }
        if (i10 == 1) {
            return new Pair<>(Integer.valueOf(this.f32381m), Integer.valueOf(R.string.material_timepicker_clock_mode_description));
        }
        throw new IllegalArgumentException("no icon for mode: " + i10);
    }

    private int g0() {
        int i10 = this.f32392x;
        if (i10 != 0) {
            return i10;
        }
        TypedValue typedValueA = com.google.android.material.resources.b.a(requireContext(), R.attr.materialTimePickerTheme);
        if (typedValueA == null) {
            return 0;
        }
        return typedValueA.data;
    }

    private i i0(int i10, @NonNull TimePickerView timePickerView, @NonNull ViewStub viewStub) {
        if (i10 != 0) {
            if (this.f32378j == null) {
                this.f32378j = new l((LinearLayout) viewStub.inflate(), this.f32391w);
            }
            this.f32378j.f();
            return this.f32378j;
        }
        h hVar = this.f32377i;
        if (hVar == null) {
            hVar = new h(timePickerView, this.f32391w);
        }
        this.f32377i = hVar;
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j0() {
        i iVar = this.f32379k;
        if (iVar instanceof l) {
            ((l) iVar).i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static e k0(@NonNull d dVar) {
        e eVar = new e();
        Bundle bundle = new Bundle();
        bundle.putParcelable(A, dVar.f32396a);
        if (dVar.f32397b != null) {
            bundle.putInt(B, dVar.f32397b.intValue());
        }
        bundle.putInt(C, dVar.f32398c);
        if (dVar.f32399d != null) {
            bundle.putCharSequence(D, dVar.f32399d);
        }
        bundle.putInt(E, dVar.f32400e);
        if (dVar.f32401f != null) {
            bundle.putCharSequence(F, dVar.f32401f);
        }
        bundle.putInt(G, dVar.f32402g);
        if (dVar.f32403h != null) {
            bundle.putCharSequence(H, dVar.f32403h);
        }
        bundle.putInt(I, dVar.f32404i);
        eVar.setArguments(bundle);
        return eVar;
    }

    private void p0(@Nullable Bundle bundle) {
        if (bundle == null) {
            return;
        }
        TimeModel timeModel = (TimeModel) bundle.getParcelable(A);
        this.f32391w = timeModel;
        if (timeModel == null) {
            this.f32391w = new TimeModel();
        }
        this.f32390v = bundle.getInt(B, this.f32391w.f32347d != 1 ? 0 : 1);
        this.f32382n = bundle.getInt(C, 0);
        this.f32383o = bundle.getCharSequence(D);
        this.f32384p = bundle.getInt(E, 0);
        this.f32385q = bundle.getCharSequence(F);
        this.f32386r = bundle.getInt(G, 0);
        this.f32387s = bundle.getCharSequence(H);
        this.f32392x = bundle.getInt(I, 0);
    }

    private void t0() {
        Button button = this.f32389u;
        if (button != null) {
            button.setVisibility(isCancelable() ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0(MaterialButton materialButton) {
        if (materialButton == null || this.f32375g == null || this.f32376h == null) {
            return;
        }
        i iVar = this.f32379k;
        if (iVar != null) {
            iVar.a();
        }
        i iVarI0 = i0(this.f32390v, this.f32375g, this.f32376h);
        this.f32379k = iVarI0;
        iVarI0.show();
        this.f32379k.invalidate();
        Pair<Integer, Integer> pairC0 = c0(this.f32390v);
        materialButton.setIconResource(((Integer) pairC0.first).intValue());
        materialButton.setContentDescription(getResources().getString(((Integer) pairC0.second).intValue()));
        materialButton.sendAccessibilityEvent(4);
    }

    public boolean U(@NonNull DialogInterface.OnCancelListener onCancelListener) {
        return this.f32373e.add(onCancelListener);
    }

    public boolean V(@NonNull DialogInterface.OnDismissListener onDismissListener) {
        return this.f32374f.add(onDismissListener);
    }

    public boolean W(@NonNull View.OnClickListener onClickListener) {
        return this.f32372d.add(onClickListener);
    }

    public boolean X(@NonNull View.OnClickListener onClickListener) {
        return this.f32371c.add(onClickListener);
    }

    public void Y() {
        this.f32373e.clear();
    }

    public void Z() {
        this.f32374f.clear();
    }

    public void a0() {
        this.f32372d.clear();
    }

    public void b0() {
        this.f32371c.clear();
    }

    @IntRange(from = 0, to = 23)
    public int d0() {
        return this.f32391w.f32348e % 24;
    }

    public int e0() {
        return this.f32390v;
    }

    @IntRange(from = 0, to = 59)
    public int f0() {
        return this.f32391w.f32349f;
    }

    @Nullable
    h h0() {
        return this.f32377i;
    }

    @Override // com.google.android.material.timepicker.TimePickerView.d
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void l() {
        this.f32390v = 1;
        u0(this.f32388t);
        this.f32378j.i();
    }

    public boolean l0(@NonNull DialogInterface.OnCancelListener onCancelListener) {
        return this.f32373e.remove(onCancelListener);
    }

    public boolean m0(@NonNull DialogInterface.OnDismissListener onDismissListener) {
        return this.f32374f.remove(onDismissListener);
    }

    public boolean n0(@NonNull View.OnClickListener onClickListener) {
        return this.f32372d.remove(onClickListener);
    }

    public boolean o0(@NonNull View.OnClickListener onClickListener) {
        return this.f32371c.remove(onClickListener);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it2 = this.f32373e.iterator();
        while (it2.hasNext()) {
            it2.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        p0(bundle);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), g0());
        Context context = dialog.getContext();
        int i10 = R.attr.materialTimePickerStyle;
        int i11 = R.style.Widget_MaterialComponents_TimePicker;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context, null, i10, i11);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.MaterialTimePicker, i10, i11);
        this.f32381m = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialTimePicker_clockIcon, 0);
        this.f32380l = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialTimePicker_keyboardIcon, 0);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.MaterialTimePicker_backgroundTint, 0);
        typedArrayObtainStyledAttributes.recycle();
        materialShapeDrawable.a0(context);
        materialShapeDrawable.p0(ColorStateList.valueOf(color));
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(materialShapeDrawable);
        window.requestFeature(1);
        window.setLayout(-2, -2);
        materialShapeDrawable.o0(ViewCompat.getElevation(window.getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(R.layout.material_timepicker_dialog, viewGroup);
        TimePickerView timePickerView = (TimePickerView) viewGroup2.findViewById(R.id.material_timepicker_view);
        this.f32375g = timePickerView;
        timePickerView.r(this);
        this.f32376h = (ViewStub) viewGroup2.findViewById(R.id.material_textinput_timepicker);
        this.f32388t = (MaterialButton) viewGroup2.findViewById(R.id.material_timepicker_mode_button);
        TextView textView = (TextView) viewGroup2.findViewById(R.id.header_title);
        int i10 = this.f32382n;
        if (i10 != 0) {
            textView.setText(i10);
        } else if (!TextUtils.isEmpty(this.f32383o)) {
            textView.setText(this.f32383o);
        }
        u0(this.f32388t);
        Button button = (Button) viewGroup2.findViewById(R.id.material_timepicker_ok_button);
        button.setOnClickListener(new a());
        int i11 = this.f32384p;
        if (i11 != 0) {
            button.setText(i11);
        } else if (!TextUtils.isEmpty(this.f32385q)) {
            button.setText(this.f32385q);
        }
        Button button2 = (Button) viewGroup2.findViewById(R.id.material_timepicker_cancel_button);
        this.f32389u = button2;
        button2.setOnClickListener(new b());
        int i12 = this.f32386r;
        if (i12 != 0) {
            this.f32389u.setText(i12);
        } else if (!TextUtils.isEmpty(this.f32387s)) {
            this.f32389u.setText(this.f32387s);
        }
        t0();
        this.f32388t.setOnClickListener(new c());
        return viewGroup2;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f32379k = null;
        this.f32377i = null;
        this.f32378j = null;
        TimePickerView timePickerView = this.f32375g;
        if (timePickerView != null) {
            timePickerView.r(null);
            this.f32375g = null;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it2 = this.f32374f.iterator();
        while (it2.hasNext()) {
            it2.next().onDismiss(dialogInterface);
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(A, this.f32391w);
        bundle.putInt(B, this.f32390v);
        bundle.putInt(C, this.f32382n);
        bundle.putCharSequence(D, this.f32383o);
        bundle.putInt(E, this.f32384p);
        bundle.putCharSequence(F, this.f32385q);
        bundle.putInt(G, this.f32386r);
        bundle.putCharSequence(H, this.f32387s);
        bundle.putInt(I, this.f32392x);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.f32379k instanceof l) {
            view.postDelayed(new Runnable() { // from class: com.google.android.material.timepicker.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f32368b.j0();
                }
            }, 100L);
        }
    }

    @VisibleForTesting
    void q0(@Nullable i iVar) {
        this.f32379k = iVar;
    }

    public void r0(@IntRange(from = 0, to = 23) int i10) {
        this.f32391w.A(i10);
        i iVar = this.f32379k;
        if (iVar != null) {
            iVar.invalidate();
        }
    }

    public void s0(@IntRange(from = 0, to = 59) int i10) {
        this.f32391w.C(i10);
        i iVar = this.f32379k;
        if (iVar != null) {
            iVar.invalidate();
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public void setCancelable(boolean z10) {
        super.setCancelable(z10);
        t0();
    }
}
