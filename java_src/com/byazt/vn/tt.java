package com.byazt.vn;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.aggmoread.sdk.z.a.i.k;
import com.aggmoread.sdk.z.a.i.l;
import com.byazt.cd.uj;
import com.byazt.cd.x;
import com.byazt.nr.m;
import com.byazt.sa.n;
import com.byazt.sz.sp;
import com.byazt.sz.yp;
import com.byazt.xj.ve;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 660, 13})
public class tt extends ve<RoundImageView> {
    public float az;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f21292c;
    public float cf;
    public int ij;
    public String kz;
    public float mq;
    public int vi;
    public boolean vp;
    public ImageView.ScaleType yo;

    public tt(Context context) {
        super(context);
        this.yo = ImageView.ScaleType.FIT_XY;
        this.vi = -1;
        this.mq = -1.0f;
        this.cf = -1.0f;
        this.ij = 0;
        this.az = 50.0f;
    }

    private void b() {
        if (TextUtils.isEmpty(this.f21292c)) {
            return;
        }
        ((RoundImageView) this.f21881n).setImageDrawable(null);
        if (this.f21292c.startsWith("local://")) {
            try {
                String strReplace = this.f21292c.replace("local://", "");
                if (TextUtils.equals(sp(), "raw")) {
                    ((RoundImageView) this.f21881n).setImageResource(uj.c(this.tt, strReplace));
                    return;
                } else {
                    c((ImageView) this.f21881n, strReplace);
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        if (!this.f21292c.startsWith("@")) {
            q();
            return;
        }
        try {
            ((RoundImageView) this.f21881n).setImageResource(Integer.parseInt(this.f21292c.substring(1)));
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    private void q() {
        if (this.mq > 0.0f) {
            sp spVar = this.nt;
            if (spVar != null) {
                spVar.c();
            }
            n.c().tt().c(this.f21874i, this.f21292c, new com.byazt.sa.c.InterfaceC0422c() { // from class: com.byazt.vn.tt.1
                @Override // com.byazt.sa.c.InterfaceC0422c
                public void c(Bitmap bitmap) {
                    if (bitmap == null) {
                        if (tt.this.nt != null) {
                            sp spVar2 = tt.this.nt;
                            tt ttVar = tt.this;
                            spVar2.tt(ttVar, ttVar.f21292c);
                            return;
                        }
                        return;
                    }
                    if (tt.this.nt != null) {
                        sp spVar3 = tt.this.nt;
                        tt ttVar2 = tt.this;
                        spVar3.c(ttVar2, ttVar2.f21292c);
                    }
                    final Bitmap bitmapC = x.c(tt.this.tt, bitmap, (int) tt.this.mq);
                    if (bitmapC != null) {
                        x.c(new Runnable() { // from class: com.byazt.vn.tt.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ((RoundImageView) tt.this.f21881n).setImageBitmap(bitmapC);
                            }
                        });
                    }
                    tt ttVar3 = tt.this;
                    if (ttVar3.vp || ttVar3.cf > 0.0f) {
                        Bitmap bitmapC2 = x.c(tt.this.tt, bitmap, tt.this.cf > 0.0f ? (int) tt.this.cf : 10);
                        if (bitmapC2 != null) {
                            final BitmapDrawable bitmapDrawable = new BitmapDrawable(tt.this.tt.getResources(), bitmapC2);
                            x.c(new Runnable() { // from class: com.byazt.vn.tt.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    ((RoundImageView) tt.this.f21881n).setBackground(bitmapDrawable);
                                }
                            });
                        }
                    }
                }
            });
            return;
        }
        sp spVar2 = this.nt;
        if (spVar2 != null) {
            spVar2.c();
        }
        com.byazt.sa.c cVarTt = n.c().tt();
        yp ypVar = this.f21874i;
        String str = this.f21292c;
        T t10 = this.f21881n;
        cVarTt.c(ypVar, str, (ImageView) t10, ((RoundImageView) t10).getWidth(), ((RoundImageView) this.f21881n).getHeight(), new com.byazt.sa.c.InterfaceC0422c() { // from class: com.byazt.vn.tt.2
            @Override // com.byazt.sa.c.InterfaceC0422c
            public void c(Bitmap bitmap) {
                if (bitmap == null) {
                    if (tt.this.nt != null) {
                        sp spVar3 = tt.this.nt;
                        tt ttVar = tt.this;
                        spVar3.tt(ttVar, ttVar.f21292c);
                        return;
                    }
                    return;
                }
                if (tt.this.nt != null) {
                    sp spVar4 = tt.this.nt;
                    tt ttVar2 = tt.this;
                    spVar4.c(ttVar2, ttVar2.f21292c);
                }
            }
        });
        if (this.vp || this.cf > 0.0f) {
            n.c().tt().c(this.f21874i, this.f21292c, new com.byazt.sa.c.InterfaceC0422c() { // from class: com.byazt.vn.tt.3
                @Override // com.byazt.sa.c.InterfaceC0422c
                public void c(Bitmap bitmap) {
                    if (bitmap == null) {
                        return;
                    }
                    final Bitmap bitmapC = x.c(tt.this.tt, bitmap, tt.this.cf > 0.0f ? (int) tt.this.cf : 10);
                    x.c(new Runnable() { // from class: com.byazt.vn.tt.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (bitmapC != null) {
                                ((RoundImageView) tt.this.f21881n).setBackground(new BitmapDrawable(tt.this.tt.getResources(), bitmapC));
                            }
                        }
                    });
                }
            });
        }
    }

    private ImageView.ScaleType sl(String str) {
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
        str.hashCode();
        switch (str) {
            case "center":
                return ImageView.ScaleType.CENTER;
            case "fitEnd":
                return ImageView.ScaleType.FIT_END;
            case "fitStart":
                return ImageView.ScaleType.FIT_START;
            case "centerInside":
                return ImageView.ScaleType.CENTER_INSIDE;
            case "fit":
            case "fitCenter":
                return ImageView.ScaleType.FIT_CENTER;
            case "crop":
            case "centerCrop":
                return ImageView.ScaleType.CENTER_CROP;
            case "fill":
            case "fitXY":
                return ImageView.ScaleType.FIT_XY;
            default:
                return scaleType;
        }
    }

    @Override // com.byazt.xj.ve, com.byazt.sa.uj
    public void a() {
        super.a();
        Drawable drawable = ((RoundImageView) this.f21881n).getDrawable();
        if (Build.VERSION.SDK_INT < 28 || !k.a(drawable)) {
            return;
        }
        l.a(drawable).stop();
    }

    @Override // com.byazt.xj.ve, com.byazt.sa.uj
    public void n() {
        super.n();
        ((RoundImageView) this.f21881n).post(new Runnable() { // from class: com.byazt.vn.tt.4
            @Override // java.lang.Runnable
            public void run() {
                Drawable drawable = ((RoundImageView) tt.this.f21881n).getDrawable();
                if (Build.VERSION.SDK_INT < 28 || !k.a(drawable)) {
                    return;
                }
                l.a(drawable).start();
            }
        });
    }

    public String sp() {
        return this.kz;
    }

    public void t(String str) {
        this.f21292c = str;
    }

    @Override // com.byazt.xj.ve
    public void tt() {
        super.tt();
        b();
        ((RoundImageView) this.f21881n).setScaleType(this.yo);
        ((RoundImageView) this.f21881n).setBorderColor(this.f21864b);
        ((RoundImageView) this.f21881n).setCornerRadius(this.f21873hd);
        ((RoundImageView) this.f21881n).setBorderWidth(this.kp);
        int i10 = this.vi;
        if (i10 != -1) {
            ((RoundImageView) this.f21881n).setColorFilter(i10);
        }
        ((RoundImageView) this.f21881n).setEraseEnabled(this.ij == 1);
        ((RoundImageView) this.f21881n).setEraseRadius(this.az);
    }

    @Override // com.byazt.xj.ve
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public RoundImageView c() {
        RoundImageView roundImageView = new RoundImageView(this.tt);
        roundImageView.c(this);
        return roundImageView;
    }

    public void c(ImageView imageView, String str) {
        imageView.setImageResource(uj.tt(this.tt, str));
    }

    @Override // com.byazt.xj.ve
    public void c(String str, String str2) {
        T t10;
        if (TextUtils.isEmpty(str)) {
        }
        super.c(str, str2);
        str.hashCode();
        switch (str) {
            case "scaleMode":
            case "scaleType":
                this.yo = sl(str2);
                break;
            case "imageBlur":
                this.mq = com.byazt.cd.ve.c(str2, -1.0f);
                break;
            case "eraseRadius":
                float fC = com.byazt.cd.ve.c(str2, 50.0f);
                this.az = fC;
                T t11 = this.f21881n;
                if (t11 != 0) {
                    ((RoundImageView) t11).setEraseRadius(fC);
                    break;
                }
                break;
            case "isBgGaussianBlur":
                this.vp = com.byazt.cd.ve.c(str2, false);
                break;
            case "src":
                this.f21292c = str2;
                break;
            case "erase":
                int iC = com.byazt.cd.ve.c(str2, 0);
                this.ij = iC;
                if (iC == 1 && (t10 = this.f21881n) != 0) {
                    ((RoundImageView) t10).setEraseEnabled(true);
                    break;
                }
                break;
            case "tintColor":
                this.vi = com.byazt.cd.c.c(str2);
                break;
            case "imageBgBlur":
                this.cf = com.byazt.cd.ve.c(str2, -1.0f);
                break;
        }
    }

    public void tt(Drawable drawable) {
        ((RoundImageView) this.f21881n).setImageDrawable(drawable);
    }

    @Override // com.byazt.xj.ve, com.byazt.sa.uj
    public void c(String str, Map<String, Object> map) {
        this.sp = (com.byazt.xj.c) tt((ve) this);
        ArrayList arrayList = new ArrayList();
        arrayList.add(eo());
        Iterator<Map.Entry<String, Object>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getValue());
        }
        c(this.sp, str, arrayList.toArray());
    }

    private void c(ve veVar, String str, Object... objArr) {
        List<ve<View>> listSp;
        if (veVar == null) {
            return;
        }
        veVar.c(str, objArr);
        if (!(veVar instanceof com.byazt.xj.c) || (listSp = ((com.byazt.xj.c) veVar).sp()) == null || listSp.isEmpty()) {
            return;
        }
        Iterator<ve<View>> it2 = listSp.iterator();
        while (it2.hasNext()) {
            c(it2.next(), str, objArr);
        }
    }
}
