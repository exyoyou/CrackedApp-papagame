package com.byazt.be;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.cd.x;
import com.byazt.xj.ve;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 798, 20})
public class c extends ve<DislikeView> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11915c;
    public int vp;
    public int yo;

    public c(Context context) {
        super(context);
        this.f11915c = 0;
        this.vp = 0;
    }

    @Override // com.byazt.xj.ve
    /* JADX INFO: renamed from: sp, reason: merged with bridge method [inline-methods] */
    public DislikeView c() {
        DislikeView dislikeView = new DislikeView(this.tt);
        dislikeView.c(this);
        return dislikeView;
    }

    @Override // com.byazt.xj.ve
    public void tt() {
        super.tt();
        ((DislikeView) this.f21881n).setRadius(this.f21873hd);
        ((DislikeView) this.f21881n).setStrokeWidth((int) this.kp);
        ((DislikeView) this.f21881n).setDislikeColor(this.f11915c);
        ((DislikeView) this.f21881n).setStrokeColor(this.f21864b);
        ((DislikeView) this.f21881n).setDislikeWidth(this.yo);
        ((DislikeView) this.f21881n).setBgColor(this.vp);
    }

    @Override // com.byazt.xj.ve
    public void c(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
        }
        super.c(str, str2);
        str.hashCode();
        switch (str) {
            case "dislikeColor":
                this.f11915c = com.byazt.cd.c.c(str2);
                break;
            case "dislikeWidth":
                this.yo = (int) x.c(this.tt, Integer.parseInt(str2));
                break;
            case "dislikeFillColor":
                this.vp = com.byazt.cd.c.c(str2);
                break;
        }
    }
}
