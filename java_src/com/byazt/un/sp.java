package com.byazt.un;

import android.view.View;
import android.widget.TextView;
import com.byazt.ff.RoundImageView;
import com.byazt.nr.m;
import com.byazt.sgn.z;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 96, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f20837c;

    public sp(a aVar) {
        this.f20837c = aVar;
    }

    public boolean c() {
        z zVar = this.f20837c.f20791p;
        boolean zC = zVar != null ? zVar.c() : false;
        StringBuilder sb2 = new StringBuilder("isVisible=");
        sb2.append(zC);
        sb2.append(",mPlayBtn.getVisibility() == VISIBLE->");
        sb2.append(this.f20837c.ve.getVisibility() == 0);
        m.c("ClickCreativeListener", sb2.toString());
        return zC || this.f20837c.ve.getVisibility() == 0;
    }

    public boolean tt() {
        View view;
        RoundImageView roundImageView;
        TextView textView;
        if (com.byazt.ex.c.c(this.f20837c.zm)) {
            return true;
        }
        View view2 = this.f20837c.f20797x;
        return (view2 != null && view2.getVisibility() == 0) || ((view = this.f20837c.f20782da) != null && view.getVisibility() == 0) || (((roundImageView = this.f20837c.sl) != null && roundImageView.getVisibility() == 0) || ((textView = this.f20837c.f20794t) != null && textView.getVisibility() == 0));
    }
}
