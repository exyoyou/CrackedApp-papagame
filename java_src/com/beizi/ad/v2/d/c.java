package com.beizi.ad.v2.d;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import com.beizi.ad.d;
import com.beizi.ad.internal.e.t;
import com.beizi.ad.lance.a.h;
import com.beizi.ad.lance.a.n;
import com.beizi.ad.lance.a.p;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class c extends com.beizi.ad.v2.a.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f9994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<Pair<String, Integer>> f9995c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f9996d;

    public c(Context context, String str, d dVar) {
        b bVar = new b(context, str, 1);
        this.f9677a = bVar;
        if (bVar instanceof b) {
            bVar.a(dVar);
        }
    }

    public void a(int i10, View view, View view2, String str) {
        int iT = t();
        boolean zA = p.a(iT);
        n.c("BeiZisAd", "percent = " + iT + ",isPass = " + zA);
        if (zA) {
            this.f9996d = h.a(i10, view, view2, str);
        }
    }

    public void b(int i10) {
        this.f9994b = i10;
    }

    public int t() {
        int iIntValue;
        com.beizi.ad.v2.a.b bVar = this.f9677a;
        if (bVar == null || !(bVar instanceof b)) {
            return -1;
        }
        String strC = ((b) bVar).C();
        if (TextUtils.isEmpty(strC)) {
            return -1;
        }
        List<Pair<String, Integer>> list = this.f9995c;
        if (list != null) {
            iIntValue = -1;
            for (Pair<String, Integer> pair : list) {
                if (strC.contains((CharSequence) pair.first)) {
                    iIntValue = ((Integer) pair.second).intValue();
                }
            }
        } else {
            iIntValue = -1;
        }
        return iIntValue == -1 ? this.f9994b : iIntValue;
    }

    public void u() {
        View view = this.f9996d;
        if (view != null) {
            t.a(view);
        }
    }

    public void a(List<Pair<String, Integer>> list) {
        this.f9995c = list;
    }

    public void a(View view, com.beizi.ad.internal.c.c cVar) {
        com.beizi.ad.v2.a.b bVar = this.f9677a;
        if (bVar == null || view == null || cVar == null || !(bVar instanceof b)) {
            return;
        }
        ((b) bVar).a(view, cVar);
    }
}
