package com.google.android.material.datepicker;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.util.Pair;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.p0;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes5.dex */
public final class MaterialDatePicker<S> extends DialogFragment {
    private static final String G = "OVERRIDE_THEME_RES_ID";
    private static final String H = "DATE_SELECTOR_KEY";
    private static final String I = "CALENDAR_CONSTRAINTS_KEY";
    private static final String J = "DAY_VIEW_DECORATOR_KEY";
    private static final String K = "TITLE_TEXT_RES_ID_KEY";
    private static final String L = "TITLE_TEXT_KEY";
    private static final String M = "POSITIVE_BUTTON_TEXT_RES_ID_KEY";
    private static final String N = "POSITIVE_BUTTON_TEXT_KEY";
    private static final String O = "POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY";
    private static final String P = "POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY";
    private static final String Q = "NEGATIVE_BUTTON_TEXT_RES_ID_KEY";
    private static final String R = "NEGATIVE_BUTTON_TEXT_KEY";
    private static final String S = "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY";
    private static final String T = "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY";
    private static final String U = "INPUT_MODE_KEY";
    static final Object V = "CONFIRM_BUTTON_TAG";
    static final Object W = "CANCEL_BUTTON_TAG";
    static final Object X = "TOGGLE_BUTTON_TAG";
    public static final int Y = 0;
    public static final int Z = 1;
    private CheckableImageButton A;

    @Nullable
    private MaterialShapeDrawable B;
    private Button C;
    private boolean D;

    @Nullable
    private CharSequence E;

    @Nullable
    private CharSequence F;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LinkedHashSet<m<? super S>> f30437c = new LinkedHashSet<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LinkedHashSet<View.OnClickListener> f30438d = new LinkedHashSet<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LinkedHashSet<DialogInterface.OnCancelListener> f30439e = new LinkedHashSet<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final LinkedHashSet<DialogInterface.OnDismissListener> f30440f = new LinkedHashSet<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @StyleRes
    private int f30441g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private DateSelector<S> f30442h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private s<S> f30443i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private CalendarConstraints f30444j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private DayViewDecorator f30445k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private MaterialCalendar<S> f30446l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @StringRes
    private int f30447m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private CharSequence f30448n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f30449o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f30450p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @StringRes
    private int f30451q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private CharSequence f30452r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @StringRes
    private int f30453s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private CharSequence f30454t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @StringRes
    private int f30455u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private CharSequence f30456v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @StringRes
    private int f30457w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private CharSequence f30458x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private TextView f30459y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private TextView f30460z;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface InputMode {
    }

