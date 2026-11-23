package com.byazt.uph;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.byazt.yj.gr;
import com.byazt.yj.gt;
import com.byazt.yj.m;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 446, 20})
public class c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: com.byazt.uph.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 446, 44})
    public static class C0454c implements tt {
        @Override // com.byazt.uph.c.tt
        public void c(int i10, String str, Throwable th) {
        }

        @Override // com.byazt.uph.c.tt
        public void c(m mVar, com.byazt.uph.tt ttVar) {
        }
    }

    public interface tt {
        void c(int i10, String str, Throwable th);

        void c(m mVar, com.byazt.uph.tt ttVar);
    }

    public static C0454c tt() {
        return new C0454c();
    }

    public void c() {
    }

    public void c(com.byazt.sml.tt ttVar, tt ttVar2, int i10, int i11, String str) {
        c(ttVar, ttVar2, i10, i11, ImageView.ScaleType.CENTER_INSIDE, str);
    }

    public void c(com.byazt.sml.tt ttVar, tt ttVar2, int i10, int i11, String str, int i12, gt gtVar, boolean z10) {
        c(ttVar, ttVar2, i10, i11, ImageView.ScaleType.CENTER_INSIDE, str, i12, gtVar, z10);
    }

    public void c(com.byazt.sml.tt ttVar, final tt ttVar2, int i10, int i11, ImageView.ScaleType scaleType, String str) {
        com.byazt.xky.tt.c(ttVar.f19843c).key(ttVar.tt).width(i10).height(i11).cacheDir(str).config(Bitmap.Config.RGB_565).scaleType(scaleType).requestTime(!TextUtils.isEmpty(str)).to(new gr() { // from class: com.byazt.uph.c.1
            @Override // com.byazt.yj.gr
            public void onFailed(int i12, String str2, Throwable th) {
                c.this.c(i12, str2, th, ttVar2);
            }

            @Override // com.byazt.yj.gr
            public void onSuccess(m mVar) {
                c.this.c(mVar, ttVar2);
            }
        });
        c();
    }

    public void c(com.byazt.sml.tt ttVar, final tt ttVar2, int i10, int i11, ImageView.ScaleType scaleType, String str, int i12, gt gtVar, boolean z10) {
        com.byazt.xky.tt.c(ttVar.f19843c).key(ttVar.tt).width(i10).height(i11).cacheDir(str).config(Bitmap.Config.RGB_565).scaleType(scaleType).loadSetp(gtVar).headers(z10).requestTime(!TextUtils.isEmpty(str)).to(new gr() { // from class: com.byazt.uph.c.2
            @Override // com.byazt.yj.gr
            public void onFailed(int i13, String str2, Throwable th) {
                c.this.c(i13, str2, th, ttVar2);
            }

            @Override // com.byazt.yj.gr
            public void onSuccess(m mVar) {
                c.this.c(mVar, ttVar2);
            }
        }, i12);
        c();
    }

    public void c(m mVar, tt ttVar) {
        if (ttVar != null) {
            Object result = mVar.getResult();
            int iC = c(mVar);
            if (result instanceof byte[]) {
                ttVar.c(mVar, new com.byazt.uph.tt((byte[]) result, iC));
            } else if (result instanceof Bitmap) {
                ttVar.c(mVar, new com.byazt.uph.tt((Bitmap) result, iC));
            } else {
                ttVar.c(0, "not bitmap or gif result!", null);
            }
        }
    }

    private int c(m mVar) {
        Map<String, String> headers = mVar.getHeaders();
        if (headers == null) {
            return 0;
        }
        try {
            String str = headers.get("image_size");
            if (str == null || !(str instanceof String)) {
                return 0;
            }
            return Integer.parseInt(str);
        } catch (Throwable unused) {
            return 0;
        }
    }

    public void c(int i10, String str, Throwable th, tt ttVar) {
        if (ttVar != null) {
            ttVar.c(i10, str, th);
        }
    }
}
