package com.join.mgps.ptr;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public class PtrClassicDefaultHeader extends FrameLayout implements c {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f71939l = "cube_ptr_classic_last_update";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static SimpleDateFormat f71940m = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f71941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RotateAnimation f71942c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RotateAnimation f71943d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f71944e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f71945f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f71946g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextView f71947h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f71948i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f71949j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private b f71950k;

    private class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f71951b;

        private b() {
            this.f71951b = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            if (TextUtils.isEmpty(PtrClassicDefaultHeader.this.f71948i)) {
                return;
            }
            this.f71951b = true;
            run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            this.f71951b = false;
            PtrClassicDefaultHeader.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            PtrClassicDefaultHeader.this.n();
            if (this.f71951b) {
                PtrClassicDefaultHeader.this.postDelayed(this, 1000L);
            }
        }
    }

    public PtrClassicDefaultHeader(Context context) {
        super(context);
        this.f71941b = 150;
        this.f71946g = -1L;
        this.f71950k = new b();
        l(null);
    }

    private String getLastUpdateTime() {
        if (this.f71946g == -1 && !TextUtils.isEmpty(this.f71948i)) {
            this.f71946g = getContext().getSharedPreferences(f71939l, 0).getLong(this.f71948i, -1L);
        }
        if (this.f71946g == -1) {
            return null;
        }
        long time = new Date().getTime() - this.f71946g;
        int i10 = (int) (time / 1000);
        if (time < 0 || i10 <= 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getContext().getString(R.string.cube_ptr_last_update));
        if (i10 < 60) {
            sb2.append(i10 + getContext().getString(R.string.cube_ptr_seconds_ago));
        } else {
            int i11 = i10 / 60;
            if (i11 > 60) {
                int i12 = i11 / 60;
                if (i12 > 24) {
                    sb2.append(f71940m.format(new Date(this.f71946g)));
                } else {
                    sb2.append(i12 + getContext().getString(R.string.cube_ptr_hours_ago));
                }
            } else {
                sb2.append(i11 + getContext().getString(R.string.cube_ptr_minutes_ago));
            }
        }
        return sb2.toString();
    }

    private void h() {
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -180.0f, 1, 0.5f, 1, 0.5f);
        this.f71942c = rotateAnimation;
        rotateAnimation.setInterpolator(new LinearInterpolator());
        this.f71942c.setDuration(this.f71941b);
        this.f71942c.setFillAfter(true);
        RotateAnimation rotateAnimation2 = new RotateAnimation(-180.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        this.f71943d = rotateAnimation2;
        rotateAnimation2.setInterpolator(new LinearInterpolator());
        this.f71943d.setDuration(this.f71941b);
        this.f71943d.setFillAfter(true);
    }

    private void i(PtrFrameLayout frame) {
        this.f71944e.setVisibility(0);
        if (frame.p()) {
            this.f71944e.setText(getResources().getString(R.string.xlistview_header_hint_normal));
        } else {
            this.f71944e.setText(getResources().getString(R.string.xlistview_header_hint_normal));
        }
    }

    private void j(PtrFrameLayout frame) {
        if (frame.p()) {
            return;
        }
        this.f71944e.setVisibility(0);
        this.f71944e.setText(R.string.xlistview_header_hint_ready);
    }

    private void k() {
    }

    private void m() {
        k();
        this.f71945f.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (TextUtils.isEmpty(this.f71948i) || !this.f71949j) {
            this.f71947h.setVisibility(8);
            return;
        }
        String lastUpdateTime = getLastUpdateTime();
        if (TextUtils.isEmpty(lastUpdateTime)) {
            this.f71947h.setVisibility(8);
        } else {
            this.f71947h.setVisibility(0);
            this.f71947h.setText(lastUpdateTime);
        }
    }

    @Override // com.join.mgps.ptr.c
    public void a(PtrFrameLayout frame) {
        k();
        this.f71945f.setVisibility(4);
        this.f71944e.setVisibility(0);
        this.f71944e.setText(getResources().getString(R.string.xlistview_header_hint_loading));
        SharedPreferences sharedPreferences = getContext().getSharedPreferences(f71939l, 0);
        if (TextUtils.isEmpty(this.f71948i)) {
            return;
        }
        this.f71946g = new Date().getTime();
        sharedPreferences.edit().putLong(this.f71948i, this.f71946g).commit();
    }

    @Override // com.join.mgps.ptr.c
    public void b(PtrFrameLayout frame) {
        this.f71949j = true;
        n();
        this.f71950k.c();
        this.f71945f.setVisibility(4);
        this.f71944e.setVisibility(0);
        if (frame.p()) {
            this.f71944e.setText(getResources().getString(R.string.xlistview_header_hint_normal));
        } else {
            this.f71944e.setText(getResources().getString(R.string.xlistview_header_hint_normal));
        }
    }

    @Override // com.join.mgps.ptr.c
    public void c(PtrFrameLayout frame, boolean isUnderTouch, byte status, com.join.mgps.ptr.indicator.a ptrIndicator) {
        int offsetToRefresh = frame.getOffsetToRefresh();
        int iD = ptrIndicator.d();
        int iG = ptrIndicator.g();
        if (iD < offsetToRefresh && iG >= offsetToRefresh) {
            if (isUnderTouch && status == 2) {
                i(frame);
                return;
            }
            return;
        }
        if (iD <= offsetToRefresh || iG > offsetToRefresh || !isUnderTouch || status != 2) {
            return;
        }
        j(frame);
    }

    @Override // com.join.mgps.ptr.c
    public void d(PtrFrameLayout frame) {
        m();
        this.f71949j = true;
        n();
    }

    @Override // com.join.mgps.ptr.c
    public void e(PtrFrameLayout frame) {
        this.f71949j = false;
        k();
        this.f71945f.setVisibility(0);
        this.f71944e.setVisibility(0);
        this.f71944e.setText(R.string.xlistview_header_hint_loading);
        n();
        this.f71950k.d();
    }

    protected void l(AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.PtrClassicHeader, 0, 0);
        if (typedArrayObtainStyledAttributes != null) {
            this.f71941b = typedArrayObtainStyledAttributes.getInt(0, this.f71941b);
        }
        h();
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.cube_ptr_classic_default_header, this);
        this.f71944e = (TextView) viewInflate.findViewById(R.id.ptr_classic_header_rotate_view_header_title);
        this.f71947h = (TextView) viewInflate.findViewById(R.id.ptr_classic_header_rotate_view_header_last_update);
        this.f71945f = viewInflate.findViewById(R.id.ptr_classic_header_rotate_view_progressbar);
        m();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b bVar = this.f71950k;
        if (bVar != null) {
            bVar.d();
        }
    }

    public void setLastUpdateTimeKey(String key) {
        if (TextUtils.isEmpty(key)) {
            return;
        }
        this.f71948i = key;
    }

    public void setLastUpdateTimeRelateObject(Object object) {
        setLastUpdateTimeKey(object.getClass().getName());
    }

    public void setRotateAniTime(int time) {
        if (time == this.f71941b || time == 0) {
            return;
        }
        this.f71941b = time;
        h();
    }

    public PtrClassicDefaultHeader(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f71941b = 150;
        this.f71946g = -1L;
        this.f71950k = new b();
        l(attrs);
    }

    public PtrClassicDefaultHeader(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f71941b = 150;
        this.f71946g = -1L;
        this.f71950k = new b();
        l(attrs);
    }
}
