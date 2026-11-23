package com.byazt.bl;

import android.graphics.Bitmap;
import com.byazt.yj.eo;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 177, 13})
public class tt implements eo {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11967c;
    public int tt;
    public com.byazt.ep.ve<String, Bitmap> ve;

    public tt(int i10, int i11) {
        this.tt = i10;
        this.f11967c = i11;
        this.ve = new com.byazt.ep.ve<String, Bitmap>(i10) { // from class: com.byazt.bl.tt.1
            @Override // com.byazt.ep.ve
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public int tt(String str, Bitmap bitmap) {
                if (bitmap == null) {
                    return 0;
                }
                return tt.c(bitmap);
            }
        };
    }

    @Override // com.byazt.yj.c
    public boolean tt(String str) {
        return this.ve.c(str) != null;
    }

    @Override // com.byazt.yj.c
    public boolean c(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            return false;
        }
        this.ve.c(str, bitmap);
        return true;
    }

    @Override // com.byazt.yj.c
    public Bitmap c(String str) {
        return this.ve.c(str);
    }

    @Override // com.byazt.yj.c
    public void c() {
        c(0.0d);
    }

    @Override // com.byazt.yj.c
    public void c(double d10) {
        this.ve.c((int) (((double) this.tt) * d10));
    }

    public static int c(Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getAllocationByteCount();
    }
}
