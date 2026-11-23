package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.GameMainActivity4;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class s0 extends PopupWindow implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f66846b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f66847c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f66848d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    View f66849e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Map<Integer, String> f66850f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f66851g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    c f66852h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    View f66853i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    TextView f66854j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    TextView f66855k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    TextView f66856l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    TextView f66857m;

    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            if (event.getAction() != 4) {
                return false;
            }
            s0.this.dismiss();
            return true;
        }
    }

    class b implements Animation.AnimationListener {
        b() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            s0.super.dismiss();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    public interface c {
        void onItemClick(int item, String name);
    }

    class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f66860a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public View f66861b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f66862c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public View f66863d;

        d() {
        }
    }

    public s0(Context context) {
        super(context);
        this.f66850f = new HashMap();
        this.f66846b = context;
        i();
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(View view) {
        dismiss();
    }

    private void i() {
        setAnimationStyle(R.style.animationNone);
        setBackgroundDrawable(new BitmapDrawable());
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        setTouchInterceptor(new a());
    }

    private void k(int currentx) {
        this.f66856l.setSelected(false);
        this.f66855k.setSelected(false);
        this.f66854j.setSelected(false);
        this.f66857m.setSelected(false);
        switch (currentx) {
            case 52:
                this.f66855k.setSelected(true);
                this.f66851g = 52;
                break;
            case 53:
                this.f66854j.setSelected(true);
                this.f66851g = 53;
                break;
            case 54:
                this.f66856l.setSelected(true);
                this.f66851g = 54;
                break;
            case 55:
                this.f66857m.setSelected(true);
                this.f66851g = 55;
                break;
        }
    }

    void c() {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.f66846b, R.anim.scale_in);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.1f, 1.0f);
        animationLoadAnimation.setDuration(150L);
        alphaAnimation.setDuration(150L);
        this.f66853i.startAnimation(animationLoadAnimation);
        this.f66849e.startAnimation(alphaAnimation);
    }

    void d() {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.f66846b, R.anim.scale_out);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.1f);
        animationLoadAnimation.setDuration(150L);
        alphaAnimation.setDuration(150L);
        this.f66853i.startAnimation(animationLoadAnimation);
        this.f66849e.startAnimation(alphaAnimation);
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.f66846b, R.anim.scale_out);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.1f);
        animationLoadAnimation.setDuration(100L);
        alphaAnimation.setDuration(100L);
        this.f66853i.startAnimation(animationLoadAnimation);
        this.f66849e.startAnimation(alphaAnimation);
        alphaAnimation.setAnimationListener(new b());
    }

    public c e() {
        return this.f66852h;
    }

    void f() {
        View viewInflate = LayoutInflater.from(this.f66846b).inflate(R.layout.pop_special_game_filter, (ViewGroup) null);
        this.f66847c = viewInflate;
        setContentView(viewInflate);
        setWidth(-1);
        setHeight(-2);
        update();
        this.f66850f.put(53, GameMainActivity4.TITLE_GOLDFINGER);
        this.f66850f.put(52, "MOD");
        this.f66850f.put(54, "一键技能");
        this.f66850f.put(55, "快速通关");
        View viewFindViewById = this.f66847c.findViewById(R.id.bg);
        this.f66849e = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.customview.r0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f66838b.g(view);
            }
        });
        this.f66854j = (TextView) this.f66847c.findViewById(R.id.fingerLayout);
        this.f66855k = (TextView) this.f66847c.findViewById(R.id.modLayout);
        this.f66856l = (TextView) this.f66847c.findViewById(R.id.onekeyLayout);
        this.f66857m = (TextView) this.f66847c.findViewById(R.id.fastLayout);
        this.f66853i = this.f66847c.findViewById(R.id.layoutMain);
        this.f66854j.setOnClickListener(this);
        this.f66855k.setOnClickListener(this);
        this.f66856l.setOnClickListener(this);
        this.f66857m.setOnClickListener(this);
    }

    public void h(c onFilterItemClickListener) {
        this.f66852h = onFilterItemClickListener;
    }

    public void j(View anchor, int current) {
        showAsDropDown(anchor);
        this.f66851g = current;
        k(current);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        switch (v10.getId()) {
            case R.id.fastLayout /* 2131363322 */:
                this.f66851g = 55;
                break;
            case R.id.fingerLayout /* 2131363376 */:
                this.f66851g = 53;
                break;
            case R.id.modLayout /* 2131365996 */:
                this.f66851g = 52;
                break;
            case R.id.onekeyLayout /* 2131366295 */:
                this.f66851g = 54;
                break;
        }
        k(this.f66851g);
        c cVar = this.f66852h;
        int i10 = this.f66851g;
        cVar.onItemClick(i10, this.f66850f.get(Integer.valueOf(i10)));
        dismiss();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View anchor) {
        this.f66848d = anchor;
        if (Build.VERSION.SDK_INT == 24) {
            try {
                Rect rect = new Rect();
                this.f66848d.getGlobalVisibleRect(rect);
                setHeight(this.f66848d.getResources().getDisplayMetrics().heightPixels - rect.bottom);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        super.showAsDropDown(anchor);
        c();
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(View parent, int gravity, int x10, int y10) {
        this.f66848d = parent;
        super.showAtLocation(parent, gravity, x10, y10);
    }

    public s0(Context context, View parent, int width, int height) {
        super(parent, width, height, true);
        this.f66850f = new HashMap();
        this.f66846b = context;
        this.f66847c = parent;
        i();
    }
}
