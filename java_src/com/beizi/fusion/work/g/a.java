package com.beizi.fusion.work.g;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.beizi.fusion.R;
import com.beizi.fusion.c.c;
import com.beizi.fusion.c.e;
import com.beizi.fusion.c.g;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.CoordinateBean;
import com.beizi.fusion.tool.ac;
import com.beizi.fusion.tool.am;
import com.beizi.fusion.tool.aq;
import com.beizi.fusion.tool.au;
import com.beizi.fusion.tool.f;
import com.beizi.fusion.tool.o;
import com.beizi.fusion.widget.ScrollClickView;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlinx.coroutines.internal.z;

/* JADX INFO: loaded from: classes6.dex */
public class a extends com.beizi.fusion.work.a implements c {
    protected ImageView A;
    protected ImageView B;
    protected TextView C;
    protected TextView D;
    protected TextView E;
    protected TextView F;
    protected TextView G;
    protected long H;
    protected float I;
    protected float J;
    protected boolean K = false;
    protected boolean L = false;
    protected boolean M = false;
    protected Context N;
    protected Activity O;
    protected aq P;
    protected am Q;
    protected CountDownTimer R;
    protected AdSpacesBean.RenderViewBean S;
    protected AdSpacesBean.BuyerBean.RenderAds T;
    protected List<AdSpacesBean.RenderViewBean> U;
    protected List<Pair<String, Integer>> V;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected View f11250n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected View f11251o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected View f11252p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected ViewGroup f11253q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected ViewGroup f11254r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected ViewGroup f11255s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected ViewGroup f11256t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected ViewGroup f11257u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected ViewGroup f11258v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected ViewGroup f11259w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected ViewGroup f11260x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected ImageView f11261y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected ImageView f11262z;

    public a(Context context, long j10, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, e eVar, int i10) {
        this.N = context;
        this.H = j10;
        this.f10982e = buyerBean;
        this.f10981d = eVar;
        this.f10988k = i10;
        this.f10983f = forwardBean;
        this.I = au.k(context);
        this.J = au.l(context);
        aA();
        r();
    }

    private void aS() {
        List<String> clickView = this.T.getClickView();
        ArrayList arrayList = new ArrayList();
        if (clickView != null && clickView.size() > 0) {
            if (clickView.contains("bg")) {
                arrayList.add(this.f11253q);
                arrayList.add(this.f11255s);
                arrayList.add(this.f11259w);
            } else if (clickView.contains("ad")) {
                arrayList.add(this.f11255s);
            } else {
                if (clickView.contains("image")) {
                    arrayList.add(this.f11256t);
                }
                if (clickView.contains("title")) {
                    arrayList.add(this.D);
                }
                if (clickView.contains("desc")) {
                    arrayList.add(this.E);
                }
                if (clickView.contains("icon")) {
                    arrayList.add(this.A);
                }
                if (clickView.contains(TypedValues.AttributesType.S_TARGET)) {
                    arrayList.add(this.f11258v);
                }
            }
        }
        a(arrayList);
    }

    private void aT() {
        ((FrameLayout) this.f11250n).removeView(this.f11252p);
    }

    private void c(int i10, int i11) {
        a(this.f11256t, this.T.getImageCoordinate(), i10, i11);
        aK();
    }

    private void g(int i10, int i11) {
        a(this.f11258v, this.T.getActionCoordinate(), i10, i11);
        if (TextUtils.isEmpty(aO())) {
            return;
        }
        this.F.setText(aO());
    }

    private void i(int i10, int i11) {
        b(this.f11259w, this.T.getScrollCoordinate(), i10, i11);
    }

    public void a(List<View> list) {
    }

