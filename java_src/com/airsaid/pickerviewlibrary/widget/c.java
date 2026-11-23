package com.airsaid.pickerviewlibrary.widget;

import android.content.Context;
import android.view.View;
import com.airsaid.pickerviewlibrary.R;
import com.airsaid.pickerviewlibrary.TimePickerView;
import com.airsaid.pickerviewlibrary.widget.wheelview.WheelView;
import com.qq.e.comm.managers.setting.GlobalSetting;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static DateFormat f6240k = new SimpleDateFormat("yyyy-MM-dd HH:mm");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f6241l = 1990;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f6242m = 2100;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f6243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WheelView f6244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WheelView f6245c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WheelView f6246d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WheelView f6247e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WheelView f6248f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TimePickerView.Type f6249g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f6250h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f6251i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f6252j;

    class a implements i.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f6253a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f6254b;

        a(List list, List list2) {
            this.f6253a = list;
            this.f6254b = list2;
        }

        @Override // i.c
        public void a(int i10) {
            int i11;
            int i12 = i10 + c.this.f6250h;
            if (this.f6253a.contains(String.valueOf(c.this.f6245c.getCurrentItem() + 1))) {
                i11 = 31;
                c.this.f6246d.setAdapter(new h.b(1, 31));
            } else if (this.f6254b.contains(String.valueOf(c.this.f6245c.getCurrentItem() + 1))) {
                i11 = 30;
                c.this.f6246d.setAdapter(new h.b(1, 30));
            } else if ((i12 % 4 != 0 || i12 % 100 == 0) && i12 % 400 != 0) {
                i11 = 28;
                c.this.f6246d.setAdapter(new h.b(1, 28));
            } else {
                i11 = 29;
                c.this.f6246d.setAdapter(new h.b(1, 29));
            }
            int i13 = i11 - 1;
            if (c.this.f6246d.getCurrentItem() > i13) {
                c.this.f6246d.setCurrentItem(i13);
            }
        }
    }

    class b implements i.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f6256a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f6257b;

        b(List list, List list2) {
            this.f6256a = list;
            this.f6257b = list2;
        }

        @Override // i.c
        public void a(int i10) {
            int i11;
            int i12 = i10 + 1;
            if (this.f6256a.contains(String.valueOf(i12))) {
                i11 = 31;
                c.this.f6246d.setAdapter(new h.b(1, 31));
            } else if (this.f6257b.contains(String.valueOf(i12))) {
                i11 = 30;
                c.this.f6246d.setAdapter(new h.b(1, 30));
            } else if (((c.this.f6244b.getCurrentItem() + c.this.f6250h) % 4 != 0 || (c.this.f6244b.getCurrentItem() + c.this.f6250h) % 100 == 0) && (c.this.f6244b.getCurrentItem() + c.this.f6250h) % 400 != 0) {
                i11 = 28;
                c.this.f6246d.setAdapter(new h.b(1, 28));
            } else {
                i11 = 29;
                c.this.f6246d.setAdapter(new h.b(1, 29));
            }
            int i13 = i11 - 1;
            if (c.this.f6246d.getCurrentItem() > i13) {
                c.this.f6246d.setCurrentItem(i13);
            }
        }
    }

    /* JADX INFO: renamed from: com.airsaid.pickerviewlibrary.widget.c$c, reason: collision with other inner class name */
    static /* synthetic */ class C0198c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6259a;

        static {
            int[] iArr = new int[TimePickerView.Type.values().length];
            f6259a = iArr;
            try {
                iArr[TimePickerView.Type.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6259a[TimePickerView.Type.YEAR_MONTH_DAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6259a[TimePickerView.Type.HOURS_MINS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6259a[TimePickerView.Type.MONTH_DAY_HOUR_MIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6259a[TimePickerView.Type.YEAR_MONTH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public c(View view) {
        this.f6250h = f6241l;
        this.f6251i = f6242m;
        this.f6252j = 5.0f;
        this.f6243a = view;
        this.f6249g = TimePickerView.Type.ALL;
        p(view);
    }

    private void n() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("mTextSize: ");
        sb2.append(this.f6252j);
        float f10 = this.f6252j;
        int i10 = C0198c.f6259a[this.f6249g.ordinal()];
        if (i10 == 1) {
            f10 *= 3.0f;
        } else if (i10 == 2) {
            f10 *= 4.0f;
            this.f6247e.setVisibility(8);
            this.f6248f.setVisibility(8);
        } else if (i10 == 3) {
            f10 *= 4.0f;
            this.f6244b.setVisibility(8);
            this.f6245c.setVisibility(8);
            this.f6246d.setVisibility(8);
        } else if (i10 == 4) {
            f10 *= 3.0f;
            this.f6244b.setVisibility(8);
        } else if (i10 == 5) {
            f10 *= 4.0f;
            this.f6246d.setVisibility(8);
            this.f6247e.setVisibility(8);
            this.f6248f.setVisibility(8);
        }
        this.f6246d.setTextSize(f10);
        this.f6245c.setTextSize(f10);
        this.f6244b.setTextSize(f10);
        this.f6247e.setTextSize(f10);
        this.f6248f.setTextSize(f10);
    }

    public int e() {
        return this.f6251i;
    }

    public int f() {
        return this.f6250h;
    }

    public String g() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f6244b.getCurrentItem() + this.f6250h);
        stringBuffer.append("-");
        stringBuffer.append(this.f6245c.getCurrentItem() + 1);
        stringBuffer.append("-");
        stringBuffer.append(this.f6246d.getCurrentItem() + 1);
        stringBuffer.append(" ");
        stringBuffer.append(this.f6247e.getCurrentItem());
        stringBuffer.append(":");
        stringBuffer.append(this.f6248f.getCurrentItem());
        return stringBuffer.toString();
    }

    public View h() {
        return this.f6243a;
    }

    public void i(boolean z10) {
        this.f6244b.setCyclic(z10);
        this.f6245c.setCyclic(z10);
        this.f6246d.setCyclic(z10);
        this.f6247e.setCyclic(z10);
        this.f6248f.setCyclic(z10);
    }

    public void j(int i10) {
        this.f6251i = i10;
    }

    public void k(int i10, int i11, int i12) {
        l(i10, i11, i12, 0, 0);
    }

    public void l(int i10, int i11, int i12, int i13, int i14) {
        List listAsList = Arrays.asList("1", "3", "5", "7", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "10", "12");
        List listAsList2 = Arrays.asList("4", "6", "9", "11");
        Context context = this.f6243a.getContext();
        WheelView wheelView = (WheelView) this.f6243a.findViewById(R.id.year);
        this.f6244b = wheelView;
        wheelView.setAdapter(new h.b(this.f6250h, this.f6251i));
        this.f6244b.setLabel(context.getString(R.string.pickerview_year));
        this.f6244b.setCurrentItem(i10 - this.f6250h);
        WheelView wheelView2 = (WheelView) this.f6243a.findViewById(R.id.month);
        this.f6245c = wheelView2;
        wheelView2.setAdapter(new h.b(1, 12));
        this.f6245c.setLabel(context.getString(R.string.pickerview_month));
        this.f6245c.setCurrentItem(i11);
        this.f6246d = (WheelView) this.f6243a.findViewById(R.id.day);
        int i15 = i11 + 1;
        if (listAsList.contains(String.valueOf(i15))) {
            this.f6246d.setAdapter(new h.b(1, 31));
        } else if (listAsList2.contains(String.valueOf(i15))) {
            this.f6246d.setAdapter(new h.b(1, 30));
        } else if ((i10 % 4 != 0 || i10 % 100 == 0) && i10 % 400 != 0) {
            this.f6246d.setAdapter(new h.b(1, 28));
        } else {
            this.f6246d.setAdapter(new h.b(1, 29));
        }
        this.f6246d.setLabel(context.getString(R.string.pickerview_day));
        this.f6246d.setCurrentItem(i12 - 1);
        WheelView wheelView3 = (WheelView) this.f6243a.findViewById(R.id.hour);
        this.f6247e = wheelView3;
        wheelView3.setAdapter(new h.b(0, 23));
        this.f6247e.setLabel(context.getString(R.string.pickerview_hours));
        this.f6247e.setCurrentItem(i13);
        WheelView wheelView4 = (WheelView) this.f6243a.findViewById(R.id.min);
        this.f6248f = wheelView4;
        wheelView4.setAdapter(new h.b(0, 59));
        this.f6248f.setLabel(context.getString(R.string.pickerview_minutes));
        this.f6248f.setCurrentItem(i14);
        a aVar = new a(listAsList, listAsList2);
        b bVar = new b(listAsList, listAsList2);
        this.f6244b.setOnItemSelectedListener(aVar);
        this.f6245c.setOnItemSelectedListener(bVar);
        n();
    }

    public void m(int i10) {
        this.f6250h = i10;
    }

    public void o(float f10) {
        this.f6252j = f10;
        n();
    }

    public void p(View view) {
        this.f6243a = view;
    }

    public c(View view, TimePickerView.Type type) {
        this.f6250h = f6241l;
        this.f6251i = f6242m;
        this.f6252j = 5.0f;
        this.f6243a = view;
        this.f6249g = type;
        p(view);
    }
}
