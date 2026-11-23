package com.byazt.yn;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.byazt.cd.x;
import com.byazt.sa.n;
import com.byazt.sz.sp;
import com.byazt.xj.ve;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1357, 20})
public class c extends ve<BrokenImage> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f22383c;
    public volatile boolean vp;
    public float yo;

    public c(Context context) {
        super(context);
        this.vp = false;
    }

    private void x() {
        sp spVar = this.nt;
        if (spVar != null) {
            spVar.c();
        }
        n.c().tt().c(this.f21874i, this.f22383c, new com.byazt.sa.c.InterfaceC0422c() { // from class: com.byazt.yn.c.1
            @Override // com.byazt.sa.c.InterfaceC0422c
            public void c(final Bitmap bitmap) {
                if (bitmap == null) {
                    if (c.this.nt != null) {
                        sp spVar2 = c.this.nt;
                        c cVar = c.this;
                        spVar2.tt(cVar, cVar.f22383c);
                        return;
                    }
                    return;
                }
                final Bitmap[] bitmapArr = new Bitmap[1];
                if (c.this.yo > 0.0f) {
                    bitmapArr[0] = x.c(c.this.tt, bitmap, (int) c.this.yo);
                }
                x.c(new Runnable() { // from class: com.byazt.yn.c.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BrokenImage brokenImage = (BrokenImage) c.this.f21881n;
                        Bitmap bitmap2 = bitmapArr[0];
                        if (bitmap2 == null) {
                            bitmap2 = bitmap;
                        }
                        brokenImage.setBitmap(bitmap2);
                    }
                });
                if (c.this.nt != null) {
                    sp spVar3 = c.this.nt;
                    c cVar2 = c.this;
                    spVar3.c(cVar2, cVar2.f22383c);
                }
            }
        });
    }

    @Override // com.byazt.xj.ve, com.byazt.sa.uj
    public void a() {
        super.a();
    }

    @Override // com.byazt.xj.ve, com.byazt.sa.uj
    public void n() {
        super.n();
    }

    @Override // com.byazt.xj.ve
    /* JADX INFO: renamed from: sp, reason: merged with bridge method [inline-methods] */
    public BrokenImage c() {
        BrokenImage brokenImage = new BrokenImage(this.tt);
        brokenImage.c(this);
        return brokenImage;
    }

    @Override // com.byazt.xj.ve
    public void tt() {
        super.tt();
        x();
    }

    public void c(final int i10, final int i11, final int i12) {
        if (this.vp) {
            return;
        }
        this.vp = true;
        com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.yn.c.2
            @Override // java.lang.Runnable
            public void run() {
                ((BrokenImage) c.this.f21881n).c(i10, i11);
                ((BrokenImage) c.this.f21881n).c(i12);
            }
        });
    }

    @Override // com.byazt.xj.ve
    public void c(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.c(str, str2);
        str.hashCode();
        if (str.equals("imageBlur")) {
            this.yo = com.byazt.cd.ve.c(str2, -1.0f);
        } else if (str.equals("src")) {
            this.f22383c = str2;
        }
    }
}
