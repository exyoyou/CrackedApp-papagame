package com.byazt.nk;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.oq.CircleLongPressView;
import com.byazt.oq.ClickSlideUpShakeView;
import com.byazt.oq.RippleView;
import com.byazt.oq.ShakeAnimationView;
import com.byazt.oq.WriggleGuideAnimationView;
import com.byazt.tm.DynamicBaseWidget;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.sigmob.sdk.base.mta.PointType;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 234, 2265})
public class InteractViewContainer extends FrameLayout implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f17381a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f17382c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f17383da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17384i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public sp f17385n;
    public com.byazt.aq.da sl;
    public RippleView sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.xl.u f17386t;
    public DynamicBaseWidget tt;
    public View uj;
    public com.byazt.aq.sp ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public View.OnTouchListener f17387x;

    public InteractViewContainer(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.aq.sp spVar) {
        super(context);
        this.f17382c = context;
        this.tt = dynamicBaseWidget;
        this.ve = spVar;
        sp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.f17387x != null) {
            setOnClickListener((View.OnClickListener) this.tt.getDynamicClickListener());
            performClick();
            if (this.ve.ma()) {
                return;
            }
            setVisibility(8);
        }
    }

    private void sp() {
        setBackgroundColor(0);
        setClipChildren(false);
        setClipToPadding(false);
        this.f17381a = this.ve.aw();
        this.f17384i = this.ve.bm();
        this.f17383da = this.ve.kp();
        sp spVarC = i.c(this.f17382c, this.tt, this.ve, this.sl, this.f17386t);
        this.f17385n = spVarC;
        if (spVarC != null) {
            this.uj = spVarC.ve();
            if (this.ve.ic()) {
                setBackgroundColor(Color.parseColor("#50000000"));
            }
            if (TextUtils.equals(this.f17381a, "6")) {
                if (!this.ve.b() || TextUtils.isEmpty(this.ve.q())) {
                    this.sp = new RippleView(this.f17382c, Color.parseColor("#99000000"));
                } else {
                    this.sp = new RippleView(this.f17382c, com.byazt.aq.sp.c(this.ve.q()));
                }
                FrameLayout frameLayout = new FrameLayout(this.f17382c);
                frameLayout.addView(this.sp, new FrameLayout.LayoutParams(-1, -1));
                frameLayout.setClipChildren(true);
                addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
                post(new Runnable() { // from class: com.byazt.nk.InteractViewContainer.1
                    @Override // java.lang.Runnable
                    public void run() {
                        InteractViewContainer.this.sp.tt();
                    }
                });
            }
            if (c(this.f17381a) && com.byazt.sr.uj.c()) {
                int color = Color.parseColor("#99000000");
                if (this.ve.b() && !TextUtils.isEmpty(this.ve.q())) {
                    try {
                        color = com.byazt.aq.sp.c(this.ve.q());
                    } catch (Exception unused) {
                    }
                }
                View view = new View(this.f17382c);
                view.setBackgroundColor(color);
                addView(view, new FrameLayout.LayoutParams(-1, -1));
            }
            addView(this.f17385n.ve());
            c(this.f17385n.ve());
            setVisibility(0);
        }
    }

    private boolean x() {
        return (this.ve.kp() || TextUtils.equals("9", this.f17381a) || TextUtils.equals("16", this.f17381a) || TextUtils.equals(PointType.LOAD_READY, this.f17381a) || TextUtils.equals("18", this.f17381a) || TextUtils.equals(com.windmill.sdk.point.PointType.WIND_ADAPTER, this.f17381a) || TextUtils.equals("29", this.f17381a) || TextUtils.equals("10", this.f17381a)) ? false : true;
    }

    public void a() {
        if (this.uj != null && TextUtils.equals(this.f17381a, "2")) {
            View view = this.uj;
            if (view instanceof CircleLongPressView) {
                ((CircleLongPressView) view).uj();
            }
        }
    }

    public void n() {
        if (this.uj != null && TextUtils.equals(this.f17381a, "2")) {
            View view = this.uj;
            if (view instanceof CircleLongPressView) {
                ((CircleLongPressView) view).ve();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            sp spVar = this.f17385n;
            if (spVar != null) {
                spVar.tt();
            }
        } catch (Exception e10) {
            com.byazt.nr.m.ve(e10.getMessage());
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f17387x instanceof com.byazt.ij.ve) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void uj() {
        sp spVar = this.f17385n;
        if (spVar != null) {
            spVar.tt();
        }
    }

    public void ve() {
        sp spVar = this.f17385n;
        if (spVar != null) {
            spVar.c();
        }
    }

    private boolean c(String str) {
        return TextUtils.equals(str, "24") || TextUtils.equals(str, "23") || TextUtils.equals(str, "25") || TextUtils.equals(str, "22") || TextUtils.equals(str, "1");
    }

    @Override // com.byazt.nk.x
    public void tt() {
        if (x()) {
            setOnClickListener((View.OnClickListener) this.tt.getDynamicClickListener());
            performClick();
            if (this.ve.ma()) {
                return;
            }
            setVisibility(8);
        }
    }

    public InteractViewContainer(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.aq.sp spVar, com.byazt.aq.da daVar, com.byazt.xl.u uVar) {
        super(context);
        this.f17382c = context;
        this.tt = dynamicBaseWidget;
        this.ve = spVar;
        this.sl = daVar;
        this.f17386t = uVar;
        sp();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void c(ViewGroup viewGroup) {
        if (this.uj == null) {
            return;
        }
        String str = this.f17381a;
        str.hashCode();
        byte b10 = -1;
        switch (str.hashCode()) {
            case 48:
                if (str.equals("0")) {
                    b10 = 0;
                }
                break;
            case 49:
                if (str.equals("1")) {
                    b10 = 1;
                }
                break;
            case 50:
                if (str.equals("2")) {
                    b10 = 2;
                }
                break;
            case 53:
                if (str.equals("5")) {
                    b10 = 3;
                }
                break;
            case 54:
                if (str.equals("6")) {
                    b10 = 4;
                }
                break;
            case 55:
                if (str.equals("7")) {
                    b10 = 5;
                }
                break;
            case 56:
                if (str.equals(GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD)) {
                    b10 = 6;
                }
                break;
            case 57:
                if (str.equals("9")) {
                    b10 = 7;
                }
                break;
            case 1567:
                if (str.equals("10")) {
                    b10 = 8;
                }
                break;
            case 1568:
                if (str.equals("11")) {
                    b10 = 9;
                }
                break;
            case 1569:
                if (str.equals("12")) {
                    b10 = 10;
                }
                break;
            case 1570:
                if (str.equals(PointType.SIGMOB_REPORT_TRACKING)) {
                    b10 = 11;
                }
                break;
            case 1571:
                if (str.equals("14")) {
                    b10 = 12;
                }
                break;
            case 1573:
                if (str.equals("16")) {
                    b10 = 13;
                }
                break;
            case 1574:
                if (str.equals(PointType.LOAD_READY)) {
                    b10 = 14;
                }
                break;
            case 1575:
                if (str.equals("18")) {
                    b10 = 15;
                }
                break;
            case 1598:
                if (str.equals(com.windmill.sdk.point.PointType.WIND_ADAPTER)) {
                    b10 = 16;
                }
                break;
            case 1600:
                if (str.equals("22")) {
                    b10 = BinaryMemcacheOpcodes.SETQ;
                }
                break;
            case 1601:
                if (str.equals("23")) {
                    b10 = BinaryMemcacheOpcodes.ADDQ;
                }
                break;
            case 1602:
                if (str.equals("24")) {
                    b10 = BinaryMemcacheOpcodes.REPLACEQ;
                }
                break;
            case 1603:
                if (str.equals("25")) {
                    b10 = BinaryMemcacheOpcodes.DELETEQ;
                }
                break;
            case 1607:
                if (str.equals("29")) {
                    b10 = BinaryMemcacheOpcodes.INCREMENTQ;
                }
                break;
        }
        switch (b10) {
            case 0:
                this.f17387x = new com.byazt.ij.n(this, this.f17384i, this.f17386t.h());
                setBackgroundColor(Color.parseColor("#80000000"));
                break;
            case 1:
            case 4:
                if (!this.ve.b() || TextUtils.isEmpty(this.ve.q())) {
                    setBackgroundColor(Color.parseColor("#80000000"));
                }
                this.f17387x = new com.byazt.ij.a(this);
                break;
            case 2:
            case 5:
                setBackgroundColor(Color.parseColor("#80000000"));
                this.f17387x = new com.byazt.ij.tt(this, this);
                break;
            case 3:
                if (this.ve.b() && !TextUtils.isEmpty(this.ve.q())) {
                    setBackgroundColor(com.byazt.aq.sp.c(this.ve.q()));
                } else {
                    setBackgroundColor(Color.parseColor("#80000000"));
                }
                this.f17387x = new com.byazt.ij.ve(this);
                this.uj.setTag(2);
                break;
            case 6:
            case 9:
                this.tt.setClipChildren(false);
                this.tt.setClipChildren(false);
                ViewGroup viewGroup2 = (ViewGroup) this.tt.getParent();
                if (viewGroup2 != null) {
                    viewGroup2.setClipChildren(false);
                    viewGroup2.setClipToPadding(false);
                }
                this.f17387x = new com.byazt.ij.a(this);
                break;
            case 7:
            case 14:
                this.uj.setTag(2);
                break;
            case 8:
                this.f17387x = new com.byazt.ij.uj(this, this.f17384i, this.f17383da);
                break;
            case 10:
                this.f17387x = new com.byazt.ij.ve(this);
                this.uj.setTag(2);
                break;
            case 11:
            case 19:
                if (this.f17381a.equals("24") && com.byazt.sr.uj.c()) {
                    this.tt.setClipChildren(false);
                    this.f17387x = new com.byazt.ij.a(this);
                } else {
                    this.f17387x = new com.byazt.ij.n(this, this.f17384i, this.f17386t.h());
                }
                break;
            case 12:
                this.f17387x = new com.byazt.ij.tt(this, this);
                break;
            case 13:
                View view = this.uj;
                if (view != null && (view instanceof ShakeAnimationView) && ((ShakeAnimationView) view).getShakeLayout() != null) {
                    ((ShakeAnimationView) this.uj).getShakeLayout().setTag(2);
                }
                this.uj.setTag(2);
                break;
            case 15:
                View view2 = this.uj;
                if (view2 != null && (view2 instanceof WriggleGuideAnimationView) && ((WriggleGuideAnimationView) view2).getWriggleLayout() != null) {
                    ((WriggleGuideAnimationView) this.uj).getWriggleLayout().setTag(2);
                }
                this.uj.setTag(2);
                break;
            case 16:
                this.f17387x = new com.byazt.ij.c(this, this.f17384i, viewGroup);
                break;
            case 17:
                if (com.byazt.sr.uj.c()) {
                    this.f17387x = new com.byazt.ij.x(this, this.f17383da);
                } else {
                    this.f17387x = new com.byazt.ij.sp(this, this.f17384i, viewGroup);
                }
                break;
            case 18:
                if (com.byazt.sr.uj.c()) {
                    this.f17387x = new com.byazt.ij.a(this);
                }
                break;
            case 20:
                if (com.byazt.sr.uj.c()) {
                    this.f17387x = new com.byazt.ij.x(this, this.f17383da);
                }
                break;
            case 21:
                View view3 = this.uj;
                if (view3 != null && (view3 instanceof ClickSlideUpShakeView) && ((ClickSlideUpShakeView) view3).getShakeView() != null) {
                    ((ClickSlideUpShakeView) this.uj).getShakeView().setTag(2);
                }
                this.f17387x = new com.byazt.ij.n(this, this.f17384i, this.f17386t.h());
                break;
        }
        View.OnTouchListener onTouchListener = this.f17387x;
        if (onTouchListener != null) {
            setOnTouchListener(onTouchListener);
        }
        if (x()) {
            this.uj.setTag(2);
            setOnClickListener((View.OnClickListener) this.tt.getDynamicClickListener());
        }
    }

    @Override // com.byazt.nk.x
    public void c() {
        if (TextUtils.equals(this.f17381a, "6")) {
            RippleView rippleView = this.sp;
            if (rippleView != null) {
                rippleView.ve();
                postDelayed(new Runnable() { // from class: com.byazt.nk.InteractViewContainer.2
                    @Override // java.lang.Runnable
                    public void run() {
                        InteractViewContainer.this.i();
                    }
                }, 300L);
                return;
            }
            return;
        }
        if (TextUtils.equals(this.f17381a, com.windmill.sdk.point.PointType.WIND_ADAPTER)) {
            postDelayed(new Runnable() { // from class: com.byazt.nk.InteractViewContainer.3
                @Override // java.lang.Runnable
                public void run() {
                    InteractViewContainer.this.i();
                }
            }, 400L);
        } else {
            i();
        }
    }
}
