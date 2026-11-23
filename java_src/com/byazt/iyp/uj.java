package com.byazt.iyp;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.MainThread;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, 15})
public final class uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static WeakReference<View> f15665a;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static Field f15673x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map<View, n.C0348n> f15666c = new WeakHashMap();
    public static final Map<View, Boolean> tt = new WeakHashMap();
    public static int ve = -1;
    public static long uj = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f15670n = false;
    public static final Rect sp = new Rect();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static boolean f15668i = false;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static long f15667da = 0;
    public static int sl = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static volatile String f15671t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final Handler f15672u = new Handler(Looper.getMainLooper());
    public static final AtomicBoolean yp = new AtomicBoolean(false);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final AtomicBoolean f15674z = new AtomicBoolean(false);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Runnable f15669m = new Runnable() { // from class: com.byazt.iyp.uj.1
        @Override // java.lang.Runnable
        public void run() {
            uj.yp.set(false);
            try {
                uj.yp();
            } catch (Throwable unused) {
            }
        }
    };

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, 123})
    private static final class c extends View.AccessibilityDelegate {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final View.AccessibilityDelegate f15675c;
        public boolean tt;

        public c(View.AccessibilityDelegate accessibilityDelegate) {
            this.f15675c = accessibilityDelegate;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(View view, int i10) {
            if (this.tt) {
                super.sendAccessibilityEvent(view, i10);
                return;
            }
            this.tt = true;
            try {
                View.AccessibilityDelegate accessibilityDelegate = this.f15675c;
                if (accessibilityDelegate != null) {
                    accessibilityDelegate.sendAccessibilityEvent(view, i10);
                } else {
                    super.sendAccessibilityEvent(view, i10);
                }
                this.tt = false;
                if (i10 == 1 || i10 == 4) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jCurrentTimeMillis - uj.uj < 300) {
                        return;
                    }
                    long unused = uj.uj = jCurrentTimeMillis;
                    n.C0348n c0348n = (n.C0348n) uj.f15666c.get(view);
                    if (c0348n != null) {
                        int unused2 = uj.ve = c0348n.f15636c;
                        uj.tt(c0348n.c());
                        int unused3 = uj.ve;
                    }
                }
            } catch (Throwable th) {
                this.tt = false;
                throw th;
            }
        }
    }

    public static String a() {
        if (m()) {
            return yp();
        }
        String str = f15671t;
        if ((str == null || System.currentTimeMillis() - f15667da >= 60000) && yp.compareAndSet(false, true)) {
            f15672u.post(f15669m);
        }
        return str != null ? str : " ";
    }

    private static boolean m() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    @MainThread
    public static void n() {
        f15670n = false;
    }

    @MainThread
    private static boolean nu() {
        View view;
        WeakReference<View> weakReference = f15665a;
        if (weakReference != null && (view = weakReference.get()) != null && view.isAttachedToWindow() && view.getVisibility() == 0 && view.getWidth() > 0 && view.getHeight() > 0) {
            return view.getGlobalVisibleRect(sp);
        }
        return false;
    }

    @MainThread
    public static void sp() {
        f15671t = null;
        f15667da = 0L;
        sl = 0;
    }

    @MainThread
    public static void uj() {
        f15670n = true;
    }

    @MainThread
    public static void ve() {
        f15666c.clear();
    }

    @MainThread
    public static void x() {
        int iUj;
        if (f15670n && nu() && (iUj = n.uj()) >= 0) {
            int i10 = ve;
            boolean z10 = iUj != i10;
            boolean z11 = i10 < 0;
            if (z10) {
                ve = iUj;
            } else if (!z11) {
                return;
            }
            tt(ve(iUj));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public static String yp() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str = f15671t;
        boolean z10 = str != null && str.startsWith("Tab_");
        boolean z11 = z10 && sl >= 3;
        if (str != null && ((!z10 || z11) && jCurrentTimeMillis - f15667da < 60000)) {
            return str;
        }
        x();
        if (f15671t == null && (n.ve() == null || n.ve().isEmpty())) {
            z();
        }
        String str2 = f15671t;
        if (str2 == null) {
            str2 = "";
        }
        if (!str2.startsWith("Tab_")) {
            sl = 0;
        } else if (z10) {
            sl++;
        } else {
            sl = 1;
        }
        f15671t = str2;
        f15667da = jCurrentTimeMillis;
        return str2;
    }

    @MainThread
    private static void z() {
        int i10;
        List<n.C0348n> list;
        AtomicBoolean atomicBoolean = f15674z;
        if (atomicBoolean.get()) {
            return;
        }
        atomicBoolean.set(true);
        try {
            Activity activityC = sp.c();
            if (activityC == null) {
                return;
            }
            n.tt ttVarC = n.c(activityC);
            if (!((ttVarC == null || (list = ttVarC.uj) == null || list.isEmpty()) ? false : true) || (i10 = ttVarC.tt) < 0 || i10 >= ttVarC.uj.size()) {
                return;
            }
            f15670n = true;
            c(ttVarC.tt);
        } catch (Throwable unused) {
        }
    }

    @MainThread
    public static int tt() {
        return ve;
    }

    private static String ve(int i10) {
        String strConcat = "Tab_".concat(String.valueOf(i10));
        List<n.C0348n> listVe = n.ve();
        if (listVe == null || i10 < 0 || i10 >= listVe.size()) {
            return strConcat;
        }
        String strC = listVe.get(i10).c();
        return !TextUtils.isEmpty(strC) ? strC : strConcat;
    }

    @MainThread
    public static void c() {
        ve = -1;
        f15670n = false;
        sp();
        f15674z.set(false);
        sl = 0;
        tt.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public static void tt(String str) {
        if (str == null) {
            str = "";
        }
        f15671t = str;
        f15667da = System.currentTimeMillis();
    }

    @MainThread
    private static void tt(View view) {
        Map<View, Boolean> map = tt;
        if (map.containsKey(view)) {
            return;
        }
        View.AccessibilityDelegate accessibilityDelegateVe = ve(view);
        if (accessibilityDelegateVe instanceof c) {
            return;
        }
        view.setAccessibilityDelegate(new c(accessibilityDelegateVe));
        map.put(view, Boolean.TRUE);
    }

    @MainThread
    private static View.AccessibilityDelegate ve(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return view.getAccessibilityDelegate();
        }
        if (f15668i) {
            return null;
        }
        try {
            if (f15673x == null) {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f15673x = declaredField;
                declaredField.setAccessible(true);
            }
            Object obj = f15673x.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
        } catch (Throwable unused) {
            f15668i = true;
        }
        return null;
    }

    @MainThread
    public static void c(int i10) {
        ve = i10;
        tt(ve(i10));
    }

    @MainThread
    public static void c(View view) {
        f15665a = view != null ? new WeakReference<>(view) : null;
    }

    @MainThread
    public static void c(View view, n.C0348n c0348n) {
        if (view == null) {
            return;
        }
        f15666c.put(view, c0348n);
        tt(view);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                c(viewGroup.getChildAt(i10), c0348n);
            }
        }
    }
}
