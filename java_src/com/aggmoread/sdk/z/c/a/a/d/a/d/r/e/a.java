package com.aggmoread.sdk.z.c.a.a.d.a.d.r.e;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.NativeResponse;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class a extends d {
    public a(NativeResponse nativeResponse, BaiduNativeManager baiduNativeManager, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar, Map<String, Object> map) {
        super(nativeResponse, baiduNativeManager, eVar, fVar, map);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.e.d, com.aggmoread.sdk.z.c.a.a.d.a.d.d
    public View a(@NonNull Context context, @NonNull View view, FrameLayout.LayoutParams layoutParams, List<View> list, View view2, List<View> list2, View view3, @NonNull com.aggmoread.sdk.z.c.a.a.c.p.f.a aVar) {
        String str;
        String str2;
        View view4 = view3;
        com.aggmoread.sdk.z.c.a.a.e.e.b(d.C, "esp enter v = " + view + ", r = " + view4);
        List<View> arrayList = list == null ? new ArrayList() : list;
        if (view4 == null) {
            view4 = view;
        }
        if (arrayList.contains(view4)) {
            str = d.C;
            str2 = "ovov + true";
        } else {
            str = d.C;
            str2 = "ovov + false";
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(str, str2);
        if (p.a(this.f4426j) && !arrayList.contains(view4)) {
            com.aggmoread.sdk.z.c.a.a.e.e.b(d.C, "ovov ");
            arrayList.add(view4);
        }
        this.f4424h = aVar;
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b(d.C, "esp nativ");
        n.a(view, this.f4431o);
        a(context, (ViewGroup) view, layoutParams, arrayList, list2, (WeakReference<com.aggmoread.sdk.z.c.a.a.d.b.o.a>) null, aVar);
        View[] viewArr = view2 != null ? new View[]{view2} : new View[0];
        this.f4475w = new WeakReference<>(view);
        a(view, viewArr);
        com.aggmoread.sdk.z.c.a.a.e.e.b(d.C, "exit");
        return view;
    }
}
