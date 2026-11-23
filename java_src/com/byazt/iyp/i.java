package com.byazt.iyp;

import android.view.View;
import android.widget.AbsListView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Method;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, 42})
public final class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile Class<?> f15625c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f15626n;
    public static volatile Class<?> tt;
    public static boolean uj;
    public static Method ve;

    public static void c(JSONObject jSONObject, View view, int i10) {
        if (jSONObject == null || view == null) {
            return;
        }
        int i11 = 0;
        View view2 = view;
        while (view2 != null) {
            int i12 = i11 + 1;
            if (i11 >= i10) {
                return;
            }
            try {
                String name = view2.getClass().getName();
                if (c(view2)) {
                    jSONObject.put("list_component_type", name);
                    jSONObject.put("adapter_position", c(view2, tt(view2, view)));
                    return;
                } else if (view2 instanceof AbsListView) {
                    jSONObject.put("list_component_type", name);
                    jSONObject.put("adapter_position", ((AbsListView) view2).getPositionForView(view));
                    return;
                } else {
                    Object parent = view2.getParent();
                    view2 = parent instanceof View ? (View) parent : null;
                    i11 = i12;
                }
            } catch (Throwable unused) {
                return;
            }
        }
    }

    private static View tt(Object obj, View view) {
        if (obj != null && view != null) {
            View view2 = view;
            while (view2 != null) {
                Object parent = view2.getParent();
                if (parent == obj) {
                    return view2;
                }
                view2 = parent instanceof View ? (View) parent : null;
            }
        }
        return view;
    }

    private static boolean c(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            Class<?> cls = f15625c;
            if (cls == null) {
                try {
                    cls = Class.forName("androidx.recyclerview.widget.RecyclerView");
                    f15625c = cls;
                } catch (Throwable unused) {
                }
            }
            if (cls != null && cls.isInstance(obj)) {
                return true;
            }
            Class<?> cls2 = tt;
            if (cls2 == null) {
                try {
                    cls2 = Class.forName("androidx.recyclerview.widget.RecyclerView");
                    tt = cls2;
                } catch (Throwable unused2) {
                }
            }
            if (cls2 != null && cls2.isInstance(obj)) {
                return true;
            }
            obj.getClass().getMethod("getChildAdapterPosition", View.class);
            return true;
        } catch (Throwable unused3) {
            return false;
        }
    }

    private static Integer c(Object obj, View view) {
        if (!uj && !f15626n) {
            try {
                try {
                    ve = obj.getClass().getMethod("getChildAdapterPosition", View.class);
                } catch (NoSuchMethodException unused) {
                    f15626n = true;
                }
                uj = true;
            } catch (Throwable th) {
                uj = true;
                throw th;
            }
        }
        Method method = ve;
        if (method != null && !f15626n) {
            try {
                Object objInvoke = method.invoke(obj, view);
                if (objInvoke instanceof Integer) {
                    return (Integer) objInvoke;
                }
            } catch (Throwable unused2) {
                f15626n = true;
                ve = null;
            }
        }
        return null;
    }
}
