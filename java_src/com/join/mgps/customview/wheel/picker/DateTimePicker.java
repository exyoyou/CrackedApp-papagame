package com.join.mgps.customview.wheel.picker;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.mgps.customview.wheel.picker.util.DateUtils;
import com.kwad.library.solder.lib.ext.PluginError;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class DateTimePicker extends com.join.mgps.customview.wheel.picker.c {

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    public static final int f67010t2 = -1;

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    public static final int f67011u2 = 0;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    public static final int f67012v2 = 1;

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    public static final int f67013w2 = 2;

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    public static final int f67014x2 = 3;

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    public static final int f67015y2 = 4;
    private int L1;
    private String R1;
    private ArrayList<String> V;
    private String V1;
    private ArrayList<String> W;
    private ArrayList<String> X;
    private ArrayList<String> Y;
    private ArrayList<String> Z;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    private String f67016a2;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private String f67017b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    private l f67018b2;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    private h f67019c2;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    private int f67020d2;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    private int f67021e2;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private String f67022f1;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    private int f67023f2;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    private int f67024g2;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    private int f67025h2;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private String f67026i1;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    private int f67027i2;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    private int f67028j2;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    private int f67029k2;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private String f67030l1;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    private int f67031l2;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    private int f67032m2;

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    private int f67033n2;

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    private int f67034o2;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private ArrayList<String> f67035p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private String f67036p1;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    private int f67037p2;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private String f67038q1;

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    private int f67039q2;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private int f67040r1;

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    private int f67041r2;

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    private boolean f67042s2;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private int f67043v1;

    @Retention(RetentionPolicy.SOURCE)
    public @interface DateMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TimeMode {
    }

    class a implements WheelView.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WheelView f67044a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ WheelView f67045b;

        a(final WheelView val$monthView, final WheelView val$dayView) {
            this.f67044a = val$monthView;
            this.f67045b = val$dayView;
        }

        @Override // com.join.mgps.customview.wheel.picker.WheelView.g
        public void onSelected(int index) {
            DateTimePicker.this.f67040r1 = index;
            String str = (String) DateTimePicker.this.V.get(DateTimePicker.this.f67040r1);
            if (DateTimePicker.this.f67018b2 != null) {
                DateTimePicker.this.f67018b2.f(DateTimePicker.this.f67040r1, str);
            }
            if (DateTimePicker.this.f67042s2) {
                DateTimePicker.this.f67043v1 = 0;
                DateTimePicker.this.L1 = 0;
            }
            int iU = DateUtils.u(str);
            DateTimePicker.this.i1(iU);
            this.f67044a.setItems(DateTimePicker.this.W, DateTimePicker.this.f67043v1);
            if (DateTimePicker.this.f67018b2 != null) {
                DateTimePicker.this.f67018b2.e(DateTimePicker.this.f67043v1, (String) DateTimePicker.this.W.get(DateTimePicker.this.f67043v1));
            }
            DateTimePicker dateTimePicker = DateTimePicker.this;
            dateTimePicker.g1(iU, DateUtils.u((String) dateTimePicker.W.get(DateTimePicker.this.f67043v1)));
            this.f67045b.setItems(DateTimePicker.this.X, DateTimePicker.this.L1);
            if (DateTimePicker.this.f67018b2 != null) {
                DateTimePicker.this.f67018b2.d(DateTimePicker.this.L1, (String) DateTimePicker.this.X.get(DateTimePicker.this.L1));
            }
        }
    }

    class b implements WheelView.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WheelView f67047a;

        b(final WheelView val$dayView) {
            this.f67047a = val$dayView;
        }

        @Override // com.join.mgps.customview.wheel.picker.WheelView.g
        public void onSelected(int index) {
            DateTimePicker.this.f67043v1 = index;
            String str = (String) DateTimePicker.this.W.get(DateTimePicker.this.f67043v1);
            if (DateTimePicker.this.f67018b2 != null) {
                DateTimePicker.this.f67018b2.e(DateTimePicker.this.f67043v1, str);
            }
            if (DateTimePicker.this.f67020d2 == 0 || DateTimePicker.this.f67020d2 == 2) {
                if (DateTimePicker.this.f67042s2) {
                    DateTimePicker.this.L1 = 0;
                }
                DateTimePicker.this.g1(DateTimePicker.this.f67020d2 == 0 ? DateUtils.u(DateTimePicker.this.q1()) : Calendar.getInstance(Locale.CHINA).get(1), DateUtils.u(str));
                this.f67047a.setItems(DateTimePicker.this.X, DateTimePicker.this.L1);
                if (DateTimePicker.this.f67018b2 != null) {
                    DateTimePicker.this.f67018b2.d(DateTimePicker.this.L1, (String) DateTimePicker.this.X.get(DateTimePicker.this.L1));
                }
            }
        }
    }

    class c implements WheelView.g {
        c() {
        }

        @Override // com.join.mgps.customview.wheel.picker.WheelView.g
        public void onSelected(int index) {
            DateTimePicker.this.L1 = index;
            if (DateTimePicker.this.f67018b2 != null) {
                DateTimePicker.this.f67018b2.d(DateTimePicker.this.L1, (String) DateTimePicker.this.X.get(DateTimePicker.this.L1));
            }
        }
    }

    class d implements WheelView.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WheelView f67050a;

        d(final WheelView val$minuteView) {
            this.f67050a = val$minuteView;
        }

        @Override // com.join.mgps.customview.wheel.picker.WheelView.g
        public void onSelected(int index) {
            DateTimePicker dateTimePicker = DateTimePicker.this;
            dateTimePicker.R1 = (String) dateTimePicker.Y.get(index);
            if (DateTimePicker.this.f67018b2 != null) {
                DateTimePicker.this.f67018b2.b(index, DateTimePicker.this.R1);
            }
            DateTimePicker dateTimePicker2 = DateTimePicker.this;
            dateTimePicker2.h1(DateUtils.u(dateTimePicker2.R1));
            this.f67050a.setItems(DateTimePicker.this.Z, DateTimePicker.this.V1);
        }
    }

    class e implements WheelView.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WheelView f67052a;

        e(final WheelView val$secondView) {
            this.f67052a = val$secondView;
        }

        @Override // com.join.mgps.customview.wheel.picker.WheelView.g
        public void onSelected(int index) {
            DateTimePicker dateTimePicker = DateTimePicker.this;
            dateTimePicker.V1 = (String) dateTimePicker.Z.get(index);
            if (DateTimePicker.this.f67018b2 != null) {
                DateTimePicker.this.f67018b2.a(index, DateTimePicker.this.V1);
            }
            DateTimePicker dateTimePicker2 = DateTimePicker.this;
            dateTimePicker2.j1(DateUtils.u(dateTimePicker2.f67016a2));
            this.f67052a.setItems(DateTimePicker.this.f67035p0, DateTimePicker.this.f67016a2);
        }
    }

    class f implements WheelView.g {
        f() {
        }

        @Override // com.join.mgps.customview.wheel.picker.WheelView.g
        public void onSelected(int index) {
            DateTimePicker dateTimePicker = DateTimePicker.this;
            dateTimePicker.f67016a2 = (String) dateTimePicker.f67035p0.get(index);
            if (DateTimePicker.this.f67018b2 != null) {
                DateTimePicker.this.f67018b2.c(index, DateTimePicker.this.f67016a2);
            }
        }
    }

    class g implements Comparator<Object> {
        g() {
        }

        @Override // java.util.Comparator
        public int compare(Object lhs, Object rhs) {
            String string = lhs.toString();
            String string2 = rhs.toString();
            if (string.startsWith("0")) {
                string = string.substring(1);
            }
            if (string2.startsWith("0")) {
                string2 = string2.substring(1);
            }
            try {
                return Integer.parseInt(string) - Integer.parseInt(string2);
            } catch (NumberFormatException e10) {
                e10.printStackTrace();
                return 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public interface h {
    }

    @Deprecated
    public interface i extends j {
    }

    public interface j extends h {
        void a(String month, String day, String hour, String minute);
    }

    public interface k extends h {
        void d(String hour, String minute, String second);
    }

    public interface l {
        void a(int index, String minute);

        void b(int index, String hour);

        void c(int index, String second);

        void d(int index, String day);

        void e(int index, String month);

        void f(int index, String year);
    }

    public interface m extends h {
        void b(String year, String month, String day, String hour, String minute);
    }

    @Deprecated
    public interface n extends o {
    }

    public interface o extends h {
        void a(String year, String month, String hour, String minute);
    }

    public DateTimePicker(Activity activity, int timeMode) {
        this(activity, 0, timeMode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g1(int selectedYear, int selectedMonth) {
        String strO;
        int iB = DateUtils.b(selectedYear, selectedMonth);
        if (this.f67042s2) {
            strO = "";
        } else {
            if (this.L1 >= iB) {
                this.L1 = iB - 1;
            }
            int size = this.X.size();
            int i10 = this.L1;
            strO = size > i10 ? this.X.get(i10) : DateUtils.o(Calendar.getInstance().get(5));
        }
        this.X.clear();
        int i11 = this.f67023f2;
        if (selectedYear == i11 && selectedMonth == this.f67024g2 && selectedYear == this.f67027i2 && selectedMonth == this.f67028j2) {
            for (int i12 = this.f67025h2; i12 <= this.f67029k2; i12++) {
                this.X.add(DateUtils.o(i12));
            }
        } else if (selectedYear == i11 && selectedMonth == this.f67024g2) {
            for (int i13 = this.f67025h2; i13 <= iB; i13++) {
                this.X.add(DateUtils.o(i13));
            }
        } else {
            int i14 = 1;
            if (selectedYear == this.f67027i2 && selectedMonth == this.f67028j2) {
                while (i14 <= this.f67029k2) {
                    this.X.add(DateUtils.o(i14));
                    i14++;
                }
            } else {
                while (i14 <= iB) {
                    this.X.add(DateUtils.o(i14));
                    i14++;
                }
            }
        }
        if (this.f67042s2) {
            return;
        }
        int iIndexOf = this.X.indexOf(strO);
        if (iIndexOf == -1) {
            iIndexOf = 0;
        }
        this.L1 = iIndexOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h1(int selectedHour) {
        this.Z.clear();
        int i10 = this.f67031l2;
        int i11 = this.f67034o2;
        if (i10 == i11) {
            int i12 = this.f67032m2;
            int i13 = this.f67037p2;
            if (i12 > i13) {
                this.f67032m2 = i13;
                this.f67037p2 = i12;
            }
            for (int i14 = this.f67032m2; i14 <= this.f67037p2; i14++) {
                this.Z.add(DateUtils.o(i14));
            }
        } else if (selectedHour == i10) {
            for (int i15 = this.f67032m2; i15 <= 59; i15++) {
                this.Z.add(DateUtils.o(i15));
            }
        } else if (selectedHour == i11) {
            for (int i16 = 0; i16 <= this.f67037p2; i16++) {
                this.Z.add(DateUtils.o(i16));
            }
        } else {
            for (int i17 = 0; i17 <= 59; i17++) {
                this.Z.add(DateUtils.o(i17));
            }
        }
        if (this.Z.indexOf(this.V1) == -1) {
            this.V1 = this.Z.get(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i1(int selectedYear) {
        String strO;
        int i10;
        int i11 = 1;
        if (this.f67042s2) {
            strO = "";
        } else {
            int size = this.W.size();
            int i12 = this.f67043v1;
            strO = size > i12 ? this.W.get(i12) : DateUtils.o(Calendar.getInstance().get(2) + 1);
        }
        this.W.clear();
        int i13 = this.f67024g2;
        if (i13 < 1 || (i10 = this.f67028j2) < 1 || i13 > 12 || i10 > 12) {
            throw new IllegalArgumentException("Month out of range [1-12]");
        }
        int i14 = this.f67023f2;
        int i15 = this.f67027i2;
        if (i14 == i15) {
            if (i13 > i10) {
                while (i10 >= this.f67024g2) {
                    this.W.add(DateUtils.o(i10));
                    i10--;
                }
            } else {
                while (i13 <= this.f67028j2) {
                    this.W.add(DateUtils.o(i13));
                    i13++;
                }
            }
        } else if (selectedYear == i14) {
            while (i13 <= 12) {
                this.W.add(DateUtils.o(i13));
                i13++;
            }
        } else if (selectedYear == i15) {
            while (i11 <= this.f67028j2) {
                this.W.add(DateUtils.o(i11));
                i11++;
            }
        } else {
            while (i11 <= 12) {
                this.W.add(DateUtils.o(i11));
                i11++;
            }
        }
        if (this.f67042s2) {
            return;
        }
        int iIndexOf = this.W.indexOf(strO);
        if (iIndexOf == -1) {
            iIndexOf = 0;
        }
        this.f67043v1 = iIndexOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j1(int selected) {
        this.f67035p0.clear();
        for (int i10 = 0; i10 <= 59; i10++) {
            this.f67035p0.add(DateUtils.o(i10));
        }
        if (this.f67035p0.indexOf(Integer.valueOf(selected)) == -1) {
            this.f67016a2 = this.f67035p0.get(0);
        }
    }

    private int k1(ArrayList<String> items, int item) {
        int iBinarySearch = Collections.binarySearch(items, Integer.valueOf(item), new g());
        if (iBinarySearch >= 0) {
            return iBinarySearch;
        }
        throw new IllegalArgumentException("Item[" + item + "] out of range");
    }

    private void r1() {
        this.Y.clear();
        int i10 = this.f67042s2 ? 0 : this.f67021e2 == 3 ? Calendar.getInstance().get(11) : Calendar.getInstance().get(10);
        for (int i11 = this.f67031l2; i11 <= this.f67034o2; i11++) {
            String strO = DateUtils.o(i11);
            if (!this.f67042s2 && i11 == i10) {
                this.R1 = strO;
            }
            this.Y.add(strO);
        }
        if (this.Y.indexOf(this.R1) == -1) {
            this.R1 = this.Y.get(0);
        }
        if (this.f67042s2) {
            return;
        }
        this.V1 = DateUtils.o(Calendar.getInstance().get(12));
    }

    private void s1() {
        this.V.clear();
        int i10 = this.f67023f2;
        int i11 = this.f67027i2;
        if (i10 == i11) {
            this.V.add(String.valueOf(i10));
        } else if (i10 < i11) {
            while (i10 <= this.f67027i2) {
                this.V.add(String.valueOf(i10));
                i10++;
            }
        } else {
            while (i10 >= this.f67027i2) {
                this.V.add(String.valueOf(i10));
                i10--;
            }
        }
        if (this.f67042s2) {
            return;
        }
        int i12 = this.f67020d2;
        if (i12 == 0 || i12 == 1) {
            int iIndexOf = this.V.indexOf(DateUtils.o(Calendar.getInstance().get(1)));
            if (iIndexOf == -1) {
                this.f67040r1 = 0;
            } else {
                this.f67040r1 = iIndexOf;
            }
        }
    }

    @Deprecated
    public void A1(int startYear, int endYear) {
        if (this.f67020d2 == -1) {
            throw new IllegalArgumentException("Date mode invalid");
        }
        this.f67023f2 = startYear;
        this.f67027i2 = endYear;
        s1();
    }

    public void B1(boolean resetWhileWheel) {
        this.f67042s2 = resetWhileWheel;
    }

    public void C1(int yearOrMonth, int monthOrDay, int hour, int minute) {
        int i10 = this.f67020d2;
        if (i10 == 0) {
            throw new IllegalArgumentException("Date mode invalid");
        }
        if (i10 == 2) {
            int i11 = Calendar.getInstance(Locale.CHINA).get(1);
            this.f67027i2 = i11;
            this.f67023f2 = i11;
            i1(i11);
            g1(i11, yearOrMonth);
            this.f67043v1 = k1(this.W, yearOrMonth);
            this.L1 = k1(this.X, monthOrDay);
        } else if (i10 == 1) {
            i1(yearOrMonth);
            this.f67040r1 = k1(this.V, yearOrMonth);
            this.f67043v1 = k1(this.W, monthOrDay);
        }
        if (this.f67021e2 != -1) {
            this.R1 = DateUtils.o(hour);
            this.V1 = DateUtils.o(minute);
        }
    }

    public void D1(int year, int month, int day, int hour, int minute) {
        if (this.f67020d2 != 0) {
            throw new IllegalArgumentException("Date mode invalid");
        }
        i1(year);
        g1(year, month);
        this.f67040r1 = k1(this.V, year);
        this.f67043v1 = k1(this.W, month);
        this.L1 = k1(this.X, day);
        if (this.f67021e2 != -1) {
            this.R1 = DateUtils.o(hour);
            this.V1 = DateUtils.o(minute);
        }
    }

    public void E1(int endHour, int endMinute, int endSecond) {
        int i10 = this.f67021e2;
        if (i10 == -1) {
            throw new IllegalArgumentException("Time mode invalid");
        }
        boolean z10 = endHour < 0 || endMinute < 0 || endMinute > 59;
        if (i10 == 4 && (endHour == 0 || endHour > 12)) {
            z10 = true;
        }
        if ((i10 != 3 || endHour < 24) ? z10 : true) {
            throw new IllegalArgumentException("Time out of range");
        }
        this.f67034o2 = endHour;
        this.f67037p2 = endMinute;
        this.f67039q2 = endSecond;
        r1();
    }

    public void F1(int startHour, int startMinute, int startSecond) {
        int i10 = this.f67021e2;
        if (i10 == -1) {
            throw new IllegalArgumentException("Time mode invalid");
        }
        boolean z10 = startHour < 0 || startMinute < 0 || startMinute > 59;
        if (i10 == 4 && (startHour == 0 || startHour > 12)) {
            z10 = true;
        }
        if ((i10 != 3 || startHour < 24) ? z10 : true) {
            throw new IllegalArgumentException("Time out of range");
        }
        this.f67031l2 = startHour;
        this.f67032m2 = startMinute;
        this.f67033n2 = startSecond;
        r1();
    }

    @Override // com.join.mgps.customview.popup.b
    @NonNull
    protected View G() {
        int i10 = this.f67020d2;
        if ((i10 == 0 || i10 == 1) && this.V.size() == 0) {
            s1();
        }
        if (this.f67020d2 != -1 && this.W.size() == 0) {
            i1(DateUtils.u(q1()));
        }
        int i11 = this.f67020d2;
        if ((i11 == 0 || i11 == 2) && this.X.size() == 0) {
            g1(this.f67020d2 == 0 ? DateUtils.u(q1()) : Calendar.getInstance(Locale.CHINA).get(1), DateUtils.u(o1()));
        }
        if (this.f67021e2 != -1 && this.Y.size() == 0) {
            r1();
        }
        if (this.f67021e2 != -1 && this.Z.size() == 0) {
            h1(DateUtils.u(this.R1));
        }
        if (this.f67021e2 != -1 && this.f67035p0.size() == 0) {
            j1(DateUtils.u(this.V1));
        }
        LinearLayout linearLayout = new LinearLayout(this.f66737b);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        WheelView wheelViewL0 = l0();
        WheelView wheelViewL1 = l0();
        WheelView wheelViewL2 = l0();
        WheelView wheelViewL3 = l0();
        WheelView wheelViewL4 = l0();
        WheelView wheelViewL5 = l0();
        int i12 = this.f67020d2;
        if (i12 == 0 || i12 == 1) {
            wheelViewL0.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
            wheelViewL0.setItems(this.V, this.f67040r1);
            wheelViewL0.setOnItemSelectListener(new a(wheelViewL1, wheelViewL2));
            linearLayout.addView(wheelViewL0);
            if (!TextUtils.isEmpty(this.f67017b1)) {
                TextView textViewK0 = k0();
                textViewK0.setTextSize(this.f67041r2);
                textViewK0.setText(this.f67017b1);
                linearLayout.addView(textViewK0);
            }
        }
        if (this.f67020d2 != -1) {
            wheelViewL1.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
            wheelViewL1.setItems(this.W, this.f67043v1);
            wheelViewL1.setOnItemSelectListener(new b(wheelViewL2));
            linearLayout.addView(wheelViewL1);
            if (!TextUtils.isEmpty(this.f67022f1)) {
                TextView textViewK1 = k0();
                textViewK1.setTextSize(this.f67041r2);
                textViewK1.setText(this.f67022f1);
                linearLayout.addView(textViewK1);
            }
        }
        int i13 = this.f67020d2;
        if (i13 == 0 || i13 == 2) {
            wheelViewL2.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
            wheelViewL2.setItems(this.X, this.L1);
            wheelViewL2.setOnItemSelectListener(new c());
            linearLayout.addView(wheelViewL2);
            if (!TextUtils.isEmpty(this.f67026i1)) {
                TextView textViewK2 = k0();
                textViewK2.setTextSize(this.f67041r2);
                textViewK2.setText(this.f67026i1);
                linearLayout.addView(textViewK2);
            }
        }
        if (this.f67021e2 != -1) {
            wheelViewL3.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
            wheelViewL3.setItems(this.Y, this.R1);
            wheelViewL3.setOnItemSelectListener(new d(wheelViewL4));
            linearLayout.addView(wheelViewL3);
            if (!TextUtils.isEmpty(this.f67030l1)) {
                TextView textViewK3 = k0();
                textViewK3.setTextSize(this.f67041r2);
                textViewK3.setText(this.f67030l1);
                linearLayout.addView(textViewK3);
            }
            wheelViewL4.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
            wheelViewL4.setItems(this.Z, this.V1);
            wheelViewL4.setOnItemSelectListener(new e(wheelViewL5));
            linearLayout.addView(wheelViewL4);
            if (!TextUtils.isEmpty(this.f67036p1)) {
                TextView textViewK4 = k0();
                textViewK4.setTextSize(this.f67041r2);
                textViewK4.setText(this.f67036p1);
                linearLayout.addView(textViewK4);
            }
            wheelViewL5.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
            wheelViewL5.setItems(this.f67035p0, this.f67016a2);
            wheelViewL5.setOnItemSelectListener(new f());
            linearLayout.addView(wheelViewL5);
            if (!TextUtils.isEmpty(this.f67038q1)) {
                TextView textViewK5 = k0();
                textViewK5.setTextSize(this.f67041r2);
                textViewK5.setText(this.f67038q1);
                linearLayout.addView(textViewK5);
            }
        }
        return linearLayout;
    }

    @Override // com.join.mgps.customview.popup.b
    protected void K() {
        if (this.f67019c2 == null) {
            return;
        }
        String strQ1 = q1();
        String strO1 = o1();
        String strL1 = l1();
        String strM1 = m1();
        String strN1 = n1();
        String strP1 = p1();
        int i10 = this.f67020d2;
        if (i10 == -1) {
            ((k) this.f67019c2).d(strM1, strN1, strP1);
            return;
        }
        if (i10 == 0) {
            ((m) this.f67019c2).b(strQ1, strO1, strL1, strM1, strN1);
        } else if (i10 == 1) {
            ((o) this.f67019c2).a(strQ1, strO1, strM1, strN1);
        } else {
            if (i10 != 2) {
                return;
            }
            ((j) this.f67019c2).a(strO1, strL1, strM1, strN1);
        }
    }

    public String l1() {
        int i10 = this.f67020d2;
        if (i10 != 0 && i10 != 2) {
            return "";
        }
        if (this.X.size() <= this.L1) {
            this.L1 = this.X.size() - 1;
        }
        return this.X.get(this.L1);
    }

    public String m1() {
        return this.f67021e2 != -1 ? this.R1 : "";
    }

    public String n1() {
        return this.f67021e2 != -1 ? this.V1 : "";
    }

    public String o1() {
        if (this.f67020d2 == -1) {
            return "";
        }
        if (this.W.size() <= this.f67043v1) {
            this.f67043v1 = this.W.size() - 1;
        }
        return this.W.get(this.f67043v1);
    }

    public String p1() {
        return this.f67021e2 != -1 ? this.f67016a2 : "";
    }

    public String q1() {
        int i10 = this.f67020d2;
        if (i10 != 0 && i10 != 1) {
            return "";
        }
        if (this.V.size() <= this.f67040r1) {
            this.f67040r1 = this.V.size() - 1;
        }
        return this.V.get(this.f67040r1);
    }

    public void t1(int endYearOrMonth, int endMonthOrDay) {
        int i10 = this.f67020d2;
        if (i10 == -1) {
            throw new IllegalArgumentException("Date mode invalid");
        }
        if (i10 == 0) {
            throw new IllegalArgumentException("Not support year/month/day mode");
        }
        if (i10 == 1) {
            this.f67027i2 = endYearOrMonth;
            this.f67028j2 = endMonthOrDay;
        } else if (i10 == 2) {
            this.f67028j2 = endYearOrMonth;
            this.f67029k2 = endMonthOrDay;
        }
        s1();
    }

    public void u1(int endYear, int endMonth, int endDay) {
        if (this.f67020d2 == -1) {
            throw new IllegalArgumentException("Date mode invalid");
        }
        this.f67027i2 = endYear;
        this.f67028j2 = endMonth;
        this.f67029k2 = endDay;
        s1();
    }

    public void v1(int startYearOrMonth, int startMonthOrDay) {
        int i10 = this.f67020d2;
        if (i10 == -1) {
            throw new IllegalArgumentException("Date mode invalid");
        }
        if (i10 == 0) {
            throw new IllegalArgumentException("Not support year/month/day mode");
        }
        if (i10 == 1) {
            this.f67023f2 = startYearOrMonth;
            this.f67024g2 = startMonthOrDay;
        } else if (i10 == 2) {
            int i11 = Calendar.getInstance(Locale.CHINA).get(1);
            this.f67027i2 = i11;
            this.f67023f2 = i11;
            this.f67024g2 = startYearOrMonth;
            this.f67025h2 = startMonthOrDay;
        }
        s1();
    }

    public void w1(int startYear, int startMonth, int startDay) {
        if (this.f67020d2 == -1) {
            throw new IllegalArgumentException("Date mode invalid");
        }
        this.f67023f2 = startYear;
        this.f67024g2 = startMonth;
        this.f67025h2 = startDay;
        s1();
    }

    public void x1(String yearLabel, String monthLabel, String dayLabel, String hourLabel, String minuteLabel, String secondLabel) {
        this.f67017b1 = yearLabel;
        this.f67022f1 = monthLabel;
        this.f67026i1 = dayLabel;
        this.f67030l1 = hourLabel;
        this.f67036p1 = minuteLabel;
        this.f67038q1 = secondLabel;
    }

    public void y1(h listener) {
        this.f67019c2 = listener;
    }

    public void z1(l onWheelListener) {
        this.f67018b2 = onWheelListener;
    }

    public DateTimePicker(Activity activity, int dateMode, int timeMode) {
        super(activity);
        this.V = new ArrayList<>();
        this.W = new ArrayList<>();
        this.X = new ArrayList<>();
        this.Y = new ArrayList<>();
        this.Z = new ArrayList<>();
        this.f67035p0 = new ArrayList<>();
        this.f67017b1 = "年";
        this.f67022f1 = "月";
        this.f67026i1 = "日";
        this.f67030l1 = "时";
        this.f67036p1 = "分";
        this.f67038q1 = "秒";
        this.f67040r1 = 0;
        this.f67043v1 = 0;
        this.L1 = 0;
        this.R1 = "";
        this.V1 = "";
        this.f67016a2 = "";
        this.f67020d2 = 0;
        this.f67021e2 = 3;
        this.f67023f2 = PluginError.ERROR_UPD_PLUGIN_CONNECTION;
        this.f67024g2 = 1;
        this.f67025h2 = 1;
        this.f67027i2 = 2020;
        this.f67028j2 = 12;
        this.f67029k2 = 31;
        this.f67033n2 = 0;
        this.f67037p2 = 59;
        this.f67039q2 = 59;
        this.f67041r2 = 16;
        this.f67042s2 = true;
        if (dateMode == -1 && timeMode == -1) {
            throw new IllegalArgumentException("The modes are NONE at the same time");
        }
        if (dateMode == 0 && timeMode != -1) {
            int i10 = this.f66738c;
            if (i10 < 720) {
                this.f67041r2 = 14;
            } else if (i10 < 480) {
                this.f67041r2 = 12;
            }
        }
        this.f67020d2 = dateMode;
        if (timeMode == 4) {
            this.f67031l2 = 1;
            this.f67034o2 = 12;
        } else {
            this.f67031l2 = 0;
            this.f67034o2 = 23;
        }
        this.f67021e2 = timeMode;
    }
}
