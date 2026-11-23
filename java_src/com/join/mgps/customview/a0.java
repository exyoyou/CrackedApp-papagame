package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a0 extends PopupWindow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f66259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f66260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f66261c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f66262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ListView f66263e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    BaseAdapter f66264f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    List<String> f66265g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f66266h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    d f66267i;

    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            if (event.getAction() != 4) {
                return false;
            }
            a0.this.dismiss();
            return true;
        }
    }

    class b extends BaseAdapter {
        b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return a0.this.f66265g.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            if (position < a0.this.f66265g.size()) {
                return a0.this.f66265g.get(position);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            e eVar;
            if (convertView != null) {
                eVar = (e) convertView.getTag();
            } else {
                eVar = a0.this.new e();
                convertView = LayoutInflater.from(a0.this.f66259a).inflate(R.layout.pop_my_game_filter_item, (ViewGroup) null);
                eVar.f66271a = (TextView) convertView.findViewById(R.id.title);
                eVar.f66272b = convertView.findViewById(R.id.f35481r);
                eVar.f66273c = convertView.findViewById(R.id.rRect);
                eVar.f66274d = convertView.findViewById(R.id.line);
                convertView.setTag(eVar);
            }
            String str = (String) getItem(position);
            eVar.f66271a.setText(str);
            if (TextUtils.isEmpty(a0.this.f66266h) || !a0.this.f66266h.equals(str)) {
                eVar.f66271a.setSelected(false);
                eVar.f66272b.setVisibility(4);
            } else {
                eVar.f66271a.setSelected(true);
                eVar.f66272b.setVisibility(0);
            }
            if (position == getCount() - 1) {
                eVar.f66274d.setVisibility(4);
            } else {
                eVar.f66274d.setVisibility(0);
            }
            return convertView;
        }
    }

    class c implements Animation.AnimationListener {
        c() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            a0.super.dismiss();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    public interface d {
        void a(String item);
    }

    class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f66271a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public View f66272b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f66273c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public View f66274d;

        e() {
        }
    }

    public a0(Context context) {
        super(context);
        this.f66265g = new ArrayList();
        this.f66259a = context;
        l();
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(android.widget.AdapterView adapterView, View view, int i10, long j10) {
        String str = this.f66265g.get(i10);
        dismiss();
        d dVar = this.f66267i;
        if (dVar != null) {
            dVar.a(str);
        }
    }

    private void l() {
        setAnimationStyle(R.style.animationNone);
        setBackgroundDrawable(new BitmapDrawable());
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        setTouchInterceptor(new a());
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.f66259a, R.anim.scale_out);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.1f);
        animationLoadAnimation.setDuration(100L);
        alphaAnimation.setDuration(100L);
        this.f66263e.startAnimation(animationLoadAnimation);
        this.f66262d.startAnimation(alphaAnimation);
        alphaAnimation.setAnimationListener(new c());
    }

    void e() {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.f66259a, R.anim.scale_in);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.1f, 1.0f);
        animationLoadAnimation.setDuration(150L);
        alphaAnimation.setDuration(150L);
        this.f66263e.startAnimation(animationLoadAnimation);
        this.f66262d.startAnimation(alphaAnimation);
    }

    void f() {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.f66259a, R.anim.scale_out);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.1f);
        animationLoadAnimation.setDuration(150L);
        alphaAnimation.setDuration(150L);
        this.f66263e.startAnimation(animationLoadAnimation);
        this.f66262d.startAnimation(alphaAnimation);
    }

    public d g() {
        return this.f66267i;
    }

    void h() {
        View viewInflate = LayoutInflater.from(this.f66259a).inflate(R.layout.pop_my_game_filter, (ViewGroup) null);
        this.f66260b = viewInflate;
        setContentView(viewInflate);
        setWidth(-1);
        setHeight(-2);
        update();
        this.f66263e = (ListView) this.f66260b.findViewById(R.id.list);
        View viewFindViewById = this.f66260b.findViewById(R.id.bg);
        this.f66262d = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.customview.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f67179b.i(view);
            }
        });
        b bVar = new b();
        this.f66264f = bVar;
        this.f66263e.setAdapter((ListAdapter) bVar);
        this.f66263e.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() { // from class: com.join.mgps.customview.z
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(android.widget.AdapterView adapterView, View view, int i10, long j10) {
                this.f67180b.j(adapterView, view, i10, j10);
            }
        });
    }

    public void k(d onFilterItemClickListener) {
        this.f66267i = onFilterItemClickListener;
    }

    public void m(View anchor, List<String> items, String current) {
        showAsDropDown(anchor);
        this.f66265g.clear();
        if (items != null && items.size() > 0) {
            this.f66265g.addAll(items);
        }
        this.f66264f.notifyDataSetChanged();
        this.f66266h = current;
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View anchor) {
        this.f66261c = anchor;
        if (Build.VERSION.SDK_INT == 24) {
            try {
                Rect rect = new Rect();
                this.f66261c.getGlobalVisibleRect(rect);
                setHeight(this.f66261c.getResources().getDisplayMetrics().heightPixels - rect.bottom);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        super.showAsDropDown(anchor);
        e();
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(View parent, int gravity, int x10, int y10) {
        this.f66261c = parent;
        super.showAtLocation(parent, gravity, x10, y10);
    }

    public a0(Context context, View parent, int width, int height) {
        super(parent, width, height, true);
        this.f66265g = new ArrayList();
        this.f66259a = context;
        this.f66260b = parent;
        l();
    }
}