    public void aA() {
        if (az() == -1) {
            return;
        }
        View viewInflate = LayoutInflater.from(this.N).inflate(az(), (ViewGroup) null);
        this.f11251o = viewInflate;
        this.f11253q = (ViewGroup) viewInflate.findViewById(R.id.rl_bg_container);
        this.f11254r = (ViewGroup) this.f11251o.findViewById(R.id.rl_anim_container);
        this.f11255s = (ViewGroup) this.f11251o.findViewById(R.id.rl_container);
        this.f11256t = (ViewGroup) this.f11251o.findViewById(R.id.fl_img_container);
        this.f11261y = (ImageView) this.f11251o.findViewById(R.id.iv_imageview);
        this.f11257u = (ViewGroup) this.f11251o.findViewById(R.id.rl_close);
        this.C = (TextView) this.f11251o.findViewById(R.id.tv_close);
        this.f11262z = (ImageView) this.f11251o.findViewById(R.id.iv_close);
        this.D = (TextView) this.f11251o.findViewById(R.id.tv_title);
        this.E = (TextView) this.f11251o.findViewById(R.id.tv_desc);
        this.A = (ImageView) this.f11251o.findViewById(R.id.iv_icon);
        this.f11258v = (ViewGroup) this.f11251o.findViewById(R.id.rl_action);
        this.F = (TextView) this.f11251o.findViewById(R.id.tv_action);
        this.f11259w = (ViewGroup) this.f11251o.findViewById(R.id.rl_slide_down_container);
        this.G = (TextView) this.f11251o.findViewById(R.id.tv_slide_down_title);
        this.B = (ImageView) this.f11251o.findViewById(R.id.iv_slide_down_arrow);
        this.f11260x = (ViewGroup) this.f11251o.findViewById(R.id.fl_event_container);
    }

    public void aB() {
    }

    public void aC() {
    }

    protected void aD() {
        e eVar = this.f10981d;
        if (eVar != null && eVar.t() != 2) {
            this.f10981d.d(f());
        }
        if (this.L) {
            return;
        }
        this.L = true;
        D();
        ad();
        if (this.f10988k != 2) {
            aR();
        }
    }

    protected void aE() {
        this.f10987j = com.beizi.fusion.e.a.ADSHOW;
        e eVar = this.f10981d;
        if (eVar != null && eVar.t() != 2) {
            this.f10981d.b(f());
        }
        if (this.K) {
            return;
        }
        this.K = true;
        aP();
        B();
        C();
        ac();
    }

    protected void aF() {
        try {
            if (Y()) {
                b();
            } else {
                P();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    protected void aG() {
        if (this.T != null) {
            a((int) this.I, (int) this.J);
            this.f11262z.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.work.g.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    a.this.aH();
                }
            });
        }
        this.f11252p = this.f11251o;
        aI();
    }

    public void aH() {
    }

    public void aI() {
    }

    public void aJ() {
    }

    public void aK() {
    }

    public String aL() {
        return "";
    }

    public String aM() {
        return "";
    }

    public String aN() {
        return "";
    }

    public String aO() {
        return "";
    }

    protected void aP() {
        AdSpacesBean.BuyerBean.RenderAds renderAds;
        if (this.C == null || this.f11262z == null || (renderAds = this.T) == null) {
            return;
        }
        if (renderAds.getAutoClose() == 0 && this.T.getMinTime() == 0) {
            this.C.setVisibility(8);
            this.f11262z.setVisibility(0);
        } else {
            this.f11262z.setVisibility(8);
            this.C.setVisibility(0);
            a(this.T.getAutoClose(), this.T.getMinTime(), this.T.getMaxTime());
        }
        this.f11257u.setVisibility(0);
    }

    public void aQ() {
    }

    protected void aR() {
        aq aqVar = this.P;
        if (aqVar != null) {
            aqVar.c();
        }
        am amVar = this.Q;
        if (amVar != null) {
            amVar.b();
        }
        aa();
        F();
        c(this.O);
    }

    public int az() {
        return -1;
    }

    public void b(boolean z10) {
    }

