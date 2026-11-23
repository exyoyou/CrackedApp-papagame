package com.byazt.gt;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.byazt.bj.a;
import com.byazt.bj.da;
import com.byazt.bj.n;
import com.byazt.bj.u;
import com.byazt.bj.uj;
import com.byazt.bj.yp;
import com.byazt.cd.ve;
import com.byazt.cd.x;
import com.byazt.sz.sp;
import com.byazt.vn.RoundImageView;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 195, 20})
public class c extends com.byazt.xj.c<YogaLayout> {
    public da cf;
    public a kz;
    public com.byazt.bj.c mq;
    public com.byazt.bj.c vi;
    public yp vp;
    public n yo;

    /* JADX INFO: renamed from: com.byazt.gt.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 195, 44})
    public static class C0325c extends com.byazt.xj.c.C0482c {
        public boolean aw;
        public boolean bx;
        public int cu;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f14744d;
        public int eo;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f14745h;

        /* JADX INFO: renamed from: hd, reason: collision with root package name */
        public boolean f14746hd;

        /* JADX INFO: renamed from: ic, reason: collision with root package name */
        public boolean f14747ic;
        public float md;

        /* JADX INFO: renamed from: nb, reason: collision with root package name */
        public float f14748nb;
        public int or;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public float f14749p;
        public boolean pf;
        public int qp;
        public boolean sv;
        public int yv;

        /* JADX INFO: renamed from: zb, reason: collision with root package name */
        public int f14750zb;

        public C0325c(com.byazt.xj.c cVar) {
            super(cVar);
            this.yv = 1;
            this.f14749p = 0.0f;
            this.md = 1.0f;
            this.f14745h = com.byazt.bj.c.AUTO.c();
            this.f14744d = -1.0f;
            this.eo = u.RELATIVE.c();
        }

        private void uj() {
            com.byazt.xj.c cVar = this.zm;
            if (cVar instanceof c) {
                if (((c) cVar).kk() == n.ROW && this.zm.or() == -2 && this.f21854c == -1.0f && !this.zm.hd()) {
                    this.f21854c = -2.0f;
                    this.md = 1.0f;
                    this.f14749p = 1.0f;
                    this.pf = true;
                    this.f14744d = -1.0f;
                }
                if (((c) this.zm).kk() == n.COLUMN && this.zm.cu() == -2 && this.tt == -1.0f && !this.zm.hd()) {
                    this.tt = -2.0f;
                    this.md = 1.0f;
                    this.f14749p = 1.0f;
                    this.pf = true;
                    this.f14744d = -1.0f;
                }
            }
        }

        @Override // com.byazt.xj.c.C0482c
        public String toString() {
            return "LayoutParams{mOrder=" + this.yv + ", mFlexGrow=" + this.f14749p + ", mFlexShrink=" + this.md + ", mAlignSelf=" + this.f14745h + ", mFlexBasis=" + this.f14744d + ", mPosition=" + this.eo + ", mTop=" + this.f14750zb + ", mBottom=" + this.or + ", mLeft=" + this.cu + ", mRight=" + this.qp + '}';
        }

        @Override // com.byazt.xj.c.C0482c
        /* JADX INFO: renamed from: tt, reason: merged with bridge method [inline-methods] */
        public YogaLayout.c c() {
            uj();
            YogaLayout.c cVar = new YogaLayout.c((int) this.f21854c, (int) this.tt);
            cVar.t((int) (this.gt ? this.f21853a : this.f21858n));
            cVar.yp((int) (this.rl ? this.sp : this.f21858n));
            cVar.sl((int) (this.qy ? this.f21861x : this.f21858n));
            cVar.u((int) (this.gu ? this.f21856i : this.f21858n));
            cVar.c(this.yv);
            cVar.n(this.f14745h);
            cVar.tt(this.f14749p);
            cVar.ve(this.md);
            cVar.m(this.ve);
            cVar.nu(this.uj);
            if (this.pf) {
                cVar.uj(this.f14744d);
            }
            cVar.a(this.eo);
            if (this.bx) {
                cVar.sp(this.f14750zb);
            }
            if (this.sv) {
                cVar.i(this.or);
            }
            if (this.aw) {
                cVar.x(this.cu);
            }
            if (this.f14747ic) {
                cVar.da(this.qp);
            }
            if (this.f14746hd && ve()) {
                float f10 = this.f14748nb;
                if (f10 > 0.0f) {
                    cVar.z(f10);
                    cVar.ve(0.0f);
                    cVar.tt(0.0f);
                }
            }
            return cVar;
        }

