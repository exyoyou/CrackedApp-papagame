package com.join.mgps.customview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.vipzone.bean.ScreeningConditionBean;
import com.join.mgps.activity.vipzone.bean.SpecialTag;
import com.zhy.view.flowlayout.TagFlowSpecialLayout;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class q0 extends v implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TagFlowSpecialLayout f66807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TagFlowSpecialLayout f66808c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TagFlowSpecialLayout f66809d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextView f66810e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f66811f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f66812g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    f f66813h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    SpecialTag f66814i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    SpecialTag f66815j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    SpecialTag f66816k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    ScreeningConditionBean f66817l;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            try {
                q0 q0Var = q0.this;
                q0Var.f66814i = q0Var.f66817l.getSort_type().get(0);
                q0 q0Var2 = q0.this;
                q0Var2.f66815j = q0Var2.f66817l.getGame_type().get(0);
                q0 q0Var3 = q0.this;
                q0Var3.f66816k = q0Var3.f66817l.getGame_class().get(0);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            q0 q0Var4 = q0.this;
            q0Var4.e(q0Var4.f66817l.getSort_type());
            q0 q0Var5 = q0.this;
            q0Var5.e(q0Var5.f66817l.getGame_type());
            q0 q0Var6 = q0.this;
            q0Var6.e(q0Var6.f66817l.getGame_class());
            q0.this.f66807b.b();
            q0.this.f66808c.b();
            q0.this.f66809d.b();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            q0 q0Var = q0.this;
            q0Var.f66813h.onfinifilter(q0Var.f66807b.getSelectedItem(), q0.this.f66808c.getSelectedItem(), q0.this.f66809d.getSelectedItem());
            q0.this.dismiss();
        }
    }

    class c implements TagFlowSpecialLayout.b {
        c() {
        }

        @Override // com.zhy.view.flowlayout.TagFlowSpecialLayout.b
        public void a(View view, SpecialTag tag, ViewGroup parent) {
            q0.this.f66814i = tag;
        }
    }

    class d implements TagFlowSpecialLayout.b {
        d() {
        }

        @Override // com.zhy.view.flowlayout.TagFlowSpecialLayout.b
        public void a(View view, SpecialTag tag, ViewGroup parent) {
            q0.this.f66815j = tag;
        }
    }

    class e implements TagFlowSpecialLayout.b {
        e() {
        }

        @Override // com.zhy.view.flowlayout.TagFlowSpecialLayout.b
        public void a(View view, SpecialTag tag, ViewGroup parent) {
            q0.this.f66816k = tag;
        }
    }

    public interface f {
        void onfinifilter(SpecialTag tag1, SpecialTag tag2, SpecialTag tag3);
    }

    public q0(Context context) {
        super(context);
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(List<SpecialTag> specialTags) {
        for (int i10 = 0; i10 < specialTags.size(); i10++) {
            SpecialTag specialTag = specialTags.get(i10);
            if (i10 == 0) {
                specialTag.setIsselected(true);
            } else {
                specialTag.setIsselected(false);
            }
        }
    }

    public f d() {
        return this.f66813h;
    }

    public void f(ScreeningConditionBean screening_condition) {
        e(screening_condition.getSort_type());
        e(screening_condition.getGame_type());
        e(screening_condition.getGame_class());
    }

    public void g(f onGameOperateListener) {
        this.f66813h = onGameOperateListener;
    }

    public void h(View parent, ScreeningConditionBean screening_condition) {
        this.f66817l = screening_condition;
        showAtLocation(parent, 80, 0, 0);
        try {
            this.f66814i = screening_condition.getSort_type().get(0);
            this.f66815j = screening_condition.getGame_type().get(0);
            this.f66816k = screening_condition.getGame_class().get(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f66807b.setData(screening_condition.getSort_type());
        this.f66808c.setData(screening_condition.getGame_type());
        this.f66809d.setData(screening_condition.getGame_class());
    }

    void init() {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_special_filter_bottom_operate, (ViewGroup) null);
        this.parentView = viewInflate;
        setContentView(viewInflate);
        setWidth(-1);
        setHeight(-2);
        this.f66807b = (TagFlowSpecialLayout) this.parentView.findViewById(R.id.filter1);
        this.f66808c = (TagFlowSpecialLayout) this.parentView.findViewById(R.id.filter2);
        this.f66809d = (TagFlowSpecialLayout) this.parentView.findViewById(R.id.filter3);
        this.f66810e = (TextView) this.parentView.findViewById(R.id.resetButn);
        this.f66811f = (TextView) this.parentView.findViewById(R.id.setting);
        this.f66810e.setOnClickListener(new a());
        this.f66811f.setOnClickListener(new b());
        this.f66807b.setListener(new c());
        this.f66808c.setListener(new d());
        this.f66809d.setListener(new e());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        v10.getId();
    }
}
