package com.byazt.ysz;

import android.content.Context;
import android.util.SparseArray;
import com.byazt.eia.i;
import com.byazt.ete.ic;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public interface uj {
    boolean a();

    boolean a_(ic icVar);

    int c(Context context, i iVar, Map<String, Object> map);

    int c(Context context, ic icVar, Map<String, Object> map);

    int c(com.byazt.cn.tt ttVar, boolean z10);

    int c(i iVar, ve veVar, String str, Map<String, Object> map);

    int c(String str);

    void c();

    void c(com.byazt.qh.uj ujVar);

    void c(String str, ic icVar, long j10);

    void c(String str, boolean z10);

    void c(Function<SparseArray<Object>, Object> function);

    boolean c(String str, int i10);

    int n();

    String sp();

    int tt();

    int tt(ic icVar);

    void uj();

    long ve();

    void ve(i iVar);

    JSONObject x();
}
