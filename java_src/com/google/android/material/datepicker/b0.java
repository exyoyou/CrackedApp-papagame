package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
class b0 extends RecyclerView.Adapter<b> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final MaterialCalendar<?> f30529e;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f30530b;

        a(int i10) {
            this.f30530b = i10;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b0.this.f30529e.i0(b0.this.f30529e.Z().m(Month.f(this.f30530b, b0.this.f30529e.b0().f30485c)));
            b0.this.f30529e.j0(MaterialCalendar.CalendarSelector.DAY);
        }
    }

    public static class b extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final TextView f30532d;

        b(TextView textView) {
            super(textView);
            this.f30532d = textView;
        }
    }

    b0(MaterialCalendar<?> materialCalendar) {
        this.f30529e = materialCalendar;
    }

    @NonNull
    private View.OnClickListener b(int i10) {
        return new a(i10);
    }

    int c(int i10) {
        return i10 - this.f30529e.Z().F().f30486d;
    }

    int d(int i10) {
        return this.f30529e.Z().F().f30486d + i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull b bVar, int i10) {
        int iD = d(i10);
        bVar.f30532d.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(iD)));
        TextView textView = bVar.f30532d;
        textView.setContentDescription(j.k(textView.getContext(), iD));
        com.google.android.material.datepicker.b bVarA0 = this.f30529e.a0();
        Calendar calendarV = a0.v();
        com.google.android.material.datepicker.a aVar = calendarV.get(1) == iD ? bVarA0.f30526f : bVarA0.f30524d;
        Iterator<Long> it2 = this.f30529e.O().o().iterator();
        while (it2.hasNext()) {
            calendarV.setTimeInMillis(it2.next().longValue());
            if (calendarV.get(1) == iD) {
                aVar = bVarA0.f30525e;
            }
        }
        aVar.f(bVar.f30532d);
        bVar.f30532d.setOnClickListener(b(iD));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public b onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        return new b((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f30529e.Z().H();
    }
}
