package com.facebook.rebound.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TableLayout;
import android.widget.TextView;
import com.facebook.rebound.g;
import com.facebook.rebound.i;
import com.facebook.rebound.k;
import com.facebook.rebound.l;
import com.facebook.rebound.m;
import com.facebook.rebound.o;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class SpringConfiguratorView extends FrameLayout {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f28877o = 100000;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final float f28878p = 0.0f;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final float f28879q = 200.0f;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final float f28880r = 0.0f;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final float f28881s = 50.0f;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final DecimalFormat f28882t = new DecimalFormat("#.#");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f28883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<k> f28884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i f28885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f28886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f28887f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final l f28888g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f28889h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private SeekBar f28890i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private SeekBar f28891j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Spinner f28892k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private TextView f28893l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private TextView f28894m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private k f28895n;

    private class b implements View.OnTouchListener {
        private b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return true;
            }
            SpringConfiguratorView.this.q();
            return true;
        }
    }

    private class c implements m {
        private c() {
        }

        @Override // com.facebook.rebound.m
        public void a(i iVar) {
            float f10 = (float) iVar.f();
            float f11 = SpringConfiguratorView.this.f28887f;
            SpringConfiguratorView.this.setTranslationY((f10 * (SpringConfiguratorView.this.f28886e - f11)) + f11);
        }

        @Override // com.facebook.rebound.m
        public void b(i iVar) {
        }

        @Override // com.facebook.rebound.m
        public void c(i iVar) {
        }

        @Override // com.facebook.rebound.m
        public void d(i iVar) {
        }
    }

    private class d implements SeekBar.OnSeekBarChangeListener {
        private d() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i10, boolean z10) {
            if (seekBar == SpringConfiguratorView.this.f28890i) {
                double d10 = ((i10 * 200.0f) / 100000.0f) + 0.0f;
                SpringConfiguratorView.this.f28895n.f28868b = g.d(d10);
                String str = SpringConfiguratorView.f28882t.format(d10);
                SpringConfiguratorView.this.f28894m.setText("T:" + str);
            }
            if (seekBar == SpringConfiguratorView.this.f28891j) {
                double d11 = ((i10 * 50.0f) / 100000.0f) + 0.0f;
                SpringConfiguratorView.this.f28895n.f28867a = g.a(d11);
                String str2 = SpringConfiguratorView.f28882t.format(d11);
                SpringConfiguratorView.this.f28893l.setText("F:" + str2);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    private class e extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Context f28899b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List<String> f28900c = new ArrayList();

        public e(Context context) {
            this.f28899b = context;
        }

        public void a(String str) {
            this.f28900c.add(str);
            notifyDataSetChanged();
        }

        public void b() {
            this.f28900c.clear();
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f28900c.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this.f28900c.get(i10);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            TextView textView;
            if (view == null) {
                textView = new TextView(this.f28899b);
                textView.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
                int iF = com.facebook.rebound.ui.a.f(12.0f, SpringConfiguratorView.this.getResources());
                textView.setPadding(iF, iF, iF, iF);
                textView.setTextColor(SpringConfiguratorView.this.f28889h);
            } else {
                textView = (TextView) view;
            }
            textView.setText(this.f28900c.get(i10));
            return textView;
        }
    }

    private class f implements AdapterView.OnItemSelectedListener {
        private f() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j10) {
            SpringConfiguratorView springConfiguratorView = SpringConfiguratorView.this;
            springConfiguratorView.f28895n = (k) springConfiguratorView.f28884c.get(i10);
            SpringConfiguratorView springConfiguratorView2 = SpringConfiguratorView.this;
            springConfiguratorView2.r(springConfiguratorView2.f28895n);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public SpringConfiguratorView(Context context) {
        this(context, null);
    }

    private View o(Context context) {
        Resources resources = getResources();
        int iF = com.facebook.rebound.ui.a.f(5.0f, resources);
        int iF2 = com.facebook.rebound.ui.a.f(10.0f, resources);
        int iF3 = com.facebook.rebound.ui.a.f(20.0f, resources);
        TableLayout.LayoutParams layoutParams = new TableLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.setMargins(0, 0, iF, 0);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(com.facebook.rebound.ui.a.a(-1, com.facebook.rebound.ui.a.f(300.0f, resources)));
        FrameLayout frameLayout2 = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParamsB = com.facebook.rebound.ui.a.b();
        layoutParamsB.setMargins(0, iF3, 0, 0);
        frameLayout2.setLayoutParams(layoutParamsB);
        frameLayout2.setBackgroundColor(Color.argb(100, 0, 0, 0));
        frameLayout.addView(frameLayout2);
        this.f28892k = new Spinner(context, 0);
        FrameLayout.LayoutParams layoutParamsC = com.facebook.rebound.ui.a.c();
        layoutParamsC.gravity = 48;
        layoutParamsC.setMargins(iF2, iF2, iF2, 0);
        this.f28892k.setLayoutParams(layoutParamsC);
        frameLayout2.addView(this.f28892k);
        LinearLayout linearLayout = new LinearLayout(context);
        FrameLayout.LayoutParams layoutParamsC2 = com.facebook.rebound.ui.a.c();
        layoutParamsC2.setMargins(0, 0, 0, com.facebook.rebound.ui.a.f(80.0f, resources));
        layoutParamsC2.gravity = 80;
        linearLayout.setLayoutParams(layoutParamsC2);
        linearLayout.setOrientation(1);
        frameLayout2.addView(linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(context);
        FrameLayout.LayoutParams layoutParamsC3 = com.facebook.rebound.ui.a.c();
        layoutParamsC3.setMargins(iF2, iF2, iF2, iF3);
        linearLayout2.setPadding(iF2, iF2, iF2, iF2);
        linearLayout2.setLayoutParams(layoutParamsC3);
        linearLayout2.setOrientation(0);
        linearLayout.addView(linearLayout2);
        SeekBar seekBar = new SeekBar(context);
        this.f28890i = seekBar;
        seekBar.setLayoutParams(layoutParams);
        linearLayout2.addView(this.f28890i);
        TextView textView = new TextView(getContext());
        this.f28894m = textView;
        textView.setTextColor(this.f28889h);
        FrameLayout.LayoutParams layoutParamsA = com.facebook.rebound.ui.a.a(com.facebook.rebound.ui.a.f(50.0f, resources), -1);
        this.f28894m.setGravity(19);
        this.f28894m.setLayoutParams(layoutParamsA);
        this.f28894m.setMaxLines(1);
        linearLayout2.addView(this.f28894m);
        LinearLayout linearLayout3 = new LinearLayout(context);
        FrameLayout.LayoutParams layoutParamsC4 = com.facebook.rebound.ui.a.c();
        layoutParamsC4.setMargins(iF2, iF2, iF2, iF3);
        linearLayout3.setPadding(iF2, iF2, iF2, iF2);
        linearLayout3.setLayoutParams(layoutParamsC4);
        linearLayout3.setOrientation(0);
        linearLayout.addView(linearLayout3);
        SeekBar seekBar2 = new SeekBar(context);
        this.f28891j = seekBar2;
        seekBar2.setLayoutParams(layoutParams);
        linearLayout3.addView(this.f28891j);
        TextView textView2 = new TextView(getContext());
        this.f28893l = textView2;
        textView2.setTextColor(this.f28889h);
        FrameLayout.LayoutParams layoutParamsA2 = com.facebook.rebound.ui.a.a(com.facebook.rebound.ui.a.f(50.0f, resources), -1);
        this.f28893l.setGravity(19);
        this.f28893l.setLayoutParams(layoutParamsA2);
        this.f28893l.setMaxLines(1);
        linearLayout3.addView(this.f28893l);
        View view = new View(context);
        FrameLayout.LayoutParams layoutParamsA3 = com.facebook.rebound.ui.a.a(com.facebook.rebound.ui.a.f(60.0f, resources), com.facebook.rebound.ui.a.f(40.0f, resources));
        layoutParamsA3.gravity = 49;
        view.setLayoutParams(layoutParamsA3);
        view.setOnTouchListener(new b());
        view.setBackgroundColor(Color.argb(255, 0, 164, 209));
        frameLayout.addView(view);
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        this.f28885d.x(this.f28885d.h() == 1.0d ? 0.0d : 1.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(k kVar) {
        int iRound = Math.round(((((float) g.c(kVar.f28868b)) - 0.0f) * 100000.0f) / 200.0f);
        int iRound2 = Math.round(((((float) g.b(kVar.f28867a)) - 0.0f) * 100000.0f) / 50.0f);
        this.f28890i.setProgress(iRound);
        this.f28891j.setProgress(iRound2);
    }

    public void n() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this);
        }
        this.f28885d.d();
    }

    public void p() {
        Map<k, String> mapB = this.f28888g.b();
        this.f28883b.b();
        this.f28884c.clear();
        for (Map.Entry<k, String> entry : mapB.entrySet()) {
            if (entry.getKey() != k.f28866c) {
                this.f28884c.add(entry.getKey());
                this.f28883b.a(entry.getValue());
            }
        }
        this.f28884c.add(k.f28866c);
        this.f28883b.a(mapB.get(k.f28866c));
        this.f28883b.notifyDataSetChanged();
        if (this.f28884c.size() > 0) {
            this.f28892k.setSelection(0);
        }
    }

    public SpringConfiguratorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @TargetApi(11)
    public SpringConfiguratorView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f28884c = new ArrayList();
        this.f28889h = Color.argb(255, 225, 225, 225);
        o oVarM = o.m();
        this.f28888g = l.c();
        e eVar = new e(context);
        this.f28883b = eVar;
        Resources resources = getResources();
        this.f28887f = com.facebook.rebound.ui.a.f(40.0f, resources);
        float f10 = com.facebook.rebound.ui.a.f(280.0f, resources);
        this.f28886e = f10;
        i iVarD = oVarM.d();
        this.f28885d = iVarD;
        iVarD.v(1.0d).x(1.0d).a(new c());
        addView(o(context));
        d dVar = new d();
        this.f28890i.setMax(100000);
        this.f28890i.setOnSeekBarChangeListener(dVar);
        this.f28891j.setMax(100000);
        this.f28891j.setOnSeekBarChangeListener(dVar);
        this.f28892k.setAdapter((SpinnerAdapter) eVar);
        this.f28892k.setOnItemSelectedListener(new f());
        p();
        setTranslationY(f10);
    }
}