    @Override // com.beizi.fusion.work.a
    public void d() {
        if (this.f10981d == null || az() == -1) {
            return;
        }
        this.f10985h = this.f10982e.getAppId();
        this.f10986i = this.f10982e.getSpaceId();
        this.f10980c = this.f10982e.getBuyerSpaceUuId();
        List<AdSpacesBean.RenderViewBean> renderView = this.f10982e.getRenderView();
        this.U = renderView;
        if (renderView != null && renderView.size() > 0) {
            AdSpacesBean.RenderViewBean renderViewBean = this.U.get(0);
            this.S = renderViewBean;
            this.V = o.a(renderViewBean.getDpLinkUrlList());
        }
        com.beizi.fusion.events.b bVar = this.f10978a;
        if (bVar != null) {
            EventBean eventBeanA = bVar.a().a(this.f10980c);
            this.f10979b = eventBeanA;
            if (eventBeanA != null) {
                s();
                aB();
            }
        }
    }

    @Override // com.beizi.fusion.work.a
    public void e() {
    }

    @Override // com.beizi.fusion.work.a
    public String f() {
        return "";
    }

    @Override // com.beizi.fusion.work.a
    public com.beizi.fusion.e.a h() {
        return this.f10987j;
    }

    @Override // com.beizi.fusion.work.a
    public AdSpacesBean.BuyerBean j() {
        return this.f10982e;
    }

    @Override // com.beizi.fusion.work.a
    protected void k() {
        v();
        ab();
        this.T = this.f10982e.getRenderAds();
        aC();
    }

    @Override // com.beizi.fusion.work.a
    public void l() {
    }

    @Override // com.beizi.fusion.work.a
    public View o() {
        return this.f11252p;
    }

    private void b(Activity activity) {
        if (activity == null || this.f11252p == null) {
            return;
        }
        View decorView = activity.getWindow().getDecorView();
        this.f11250n = decorView;
        if (decorView instanceof FrameLayout) {
            au.a(this.f11252p);
            ((FrameLayout) this.f11250n).addView(this.f11252p);
            b(this.f11254r);
        }
    }

    private void e(int i10, int i11) {
        a(this.E, this.T.getDescCoordinate(), i10, i11);
        if (TextUtils.isEmpty(aM())) {
            return;
        }
        this.E.setText(aM());
    }

    private void f(int i10, int i11) {
        a(this.A, this.T.getIconCoordinate(), i10, i11);
        if (this.A.getVisibility() != 0 || TextUtils.isEmpty(aN())) {
            return;
        }
        f.a(this.N).a(aN(), new f.a() { // from class: com.beizi.fusion.work.g.a.2
            @Override // com.beizi.fusion.tool.f.a
            public void a() {
            }

            @Override // com.beizi.fusion.tool.f.a
            public void a(Bitmap bitmap) {
                a.this.A.setImageBitmap(bitmap);
            }
        });
    }

    private void h(int i10, int i11) {
        a(this.f11257u, this.T.getCloseCoordinate(), i10, i11);
    }

    @Override // com.beizi.fusion.work.a
    public void a(Activity activity) {
        try {
            if (this.M) {
                return;
            }
            this.M = true;
            this.O = activity;
            b(activity);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void c(Activity activity) {
        if (activity != null) {
            if (this.f11250n == null) {
                this.f11250n = activity.getWindow().getDecorView();
            }
            if (this.f11250n instanceof FrameLayout) {
                aT();
            }
        }
        l();
    }

    private void a(int i10, int i11) {
        a(this.f11253q, this.T.getBgCoordinate(), i10, i11);
        int i12 = this.f11253q.getLayoutParams().width;
        int i13 = this.f11253q.getLayoutParams().height;
        b(i12, i13);
        i(i12, i13);
    }

    private void b(View view) {
        if (view != null) {
            view.setVisibility(8);
            TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 1.0f, 1, 0.0f);
            translateAnimation.setDuration(500L);
            view.setVisibility(0);
            view.startAnimation(translateAnimation);
        }
    }

    private void a(final int i10, final int i11, final int i12) {
        CountDownTimer countDownTimer = this.R;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = new CountDownTimer(600 + (((long) i12) * 1000), 1000L) { // from class: com.beizi.fusion.work.g.a.3
            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (i10 == 1) {
                    a.this.aR();
                }
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j10) {
                a aVar = a.this;
                TextView textView = aVar.C;
                if (textView == null || aVar.f11262z == null) {
                    return;
                }
                int i13 = (int) (j10 / 1000.0f);
                if (i12 - i13 < i11) {
                    textView.setText(String.valueOf(i13));
                } else {
                    textView.setVisibility(8);
                    a.this.f11262z.setVisibility(0);
                }
            }
        };
        this.R = countDownTimer2;
        countDownTimer2.start();
    }

