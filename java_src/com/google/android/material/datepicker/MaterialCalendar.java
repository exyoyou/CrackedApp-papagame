package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class MaterialCalendar<S> extends s<S> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f30392q = "THEME_RES_ID_KEY";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f30393r = "GRID_SELECTOR_KEY";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f30394s = "CALENDAR_CONSTRAINTS_KEY";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f30395t = "DAY_VIEW_DECORATOR_KEY";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final String f30396u = "CURRENT_MONTH_KEY";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f30397v = 3;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @VisibleForTesting
    static final Object f30398w = "MONTHS_VIEW_GROUP_TAG";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @VisibleForTesting
    static final Object f30399x = "NAVIGATION_PREV_TAG";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @VisibleForTesting
    static final Object f30400y = "NAVIGATION_NEXT_TAG";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @VisibleForTesting
    static final Object f30401z = "SELECTOR_TOGGLE_TAG";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @StyleRes
    private int f30402d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private DateSelector<S> f30403e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private CalendarConstraints f30404f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private DayViewDecorator f30405g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private Month f30406h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private CalendarSelector f30407i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.google.android.material.datepicker.b f30408j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private RecyclerView f30409k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private RecyclerView f30410l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f30411m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View f30412n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View f30413o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private View f30414p;

    enum CalendarSelector {
        DAY,
        YEAR
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ q f30415b;

        a(q qVar) {
            this.f30415b = qVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iFindLastVisibleItemPosition = MaterialCalendar.this.e0().findLastVisibleItemPosition() - 1;
            if (iFindLastVisibleItemPosition >= 0) {
                MaterialCalendar.this.i0(this.f30415b.b(iFindLastVisibleItemPosition));
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f30417b;

        b(int i10) {
            this.f30417b = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            MaterialCalendar.this.f30410l.smoothScrollToPosition(this.f30417b);
        }
    }

    class c extends AccessibilityDelegateCompat {
        c() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(null);
        }
    }

    class d extends t {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ int f30420o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Context context, int i10, boolean z10, int i11) {
            super(context, i10, z10);
            this.f30420o = i11;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        protected void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
            if (this.f30420o == 0) {
                iArr[0] = MaterialCalendar.this.f30410l.getWidth();
                iArr[1] = MaterialCalendar.this.f30410l.getWidth();
            } else {
                iArr[0] = MaterialCalendar.this.f30410l.getHeight();
                iArr[1] = MaterialCalendar.this.f30410l.getHeight();
            }
        }
    }

    class e implements l {
        e() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.datepicker.MaterialCalendar.l
        public void a(long j10) {
            if (MaterialCalendar.this.f30404f.w().e(j10)) {
                MaterialCalendar.this.f30403e.q(j10);
                Iterator<r<S>> it2 = MaterialCalendar.this.f30582c.iterator();
                while (it2.hasNext()) {
                    it2.next().b(MaterialCalendar.this.f30403e.p());
                }
                MaterialCalendar.this.f30410l.getAdapter().notifyDataSetChanged();
                if (MaterialCalendar.this.f30409k != null) {
                    MaterialCalendar.this.f30409k.getAdapter().notifyDataSetChanged();
                }
            }
        }
    }

    class f extends AccessibilityDelegateCompat {
        f() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setScrollable(false);
        }
    }

    class g extends RecyclerView.ItemDecoration {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Calendar f30424e = a0.x();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Calendar f30425f = a0.x();

        g() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
            if ((recyclerView.getAdapter() instanceof b0) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                b0 b0Var = (b0) recyclerView.getAdapter();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                for (Pair<Long, Long> pair : MaterialCalendar.this.f30403e.v()) {
                    Long l10 = pair.first;
                    if (l10 != null && pair.second != null) {
                        this.f30424e.setTimeInMillis(l10.longValue());
                        this.f30425f.setTimeInMillis(pair.second.longValue());
                        int iC = b0Var.c(this.f30424e.get(1));
                        int iC2 = b0Var.c(this.f30425f.get(1));
                        View viewFindViewByPosition = gridLayoutManager.findViewByPosition(iC);
                        View viewFindViewByPosition2 = gridLayoutManager.findViewByPosition(iC2);
                        int spanCount = iC / gridLayoutManager.getSpanCount();
                        int spanCount2 = iC2 / gridLayoutManager.getSpanCount();
                        int i10 = spanCount;
                        while (i10 <= spanCount2) {
                            View viewFindViewByPosition3 = gridLayoutManager.findViewByPosition(gridLayoutManager.getSpanCount() * i10);
                            if (viewFindViewByPosition3 != null) {
                                canvas.drawRect((i10 != spanCount || viewFindViewByPosition == null) ? 0 : viewFindViewByPosition.getLeft() + (viewFindViewByPosition.getWidth() / 2), viewFindViewByPosition3.getTop() + MaterialCalendar.this.f30408j.f30524d.e(), (i10 != spanCount2 || viewFindViewByPosition2 == null) ? recyclerView.getWidth() : viewFindViewByPosition2.getLeft() + (viewFindViewByPosition2.getWidth() / 2), viewFindViewByPosition3.getBottom() - MaterialCalendar.this.f30408j.f30524d.b(), MaterialCalendar.this.f30408j.f30528h);
                            }
                            i10++;
                        }
                    }
                }
            }
        }
    }

    class h extends AccessibilityDelegateCompat {
        h() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setHintText(MaterialCalendar.this.f30414p.getVisibility() == 0 ? MaterialCalendar.this.getString(R.string.mtrl_picker_toggle_to_year_selection) : MaterialCalendar.this.getString(R.string.mtrl_picker_toggle_to_day_selection));
        }
    }

    class i extends RecyclerView.OnScrollListener {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ q f30428t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ MaterialButton f30429u;

        i(q qVar, MaterialButton materialButton) {
            this.f30428t = qVar;
            this.f30429u = materialButton;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i10) {
            if (i10 == 0) {
                recyclerView.announceForAccessibility(this.f30429u.getText());
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i10, int i11) {
            int iFindFirstVisibleItemPosition = i10 < 0 ? MaterialCalendar.this.e0().findFirstVisibleItemPosition() : MaterialCalendar.this.e0().findLastVisibleItemPosition();
            MaterialCalendar.this.f30406h = this.f30428t.b(iFindFirstVisibleItemPosition);
            this.f30429u.setText(this.f30428t.c(iFindFirstVisibleItemPosition));
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialCalendar.this.l0();
        }
    }

    class k implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ q f30432b;

        k(q qVar) {
            this.f30432b = qVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iFindFirstVisibleItemPosition = MaterialCalendar.this.e0().findFirstVisibleItemPosition() + 1;
            if (iFindFirstVisibleItemPosition < MaterialCalendar.this.f30410l.getAdapter().getItemCount()) {
                MaterialCalendar.this.i0(this.f30432b.b(iFindFirstVisibleItemPosition));
            }
        }
    }

    interface l {
        void a(long j10);
    }

    private void X(@NonNull View view, @NonNull q qVar) {
        MaterialButton materialButton = (MaterialButton) view.findViewById(R.id.month_navigation_fragment_toggle);
        materialButton.setTag(f30401z);
        ViewCompat.setAccessibilityDelegate(materialButton, new h());
        View viewFindViewById = view.findViewById(R.id.month_navigation_previous);
        this.f30411m = viewFindViewById;
        viewFindViewById.setTag(f30399x);
        View viewFindViewById2 = view.findViewById(R.id.month_navigation_next);
        this.f30412n = viewFindViewById2;
        viewFindViewById2.setTag(f30400y);
        this.f30413o = view.findViewById(R.id.mtrl_calendar_year_selector_frame);
        this.f30414p = view.findViewById(R.id.mtrl_calendar_day_selector_frame);
        j0(CalendarSelector.DAY);
        materialButton.setText(this.f30406h.A());
        this.f30410l.addOnScrollListener(new i(qVar, materialButton));
        materialButton.setOnClickListener(new j());
        this.f30412n.setOnClickListener(new k(qVar));
        this.f30411m.setOnClickListener(new a(qVar));
    }

    @NonNull
    private RecyclerView.ItemDecoration Y() {
        return new g();
    }

    @Px
    static int c0(@NonNull Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height);
    }

    private static int d0(@NonNull Context context) {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_navigation_height) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_bottom_padding);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_days_of_week_height);
        int i10 = p.f30564h;
        return dimensionPixelSize + dimensionPixelSize2 + (resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * i10) + ((i10 - 1) * resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_vertical_padding)) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_bottom_padding);
    }

    @NonNull
    public static <T> MaterialCalendar<T> f0(@NonNull DateSelector<T> dateSelector, @StyleRes int i10, @NonNull CalendarConstraints calendarConstraints) {
        return g0(dateSelector, i10, calendarConstraints, null);
    }

    @NonNull
    public static <T> MaterialCalendar<T> g0(@NonNull DateSelector<T> dateSelector, @StyleRes int i10, @NonNull CalendarConstraints calendarConstraints, @Nullable DayViewDecorator dayViewDecorator) {
        MaterialCalendar<T> materialCalendar = new MaterialCalendar<>();
        Bundle bundle = new Bundle();
        bundle.putInt(f30392q, i10);
        bundle.putParcelable(f30393r, dateSelector);
        bundle.putParcelable(f30394s, calendarConstraints);
        bundle.putParcelable(f30395t, dayViewDecorator);
        bundle.putParcelable(f30396u, calendarConstraints.D());
        materialCalendar.setArguments(bundle);
        return materialCalendar;
    }

    private void h0(int i10) {
        this.f30410l.post(new b(i10));
    }

    private void k0() {
        ViewCompat.setAccessibilityDelegate(this.f30410l, new f());
    }

    @Override // com.google.android.material.datepicker.s
    public boolean M(@NonNull r<S> rVar) {
        return super.M(rVar);
    }

    @Override // com.google.android.material.datepicker.s
    @Nullable
    public DateSelector<S> O() {
        return this.f30403e;
    }

    @Nullable
    CalendarConstraints Z() {
        return this.f30404f;
    }

    com.google.android.material.datepicker.b a0() {
        return this.f30408j;
    }

    @Nullable
    Month b0() {
        return this.f30406h;
    }

    @NonNull
    LinearLayoutManager e0() {
        return (LinearLayoutManager) this.f30410l.getLayoutManager();
    }

    void i0(Month month) {
        q qVar = (q) this.f30410l.getAdapter();
        int iD = qVar.d(month);
        int iD2 = iD - qVar.d(this.f30406h);
        boolean z10 = Math.abs(iD2) > 3;
        boolean z11 = iD2 > 0;
        this.f30406h = month;
        if (z10 && z11) {
            this.f30410l.scrollToPosition(iD - 3);
            h0(iD);
        } else if (!z10) {
            h0(iD);
        } else {
            this.f30410l.scrollToPosition(iD + 3);
            h0(iD);
        }
    }

    void j0(CalendarSelector calendarSelector) {
        this.f30407i = calendarSelector;
        if (calendarSelector == CalendarSelector.YEAR) {
            this.f30409k.getLayoutManager().scrollToPosition(((b0) this.f30409k.getAdapter()).c(this.f30406h.f30486d));
            this.f30413o.setVisibility(0);
            this.f30414p.setVisibility(8);
            this.f30411m.setVisibility(8);
            this.f30412n.setVisibility(8);
            return;
        }
        if (calendarSelector == CalendarSelector.DAY) {
            this.f30413o.setVisibility(8);
            this.f30414p.setVisibility(0);
            this.f30411m.setVisibility(0);
            this.f30412n.setVisibility(0);
            i0(this.f30406h);
        }
    }

    void l0() {
        CalendarSelector calendarSelector = this.f30407i;
        CalendarSelector calendarSelector2 = CalendarSelector.YEAR;
        if (calendarSelector == calendarSelector2) {
            j0(CalendarSelector.DAY);
        } else if (calendarSelector == CalendarSelector.DAY) {
            j0(calendarSelector2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f30402d = bundle.getInt(f30392q);
        this.f30403e = (DateSelector) bundle.getParcelable(f30393r);
        this.f30404f = (CalendarConstraints) bundle.getParcelable(f30394s);
        this.f30405g = (DayViewDecorator) bundle.getParcelable(f30395t);
        this.f30406h = (Month) bundle.getParcelable(f30396u);
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        int i10;
        int i11;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f30402d);
        this.f30408j = new com.google.android.material.datepicker.b(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month monthF = this.f30404f.F();
        if (MaterialDatePicker.k0(contextThemeWrapper)) {
            i10 = R.layout.mtrl_calendar_vertical;
            i11 = 1;
        } else {
            i10 = R.layout.mtrl_calendar_horizontal;
            i11 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i10, viewGroup, false);
        viewInflate.setMinimumHeight(d0(requireContext()));
        GridView gridView = (GridView) viewInflate.findViewById(R.id.mtrl_calendar_days_of_week);
        ViewCompat.setAccessibilityDelegate(gridView, new c());
        int iB = this.f30404f.B();
        gridView.setAdapter((ListAdapter) (iB > 0 ? new com.google.android.material.datepicker.k(iB) : new com.google.android.material.datepicker.k()));
        gridView.setNumColumns(monthF.f30487e);
        gridView.setEnabled(false);
        this.f30410l = (RecyclerView) viewInflate.findViewById(R.id.mtrl_calendar_months);
        this.f30410l.setLayoutManager(new d(getContext(), i11, false, i11));
        this.f30410l.setTag(f30398w);
        q qVar = new q(contextThemeWrapper, this.f30403e, this.f30404f, this.f30405g, new e());
        this.f30410l.setAdapter(qVar);
        int integer = contextThemeWrapper.getResources().getInteger(R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.mtrl_calendar_year_selector_frame);
        this.f30409k = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f30409k.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f30409k.setAdapter(new b0(this));
            this.f30409k.addItemDecoration(Y());
        }
        if (viewInflate.findViewById(R.id.month_navigation_fragment_toggle) != null) {
            X(viewInflate, qVar);
        }
        if (!MaterialDatePicker.k0(contextThemeWrapper)) {
            new PagerSnapHelper().attachToRecyclerView(this.f30410l);
        }
        this.f30410l.scrollToPosition(qVar.d(this.f30406h));
        k0();
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(f30392q, this.f30402d);
        bundle.putParcelable(f30393r, this.f30403e);
        bundle.putParcelable(f30394s, this.f30404f);
        bundle.putParcelable(f30395t, this.f30405g);
        bundle.putParcelable(f30396u, this.f30406h);
    }
}
