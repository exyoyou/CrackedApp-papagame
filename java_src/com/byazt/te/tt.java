package com.byazt.te;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.byazt.sa.n;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 14, 13})
public class tt extends com.byazt.xj.ve<CycleCountDownView> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f20159c;
    public String kz;
    public String vp;
    public String yo;

    public tt(@NonNull Context context) {
        super(context);
    }

    @Override // com.byazt.xj.ve
    /* JADX INFO: renamed from: sp, reason: merged with bridge method [inline-methods] */
    public CycleCountDownView c() {
        return new CycleCountDownView(this.tt);
    }

    @Override // com.byazt.xj.ve
    public void tt() {
        super.tt();
    }

    @Override // com.byazt.xj.ve
    public void c(String str, String str2) {
        super.c(str, str2);
        str.hashCode();
        switch (str) {
            case "boxImage":
                ((CycleCountDownView) this.f21881n).setBoxImage(null);
                n.c().tt().c(this.f21874i, str2, new com.byazt.sa.c.InterfaceC0422c() { // from class: com.byazt.te.tt.1
                    @Override // com.byazt.sa.c.InterfaceC0422c
                    public void c(Bitmap bitmap) {
                        ((CycleCountDownView) tt.this.f21881n).setBoxImage(bitmap);
                    }
                });
                break;
            case "before":
                this.f20159c = str2;
                break;
            case "finish":
                this.kz = str2;
                break;
            case "text":
                this.vp = str2;
                break;
            case "after":
                this.yo = str2;
                break;
            case "boxFinishImage":
                n.c().tt().c(this.f21874i, str2, new com.byazt.sa.c.InterfaceC0422c() { // from class: com.byazt.te.tt.2
                    @Override // com.byazt.sa.c.InterfaceC0422c
                    public void c(Bitmap bitmap) {
                        ((CycleCountDownView) tt.this.f21881n).setBoxFinish(bitmap);
                    }
                });
                break;
        }
        ((CycleCountDownView) this.f21881n).c(this.f20159c, this.yo, this.vp, this.kz);
    }

    public void c(int i10, int i11, int i12, boolean z10) {
        T t10 = this.f21881n;
        if (t10 != 0) {
            ((CycleCountDownView) t10).c(i10, i11, i12);
            ((CycleCountDownView) this.f21881n).setCanSkip(z10);
            ((CycleCountDownView) this.f21881n).setClickable(z10);
            ((CycleCountDownView) this.f21881n).setEnabled(z10);
        }
    }
}