        public boolean ve() {
            float f10 = this.f21854c;
            if (f10 == -1.0f && this.tt == -1.0f) {
                return false;
            }
            return f10 == -2.0f || this.tt == -2.0f;
        }

        @Override // com.byazt.xj.c.C0482c
        public void c(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
            }
            super.c(context, str, str2);
            str.hashCode();
            switch (str) {
                case "flexBasis":
                    this.pf = true;
                    float fC = ve.c(str2, -1.0f);
                    this.f14744d = fC;
                    this.f14744d = x.c(context, fC);
                    break;
                case "bottom":
                    this.sv = true;
                    this.or = (int) x.c(context, ve.c(str2, 0));
                    break;
                case "top":
                    this.bx = true;
                    this.f14750zb = (int) x.c(context, ve.c(str2, 0));
                    break;
                case "left":
                    this.aw = true;
                    this.cu = (int) x.c(context, ve.c(str2, 0));
                    break;
                case "order":
                    this.yv = ve.c(str2, 1);
                    break;
                case "ratio":
                    this.f14746hd = true;
                    this.f14748nb = ve.c(str2, 0.0f);
                    break;
                case "right":
                    this.f14747ic = true;
                    this.qp = (int) x.c(context, ve.c(str2, 0));
                    break;
                case "position":
                    this.eo = u.c(str2).c();
                    break;
                case "flexShrink":
                    this.md = ve.c(str2, 1.0f);
                    break;
                case "flexGrow":
                    this.f14749p = ve.c(str2, 0.0f);
                    break;
                case "alignSelf":
                    this.f14745h = com.byazt.bj.c.c(str2).c();
                    break;
            }
        }
    }

    public c(Context context) {
        super(context);
        this.yo = n.ROW;
        this.vp = yp.NO_WRAP;
        this.kz = a.FLEX_START;
        com.byazt.bj.c cVar = com.byazt.bj.c.STRETCH;
        this.vi = cVar;
        this.mq = cVar;
    }

    @Override // com.byazt.xj.ve
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public YogaLayout c() {
        YogaLayout yogaLayout = new YogaLayout(this.tt);
        yogaLayout.c(this);
        this.cf = yogaLayout.getYogaNode();
        return yogaLayout;
    }

    public n kk() {
        return this.yo;
    }

    @Override // com.byazt.xj.c
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public C0325c x() {
        return new C0325c(this);
    }

    @Override // com.byazt.xj.ve
    public void yv() {
        ImageView.ScaleType scaleType;
        if (this.aw) {
            sp spVar = this.nt;
            if (spVar != null) {
                spVar.c();
            }
            com.byazt.sa.n.c().tt().c(this.f21874i, this.pf, new com.byazt.sa.c.InterfaceC0422c() { // from class: com.byazt.gt.c.1
                @Override // com.byazt.sa.c.InterfaceC0422c
                public void c(Bitmap bitmap) {
                    if (bitmap == null) {
                        if (c.this.nt != null) {
                            sp spVar2 = c.this.nt;
                            c cVar = c.this;
                            spVar2.tt(cVar, cVar.pf);
                            return;
                        }
                        return;
                    }
                    if (c.this.nt != null) {
                        sp spVar3 = c.this.nt;
                        c cVar2 = c.this;
                        spVar3.c(cVar2, cVar2.pf);
                    }
                    final Bitmap bitmapC = x.c(c.this.tt, bitmap, (int) c.this.sv);
                    if (bitmapC != null) {
                        x.c(new Runnable() { // from class: com.byazt.gt.c.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                c.this.c(new BitmapDrawable(bitmapC));
                            }
                        });
                    }
                }
            });
            return;
        }
        sp spVar2 = this.nt;
        if (spVar2 != null) {
            spVar2.c();
        }
        RoundImageView roundImageView = new RoundImageView(this.tt);
        com.byazt.sa.n.c().tt().c(this.f21874i, this.pf, roundImageView, this.f21881n.getWidth(), this.f21881n.getHeight(), new com.byazt.sa.c.InterfaceC0422c() { // from class: com.byazt.gt.c.2
            @Override // com.byazt.sa.c.InterfaceC0422c
            public void c(Bitmap bitmap) {
                if (bitmap == null) {
                    if (c.this.nt != null) {
                        sp spVar3 = c.this.nt;
                        c cVar = c.this;
                        spVar3.tt(cVar, cVar.pf);
                        return;
                    }
                    return;
                }
                if (c.this.nt != null) {
                    sp spVar4 = c.this.nt;
                    c cVar2 = c.this;
                    spVar4.c(cVar2, cVar2.pf);
                }
            }
        });
        if (!this.f21875ic || (scaleType = this.bx) == ImageView.ScaleType.FIT_XY) {
            roundImageView.setScaleType(ImageView.ScaleType.FIT_XY);
        } else {
            roundImageView.setScaleType(scaleType);
        }
        roundImageView.setCornerRadius(this.f21873hd);
        YogaLayout.c cVar = new YogaLayout.c(-1, -1);
        cVar.a(u.ABSOLUTE.c());
        cVar.sp(0.0f);
        cVar.x(0.0f);
        T t10 = this.f21881n;
        if (t10 instanceof YogaLayout) {
            ((YogaLayout) t10).addView(roundImageView, 0, cVar);
            c(roundImageView);
        }
    }

    @Override // com.byazt.xj.ve
    public void t() {
        if (this.eo) {
            this.cf.tt(uj.ALL, this.yv);
        }
        if (this.f21895zb) {
            this.cf.tt(uj.LEFT, this.f21884p);
        }
        if (this.or) {
            this.cf.tt(uj.RIGHT, this.md);
        }
        if (this.cu) {
            this.cf.tt(uj.TOP, this.f21872h);
        }
        if (this.qp) {
            this.cf.tt(uj.BOTTOM, this.f21867d);
        }
    }

    @Override // com.byazt.xj.c, com.byazt.xj.ve
    public void tt() {
        super.tt();
        this.cf.c(this.yo);
        this.cf.c(this.vp);
        this.cf.c(this.kz);
        this.cf.c(this.vi);
        this.cf.ve(this.mq);
        this.cf.c(true);
    }

    @Override // com.byazt.xj.ve
    public void c(Drawable drawable) {
        ImageView.ScaleType scaleType;
        RoundImageView roundImageView = new RoundImageView(this.tt);
        roundImageView.setImageDrawable(drawable);
        if (this.f21875ic && (scaleType = this.bx) != ImageView.ScaleType.FIT_XY) {
            roundImageView.setScaleType(scaleType);
        } else {
            roundImageView.setScaleType(ImageView.ScaleType.FIT_XY);
        }
        roundImageView.setCornerRadius(this.f21873hd);
        YogaLayout.c cVar = new YogaLayout.c(-1, -1);
        cVar.a(u.ABSOLUTE.c());
        cVar.sp(0.0f);
        cVar.x(0.0f);
        T t10 = this.f21881n;
        if (t10 instanceof YogaLayout) {
            ((YogaLayout) t10).addView(roundImageView, 0, cVar);
            c(roundImageView);
        }
    }

    private void c(final RoundImageView roundImageView) {
        this.f21881n.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.gt.c.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                da daVarC;
                if (c.this.f21881n == null || (daVarC = ((YogaLayout) c.this.f21881n).c(roundImageView)) == null) {
                    return;
                }
                int width = c.this.f21881n.getWidth();
                daVarC.uj(width);
                int height = c.this.f21881n.getHeight();
                daVarC.a(height);
                roundImageView.setCornerRadius(c.this.f21873hd);
                c.this.f21881n.requestLayout();
                if (width > 0 || height > 0) {
                    c.this.f21881n.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            }
        });
    }

    @Override // com.byazt.xj.c
    public void c(com.byazt.xj.ve veVar) {
        super.c(veVar);
    }

    @Override // com.byazt.xj.c
    public void c(com.byazt.xj.ve veVar, ViewGroup.LayoutParams layoutParams) {
        if (veVar == null) {
            return;
        }
        ((com.byazt.xj.c) this).f21852c.add(veVar);
        View viewI = veVar.i();
        if (viewI != null) {
            ((YogaLayout) this.f21881n).addView(viewI, layoutParams);
        }
    }

    @Override // com.byazt.xj.ve
    public void c(String str, String str2) {
        super.c(str, str2);
        str.hashCode();
        switch (str) {
            case "alignItems":
                this.vi = com.byazt.bj.c.c(str2);
                break;
            case "flexDirection":
                this.yo = n.c(str2);
                break;
            case "alignContent":
                this.mq = com.byazt.bj.c.c(str2);
                break;
            case "flexWrap":
                this.vp = yp.c(str2);
                break;
            case "justifyContent":
                this.kz = a.c(str2);
                break;
        }
    }
}