    private void b() {
        e eVar = this.f10981d;
        if (eVar == null) {
            return;
        }
        Map<String, com.beizi.fusion.work.a> mapS = eVar.s();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f());
        sb2.append(" NativeAdWorker:");
        sb2.append(mapS.toString());
        Z();
        g gVar = this.f10984g;
        if (gVar == g.SUCCESS) {
            aQ();
            if (this.f11252p != null) {
                this.f10981d.a(f(), this.f11252p);
                return;
            } else {
                this.f10981d.b(10140);
                return;
            }
        }
        if (gVar == g.FAIL) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("other worker shown,");
            sb3.append(f());
            sb3.append(" remove");
        }
    }

    private void d(int i10, int i11) {
        a(this.D, this.T.getTitleCoordinate(), i10, i11);
        if (TextUtils.isEmpty(aL())) {
            return;
        }
        this.D.setText(aL());
    }

    private void a(View view, String str, int i10, int i11) {
        RelativeLayout.LayoutParams layoutParams;
        boolean z10;
        if (view == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            view.setVisibility(8);
            return;
        }
        if (str.equals("-1:-1:-1:-1:-1:-1:-1:-1:-1")) {
            view.setVisibility(8);
            return;
        }
        CoordinateBean coordinate = CoordinateBean.getCoordinate(str);
        if (coordinate == null) {
            view.setVisibility(8);
            return;
        }
        int[] iArrA = a(coordinate, i10, i11);
        int[] iArrA2 = a(coordinate, i10, i11, iArrA);
        boolean z11 = view instanceof TextView;
        if (z11) {
            layoutParams = new RelativeLayout.LayoutParams(iArrA2[0], -2);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(iArrA2[0], iArrA2[1]);
        }
        layoutParams.setMargins(iArrA[0], iArrA[1], iArrA[2], iArrA[3]);
        if (!coordinate.getTop().equals(WMConstants.TIMER_STAGE_NONE) || coordinate.getBottom().equals(WMConstants.TIMER_STAGE_NONE)) {
            z10 = false;
        } else {
            layoutParams.addRule(12, -1);
            z10 = true;
        }
        if (coordinate.getLeft().equals(WMConstants.TIMER_STAGE_NONE) && !coordinate.getRight().equals(WMConstants.TIMER_STAGE_NONE)) {
            layoutParams.addRule(11, -1);
        }
        view.setLayoutParams(layoutParams);
        if (!coordinate.getFontOrCorner().equals(WMConstants.TIMER_STAGE_NONE)) {
            if (z11) {
                ((TextView) view).setTextSize(Float.parseFloat(coordinate.getFontOrCorner()));
            } else if (view.getBackground() instanceof GradientDrawable) {
                GradientDrawable gradientDrawable = (GradientDrawable) view.getBackground();
                if (view != this.f11257u && view != this.f11258v) {
                    int iA = au.a(this.N, Float.parseFloat(coordinate.getFontOrCorner()));
                    if (z10) {
                        float f10 = iA;
                        gradientDrawable.setCornerRadii(new float[]{f10, f10, f10, f10, 0.0f, 0.0f, 0.0f, 0.0f});
                    } else {
                        gradientDrawable.setCornerRadius(iA);
                    }
                } else {
                    gradientDrawable.setCornerRadius(iArrA2[1]);
                }
            }
        }
        if (coordinate.getColor().equals(WMConstants.TIMER_STAGE_NONE)) {
            return;
        }
        if (z11) {
            ((TextView) view).setTextColor(Color.parseColor(coordinate.getColor()));
        } else if (view != this.f11260x) {
            if (view.getBackground() instanceof GradientDrawable) {
                ((GradientDrawable) view.getBackground()).setColor(Color.parseColor(coordinate.getColor()));
            } else {
                view.setBackgroundColor(Color.parseColor(coordinate.getColor()));
            }
        }
    }

    private void b(int i10, int i11) {
        String adCoordinate = this.T.getAdCoordinate();
        a(this.f11255s, adCoordinate, i10, i11);
        a(this.f11260x, adCoordinate, i10, i11);
        int i12 = this.f11255s.getLayoutParams().width;
        int i13 = this.f11255s.getLayoutParams().height;
        c(i12, i13);
        d(i12, i13);
        e(i12, i13);
        f(i12, i13);
        g(i12, i13);
        h(i12, i13);
        aJ();
        aS();
    }

    private int b(String str, int i10) {
        if (str.contains("%")) {
            return (i10 * ((int) Float.parseFloat(str.substring(0, str.indexOf("%"))))) / 100;
        }
        return au.a(this.N, Float.parseFloat(str));
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0144  */
    /* JADX WARN: Code duplicated, block: B:47:0x016f  */
    /* JADX WARN: Code duplicated, block: B:91:0x0264  */
    private void b(View view, String str, int i10, int i11) {
        int iA;
        int i12;
        char c10;
        int i13;
        char c11;
        int i14;
        int iB;
        int iB2;
        if (view == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            view.setVisibility(8);
            return;
        }
        if (str.equals("-1:-1:-1:-1:-1:-1:-1:-1:-1")) {
            view.setVisibility(8);
            return;
        }
        CoordinateBean coordinate = CoordinateBean.getCoordinate(str);
        if (coordinate == null) {
            view.setVisibility(8);
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (!coordinate.getScale().equals(WMConstants.TIMER_STAGE_NONE)) {
            this.G.setText(coordinate.getScale());
        }
        if (!coordinate.getFontOrCorner().equals(WMConstants.TIMER_STAGE_NONE)) {
            this.G.setTextSize(Float.parseFloat(coordinate.getFontOrCorner()));
        }
        if (!coordinate.getColor().equals(WMConstants.TIMER_STAGE_NONE)) {
            this.G.setTextColor(Color.parseColor(coordinate.getColor()));
        }
        if (coordinate.getWidth().equals(WMConstants.TIMER_STAGE_NONE)) {
            iA = 0;
            i12 = 0;
        } else {
            iA = au.a(this.N, Float.parseFloat(coordinate.getWidth()));
            i12 = (int) (((double) iA) / 0.8d);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iA, i12);
            layoutParams2.gravity = 1;
            this.B.setLayoutParams(layoutParams2);
            this.B.setImageDrawable(this.N.getResources().getDrawable(R.drawable.beizi_slide_down_close_ad));
            ((AnimationDrawable) this.B.getDrawable()).start();
        }
        int i15 = this.f11255s.getLayoutParams().width;
        int i16 = this.f11255s.getLayoutParams().height;
        this.G.measure(View.MeasureSpec.makeMeasureSpec(z.f93551j, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(z.f93551j, Integer.MIN_VALUE));
        int measuredWidth = this.G.getMeasuredWidth();
        int measuredHeight = this.G.getMeasuredHeight();
        int iMax = Math.max(measuredWidth, iA);
        int i17 = measuredHeight + i12;
        int iA2 = au.a(this.N, Float.parseFloat(coordinate.getHeight())) + i16;
        if (!coordinate.getHeight().equals(WMConstants.TIMER_STAGE_NONE)) {
            layoutParams.addRule(12, -1);
            if (coordinate.getLeft().equals(WMConstants.TIMER_STAGE_NONE)) {
                iB = 0;
            } else {
                if (coordinate.getLeft().contains("%")) {
                    iB = b(coordinate.getLeft(), i15) - (iMax / 2);
                } else {
                    iB = b(coordinate.getLeft(), i15);
                }
                if (iB <= 0) {
                    iB = 0;
                }
            }
            if (coordinate.getRight().equals(WMConstants.TIMER_STAGE_NONE)) {
                iB2 = 0;
            } else {
                if (coordinate.getRight().contains("%")) {
                    iB2 = b(coordinate.getRight(), i15) - (iMax / 2);
                } else {
                    iB2 = b(coordinate.getRight(), i15);
                }
                if (iB2 <= 0) {
                    iB2 = 0;
                }
            }
            if (iB <= 0 && iB2 <= 0) {
                layoutParams.addRule(14, -1);
            } else if (iB > 0) {
                layoutParams.addRule(9, -1);
            } else {
                layoutParams.addRule(11, -1);
            }
            layoutParams.setMargins(iB, 0, iB2, iA2);
            i13 = 0;
        } else {
            int[] iArr = {0, 0, 0, 0};
            if (!coordinate.getLeft().equals(WMConstants.TIMER_STAGE_NONE)) {
                if (coordinate.getLeft().contains("%")) {
                    i14 = 0;
                    iArr[0] = b(coordinate.getLeft(), i10) - (iMax / 2);
                } else {
                    i14 = 0;
                    iArr[0] = b(coordinate.getLeft(), i10);
                }
                if (iArr[i14] <= 0) {
                    iArr[i14] = i14;
                }
            }
            if (!coordinate.getTop().equals(WMConstants.TIMER_STAGE_NONE)) {
                if (coordinate.getTop().contains("%")) {
                    c11 = 1;
                    iArr[1] = b(coordinate.getTop(), i11) - (i17 / 2);
                } else {
                    c11 = 1;
                    iArr[1] = b(coordinate.getTop(), i11);
                }
                if (iArr[c11] <= 0) {
                    iArr[c11] = 0;
                }
            }
            if (!coordinate.getRight().equals(WMConstants.TIMER_STAGE_NONE)) {
                if (coordinate.getRight().contains("%")) {
                    iArr[2] = b(coordinate.getRight(), i10) - (iMax / 2);
                } else {
                    iArr[2] = b(coordinate.getRight(), i10);
                }
                if (iArr[2] <= 0) {
                    iArr[2] = 0;
                }
            }
            if (coordinate.getBottom().equals(WMConstants.TIMER_STAGE_NONE)) {
                c10 = 0;
            } else {
                if (coordinate.getBottom().contains("%")) {
                    iArr[3] = b(coordinate.getBottom(), i11) - (i17 / 2);
                } else {
                    iArr[3] = b(coordinate.getBottom(), i11);
                }
                if (iArr[3] <= 0) {
                    c10 = 0;
                    iArr[3] = 0;
                } else {
                    c10 = 0;
                }
            }
            int i18 = iArr[c10];
            if (i18 <= 0 && iArr[2] <= 0) {
                layoutParams.addRule(14, -1);
            } else if (i18 > 0) {
                layoutParams.addRule(9, -1);
            } else {
                layoutParams.addRule(11, -1);
            }
            int i19 = iArr[1];
            if (i19 <= 0 && iArr[3] <= 0) {
                layoutParams.addRule(15, -1);
            } else if (i19 > 0) {
                layoutParams.addRule(10, -1);
            } else {
                layoutParams.addRule(12, -1);
            }
            i13 = 0;
            layoutParams.setMargins(iArr[0], iArr[1], iArr[2], iArr[3]);
        }
        view.setLayoutParams(layoutParams);
        view.setVisibility(i13);
        if (TextUtils.isEmpty(this.T.getScrollCoordinate()) || this.T.getScrollCoordinate().equals("-1:-1:-1:-1:-1:-1:-1:-1:-1")) {
            return;
        }
        a(this.f11253q);
        a(this.f11260x);
    }

    private int[] a(CoordinateBean coordinateBean, int i10, int i11, int[] iArr) {
        int iB;
        int iB2;
        int[] iArr2 = new int[2];
        if (coordinateBean.getWidth().equals(WMConstants.TIMER_STAGE_NONE)) {
            iB = (i10 - iArr[0]) - iArr[2];
        } else {
            iB = b(coordinateBean.getWidth(), i10);
        }
        if (!coordinateBean.getScale().equals(WMConstants.TIMER_STAGE_NONE) && !coordinateBean.getScale().equals("0")) {
            iB2 = (int) (iB / Float.parseFloat(coordinateBean.getScale()));
        } else if (coordinateBean.getHeight().equals(WMConstants.TIMER_STAGE_NONE)) {
            iB2 = (i11 - iArr[1]) - iArr[3];
        } else {
            iB2 = b(coordinateBean.getHeight(), i11);
        }
        iArr2[0] = iB;
        iArr2[1] = iB2;
        return iArr2;
    }

    private int[] a(CoordinateBean coordinateBean, int i10, int i11) {
        int[] iArr = new int[4];
        String left = coordinateBean.getLeft();
        int iB = (left.equals("0%") || left.equals("0") || left.equals(WMConstants.TIMER_STAGE_NONE)) ? 0 : b(left, i10);
        String top = coordinateBean.getTop();
        int iB2 = (top.equals("0%") || top.equals("0") || top.equals(WMConstants.TIMER_STAGE_NONE)) ? 0 : b(top, i11);
        String right = coordinateBean.getRight();
        int iB3 = (right.equals("0%") || right.equals("0") || right.equals(WMConstants.TIMER_STAGE_NONE)) ? 0 : b(right, i10);
        String bottom = coordinateBean.getBottom();
        int iB4 = (bottom.equals("0%") || bottom.equals("0") || bottom.equals(WMConstants.TIMER_STAGE_NONE)) ? 0 : b(bottom, i11);
        iArr[0] = iB;
        iArr[1] = iB2;
        iArr[2] = iB3;
        iArr[3] = iB4;
        return iArr;
    }

    protected void a(View view) {
        a(view, "", 30, (am.a) null);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    protected void a(View view, final String str, int i10, final am.a aVar) {
        final int iA = au.a(this.N, i10);
        final boolean z10 = view == this.f11253q;
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.g.a.4

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            float f11269a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            float f11270b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            float f11271c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            float f11272d;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                am.a aVar2;
                am.a aVar3;
                am.a aVar4;
                am.a aVar5;
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.f11269a = motionEvent.getX();
                    this.f11270b = motionEvent.getY();
                    this.f11271c = motionEvent.getX();
                    this.f11272d = motionEvent.getY();
                    if (z10) {
                        a.this.f11253q.onTouchEvent(motionEvent);
                    } else {
                        a.this.f11255s.dispatchTouchEvent(motionEvent);
                    }
                } else if (action == 1) {
                    ac.b("SlideClickUtil", "mCurPosX = " + this.f11271c + ",mCurPosY = " + this.f11272d + ",mPosX = " + this.f11269a + ",mPosY = " + this.f11270b);
                    float f10 = this.f11272d;
                    float f11 = this.f11270b;
                    float f12 = f10 - f11;
                    int i11 = iA;
                    if (f12 > i11) {
                        if (!TextUtils.isEmpty(a.this.T.getScrollCoordinate()) && !a.this.T.getScrollCoordinate().equals("-1:-1:-1:-1:-1:-1:-1:-1:-1")) {
                            a.this.b(z10);
                        } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(str) && (aVar5 = aVar) != null) {
                            aVar5.a_();
                        }
                    } else if (f11 - f10 <= i11) {
                        float f13 = this.f11269a;
                        float f14 = this.f11271c;
                        if (f13 - f14 > i11) {
                            if (ScrollClickView.DIR_LEFT.equalsIgnoreCase(str) && (aVar3 = aVar) != null) {
                                aVar3.a_();
                            }
                        } else if (f14 - f13 > i11) {
                            if (ScrollClickView.DIR_RIGHT.equalsIgnoreCase(str) && (aVar2 = aVar) != null) {
                                aVar2.a_();
                            }
                        } else if (z10) {
                            a.this.f11253q.onTouchEvent(motionEvent);
                        } else {
                            a.this.f11255s.dispatchTouchEvent(motionEvent);
                        }
                    } else if ("up".equalsIgnoreCase(str) && (aVar4 = aVar) != null) {
                        aVar4.a_();
                    }
                } else if (action == 2) {
                    this.f11271c = motionEvent.getX();
                    this.f11272d = motionEvent.getY();
                }
                return true;
            }
        });
    }
}
