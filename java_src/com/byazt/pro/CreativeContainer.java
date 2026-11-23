package com.byazt.pro;

import android.content.Context;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.byazt.ete.ic;
import com.byazt.ete.md;
import com.byazt.omf.my;
import com.byazt.ui.UpieImageView;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 199, 2201})
public class CreativeContainer extends FrameLayout {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f18825c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public UpieImageView f18826n;
    public final ic tt;
    public EffectView uj;
    public final my ve;

    public CreativeContainer(@NonNull Context context, ic icVar, my myVar) {
        super(context);
        this.f18825c = context;
        this.tt = icVar;
        this.ve = myVar;
        c();
    }

    private void c() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        UpieImageView upieImageView = new UpieImageView(this.f18825c, com.byazt.ic.c.i(this.tt), com.byazt.nj.c.c(this.tt), null);
        this.f18826n = upieImageView;
        addView(upieImageView, layoutParams);
        this.f18826n.setVisibility(4);
        if (md.n(this.tt)) {
            EffectView effectView = new EffectView(this.f18825c, this.tt, this.ve);
            this.uj = effectView;
            addView(effectView, layoutParams);
            this.uj.c(new EffectView.c() { // from class: com.byazt.pro.CreativeContainer.1
                @Override // com.byazt.pro.EffectView.c
                public void c() {
                    if (CreativeContainer.this.f18826n != null) {
                        CreativeContainer.this.f18826n.setVisibility(8);
                    }
                }

                @Override // com.byazt.pro.EffectView.c
                public void c(String str) {
                    if (CreativeContainer.this.uj != null) {
                        CreativeContainer creativeContainer = CreativeContainer.this;
                        creativeContainer.removeView(creativeContainer.uj);
                        CreativeContainer.this.uj = null;
                    }
                    if (CreativeContainer.this.f18826n != null) {
                        CreativeContainer.this.f18826n.setVisibility(0);
                    }
                }
            });
            return;
        }
        UpieImageView upieImageView2 = this.f18826n;
        if (upieImageView2 != null) {
            upieImageView2.setVisibility(0);
        }
    }

    public static boolean c(ic icVar) {
        return (!ic.c(icVar) || ic.tt(icVar)) && icVar != null && !ic.ve(icVar) && (md.n(icVar) || com.byazt.ic.c.x(icVar));
    }
}
