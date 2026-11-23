package com.join.mgps.customview.input;

import android.content.Context;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.i0;
import com.join.mgps.Util.t2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class InputView_Num extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f66610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f66611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<String> f66612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<EditText> f66613e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f66614f;

    public interface a {
        void a(String num);
    }

    public InputView_Num(Context context) {
        super(context);
        this.f66610b = 5;
        this.f66612d = new ArrayList();
        this.f66613e = new ArrayList();
        this.f66614f = -1;
    }

    private void d(TextView view, String value) {
        if (t2.h(value)) {
            view.setBackgroundResource(R.drawable.bg_input_rect);
        } else {
            view.setBackgroundResource(R.drawable.bg_input_rect_hasinput);
        }
        view.setText(value);
    }

    private String getNums() {
        StringBuilder sb2 = new StringBuilder();
        Iterator<String> it2 = this.f66612d.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next());
        }
        return sb2.toString();
    }

    public void a(String num, boolean notify) {
        int i10 = this.f66614f + 1;
        this.f66614f = i10;
        if (i10 >= this.f66610b) {
            this.f66614f = i10 - 1;
            return;
        }
        this.f66612d.add(num);
        d(this.f66613e.get(this.f66614f), num);
        if (this.f66614f == this.f66610b - 1 && notify) {
            this.f66614f = 0;
            this.f66611c.a(getNums());
        }
    }

    public void b() {
        List<EditText> list = this.f66613e;
        if (list != null) {
            list.clear();
            this.f66613e = null;
        }
        List<String> list2 = this.f66612d;
        if (list2 != null) {
            list2.clear();
            this.f66612d = null;
        }
        this.f66614f = 0;
    }

    public void c() {
        List<String> list;
        int i10 = this.f66614f;
        if (i10 < 0 || (list = this.f66612d) == null) {
            return;
        }
        if (i10 >= list.size()) {
            int i11 = this.f66614f - 1;
            this.f66614f = i11;
            if (i11 < 0) {
                this.f66611c.a("");
                this.f66614f = 0;
                return;
            }
            return;
        }
        this.f66612d.remove(this.f66614f);
        d(this.f66613e.get(this.f66614f), "");
        int i12 = this.f66614f - 1;
        this.f66614f = i12;
        if (i12 < 0) {
            this.f66611c.a("");
            this.f66614f = 0;
        }
    }

    public void setNumLengthAndIsPwd(int length, boolean isPwd) {
        int iA = i0.a(getContext(), 9.0f);
        this.f66610b = length;
        this.f66613e.clear();
        this.f66612d.clear();
        for (int i10 = 0; i10 < this.f66610b; i10++) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_rect_box, (ViewGroup) null);
            EditText editText = (EditText) viewInflate.findViewById(R.id.et_value);
            if (isPwd) {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            this.f66613e.add(editText);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            if (i10 != this.f66610b - 1) {
                layoutParams.rightMargin = iA;
            }
            addView(viewInflate, layoutParams);
        }
    }

    public void setOnFinishListener(a onFinishListener) {
        this.f66611c = onFinishListener;
    }

    public InputView_Num(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f66610b = 5;
        this.f66612d = new ArrayList();
        this.f66613e = new ArrayList();
        this.f66614f = -1;
    }
}
