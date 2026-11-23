package com.aggmoread.sdk.z.c.a.a.d.a.d.t.e;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class a extends b {
    public a(TTFeedAd tTFeedAd, e eVar, f fVar, Map<String, Object> map) {
        super(tTFeedAd, eVar, fVar, map);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.t.e.b, com.aggmoread.sdk.z.c.a.a.d.a.d.d
    public View a(@NonNull Context context, @NonNull View view, FrameLayout.LayoutParams layoutParams, List<View> list, View view2, List<View> list2, View view3, @NonNull com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar) {
        View view4 = view3;
        com.aggmoread.sdk.z.c.a.a.e.e.b("CSJUNAD", "esp enter v = " + view + ", r = " + view4);
        List<View> arrayList = list == null ? new ArrayList() : list;
        if (view4 == null) {
            view4 = view;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b("CSJUNAD", arrayList.contains(view4) ? "ovov + true" : "ovov + false");
        if (p.a(this.f4426j) && !arrayList.contains(view4)) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("CSJUNAD", "ovov ");
            arrayList.add(view4);
        }
        this.f4424h = aVar;
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b("CSJUNAD", "esp nativ");
        n.a(view, this.f4431o);
        a(context, (ViewGroup) view, layoutParams, arrayList, null, aVar);
        View[] viewArr = view2 != null ? new View[]{view2} : new View[0];
        this.f4475w = new WeakReference<>(view);
        a(view, viewArr);
        com.aggmoread.sdk.z.c.a.a.e.e.b("CSJUNAD", "exit");
        return view;
    }
}
