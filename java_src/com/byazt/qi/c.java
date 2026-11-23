package com.byazt.qi;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.byakv.z.SoftDecTool;
import com.byazt.nr.m;
import java.lang.reflect.Field;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 527, 20})
public class c extends View.AccessibilityDelegate {
    public static Field tt;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View.AccessibilityDelegate f19167a;
    public View sp;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static c f19165c = new c(null, null);
    public static int ve = 0;
    public static String uj = "";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static Set<Integer> f19166n = new HashSet();

    static {
        tt = null;
        if (Build.VERSION.SDK_INT < 29) {
            try {
                Field declaredField = Class.forName("android.view.View").getDeclaredField("mAccessibilityDelegate");
                declaredField.setAccessible(true);
                tt = declaredField;
            } catch (Throwable th) {
                m.c(th);
            }
        }
    }

    public c(View.AccessibilityDelegate accessibilityDelegate, View view) {
        this.f19167a = accessibilityDelegate;
        this.sp = view;
        SoftDecTool.f11369h = true;
    }

    public static void c(View view) {
        View.AccessibilityDelegate accessibilityDelegate;
        if (f19166n.contains(Integer.valueOf(view.hashCode()))) {
            return;
        }
        boolean z10 = true;
        if (Build.VERSION.SDK_INT >= 29) {
            accessibilityDelegate = view.getAccessibilityDelegate();
        } else {
            try {
                Field field = tt;
                if (field != null) {
                    accessibilityDelegate = (View.AccessibilityDelegate) field.get(view);
                } else {
                    accessibilityDelegate = null;
                    z10 = false;
                }
            } catch (Throwable th) {
                m.c(th);
            }
        }
        if (!(accessibilityDelegate instanceof c) && z10) {
            view.setAccessibilityDelegate(new c(accessibilityDelegate, view));
            f19166n.add(Integer.valueOf(view.hashCode()));
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public void addExtraDataToAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
        ve = hashCode();
        uj = String.valueOf(this.f19167a);
        view.setAccessibilityDelegate(this.f19167a);
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                View.AccessibilityDelegate accessibilityDelegate = this.f19167a;
                if (accessibilityDelegate != null) {
                    accessibilityDelegate.addExtraDataToAccessibilityNodeInfo(view, accessibilityNodeInfo, str, bundle);
                } else {
                    super.addExtraDataToAccessibilityNodeInfo(view, accessibilityNodeInfo, str, bundle);
                }
            } catch (Throwable th) {
                m.c(th);
            }
        }
        view.setAccessibilityDelegate(this);
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        ve = hashCode();
        uj = String.valueOf(this.f19167a);
        view.setAccessibilityDelegate(this.f19167a);
        view.setAccessibilityDelegate(this.f19167a);
        View.AccessibilityDelegate accessibilityDelegate = this.f19167a;
        boolean zDispatchPopulateAccessibilityEvent = accessibilityDelegate != null ? accessibilityDelegate.dispatchPopulateAccessibilityEvent(view, accessibilityEvent) : super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        view.setAccessibilityDelegate(this);
        return zDispatchPopulateAccessibilityEvent;
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        ve = hashCode();
        uj = String.valueOf(this.f19167a);
        view.setAccessibilityDelegate(this.f19167a);
        try {
            View.AccessibilityDelegate accessibilityDelegate = this.f19167a;
            if (accessibilityDelegate != null) {
                accessibilityDelegate.onInitializeAccessibilityEvent(view, accessibilityEvent);
            } else {
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            }
        } catch (Throwable th) {
            m.c(th);
        }
        view.setAccessibilityDelegate(this);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        SoftDecTool.f11368f = true;
        ve = hashCode();
        uj = String.valueOf(this.f19167a);
        view.setAccessibilityDelegate(this.f19167a);
        try {
            View.AccessibilityDelegate accessibilityDelegate = this.f19167a;
            if (accessibilityDelegate != null) {
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            } else {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            }
        } catch (Throwable th) {
            m.c(th);
        }
        view.setAccessibilityDelegate(this);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        ve = hashCode();
        uj = String.valueOf(this.f19167a);
        if (c()) {
            return;
        }
        view.setAccessibilityDelegate(this.f19167a);
        try {
            View.AccessibilityDelegate accessibilityDelegate = this.f19167a;
            if (accessibilityDelegate != null) {
                accessibilityDelegate.onPopulateAccessibilityEvent(view, accessibilityEvent);
            } else {
                super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            }
        } catch (Throwable th) {
            m.c(th);
        }
        view.setAccessibilityDelegate(this);
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        ve = hashCode();
        uj = String.valueOf(this.f19167a);
        viewGroup.setAccessibilityDelegate(this.f19167a);
        View.AccessibilityDelegate accessibilityDelegate = this.f19167a;
        boolean zOnRequestSendAccessibilityEvent = accessibilityDelegate != null ? accessibilityDelegate.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent) : super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        viewGroup.setAccessibilityDelegate(this);
        return zOnRequestSendAccessibilityEvent;
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
        ve = hashCode();
        uj = String.valueOf(this.f19167a);
        SoftDecTool.f11366a = true;
        view.setAccessibilityDelegate(this.f19167a);
        View.AccessibilityDelegate accessibilityDelegate = this.f19167a;
        boolean zPerformAccessibilityAction = accessibilityDelegate != null ? accessibilityDelegate.performAccessibilityAction(view, i10, bundle) : super.performAccessibilityAction(view, i10, bundle);
        view.setAccessibilityDelegate(this);
        return zPerformAccessibilityAction;
    }

    @Override // android.view.View.AccessibilityDelegate
    public void sendAccessibilityEvent(View view, int i10) {
        ve = hashCode();
        uj = String.valueOf(this.f19167a);
        view.setAccessibilityDelegate(this.f19167a);
        try {
            View.AccessibilityDelegate accessibilityDelegate = this.f19167a;
            if (accessibilityDelegate != null) {
                accessibilityDelegate.sendAccessibilityEvent(view, i10);
            } else {
                super.sendAccessibilityEvent(view, i10);
            }
        } catch (Throwable th) {
            m.c(th);
        }
        view.setAccessibilityDelegate(this);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        ve = hashCode();
        uj = String.valueOf(this.f19167a);
        view.setAccessibilityDelegate(this.f19167a);
        try {
            View.AccessibilityDelegate accessibilityDelegate = this.f19167a;
            if (accessibilityDelegate != null) {
                accessibilityDelegate.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            } else {
                super.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            }
        } catch (Throwable th) {
            m.c(th);
        }
        view.setAccessibilityDelegate(this);
    }

    public boolean c() {
        StackTraceElement stackTraceElement;
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length < 4 || (stackTraceElement = stackTrace[3]) == null) {
            return false;
        }
        for (int i10 = 4; i10 < stackTrace.length; i10++) {
            if (stackTrace[i10] != null && stackTraceElement.getMethodName().equals(stackTrace[i10].getMethodName()) && stackTraceElement.getClassName().equals(stackTrace[i10].getClassName())) {
                return true;
            }
        }
        return false;
    }
}
