package com.aggmoread.sdk.z.c.a.a.d.a.d.w.f;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.kwad.sdk.api.KsNativeAd;
import com.qq.e.ads.nativ.widget.NativeAdContainer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class a extends d {
    public a(KsNativeAd ksNativeAd, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Map<String, Object> map) {
        super(ksNativeAd, eVar, fVar, map);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.f.d, com.aggmoread.sdk.z.c.a.a.d.a.d.d
    public View a(@NonNull Context context, @NonNull View view, FrameLayout.LayoutParams layoutParams, List<View> list, View view2, List<View> list2, View view3, @NonNull com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar) {
        String str;
        String str2;
        com.aggmoread.sdk.z.c.a.a.e.e.b(d.B, "esp enter v = " + view + ", r = " + view3);
        if (list == null) {
            list = new ArrayList<>();
        }
        List<View> list3 = list;
        if (view3 == null) {
            view3 = view;
        }
        if (list3.contains(view3)) {
            str = d.B;
            str2 = "ovov + true";
        } else {
            str = d.B;
            str2 = "ovov + false";
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(str, str2);
        if (p.a(this.f4426j) && !list3.contains(view3)) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(d.B, "ovov ");
            list3.add(view3);
        }
        this.f4424h = aVar;
        if (!(view instanceof NativeAdContainer)) {
            return null;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(d.B, "esp nativ");
        n.a(view, this.f4431o);
        a(context, (NativeAdContainer) view, layoutParams, list3, null, aVar);
        View[] viewArr = view2 != null ? new View[]{view2} : new View[0];
        this.f4475w = new WeakReference<>(view);
        a(view, viewArr);
        com.aggmoread.sdk.z.c.a.a.e.e.b(d.B, "exit");
        return view;
    }
}