    class a implements View.OnClickListener {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it2 = MaterialDatePicker.this.f30437c.iterator();
            while (it2.hasNext()) {
                ((m) it2.next()).a(MaterialDatePicker.this.h0());
            }
            MaterialDatePicker.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it2 = MaterialDatePicker.this.f30438d.iterator();
            while (it2.hasNext()) {
                ((View.OnClickListener) it2.next()).onClick(view);
            }
            MaterialDatePicker.this.dismiss();
        }
    }

    class c implements OnApplyWindowInsetsListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f30463a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f30464b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f30465c;

        c(int i10, View view, int i11) {
            this.f30463a = i10;
            this.f30464b = view;
            this.f30465c = i11;
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            int i10 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).top;
            if (this.f30463a >= 0) {
                this.f30464b.getLayoutParams().height = this.f30463a + i10;
                View view2 = this.f30464b;
                view2.setLayoutParams(view2.getLayoutParams());
            }
            View view3 = this.f30464b;
            view3.setPadding(view3.getPaddingLeft(), this.f30465c + i10, this.f30464b.getPaddingRight(), this.f30464b.getPaddingBottom());
            return windowInsetsCompat;
        }
    }

    class d extends r<S> {
        d() {
        }

        @Override // com.google.android.material.datepicker.r
        public void a() {
            MaterialDatePicker.this.C.setEnabled(false);
        }

        @Override // com.google.android.material.datepicker.r
        public void b(S s10) {
            MaterialDatePicker materialDatePicker = MaterialDatePicker.this;
            materialDatePicker.x0(materialDatePicker.e0());
            MaterialDatePicker.this.C.setEnabled(MaterialDatePicker.this.b0().l());
        }
    }

    public static final class e<S> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final DateSelector<S> f30468a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        CalendarConstraints f30470c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        DayViewDecorator f30471d;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f30469b = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f30472e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        CharSequence f30473f = null;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f30474g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        CharSequence f30475h = null;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f30476i = 0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        CharSequence f30477j = null;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        int f30478k = 0;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        CharSequence f30479l = null;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        int f30480m = 0;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        CharSequence f30481n = null;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        @Nullable
        S f30482o = null;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        int f30483p = 0;

        private e(DateSelector<S> dateSelector) {
            this.f30468a = dateSelector;
        }

        private Month b() {
            if (!this.f30468a.o().isEmpty()) {
                Month monthM = Month.m(this.f30468a.o().iterator().next().longValue());
                if (f(monthM, this.f30470c)) {
                    return monthM;
                }
            }
            Month monthW = Month.w();
            return f(monthW, this.f30470c) ? monthW : this.f30470c.F();
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static <S> e<S> c(@NonNull DateSelector<S> dateSelector) {
            return new e<>(dateSelector);
        }

        @NonNull
        public static e<Long> d() {
            return new e<>(new SingleDateSelector());
        }

        @NonNull
        public static e<Pair<Long, Long>> e() {
            return new e<>(new RangeDateSelector());
        }

        private static boolean f(Month month, CalendarConstraints calendarConstraints) {
            return month.compareTo(calendarConstraints.F()) >= 0 && month.compareTo(calendarConstraints.y()) <= 0;
        }

        @NonNull
        public MaterialDatePicker<S> a() {
            if (this.f30470c == null) {
                this.f30470c = new CalendarConstraints.b().a();
            }
            if (this.f30472e == 0) {
                this.f30472e = this.f30468a.g();
            }
            S s10 = this.f30482o;
            if (s10 != null) {
                this.f30468a.i(s10);
            }
            if (this.f30470c.D() == null) {
                this.f30470c.J(b());
            }
            return MaterialDatePicker.o0(this);
        }

        @NonNull
        @CanIgnoreReturnValue
        public e<S> g(CalendarConstraints calendarConstraints) {
            this.f30470c = calendarConstraints;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public e<S> h(@Nullable DayViewDecorator dayViewDecorator) {
            this.f30471d = dayViewDecorator;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public e<S> i(int i10) {
            this.f30483p = i10;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public e<S> j(@StringRes int i10) {
            this.f30480m = i10;
            this.f30481n = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public e<S> k(@Nullable CharSequence charSequence) {
            this.f30481n = charSequence;
            this.f30480m = 0;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public e<S> l(@StringRes int i10) {
            this.f30478k = i10;
            this.f30479l = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public e<S> m(@Nullable CharSequence charSequence) {
            this.f30479l = charSequence;
            this.f30478k = 0;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public e<S> n(@StringRes int i10) {
            this.f30476i = i10;
            this.f30477j = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public e<S> o(@Nullable CharSequence charSequence) {
            this.f30477j = charSequence;
            this.f30476i = 0;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public e<S> p(@StringRes int i10) {
            this.f30474g = i10;
            this.f30475h = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public e<S> q(@Nullable CharSequence charSequence) {
            this.f30475h = charSequence;
            this.f30474g = 0;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public e<S> r(S s10) {
            this.f30482o = s10;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public e<S> s(@Nullable SimpleDateFormat simpleDateFormat) {
            this.f30468a.k(simpleDateFormat);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public e<S> t(@StyleRes int i10) {
            this.f30469b = i10;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public e<S> u(@StringRes int i10) {
            this.f30472e = i10;
            this.f30473f = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public e<S> v(@Nullable CharSequence charSequence) {
            this.f30473f = charSequence;
            this.f30472e = 0;
            return this;
        }
    }

    @NonNull
    private static Drawable Z(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, AppCompatResources.getDrawable(context, com.google.android.material.R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], AppCompatResources.getDrawable(context, com.google.android.material.R.drawable.material_ic_edit_black_24dp));
        return stateListDrawable;
    }

    private void a0(Window window) {
        if (this.D) {
            return;
        }
        View viewFindViewById = requireView().findViewById(com.google.android.material.R.id.fullscreen_header);
        com.google.android.material.internal.e.b(window, true, p0.j(viewFindViewById), null);
        ViewCompat.setOnApplyWindowInsetsListener(viewFindViewById, new c(viewFindViewById.getLayoutParams().height, viewFindViewById, viewFindViewById.getPaddingTop()));
        this.D = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DateSelector<S> b0() {
        if (this.f30442h == null) {
            this.f30442h = (DateSelector) getArguments().getParcelable(H);
        }
        return this.f30442h;
    }

    @Nullable
    private static CharSequence c0(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        String[] strArrSplit = TextUtils.split(String.valueOf(charSequence), "\n");
        return strArrSplit.length > 1 ? strArrSplit[0] : charSequence;
    }

    private String d0() {
        return b0().r(requireContext());
    }

    private static int g0(@NonNull Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(com.google.android.material.R.dimen.mtrl_calendar_content_padding);
        int i10 = Month.w().f30487e;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(com.google.android.material.R.dimen.mtrl_calendar_day_width) * i10) + ((i10 - 1) * resources.getDimensionPixelOffset(com.google.android.material.R.dimen.mtrl_calendar_month_horizontal_padding));
    }

    private int i0(Context context) {
        int i10 = this.f30441g;
        return i10 != 0 ? i10 : b0().h(context);
    }

    private void j0(Context context) {
        this.A.setTag(X);
        this.A.setImageDrawable(Z(context));
        this.A.setChecked(this.f30450p != 0);
        ViewCompat.setAccessibilityDelegate(this.A, null);
        z0(this.A);
        this.A.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f30552b.n0(view);
            }
        });
    }

    static boolean k0(@NonNull Context context) {
        return p0(context, R.attr.windowFullscreen);
    }

    private boolean l0() {
        return getResources().getConfiguration().orientation == 2;
    }

    static boolean m0(@NonNull Context context) {
        return p0(context, com.google.android.material.R.attr.nestedScrollable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n0(View view) {
        this.C.setEnabled(b0().l());
        this.A.toggle();
        this.f30450p = this.f30450p == 1 ? 0 : 1;
        z0(this.A);
        u0();
    }

    @NonNull
    static <S> MaterialDatePicker<S> o0(@NonNull e<S> eVar) {
        MaterialDatePicker<S> materialDatePicker = new MaterialDatePicker<>();
        Bundle bundle = new Bundle();
        bundle.putInt(G, eVar.f30469b);
        bundle.putParcelable(H, eVar.f30468a);
        bundle.putParcelable(I, eVar.f30470c);
        bundle.putParcelable(J, eVar.f30471d);
        bundle.putInt(K, eVar.f30472e);
        bundle.putCharSequence(L, eVar.f30473f);
        bundle.putInt(U, eVar.f30483p);
        bundle.putInt(M, eVar.f30474g);
        bundle.putCharSequence(N, eVar.f30475h);
        bundle.putInt(O, eVar.f30476i);
        bundle.putCharSequence(P, eVar.f30477j);
        bundle.putInt(Q, eVar.f30478k);
        bundle.putCharSequence(R, eVar.f30479l);
        bundle.putInt(S, eVar.f30480m);
        bundle.putCharSequence(T, eVar.f30481n);
        materialDatePicker.setArguments(bundle);
        return materialDatePicker;
    }

    static boolean p0(@NonNull Context context, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(com.google.android.material.resources.b.g(context, com.google.android.material.R.attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), new int[]{i10});
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z10;
    }

    private void u0() {
        int iI0 = i0(requireContext());
        o oVarG0 = MaterialCalendar.g0(b0(), iI0, this.f30444j, this.f30445k);
        this.f30446l = oVarG0;
        if (this.f30450p == 1) {
            oVarG0 = o.Q(b0(), iI0, this.f30444j);
        }
        this.f30443i = oVarG0;
        y0();
        x0(e0());
        FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.replace(com.google.android.material.R.id.mtrl_calendar_frame, this.f30443i);
        fragmentTransactionBeginTransaction.commitNow();
        this.f30443i.M(new d());
    }

    public static long v0() {
        return Month.w().f30489g;
    }

    public static long w0() {
        return a0.v().getTimeInMillis();
    }

    private void y0() {
        this.f30459y.setText((this.f30450p == 1 && l0()) ? this.F : this.E);
    }

    private void z0(@NonNull CheckableImageButton checkableImageButton) {
        this.A.setContentDescription(this.f30450p == 1 ? checkableImageButton.getContext().getString(com.google.android.material.R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(com.google.android.material.R.string.mtrl_picker_toggle_to_text_input_mode));
    }

    public boolean R(DialogInterface.OnCancelListener onCancelListener) {
        return this.f30439e.add(onCancelListener);
    }

    public boolean S(DialogInterface.OnDismissListener onDismissListener) {
        return this.f30440f.add(onDismissListener);
    }

    public boolean T(View.OnClickListener onClickListener) {
        return this.f30438d.add(onClickListener);
    }

    public boolean U(m<? super S> mVar) {
        return this.f30437c.add(mVar);
    }

    public void V() {
        this.f30439e.clear();
    }

    public void W() {
        this.f30440f.clear();
    }

    public void X() {
        this.f30438d.clear();
    }

    public void Y() {
        this.f30437c.clear();
    }

    public String e0() {
        return b0().s(getContext());
    }

    public int f0() {
        return this.f30450p;
    }

    @Nullable
    public final S h0() {
        return b0().p();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it2 = this.f30439e.iterator();
        while (it2.hasNext()) {
            it2.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f30441g = bundle.getInt(G);
        this.f30442h = (DateSelector) bundle.getParcelable(H);
        this.f30444j = (CalendarConstraints) bundle.getParcelable(I);
        this.f30445k = (DayViewDecorator) bundle.getParcelable(J);
        this.f30447m = bundle.getInt(K);
        this.f30448n = bundle.getCharSequence(L);
        this.f30450p = bundle.getInt(U);
        this.f30451q = bundle.getInt(M);
        this.f30452r = bundle.getCharSequence(N);
        this.f30453s = bundle.getInt(O);
        this.f30454t = bundle.getCharSequence(P);
        this.f30455u = bundle.getInt(Q);
        this.f30456v = bundle.getCharSequence(R);
        this.f30457w = bundle.getInt(S);
        this.f30458x = bundle.getCharSequence(T);
        CharSequence text = this.f30448n;
        if (text == null) {
            text = requireContext().getResources().getText(this.f30447m);
        }
        this.E = text;
        this.F = c0(text);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), i0(requireContext()));
        Context context = dialog.getContext();
        this.f30449o = k0(context);
        int i10 = com.google.android.material.R.attr.materialCalendarStyle;
        int i11 = com.google.android.material.R.style.Widget_MaterialComponents_MaterialCalendar;
        this.B = new MaterialShapeDrawable(context, null, i10, i11);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, com.google.android.material.R.styleable.MaterialCalendar, i10, i11);
        int color = typedArrayObtainStyledAttributes.getColor(com.google.android.material.R.styleable.MaterialCalendar_backgroundTint, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.B.a0(context);
        this.B.p0(ColorStateList.valueOf(color));
        this.B.o0(ViewCompat.getElevation(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.f30449o ? com.google.android.material.R.layout.mtrl_picker_fullscreen : com.google.android.material.R.layout.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        DayViewDecorator dayViewDecorator = this.f30445k;
        if (dayViewDecorator != null) {
            dayViewDecorator.t(context);
        }
        if (this.f30449o) {
            viewInflate.findViewById(com.google.android.material.R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(g0(context), -2));
        } else {
            viewInflate.findViewById(com.google.android.material.R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(g0(context), -1));
        }
        TextView textView = (TextView) viewInflate.findViewById(com.google.android.material.R.id.mtrl_picker_header_selection_text);
        this.f30460z = textView;
        ViewCompat.setAccessibilityLiveRegion(textView, 1);
        this.A = (CheckableImageButton) viewInflate.findViewById(com.google.android.material.R.id.mtrl_picker_header_toggle);
        this.f30459y = (TextView) viewInflate.findViewById(com.google.android.material.R.id.mtrl_picker_title_text);
        j0(context);
        this.C = (Button) viewInflate.findViewById(com.google.android.material.R.id.confirm_button);
        if (b0().l()) {
            this.C.setEnabled(true);
        } else {
            this.C.setEnabled(false);
        }
        this.C.setTag(V);
        CharSequence charSequence = this.f30452r;
        if (charSequence != null) {
            this.C.setText(charSequence);
        } else {
            int i10 = this.f30451q;
            if (i10 != 0) {
                this.C.setText(i10);
            }
        }
        CharSequence charSequence2 = this.f30454t;
        if (charSequence2 != null) {
            this.C.setContentDescription(charSequence2);
        } else if (this.f30453s != 0) {
            this.C.setContentDescription(getContext().getResources().getText(this.f30453s));
        }
        this.C.setOnClickListener(new a());
        Button button = (Button) viewInflate.findViewById(com.google.android.material.R.id.cancel_button);
        button.setTag(W);
        CharSequence charSequence3 = this.f30456v;
        if (charSequence3 != null) {
            button.setText(charSequence3);
        } else {
            int i11 = this.f30455u;
            if (i11 != 0) {
                button.setText(i11);
            }
        }
        CharSequence charSequence4 = this.f30458x;
        if (charSequence4 != null) {
            button.setContentDescription(charSequence4);
        } else if (this.f30457w != 0) {
            button.setContentDescription(getContext().getResources().getText(this.f30457w));
        }
        button.setOnClickListener(new b());
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it2 = this.f30440f.iterator();
        while (it2.hasNext()) {
            it2.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(G, this.f30441g);
        bundle.putParcelable(H, this.f30442h);
        CalendarConstraints.b bVar = new CalendarConstraints.b(this.f30444j);
        MaterialCalendar<S> materialCalendar = this.f30446l;
        Month monthB0 = materialCalendar == null ? null : materialCalendar.b0();
        if (monthB0 != null) {
            bVar.d(monthB0.f30489g);
        }
        bundle.putParcelable(I, bVar.a());
        bundle.putParcelable(J, this.f30445k);
        bundle.putInt(K, this.f30447m);
        bundle.putCharSequence(L, this.f30448n);
        bundle.putInt(U, this.f30450p);
        bundle.putInt(M, this.f30451q);
        bundle.putCharSequence(N, this.f30452r);
        bundle.putInt(O, this.f30453s);
        bundle.putCharSequence(P, this.f30454t);
        bundle.putInt(Q, this.f30455u);
        bundle.putCharSequence(R, this.f30456v);
        bundle.putInt(S, this.f30457w);
        bundle.putCharSequence(T, this.f30458x);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f30449o) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.B);
            a0(window);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(com.google.android.material.R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.B, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new w4.a(requireDialog(), rect));
        }
        u0();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        this.f30443i.N();
        super.onStop();
    }

    public boolean q0(DialogInterface.OnCancelListener onCancelListener) {
        return this.f30439e.remove(onCancelListener);
    }

    public boolean r0(DialogInterface.OnDismissListener onDismissListener) {
        return this.f30440f.remove(onDismissListener);
    }

    public boolean s0(View.OnClickListener onClickListener) {
        return this.f30438d.remove(onClickListener);
    }

    public boolean t0(m<? super S> mVar) {
        return this.f30437c.remove(mVar);
    }

    @VisibleForTesting
    void x0(String str) {
        this.f30460z.setContentDescription(d0());
        this.f30460z.setText(str);
    }
}
