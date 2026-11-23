package com.byazt.sgn;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.byazt.aas.pf;
import com.byazt.lbn.TTViewStub;
import com.byazt.omf.gt;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 211, 133})
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f19763a = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f19764c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public View f19765i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public tt f19766n;
    public com.byazt.jzl.uj sp;
    public TextView tt;
    public com.byazt.un.tt uj;
    public Context ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public TTViewStub f19767x;

    public enum c {
        PAUSE_VIDEO,
        RELEASE_VIDEO,
        START_VIDEO
    }

    public interface tt {
        boolean da();

        void t();
    }

    private void uj() {
        View view = this.f19764c;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve() {
        if (this.ve == null) {
            return;
        }
        uj();
    }

    private void tt() {
        this.sp = null;
    }

    public void c(Context context, View view) {
        if (context == null || !(view instanceof ViewGroup)) {
            return;
        }
        this.f19765i = view;
        this.ve = gt.getContext().getApplicationContext();
        try {
            this.f19767x = new TTViewStub(context, new com.byazt.wol.x());
        } catch (Throwable unused) {
        }
    }

    private void c(Context context, View view, boolean z10) {
        TTViewStub tTViewStub;
        if (context == null || view == null || (tTViewStub = this.f19767x) == null || tTViewStub.getParent() == null || this.f19764c != null) {
            return;
        }
        this.f19767x.c();
        this.f19764c = view.findViewById(2114387870);
        this.tt = (TextView) view.findViewById(2114387817);
        View viewFindViewById = view.findViewById(2114387880);
        if (z10) {
            viewFindViewById.setClickable(true);
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.sgn.z.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    z.this.ve();
                    if (z.this.uj != null) {
                        z.this.uj.c(c.START_VIDEO, (String) null);
                    }
                }
            });
        } else {
            viewFindViewById.setOnClickListener(null);
            viewFindViewById.setClickable(false);
        }
    }

    public void c(com.byazt.un.tt ttVar, tt ttVar2) {
        this.f19766n = ttVar2;
        this.uj = ttVar;
    }

    public boolean c(int i10, com.byazt.jzl.uj ujVar, boolean z10) {
        Context context = this.ve;
        if (context != null && ujVar != null) {
            try {
                c(context, this.f19765i, z10);
                this.sp = ujVar;
                if (i10 == 1 || i10 == 2) {
                    return c(i10);
                }
                return true;
            } catch (Throwable th) {
                com.byazt.nr.m.c(th);
            }
        }
        return true;
    }

    private boolean c(int i10) {
        tt ttVar;
        if (c() || this.f19763a) {
            return true;
        }
        if (this.uj != null && (ttVar = this.f19766n) != null) {
            if (ttVar.da()) {
                this.uj.n(null, null);
            }
            this.uj.c(c.PAUSE_VIDEO, (String) null);
        }
        c(this.sp, true);
        return false;
    }

    public void c(boolean z10) {
        if (z10) {
            tt();
        }
        uj();
    }

    public boolean c() {
        View view = this.f19764c;
        return view != null && view.getVisibility() == 0;
    }

    private void c(com.byazt.jzl.uj ujVar, boolean z10) {
        View view;
        String str;
        View view2;
        if (ujVar == null || (view = this.f19764c) == null || this.ve == null || view.getVisibility() == 0) {
            return;
        }
        tt ttVar = this.f19766n;
        if (ttVar != null) {
            ttVar.t();
        }
        int iCeil = (int) Math.ceil((ujVar.getSize() * 1.0d) / 1048576.0d);
        if (z10) {
            str = "播放将消耗" + iCeil + "MB流量";
        } else {
            str = "播放将消耗流量";
        }
        pf.c(this.f19764c, 0);
        pf.c(this.tt, str);
        if (!pf.uj(this.f19764c) || (view2 = this.f19764c) == null) {
            return;
        }
        view2.bringToFront();
    }
}
