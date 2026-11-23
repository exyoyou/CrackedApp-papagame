package com.join.android.app.component.video;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.join.mgps.Util.t2;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class a extends com.papa.gsyvideoplayer.c {
    public static final int A = 2131362910;
    public static String B = "GSYVideoManager";
    private static Map<String, a> C = new HashMap();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f35177z = 2131362911;

    public a() {
        P();
    }

    public static boolean c0(Context context, String key) {
        boolean z10 = false;
        try {
            if (com.papa.gsyvideoplayer.utils.b.o(context) == null) {
                return false;
            }
            if (((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(context).findViewById(R.id.content)).findViewById(com.join.android.app.mgsim.wufun.R.id.custom_full_id) != null) {
                z10 = true;
                com.papa.gsyvideoplayer.utils.b.k(context);
                if (t2.h(key)) {
                    return true;
                }
                if (e0(key).m() != null) {
                    e0(key).m().onBackFullscreen();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return z10;
    }

    public static void d0() {
        if (C.size() > 0) {
            Iterator<Map.Entry<String, a>> it2 = C.entrySet().iterator();
            while (it2.hasNext()) {
                n0(it2.next().getKey());
            }
        }
        C.clear();
    }

    public static synchronized a e0(String key) {
        a aVar;
        if (TextUtils.isEmpty(key)) {
            throw new IllegalStateException("key not be empty");
        }
        aVar = C.get(key);
        if (aVar == null) {
            aVar = new a();
            com.papa.gsyvideoplayer.model.c cVar = new com.papa.gsyvideoplayer.model.c(4, "enable-accurate-seek", 1);
            com.papa.gsyvideoplayer.model.c cVar2 = new com.papa.gsyvideoplayer.model.c(1, "analyzeduration", 1);
            com.papa.gsyvideoplayer.model.c cVar3 = new com.papa.gsyvideoplayer.model.c(1, "analyzemaxduration", 30);
            new com.papa.gsyvideoplayer.model.c(2, "skip_loop_filter", 48);
            ArrayList arrayList = new ArrayList();
            arrayList.add(cVar);
            arrayList.add(cVar2);
            arrayList.add(cVar3);
            aVar.X(arrayList);
            C.put(key, aVar);
        }
        return aVar;
    }

    public static synchronized Map<String, a> f0() {
        return C;
    }

    public static boolean g0(Activity activity) {
        View viewFindViewById = ((ViewGroup) com.papa.gsyvideoplayer.utils.b.o(activity).findViewById(R.id.content)).findViewById(com.join.android.app.mgsim.wufun.R.id.custom_full_id);
        return (viewFindViewById != null ? (GSYVideoPlayer) viewFindViewById : null) != null;
    }

    public static void i0() {
        if (C.size() > 0) {
            for (Map.Entry<String, a> entry : C.entrySet()) {
                entry.getValue().h0(entry.getKey());
            }
        }
    }

    public static void l0() {
        if (C.size() > 0) {
            for (Map.Entry<String, a> entry : C.entrySet()) {
                entry.getValue().j0(entry.getKey());
            }
        }
    }

    public static void m0(boolean seek) {
        if (C.size() > 0) {
            for (Map.Entry<String, a> entry : C.entrySet()) {
                entry.getValue().k0(entry.getKey(), seek);
            }
        }
    }

    public static void n0(String key) {
        if (t2.h(key)) {
            return;
        }
        if (e0(key).w() != null) {
            e0(key).w().onCompletion();
        }
        e0(key).y();
    }

    public static void o0(String key) {
        C.remove(key);
    }

    @Override // com.papa.gsyvideoplayer.c
    protected com.papa.gsyvideoplayer.player.c M() {
        return new com.papa.gsyvideoplayer.player.d();
    }

    public void h0(String key) {
        if (t2.h(key) || e0(key).w() == null) {
            return;
        }
        e0(key).w().onVideoPause();
    }

    public void j0(String key) {
        if (t2.h(key) || e0(key).w() == null) {
            return;
        }
        e0(key).w().onVideoResume();
    }

    public void k0(String key, boolean seek) {
        if (t2.h(key) || e0(key).w() == null) {
            return;
        }
        e0(key).w().onVideoResume(seek);
    }
}
