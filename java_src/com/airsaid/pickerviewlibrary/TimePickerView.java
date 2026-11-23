package com.airsaid.pickerviewlibrary;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes7.dex */
public class TimePickerView extends com.airsaid.pickerviewlibrary.widget.a implements View.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Context f6182o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private View f6183p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private TextView f6184q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.airsaid.pickerviewlibrary.widget.c f6185r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Button f6186s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Button f6187t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private a f6188u;

    public enum Type {
        ALL,
        YEAR_MONTH_DAY,
        HOURS_MINS,
        MONTH_DAY_HOUR_MIN,
        YEAR_MONTH
    }

    public interface a {
        void a(Date date);
    }

    public class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final float f6189b = 6.0f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final float f6190c = 5.0f;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final float f6191d = 4.0f;

        public b() {
        }
    }

    public TimePickerView(Context context, Type type) {
        super(context);
        this.f6182o = context;
        p();
        o(type);
    }

    private void o(Type type) {
        this.f6185r = new com.airsaid.pickerviewlibrary.widget.c(d(R.id.timepicker), type);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i10 = calendar.get(1);
        int i11 = calendar.get(2);
        int i12 = calendar.get(5);
        int i13 = calendar.get(11);
        int i14 = calendar.get(12);
        Calendar calendar2 = Calendar.getInstance();
        w(calendar2.get(1) - 100, calendar2.get(1) + 100);
        this.f6185r.l(i10, i11, i12, i13, i14);
    }

    private void p() {
        LayoutInflater.from(this.f6182o).inflate(R.layout.pickerview_time, this.f6214d);
        this.f6183p = d(R.id.rlt_head_view);
        this.f6184q = (TextView) d(R.id.tvTitle);
        this.f6186s = (Button) d(R.id.btnSubmit);
        this.f6187t = (Button) d(R.id.btnCancel);
        this.f6186s.setOnClickListener(this);
        this.f6187t.setOnClickListener(this);
    }

    public void A(float f10) {
        this.f6185r.o(f10);
    }

    public void B(Date date) {
        Calendar calendar = Calendar.getInstance();
        if (date == null) {
            calendar.setTimeInMillis(System.currentTimeMillis());
        } else {
            calendar.setTime(date);
        }
        this.f6185r.l(calendar.get(1), calendar.get(2), calendar.get(5), calendar.get(11), calendar.get(12));
    }

    public void C(String str) {
        this.f6184q.setText(str);
    }

    public void D(int i10) {
        this.f6184q.setTextColor(i10);
    }

    public void E(float f10) {
        this.f6184q.setTextSize(f10);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 != R.id.btnSubmit) {
            if (id2 == R.id.btnCancel) {
                b();
            }
        } else {
            if (this.f6188u != null) {
                try {
                    this.f6188u.a(com.airsaid.pickerviewlibrary.widget.c.f6240k.parse(this.f6185r.g()));
                } catch (ParseException e10) {
                    e10.printStackTrace();
                }
            }
            b();
        }
    }

    public void q(String str) {
        this.f6187t.setText(str);
    }

    public void r(int i10) {
        this.f6187t.setTextColor(i10);
    }

    public void s(float f10) {
        this.f6187t.setTextSize(f10);
    }

    public void t(boolean z10) {
        this.f6185r.i(z10);
    }

    public void u(int i10) {
        this.f6183p.setBackgroundColor(i10);
    }

    public void v(a aVar) {
        this.f6188u = aVar;
    }

    public void w(int i10, int i11) {
        this.f6185r.m(i10);
        this.f6185r.j(i11);
    }

    public void x(String str) {
        this.f6186s.setText(str);
    }

    public void y(int i10) {
        this.f6186s.setTextColor(i10);
    }

    public void z(float f10) {
        this.f6186s.setTextSize(f10);
    }
}
