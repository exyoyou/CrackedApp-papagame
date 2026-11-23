package com.join.mgps.customview.wheel.picker;

import android.app.Activity;

/* JADX INFO: loaded from: classes3.dex */
public class b extends DateTimePicker {

    class a implements DateTimePicker.l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f67127a;

        a(final d val$listener) {
            this.f67127a = val$listener;
        }

        @Override // com.join.mgps.customview.wheel.picker.DateTimePicker.l
        public void a(int index, String minute) {
            this.f67127a.a(index, minute);
        }

        @Override // com.join.mgps.customview.wheel.picker.DateTimePicker.l
        public void b(int index, String hour) {
            this.f67127a.b(index, hour);
        }

        @Override // com.join.mgps.customview.wheel.picker.DateTimePicker.l
        public void c(int index, String second) {
        }

        @Override // com.join.mgps.customview.wheel.picker.DateTimePicker.l
        public void d(int index, String day) {
        }

        @Override // com.join.mgps.customview.wheel.picker.DateTimePicker.l
        public void e(int index, String month) {
        }

        @Override // com.join.mgps.customview.wheel.picker.DateTimePicker.l
        public void f(int index, String year) {
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.customview.wheel.picker.b$b, reason: collision with other inner class name */
    class C0718b implements DateTimePicker.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f67129a;

        C0718b(final c val$listener) {
            this.f67129a = val$listener;
        }

        @Override // com.join.mgps.customview.wheel.picker.DateTimePicker.k
        public void d(String hour, String minute, String second) {
            this.f67129a.a(hour, minute, second);
        }
    }

    public interface c {
        void a(String hour, String minute, String second);
    }

    public interface d {
        void a(int index, String minute);

        void b(int index, String hour);
    }

    public b(Activity activity) {
        this(activity, 3);
    }

    @Override // com.join.mgps.customview.wheel.picker.DateTimePicker
    @Deprecated
    public final void C1(int yearOrMonth, int monthOrDay, int hour, int minute) {
        super.C1(yearOrMonth, monthOrDay, hour, minute);
    }

    @Override // com.join.mgps.customview.wheel.picker.DateTimePicker
    @Deprecated
    public final void D1(int year, int month, int day, int hour, int minute) {
        super.D1(year, month, day, hour, minute);
    }

    @Override // com.join.mgps.customview.wheel.picker.DateTimePicker
    @Deprecated
    public void E1(int endHour, int endMinute, int endSecond) {
        super.E1(endHour, endMinute, endSecond);
    }

    @Override // com.join.mgps.customview.wheel.picker.DateTimePicker
    @Deprecated
    public void F1(int startHour, int startMinute, int startSecond) {
        super.F1(startHour, startMinute, startSecond);
    }

    public void G1(String hourLabel, String minuteLabel, String secondLable) {
        super.x1("", "", "", hourLabel, minuteLabel, secondLable);
    }

    public void H1(final c listener) {
        if (listener == null) {
            return;
        }
        super.y1(new C0718b(listener));
    }

    public void I1(final d listener) {
        if (listener == null) {
            return;
        }
        super.z1(new a(listener));
    }

    @Deprecated
    public void J1(int startHour, int endHour, int endSecond) {
        super.F1(startHour, 0, 0);
        super.E1(endHour, 59, endSecond);
    }

    public void K1(int endHour, int endMinute, int endSecond) {
        super.E1(endHour, endMinute, endSecond);
    }

    public void L1(int startHour, int startMinute, int startSecond) {
        super.F1(startHour, startMinute, startSecond);
    }

    public void M1(int hour, int minute) {
        super.C1(0, 0, hour, minute);
    }

    @Override // com.join.mgps.customview.wheel.picker.DateTimePicker
    @Deprecated
    public final void t1(int endYearOrMonth, int endMonthOrDay) {
        throw new UnsupportedOperationException("Data range nonsupport");
    }

    @Override // com.join.mgps.customview.wheel.picker.DateTimePicker
    @Deprecated
    public final void u1(int endYear, int endMonth, int endDay) {
        throw new UnsupportedOperationException("Date range nonsupport");
    }

    @Override // com.join.mgps.customview.wheel.picker.DateTimePicker
    @Deprecated
    public final void v1(int startYearOrMonth, int startMonthOrDay) {
        throw new UnsupportedOperationException("Date range nonsupport");
    }

    @Override // com.join.mgps.customview.wheel.picker.DateTimePicker
    @Deprecated
    public final void w1(int startYear, int startMonth, int startDay) {
        throw new UnsupportedOperationException("Date range nonsupport");
    }

    @Override // com.join.mgps.customview.wheel.picker.DateTimePicker
    @Deprecated
    public final void x1(String yearLabel, String monthLabel, String dayLabel, String hourLabel, String minuteLabel, String secondLabel) {
        super.x1(yearLabel, monthLabel, dayLabel, hourLabel, minuteLabel, secondLabel);
    }

    @Override // com.join.mgps.customview.wheel.picker.DateTimePicker
    @Deprecated
    public final void y1(DateTimePicker.h listener) {
        super.y1(listener);
    }

    @Override // com.join.mgps.customview.wheel.picker.DateTimePicker
    @Deprecated
    public final void z1(DateTimePicker.l onWheelListener) {
        super.z1(onWheelListener);
    }

    public b(Activity activity, int mode) {
        super(activity, -1, mode);
    }
}
