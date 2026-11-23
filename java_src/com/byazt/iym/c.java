package com.byazt.iym;

import android.content.Context;
import android.view.ViewGroup;
import com.byazt.kt.RecyclerView;
import com.byazt.vfu.a;
import com.haima.hmcp.proto.GSSDK;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_X_VALUE, 20})
public class c extends RecyclerView.c<n> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f15590c;
    public final float uj;
    public final float ve;
    public final List<tt> tt = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List<n> f15591n = new ArrayList();

    public c(Context context, float f10, float f11) {
        this.f15590c = context;
        this.ve = f10;
        this.uj = f11;
    }

    @Override // com.byazt.kt.RecyclerView.c
    public long tt(int i10) {
        return i10;
    }

    public void uj() {
        Iterator<n> it2 = this.f15591n.iterator();
        while (it2.hasNext()) {
            it2.next().cu();
        }
        this.f15591n.clear();
    }

    @Override // com.byazt.kt.RecyclerView.c
    /* JADX INFO: renamed from: ve, reason: merged with bridge method [inline-methods] */
    public n c(ViewGroup viewGroup, int i10) {
        n nVar = new n(a.t(this.f15590c));
        this.f15591n.add(nVar);
        return nVar;
    }

    public void c(List<tt> list) {
        this.tt.clear();
        this.tt.addAll(list);
        ve();
    }

    @Override // com.byazt.kt.RecyclerView.c
    public void c(n nVar) {
        super.c(nVar);
        nVar.cu();
    }

    @Override // com.byazt.kt.RecyclerView.c
    public void c(n nVar, int i10) {
        List<tt> list = this.tt;
        nVar.c(list.get(i10 % list.size()), (int) this.ve, (int) this.uj);
    }

    @Override // com.byazt.kt.RecyclerView.c
    public int c() {
        return this.tt.size();
    }
}
