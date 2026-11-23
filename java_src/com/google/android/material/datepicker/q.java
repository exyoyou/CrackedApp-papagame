package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
class q extends RecyclerView.Adapter<b> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final CalendarConstraints f30573e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final DateSelector<?> f30574f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private final DayViewDecorator f30575g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final MaterialCalendar.l f30576h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f30577i;

    class a implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MaterialCalendarGridView f30578b;

        a(MaterialCalendarGridView materialCalendarGridView) {
            this.f30578b = materialCalendarGridView;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            if (this.f30578b.getAdapter().r(i10)) {
                q.this.f30576h.a(this.f30578b.getAdapter().getItem(i10).longValue());
            }
        }
    }

    public static class b extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final TextView f30580d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final MaterialCalendarGridView f30581e;

        b(@NonNull LinearLayout linearLayout, boolean z10) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
            this.f30580d = textView;
            ViewCompat.setAccessibilityHeading(textView, true);
            this.f30581e = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
            if (z10) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    q(@NonNull Context context, DateSelector<?> dateSelector, @NonNull CalendarConstraints calendarConstraints, @Nullable DayViewDecorator dayViewDecorator, MaterialCalendar.l lVar) {
        Month monthF = calendarConstraints.F();
        Month monthY = calendarConstraints.y();
        Month monthD = calendarConstraints.D();
        if (monthF.compareTo(monthD) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (monthD.compareTo(monthY) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.f30577i = (p.f30564h * MaterialCalendar.c0(context)) + (MaterialDatePicker.k0(context) ? MaterialCalendar.c0(context) : 0);
        this.f30573e = calendarConstraints;
        this.f30574f = dateSelector;
        this.f30575g = dayViewDecorator;
        this.f30576h = lVar;
        setHasStableIds(true);
    }

    @NonNull
    Month b(int i10) {
        return this.f30573e.F().C(i10);
    }

    @NonNull
    CharSequence c(int i10) {
        return b(i10).A();
    }

    int d(@NonNull Month month) {
        return this.f30573e.F().D(month);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull b bVar, int i10) {
        Month monthC = this.f30573e.F().C(i10);
        bVar.f30580d.setText(monthC.A());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) bVar.f30581e.findViewById(R.id.month_grid);
        if (materialCalendarGridView.getAdapter() == null || !monthC.equals(materialCalendarGridView.getAdapter().f30567b)) {
            p pVar = new p(monthC, this.f30574f, this.f30573e, this.f30575g);
            materialCalendarGridView.setNumColumns(monthC.f30487e);
            materialCalendarGridView.setAdapter((ListAdapter) pVar);
        } else {
            materialCalendarGridView.invalidate();
            materialCalendarGridView.getAdapter().q(materialCalendarGridView);
        }
        materialCalendarGridView.setOnItemClickListener(new a(materialCalendarGridView));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public b onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!MaterialDatePicker.k0(viewGroup.getContext())) {
            return new b(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.f30577i));
        return new b(linearLayout, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f30573e.C();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i10) {
        return this.f30573e.F().C(i10).B();
    }
}
