package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pair;
import com.google.android.material.R;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
class p extends BaseAdapter {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final int f30564h = a0.x().getMaximum(4);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f30565i = (a0.x().getMaximum(5) + a0.x().getMaximum(7)) - 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f30566j = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Month f30567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final DateSelector<?> f30568c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Collection<Long> f30569d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    b f30570e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final CalendarConstraints f30571f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    final DayViewDecorator f30572g;

    p(Month month, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints, @Nullable DayViewDecorator dayViewDecorator) {
        this.f30567b = month;
        this.f30568c = dateSelector;
        this.f30571f = calendarConstraints;
        this.f30572g = dayViewDecorator;
        this.f30569d = dateSelector.o();
    }

    private String c(Context context, long j10) {
        return j.e(context, j10, l(j10), k(j10), g(j10));
    }

    private void f(Context context) {
        if (this.f30570e == null) {
            this.f30570e = new b(context);
        }
    }

    private boolean j(long j10) {
        Iterator<Long> it2 = this.f30568c.o().iterator();
        while (it2.hasNext()) {
            if (a0.a(j10) == a0.a(it2.next().longValue())) {
                return true;
            }
        }
        return false;
    }

    private boolean l(long j10) {
        return a0.v().getTimeInMillis() == j10;
    }

    private void o(@Nullable TextView textView, long j10, int i10) {
        a aVar;
        boolean z10;
        a aVar2;
        if (textView == null) {
            return;
        }
        Context context = textView.getContext();
        String strC = c(context, j10);
        textView.setContentDescription(strC);
        boolean zE = this.f30571f.w().e(j10);
        if (zE) {
            textView.setEnabled(true);
            boolean zJ = j(j10);
            textView.setSelected(zJ);
            if (zJ) {
                aVar2 = this.f30570e.f30522b;
            } else {
                aVar2 = l(j10) ? this.f30570e.f30523c : this.f30570e.f30521a;
            }
            aVar = aVar2;
            z10 = zJ;
        } else {
            textView.setEnabled(false);
            aVar = this.f30570e.f30527g;
            z10 = false;
        }
        DayViewDecorator dayViewDecorator = this.f30572g;
        if (dayViewDecorator == null || i10 == -1) {
            aVar.f(textView);
            return;
        }
        Month month = this.f30567b;
        int i11 = month.f30486d;
        int i12 = month.f30485c;
        ColorStateList colorStateListA = dayViewDecorator.a(context, i11, i12, i10, zE, z10);
        boolean z11 = z10;
        aVar.g(textView, colorStateListA, this.f30572g.n(context, i11, i12, i10, zE, z11));
        Drawable drawableC = this.f30572g.c(context, i11, i12, i10, zE, z11);
        Drawable drawableF = this.f30572g.f(context, i11, i12, i10, zE, z11);
        Drawable drawableD = this.f30572g.d(context, i11, i12, i10, zE, z11);
        boolean z12 = z10;
        textView.setCompoundDrawables(drawableC, drawableF, drawableD, this.f30572g.b(context, i11, i12, i10, zE, z12));
        textView.setContentDescription(this.f30572g.m(context, i11, i12, i10, zE, z12, strC));
    }

    private void p(MaterialCalendarGridView materialCalendarGridView, long j10) {
        if (Month.m(j10).equals(this.f30567b)) {
            int iZ = this.f30567b.z(j10);
            o((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter().a(iZ) - materialCalendarGridView.getFirstVisiblePosition()), j10, iZ);
        }
    }

    int a(int i10) {
        return b() + (i10 - 1);
    }

    int b() {
        return this.f30567b.x(this.f30571f.B());
    }

    @Override // android.widget.Adapter
    @Nullable
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Long getItem(int i10) {
        if (i10 < b() || i10 > m()) {
            return null;
        }
        return Long.valueOf(this.f30567b.y(n(i10)));
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0054  */
    @Override // android.widget.Adapter
    @NonNull
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public TextView getView(int i10, @Nullable View view, @NonNull ViewGroup viewGroup) {
        int i11;
        f(viewGroup.getContext());
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day, viewGroup, false);
        }
        int iB = i10 - b();
        if (iB >= 0) {
            Month month = this.f30567b;
            if (iB >= month.f30488f) {
                textView.setVisibility(8);
                textView.setEnabled(false);
                i11 = -1;
            } else {
                i11 = iB + 1;
                textView.setTag(month);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, "%d", Integer.valueOf(i11)));
                textView.setVisibility(0);
                textView.setEnabled(true);
            }
        } else {
            textView.setVisibility(8);
            textView.setEnabled(false);
            i11 = -1;
        }
        Long item = getItem(i10);
        if (item == null) {
            return textView;
        }
        o(textView, item.longValue(), i11);
        return textView;
    }

    @VisibleForTesting
    boolean g(long j10) {
        Iterator<Pair<Long, Long>> it2 = this.f30568c.v().iterator();
        while (it2.hasNext()) {
            Long l10 = it2.next().second;
            if (l10 != null && l10.longValue() == j10) {
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return f30565i;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10 / this.f30567b.f30487e;
    }

    boolean h(int i10) {
        return i10 % this.f30567b.f30487e == 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    boolean i(int i10) {
        return (i10 + 1) % this.f30567b.f30487e == 0;
    }

    @VisibleForTesting
    boolean k(long j10) {
        Iterator<Pair<Long, Long>> it2 = this.f30568c.v().iterator();
        while (it2.hasNext()) {
            Long l10 = it2.next().first;
            if (l10 != null && l10.longValue() == j10) {
                return true;
            }
        }
        return false;
    }

    int m() {
        return (b() + this.f30567b.f30488f) - 1;
    }

    int n(int i10) {
        return (i10 - b()) + 1;
    }

    public void q(MaterialCalendarGridView materialCalendarGridView) {
        Iterator<Long> it2 = this.f30569d.iterator();
        while (it2.hasNext()) {
            p(materialCalendarGridView, it2.next().longValue());
        }
        DateSelector<?> dateSelector = this.f30568c;
        if (dateSelector != null) {
            Iterator<Long> it3 = dateSelector.o().iterator();
            while (it3.hasNext()) {
                p(materialCalendarGridView, it3.next().longValue());
            }
            this.f30569d = this.f30568c.o();
        }
    }

    boolean r(int i10) {
        return i10 >= b() && i10 <= m();
    }
}
