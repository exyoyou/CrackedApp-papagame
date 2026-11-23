package com.join.mgps.customview.wheel.picker;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.mgps.customview.wheel.picker.util.DateUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
public class a extends com.join.mgps.customview.wheel.picker.c {
    private ArrayList<String> V;
    private ArrayList<String> W;
    private String X;
    private String Y;
    private String Z;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private DateTimePicker.l f67114b1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private DateTimePicker.h f67115f1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private int f67116i1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private int f67117l1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private String f67118p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private int f67119p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private int f67120q1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private int f67121r1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private boolean f67122v1;

    /* JADX INFO: renamed from: com.join.mgps.customview.wheel.picker.a$a, reason: collision with other inner class name */
    class C0717a implements WheelView.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WheelView f67123a;

        C0717a(final WheelView val$secondView) {
            this.f67123a = val$secondView;
        }

        @Override // com.join.mgps.customview.wheel.picker.WheelView.g
        public void onSelected(int index) {
            a aVar = a.this;
            aVar.Z = (String) aVar.V.get(index);
            if (a.this.f67114b1 != null) {
                a.this.f67114b1.a(index, a.this.Z);
            }
            a aVar2 = a.this;
            aVar2.Q0(DateUtils.u(aVar2.f67118p0), DateUtils.u(a.this.Z));
            this.f67123a.setItems(a.this.W, a.this.f67118p0);
        }
    }

    class b implements WheelView.g {
        b() {
        }

        @Override // com.join.mgps.customview.wheel.picker.WheelView.g
        public void onSelected(int index) {
            a aVar = a.this;
            aVar.f67118p0 = (String) aVar.W.get(index);
            if (a.this.f67114b1 != null) {
                a.this.f67114b1.c(index, a.this.f67118p0);
            }
        }
    }

    class c implements Comparator<Object> {
        c() {
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

    public interface d extends DateTimePicker.h {
        void c(String minute, String second);
    }

    public interface e {
        void a(int index, String minute);

        void c(int index, String second);
    }

    public a(Activity activity) {
        super(activity);
        this.V = new ArrayList<>();
        this.W = new ArrayList<>();
        this.X = "分";
        this.Y = "秒";
        this.Z = "";
        this.f67118p0 = "";
        this.f67117l1 = 0;
        this.f67119p1 = 59;
        this.f67120q1 = 59;
        this.f67121r1 = 16;
        this.f67122v1 = true;
    }

    private void P0() {
        this.V.clear();
        for (int i10 = 0; i10 <= 5; i10++) {
            this.V.add(i10 + "");
        }
        if (this.V.indexOf(this.Z) == -1) {
            this.Z = this.V.get(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q0(int selected, int selectedMin) {
        this.W.clear();
        int i10 = 0;
        while (true) {
            if (i10 > (selectedMin < 5 ? 59 : 0)) {
                break;
            }
            this.W.add(i10 + "");
            i10++;
        }
        if (this.W.indexOf(Integer.valueOf(selected)) == -1) {
            this.f67118p0 = this.W.get(0);
        }
    }

    private int R0(ArrayList<String> items, int item) {
        int iBinarySearch = Collections.binarySearch(items, Integer.valueOf(item), new c());
        if (iBinarySearch >= 0) {
            return iBinarySearch;
        }
        throw new IllegalArgumentException("Item[" + item + "] out of range");
    }

    @Override // com.join.mgps.customview.popup.b
    @NonNull
    protected View G() {
        if (this.V.size() == 0) {
            P0();
        }
        if (this.W.size() == 0) {
            Q0(DateUtils.u(this.f67118p0), DateUtils.u(this.Z));
        }
        LinearLayout linearLayout = new LinearLayout(this.f66737b);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        WheelView wheelViewL0 = l0();
        WheelView wheelViewL1 = l0();
        wheelViewL0.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        wheelViewL0.setItems(this.V, this.Z);
        wheelViewL0.setOnItemSelectListener(new C0717a(wheelViewL1));
        wheelViewL0.setCycleDisable(true);
        linearLayout.addView(wheelViewL0);
        if (!TextUtils.isEmpty(this.X)) {
            TextView textViewK0 = k0();
            textViewK0.setTextSize(this.f67121r1);
            textViewK0.setText(this.X);
            linearLayout.addView(textViewK0);
        }
        wheelViewL1.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        wheelViewL1.setItems(this.W, this.f67118p0);
        wheelViewL1.setOnItemSelectListener(new b());
        wheelViewL1.setCycleDisable(true);
        linearLayout.addView(wheelViewL1);
        if (!TextUtils.isEmpty(this.Y)) {
            TextView textViewK1 = k0();
            textViewK1.setTextSize(this.f67121r1);
            textViewK1.setText(this.Y);
            linearLayout.addView(textViewK1);
        }
        return linearLayout;
    }

    @Override // com.join.mgps.customview.popup.b
    protected void K() {
        if (this.f67115f1 == null) {
            return;
        }
        ((d) this.f67115f1).c(S0(), T0());
    }

    public String S0() {
        return this.Z;
    }

    public String T0() {
        return this.f67118p0;
    }

    public void U0(String minuteLabel, String secondLabel) {
        this.X = minuteLabel;
        this.Y = secondLabel;
    }

    public void V0(DateTimePicker.h listener) {
        this.f67115f1 = listener;
    }

    public void W0(DateTimePicker.l onWheelListener) {
        this.f67114b1 = onWheelListener;
    }

    public void X0(boolean resetWhileWheel) {
        this.f67122v1 = resetWhileWheel;
    }

    public void Y0(int endMinute, int endSecond) {
        this.f67119p1 = endMinute;
        this.f67120q1 = endSecond;
    }

    public void Z0(int startMinute, int startSecond) {
        this.f67116i1 = startMinute;
        this.f67117l1 = startSecond;
    }
}
