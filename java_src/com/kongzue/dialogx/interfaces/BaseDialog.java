package com.kongzue.dialogx.interfaces;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import com.bykv.vk.component.ttvideo.player.C;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.dialogs.WaitDialog;
import com.kongzue.dialogx.util.DialogXFloatingWindowActivity;
import com.kongzue.dialogx.util.TextInfo;
import com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseDialog implements LifecycleOwner {
    private static Thread G;
    private static WeakReference<Activity> H;
    private static List<BaseDialog> I;
    private static Map<String, com.kongzue.dialogx.util.a> J;
    protected static WindowInsets K;
    static WeakReference<Handler> L;
    protected int A;
    protected int B;
    protected boolean D;
    protected boolean E;
    protected boolean F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected WeakReference<Activity> f74055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakReference<FrameLayout> f74056c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WeakReference<View> f74058e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected WeakReference<com.kongzue.dialogx.impl.c> f74059f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected WeakReference<DialogXFloatingWindowActivity> f74061h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private com.kongzue.dialogx.util.d f74062i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected Map<String, Object> f74064k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected com.kongzue.dialogx.interfaces.i f74065l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected com.kongzue.dialogx.interfaces.i f74066m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected boolean f74067n;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f74070q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected boolean f74071r;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected long f74076w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected long f74077x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected int f74078y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected int f74079z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f74057d = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected DialogX.IMPL_MODE f74060g = DialogX.f73594f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected LifecycleRegistry f74063j = new LifecycleRegistry(this);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected int f74068o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected Map<Integer, com.kongzue.dialogx.interfaces.i> f74069p = new HashMap();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected Integer f74075v = null;
    protected int[] C = new int[4];

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected DialogXStyle f74072s = DialogX.f73591c;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected DialogX.THEME f74073t = DialogX.f73592d;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected boolean f74074u = DialogX.f73599k;

    public enum BOOLEAN {
        TRUE,
        FALSE
    }

    public enum BUTTON_SELECT_RESULT {
        NONE,
        BUTTON_OK,
        BUTTON_CANCEL,
        BUTTON_OTHER
    }

    class a implements com.kongzue.dialogx.impl.a.InterfaceC0776a {
        a() {
        }

        @Override // com.kongzue.dialogx.impl.a.InterfaceC0776a
        public void getActivity(Activity activity) {
            BaseDialog.c0(activity);
        }
    }

    class b implements com.kongzue.dialogx.util.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f74081b;

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ FrameLayout f74082b;

            a(FrameLayout frameLayout) {
                this.f74082b = frameLayout;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f74081b.getParent() != BaseDialog.this.P()) {
                    if (b.this.f74081b.getParent() != null) {
                        ((ViewGroup) b.this.f74081b.getParent()).removeView(b.this.f74081b);
                    }
                    this.f74082b.addView(b.this.f74081b);
                } else {
                    BaseDialog.r(((BaseDialog) b.this.f74081b.getTag()).n() + "已处于显示状态，请勿重复执行 show() 指令。");
                }
            }
        }

        b(View view) {
            this.f74081b = view;
        }

        @Override // com.kongzue.dialogx.util.a
        public void a(Activity activity) {
            BaseDialog.this.f74061h = new WeakReference<>((DialogXFloatingWindowActivity) activity);
            BaseDialog.this.f74061h.get().setFromActivity(BaseDialog.this.N());
            FrameLayout frameLayoutZ = BaseDialog.z(activity);
            if (frameLayoutZ == null) {
                return;
            }
            BaseDialog.C0(new a(frameLayoutZ));
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f74084b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ BaseDialog f74085c;

        c(View view, BaseDialog baseDialog) {
            this.f74084b = view;
            this.f74085c = baseDialog;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f74084b.getParent() != this.f74085c.P()) {
                if (this.f74084b.getParent() != null) {
                    ((ViewGroup) this.f74084b.getParent()).removeView(this.f74084b);
                }
                this.f74085c.P().addView(this.f74084b);
            } else {
                BaseDialog.r(((BaseDialog) this.f74084b.getTag()).n() + "已处于显示状态，请勿重复执行 show() 指令。");
            }
        }
    }

    class d implements com.kongzue.dialogx.util.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f74087b;

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ FrameLayout f74088b;

            a(FrameLayout frameLayout) {
                this.f74088b = frameLayout;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f74087b.getParent() != BaseDialog.this.P()) {
                    if (d.this.f74087b.getParent() != null) {
                        ((ViewGroup) d.this.f74087b.getParent()).removeView(d.this.f74087b);
                    }
                    this.f74088b.addView(d.this.f74087b);
                } else {
                    BaseDialog.r(((BaseDialog) d.this.f74087b.getTag()).n() + "已处于显示状态，请勿重复执行 show() 指令。");
                }
            }
        }

        d(View view) {
            this.f74087b = view;
        }

        @Override // com.kongzue.dialogx.util.a
        public void a(Activity activity) {
            BaseDialog.this.f74061h = new WeakReference<>((DialogXFloatingWindowActivity) activity);
            BaseDialog.this.f74061h.get().setFromActivity(BaseDialog.this.N());
            FrameLayout frameLayoutZ = BaseDialog.z(activity);
            if (frameLayoutZ == null) {
                return;
            }
            BaseDialog.C0(new a(frameLayoutZ));
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f74090b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ BaseDialog f74091c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ FrameLayout f74092d;

        e(View view, BaseDialog baseDialog, FrameLayout frameLayout) {
            this.f74090b = view;
            this.f74091c = baseDialog;
            this.f74092d = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f74090b.getParent() != this.f74091c.P()) {
                if (this.f74090b.getParent() != null) {
                    ((ViewGroup) this.f74090b.getParent()).removeView(this.f74090b);
                }
                this.f74092d.addView(this.f74090b);
            } else {
                BaseDialog.r(((BaseDialog) this.f74090b.getTag()).n() + "已处于显示状态，请勿重复执行 show() 指令。");
            }
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f74093b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ BaseDialog f74094c;

        f(View view, BaseDialog baseDialog) {
            this.f74093b = view;
            this.f74094c = baseDialog;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f74093b.getParent() != null && (this.f74093b.getParent() instanceof ViewGroup)) {
                ((ViewGroup) this.f74093b.getParent()).removeView(this.f74093b);
            } else if (this.f74094c.P() == null) {
                return;
            } else {
                this.f74094c.P().removeView(this.f74093b);
            }
            BaseDialog.z0();
        }
    }

    class g implements LifecycleEventObserver {
        g() {
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            if (event == Lifecycle.Event.ON_DESTROY) {
                BaseDialog.w0(BaseDialog.this.N());
            }
        }
    }

    class h implements LifecycleEventObserver {
        h() {
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            if (event == Lifecycle.Event.ON_STOP || event == Lifecycle.Event.ON_DESTROY) {
                BaseDialog.this.h();
                lifecycleOwner.getLifecycle().removeObserver(this);
            }
        }
    }

    static /* synthetic */ class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f74097a;

        static {
            int[] iArr = new int[DialogX.IMPL_MODE.values().length];
            f74097a = iArr;
            try {
                iArr[DialogX.IMPL_MODE.WINDOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f74097a[DialogX.IMPL_MODE.DIALOG_FRAGMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f74097a[DialogX.IMPL_MODE.FLOATING_ACTIVITY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public BaseDialog() {
        this.f74067n = true;
        this.f74070q = true;
        this.f74076w = -1L;
        this.f74077x = -1L;
        this.f74070q = DialogX.f73613y;
        this.f74076w = DialogX.C;
        this.f74077x = DialogX.D;
        this.f74067n = DialogX.T;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void C0(Runnable runnable) {
        if (!DialogX.F || (Y() != null && Thread.currentThread() == Y())) {
            runnable.run();
        } else {
            D0(runnable, true);
        }
    }

    protected static void D0(Runnable runnable, boolean z10) {
        I().post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void E0(Runnable runnable, long j10) {
        if (j10 < 0) {
            return;
        }
        if (!DialogX.F) {
            runnable.run();
        }
        I().postDelayed(runnable, j10);
    }

    private static Handler I() {
        WeakReference<Handler> weakReference = L;
        if (weakReference != null && weakReference.get() != null) {
            return L.get();
        }
        WeakReference<Handler> weakReference2 = new WeakReference<>(new Handler(Looper.getMainLooper()));
        L = weakReference2;
        return weakReference2.get();
    }

    private void K0(Activity activity) {
        this.f74055b = new WeakReference<>(activity);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void N0(Activity activity, View view) {
        if (activity == null || view == null) {
            return;
        }
        WeakReference<Activity> weakReference = H;
        if (weakReference == null || weakReference.get() == null || com.kongzue.dialogx.impl.a.b() == null) {
            b0(activity.getApplicationContext());
        }
        BaseDialog baseDialog = (BaseDialog) view.getTag();
        if (baseDialog != null) {
            baseDialog.K0(activity);
            if (baseDialog.C() != null) {
                baseDialog.C().setVisibility(0);
            }
            if (baseDialog.f74071r) {
                r(((BaseDialog) view.getTag()).n() + "已处于显示状态，请勿重复执行 show() 指令。");
                return;
            }
            if (activity.isDestroyed()) {
                r(((BaseDialog) view.getTag()).n() + ".show ERROR: activity is Destroyed.");
                return;
            }
            if (baseDialog.u0(baseDialog)) {
                return;
            }
            baseDialog.f74058e = new WeakReference<>(view);
            n0(baseDialog + ".show on " + activity);
            d(baseDialog);
            int i10 = i.f74097a[baseDialog.f74060g.ordinal()];
            if (i10 == 1) {
                com.kongzue.dialogx.util.p.c(activity, view, !(baseDialog instanceof o));
                return;
            }
            if (i10 == 2) {
                com.kongzue.dialogx.impl.c cVar = new com.kongzue.dialogx.impl.c(baseDialog, view);
                cVar.show(U(activity), "DialogX");
                baseDialog.f74059f = new WeakReference<>(cVar);
                return;
            }
            if (i10 != 3) {
                FrameLayout frameLayoutZ = z(activity);
                if (frameLayoutZ == null) {
                    return;
                }
                C0(new e(view, baseDialog, frameLayoutZ));
                return;
            }
            if (J == null) {
                J = new HashMap();
            }
            J.put(baseDialog.n(), baseDialog.new d(view));
            DialogXFloatingWindowActivity dialogXFloatingWindowActivity = DialogXFloatingWindowActivity.getDialogXFloatingWindowActivity();
            if (dialogXFloatingWindowActivity != null && dialogXFloatingWindowActivity.isSameFrom(activity.hashCode())) {
                dialogXFloatingWindowActivity.showDialogX(baseDialog.n());
                return;
            }
            Intent intent = new Intent(activity, (Class<?>) DialogXFloatingWindowActivity.class);
            intent.putExtra("dialogXKey", baseDialog.n());
            intent.putExtra("from", activity.hashCode());
            intent.putExtra("fromActivityUiStatus", z(activity) == null ? 0 : z(activity).getSystemUiVisibility());
            activity.startActivity(intent);
            if (Integer.valueOf(Build.VERSION.SDK_INT).intValue() > 5) {
                activity.overridePendingTransition(0, 0);
            }
        }
    }

    private static Context O() {
        Activity activityX = X();
        if (activityX != null) {
            return activityX;
        }
        Context contextU = u();
        if (contextU != null) {
            return contextU;
        }
        r("DialogX 未初始化(E2)。\n请检查是否在启动对话框前进行初始化操作，使用以下代码进行初始化：\nDialogX.init(context);\n\n另外建议您前往查看 DialogX 的文档进行使用：https://github.com/kongzue/DialogX");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void O0(View view) {
        BaseDialog baseDialog;
        if (view == null || (baseDialog = (BaseDialog) view.getTag()) == null) {
            return;
        }
        if (baseDialog.f74071r) {
            if (baseDialog.C() != null) {
                baseDialog.C().setVisibility(0);
                return;
            }
            r(((BaseDialog) view.getTag()).n() + "已处于显示状态，请勿重复执行 show() 指令。");
            return;
        }
        if (baseDialog.u0(baseDialog)) {
            return;
        }
        baseDialog.f74058e = new WeakReference<>(view);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(baseDialog.n());
        sb2.append(".show on ");
        sb2.append(baseDialog.e0() ? baseDialog.N() : "window");
        n0(sb2.toString());
        d(baseDialog);
        int i10 = i.f74097a[baseDialog.f74060g.ordinal()];
        if (i10 == 1) {
            com.kongzue.dialogx.util.p.c(baseDialog.N(), view, !(baseDialog instanceof o));
            return;
        }
        if (i10 == 2) {
            com.kongzue.dialogx.impl.c cVar = new com.kongzue.dialogx.impl.c(baseDialog, view);
            cVar.show(U(baseDialog.N()), "DialogX");
            baseDialog.f74059f = new WeakReference<>(cVar);
            return;
        }
        if (i10 != 3) {
            if (baseDialog.P() == null) {
                return;
            }
            C0(new c(view, baseDialog));
            return;
        }
        if (J == null) {
            J = new HashMap();
        }
        J.put(baseDialog.n(), baseDialog.new b(view));
        DialogXFloatingWindowActivity dialogXFloatingWindowActivity = DialogXFloatingWindowActivity.getDialogXFloatingWindowActivity();
        if (dialogXFloatingWindowActivity != null && dialogXFloatingWindowActivity.isSameFrom(baseDialog.N().hashCode())) {
            dialogXFloatingWindowActivity.showDialogX(baseDialog.n());
            return;
        }
        Intent intent = new Intent(O(), (Class<?>) DialogXFloatingWindowActivity.class);
        if (baseDialog.N() == null) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        intent.putExtra("dialogXKey", baseDialog.n());
        intent.putExtra("fromActivityUiStatus", (baseDialog.N() == null || z(baseDialog.N()) == null) ? 0 : z(baseDialog.N()).getSystemUiVisibility());
        intent.putExtra("from", O().hashCode());
        O().startActivity(intent);
        if (Integer.valueOf(Build.VERSION.SDK_INT).intValue() <= 5 || baseDialog.N() == null) {
            return;
        }
        baseDialog.N().overridePendingTransition(0, 0);
    }

    public static List<BaseDialog> Q() {
        return I == null ? new ArrayList() : new CopyOnWriteArrayList(I);
    }

    public static List<BaseDialog> R(Activity activity) {
        ArrayList arrayList = new ArrayList();
        for (BaseDialog baseDialog : I) {
            if (baseDialog != null && baseDialog.f74071r && baseDialog.N() == activity) {
                arrayList.add(baseDialog);
            }
        }
        return arrayList;
    }

    public static void S0(TextView textView, TextInfo textInfo) {
        if (textInfo == null || textView == null) {
            return;
        }
        if (textInfo.b() > 0) {
            textView.setTextSize(textInfo.c(), textInfo.b());
        }
        if (textInfo.a() != 1) {
            textView.setTextColor(textInfo.a());
        }
        if (textInfo.e() != -1) {
            textView.setGravity(textInfo.e());
        }
        if (textInfo.i()) {
            textView.setEllipsize(TextUtils.TruncateAt.END);
        } else {
            textView.setEllipsize(null);
        }
        if (textInfo.f() != -1) {
            textView.setMaxLines(textInfo.f());
        } else {
            textView.setMaxLines(Integer.MAX_VALUE);
        }
        if (textInfo.g() != null) {
            textView.setTypeface(textInfo.g());
        }
        textView.getPaint().setFakeBoldText(textInfo.h());
    }

    private static FragmentManager U(Activity activity) {
        if (activity instanceof AppCompatActivity) {
            return ((AppCompatActivity) activity).getSupportFragmentManager();
        }
        return null;
    }

    public static Activity X() {
        WeakReference<Activity> weakReference = H;
        if (weakReference != null && weakReference.get() != null) {
            return H.get();
        }
        b0(null);
        WeakReference<Activity> weakReference2 = H;
        if (weakReference2 != null && weakReference2.get() != null) {
            return H.get();
        }
        Activity activityD = com.kongzue.dialogx.impl.a.d();
        b0(activityD);
        return activityD;
    }

    protected static Thread Y() {
        if (G == null) {
            G = Looper.getMainLooper().getThread();
        }
        return G;
    }

    public static void b0(Context context) {
        if (context == null) {
            context = com.kongzue.dialogx.impl.a.d();
        }
        if (context instanceof Activity) {
            c0((Activity) context);
        }
        com.kongzue.dialogx.impl.a.e(context, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c0(Activity activity) {
        if (com.kongzue.dialogx.impl.a.f(activity)) {
            return;
        }
        try {
            G = Looper.getMainLooper().getThread();
            H = new WeakReference<>(activity);
        } catch (Exception e10) {
            e10.printStackTrace();
            r("DialogX.init: 初始化异常，找不到Activity的根布局");
        }
    }

    private static void d(BaseDialog baseDialog) {
        if (I == null) {
            I = new CopyOnWriteArrayList();
        }
        I.add(baseDialog);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected static boolean d0(Activity activity) {
        return activity == 0 || activity.isFinishing() || activity.isDestroyed() || ((activity instanceof LifecycleOwner) && ((LifecycleOwner) activity).getLifecycle().getState() == Lifecycle.State.DESTROYED);
    }

    private boolean e0() {
        return A() == DialogX.IMPL_MODE.VIEW || A() == DialogX.IMPL_MODE.FLOATING_ACTIVITY || A() == DialogX.IMPL_MODE.DIALOG_FRAGMENT;
    }

    @Deprecated
    public static Context getContext() {
        return O();
    }

    public static void j() {
        if (I != null) {
            for (BaseDialog baseDialog : new CopyOnWriteArrayList(I)) {
                if (baseDialog.m0()) {
                    baseDialog.Q0();
                }
                baseDialog.i();
                I.remove(baseDialog);
            }
        }
    }

    public static boolean j0(CharSequence charSequence) {
        String strValueOf = String.valueOf(charSequence);
        return charSequence == null || strValueOf.trim().isEmpty() || "null".equals(strValueOf) || "(null)".equals(strValueOf);
    }

    public static void k() {
        WeakReference<Activity> weakReference = H;
        if (weakReference != null) {
            weakReference.clear();
        }
        H = null;
        System.gc();
    }

    public static boolean k0(String str) {
        return str == null || str.trim().isEmpty() || "null".equals(str) || "(null)".equals(str);
    }

    protected static void n0(Object obj) {
        if (DialogX.f73590b) {
            obj.toString();
        }
    }

    public static void o0(Activity activity) {
        if (I != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(I);
            for (int size = copyOnWriteArrayList.size() - 1; size >= 0; size--) {
                BaseDialog baseDialog = (BaseDialog) copyOnWriteArrayList.get(size);
                if (baseDialog.N() == activity && baseDialog.f74071r && baseDialog.C() != null) {
                    View viewFindViewById = baseDialog.C().findViewById(R.id.box_root);
                    if (viewFindViewById instanceof DialogXBaseRelativeLayout) {
                        DialogXBaseRelativeLayout dialogXBaseRelativeLayout = (DialogXBaseRelativeLayout) viewFindViewById;
                        if (dialogXBaseRelativeLayout.f()) {
                            dialogXBaseRelativeLayout.i();
                            return;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void p(View view) {
        if (view == null) {
            return;
        }
        BaseDialog baseDialog = (BaseDialog) view.getTag();
        n0(baseDialog.n() + ".dismiss");
        y0(baseDialog);
        WeakReference<View> weakReference = baseDialog.f74058e;
        if (weakReference != null) {
            weakReference.clear();
        }
        baseDialog.p0();
        int i10 = i.f74097a[baseDialog.f74060g.ordinal()];
        if (i10 == 1) {
            com.kongzue.dialogx.util.p.b(view);
        } else if (i10 == 2) {
            WeakReference<com.kongzue.dialogx.impl.c> weakReference2 = baseDialog.f74059f;
            if (weakReference2 != null && weakReference2.get() != null) {
                baseDialog.f74059f.get().dismiss();
            }
        } else if (i10 != 3) {
            D0(new f(view, baseDialog), true);
        } else {
            WeakReference<DialogXFloatingWindowActivity> weakReference3 = baseDialog.f74061h;
            if (weakReference3 != null && weakReference3.get() != null) {
                FrameLayout frameLayoutZ = z(baseDialog.f74061h.get());
                if (frameLayoutZ != null) {
                    frameLayoutZ.removeView(view);
                }
                baseDialog.f74061h.get().finish(baseDialog.n());
                z0();
            }
        }
        if (baseDialog.B() != null) {
            if (baseDialog.B().d()) {
                baseDialog.l();
            } else {
                baseDialog.B().f();
            }
        }
    }

    protected static void r(Object obj) {
        if (DialogX.f73590b) {
            obj.toString();
        }
    }

    public static com.kongzue.dialogx.util.a t(String str) {
        if (str == null) {
            return null;
        }
        return J.get(str);
    }

    public static Context u() {
        return com.kongzue.dialogx.impl.a.b();
    }

    public static WindowInsets v0() {
        return K;
    }

    public static void w0(Activity activity) {
        WeakReference<View> weakReference;
        WeakReference<com.kongzue.dialogx.impl.c> weakReference2;
        int i10 = i.f74097a[DialogX.f73594f.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3 && I != null) {
                    for (BaseDialog baseDialog : new CopyOnWriteArrayList(I)) {
                        if (baseDialog.N() == activity) {
                            baseDialog.i();
                            I.remove(baseDialog);
                            if (baseDialog instanceof WaitDialog) {
                                ((WaitDialog) baseDialog).b2();
                            }
                        }
                    }
                }
            } else if (I != null) {
                for (BaseDialog baseDialog2 : new CopyOnWriteArrayList(I)) {
                    if (baseDialog2.N() == activity && (weakReference2 = baseDialog2.f74059f) != null && weakReference2.get() != null) {
                        baseDialog2.f74059f.get().dismiss();
                        if (baseDialog2 instanceof WaitDialog) {
                            ((WaitDialog) baseDialog2).b2();
                        }
                        I.remove(baseDialog2);
                    }
                }
            }
        } else if (I != null) {
            for (BaseDialog baseDialog3 : new CopyOnWriteArrayList(I)) {
                if (baseDialog3.N() == activity && (weakReference = baseDialog3.f74058e) != null) {
                    com.kongzue.dialogx.util.p.b(weakReference.get());
                    if (baseDialog3 instanceof WaitDialog) {
                        ((WaitDialog) baseDialog3).b2();
                    }
                    I.remove(baseDialog3);
                }
            }
        }
        if (activity == X()) {
            k();
        }
    }

    private static void y0(BaseDialog baseDialog) {
        List<BaseDialog> list = I;
        if (list != null) {
            list.remove(baseDialog);
        }
    }

    protected static FrameLayout z(Activity activity) {
        if (activity == null || activity.getWindow() == null || !(activity.getWindow().getDecorView() instanceof FrameLayout)) {
            return null;
        }
        return (FrameLayout) activity.getWindow().getDecorView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void z0() {
        if (I != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(I);
            for (int size = copyOnWriteArrayList.size() - 1; size >= 0; size--) {
                BaseDialog baseDialog = (BaseDialog) copyOnWriteArrayList.get(size);
                if (baseDialog.N() == X() && baseDialog.f74071r && baseDialog.C() != null) {
                    View viewFindViewById = baseDialog.C().findViewById(R.id.box_root);
                    if ((viewFindViewById instanceof DialogXBaseRelativeLayout) && ((DialogXBaseRelativeLayout) viewFindViewById).f()) {
                        viewFindViewById.requestFocus();
                        return;
                    }
                }
            }
        }
    }

    public DialogX.IMPL_MODE A() {
        return this.f74060g;
    }

    public abstract void A0();

    @Nullable
    public com.kongzue.dialogx.util.d B() {
        return this.f74062i;
    }

    public boolean B0(int i10) {
        com.kongzue.dialogx.interfaces.i iVar = this.f74069p.get(Integer.valueOf(i10));
        if (iVar == null) {
            return false;
        }
        iVar.run(this);
        return true;
    }

    public View C() {
        WeakReference<View> weakReference = this.f74058e;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    protected Float D(Float f10) {
        if (f10.floatValue() <= 0.0f) {
            return null;
        }
        return f10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Float E(Float f10, Float f11) {
        return f10.floatValue() <= 0.0f ? f11 : f10;
    }

    protected int F() {
        if (N() != null && z(N()) != null) {
            return z(N()).getChildCount();
        }
        List<BaseDialog> list = I;
        if (list == null) {
            return 1;
        }
        return list.size();
    }

    public BaseDialog F0(String str, Object obj) {
        if (this.f74064k == null) {
            this.f74064k = new HashMap();
        }
        this.f74064k.put(str, obj);
        return this;
    }

    protected Integer G(Integer num) {
        if (num.intValue() <= 0) {
            return null;
        }
        return num;
    }

    public void G0(@NonNull com.kongzue.dialogx.util.d dVar) {
        this.f74062i = dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Integer H(Integer num, Integer num2) {
        return num.intValue() <= 0 ? num2 : num;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void H0(View view) {
        this.f74058e = new WeakReference<>(view);
    }

    public BaseDialog I0(boolean z10) {
        this.f74067n = z10;
        x0();
        return this;
    }

    public int J() {
        int i10 = this.f74079z;
        return i10 == 0 ? DialogX.f73596h : i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void J0(Lifecycle.State state) {
        LifecycleRegistry lifecycleRegistry = this.f74063j;
        if (lifecycleRegistry == null || state == null) {
            return;
        }
        try {
            lifecycleRegistry.setCurrentState(state);
        } catch (Exception unused) {
        }
    }

    public int K() {
        int i10 = this.f74078y;
        return i10 == 0 ? DialogX.f73595g : i10;
    }

    public int L() {
        int i10 = this.B;
        return i10 == 0 ? DialogX.f73598j : i10;
    }

    public BaseDialog L0(int i10) {
        this.f74068o = i10;
        return this;
    }

    public int M() {
        int i10 = this.A;
        return i10 == 0 ? DialogX.f73597i : i10;
    }

    public abstract <D extends BaseDialog> D M0();

    public Activity N() {
        WeakReference<Activity> weakReference = this.f74055b;
        if (weakReference == null || weakReference.get() == null) {
            K0(X());
        }
        return this.f74055b.get();
    }

    @Nullable
    public FrameLayout P() {
        FrameLayout frameLayoutZ;
        Activity activityN = N();
        if (e0()) {
            if (activityN == null) {
                activityN = X();
                if (activityN == null) {
                    r("DialogX 错误：在 getRootFrameLayout() 时无法获取绑定的 activity，请确认是否正确初始化：\nDialogX.init(context);\n\n或者使用 .show(activity) 启动对话框\n另外建议您前往查看 DialogX 的文档进行使用：https://github.com/kongzue/DialogX");
                    return null;
                }
                K0(activityN);
            }
            frameLayoutZ = z(activityN);
        } else {
            frameLayoutZ = (FrameLayout) C().getParent();
        }
        if (frameLayoutZ != null) {
            WeakReference<FrameLayout> weakReference = new WeakReference<>(frameLayoutZ);
            this.f74056c = weakReference;
            return weakReference.get();
        }
        r("DialogX 错误：在 getRootFrameLayout() 时无法获 activity(" + activityN + ") 的 decorView，请检查该 activity 是否正常显示且可以使 DialogX 基于其显示。\n若该 activity 不可用，可通过以下代码配置豁免 DialogX 对话框绑定至该 activity，例如：\nDialogX.unsupportedActivitiesPackageNames = new String[]{\n        \"com.bytedance.sdk.openadsdk.stub.activity\",\n        \"com.mobile.auth.gatewayauth\",\n        \"com.google.android.gms.ads\"\n};\n\n另外建议您前往查看 DialogX 的文档进行使用：https://github.com/kongzue/DialogX");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void P0(TextView textView, CharSequence charSequence) {
        if (textView == null) {
            return;
        }
        if (j0(charSequence)) {
            textView.setVisibility(8);
            textView.setText("");
        } else {
            textView.setVisibility(0);
            textView.setText(charSequence);
        }
    }

    protected abstract void Q0();

    public void R0(View view, int i10) {
        if (view == null) {
            return;
        }
        view.setBackgroundTintList(ColorStateList.valueOf(i10));
    }

    protected String S(int i10) {
        if (u() != null) {
            return i10 == 0 ? "" : getResources().getString(i10);
        }
        r("DialogX 未初始化(E6)。\n请检查是否在启动对话框前进行初始化操作，使用以下代码进行初始化：\nDialogX.init(context);\n\n另外建议您前往查看 DialogX 的文档进行使用：https://github.com/kongzue/DialogX");
        return null;
    }

    public DialogXStyle T() {
        return this.f74072s;
    }

    public DialogX.THEME V() {
        return this.f74073t;
    }

    public int W() {
        return this.f74068o;
    }

    protected void Z(View view) {
        if (view != null) {
            if (DialogX.G && this.f74057d == -1) {
                view.performHapticFeedback(3);
            } else if (this.f74057d == 1) {
                view.performHapticFeedback(3);
            }
        }
    }

    protected void a0(EditText editText, boolean z10) {
        if (N() == null) {
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) N().getSystemService("input_method");
        if (z10) {
            inputMethodManager.showSoftInput(editText, 0);
        } else {
            inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
        }
    }

    protected void e() {
        View currentFocus;
        this.E = true;
        this.D = false;
        K0(X());
        if (N() == null && e0()) {
            b0(null);
            if (N() == null) {
                r("DialogX 未初始化(E5)。\n请检查是否在启动对话框前进行初始化操作，使用以下代码进行初始化：\nDialogX.init(context);\n\n另外建议您前往查看 DialogX 的文档进行使用：https://github.com/kongzue/DialogX");
                return;
            }
        }
        if (this.f74060g != DialogX.IMPL_MODE.VIEW && (N() instanceof LifecycleOwner)) {
            ((LifecycleOwner) N()).getLifecycle().addObserver(new g());
        }
        if ((this instanceof o) || (currentFocus = N().getCurrentFocus()) == null) {
            return;
        }
        ((InputMethodManager) N().getSystemService("input_method")).hideSoftInputFromWindow(currentFocus.getWindowToken(), 2);
    }

    protected void f(LifecycleOwner lifecycleOwner) {
        if (lifecycleOwner == null) {
            return;
        }
        lifecycleOwner.getLifecycle().addObserver(new h());
    }

    public abstract boolean f0();

    protected void g(DialogXFloatingWindowActivity dialogXFloatingWindowActivity) {
        this.f74061h = new WeakReference<>(dialogXFloatingWindowActivity);
    }

    public boolean g0() {
        return this.f74067n;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NonNull
    public Lifecycle getLifecycle() {
        return this.f74063j;
    }

    public Resources getResources() {
        if (N() != null) {
            return N().getResources();
        }
        return u() == null ? Resources.getSystem() : u().getResources();
    }

    public abstract void h();

    public boolean h0() {
        return this.F;
    }

    protected void i() {
        WeakReference<Activity> weakReference = this.f74055b;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f74058e = null;
        this.f74055b = null;
    }

    public boolean i0() {
        DialogX.THEME theme = this.f74073t;
        if (theme != DialogX.THEME.AUTO) {
            return theme == DialogX.THEME.LIGHT;
        }
        if (u() == null) {
            return this.f74073t == DialogX.THEME.LIGHT;
        }
        return (getResources().getConfiguration().uiMode & 48) == 16;
    }

    public void l() {
        com.kongzue.dialogx.util.d dVar = this.f74062i;
        if (dVar != null) {
            dVar.b();
        }
        this.f74062i = null;
    }

    public boolean l0() {
        return this.E;
    }

    public View m(int i10) {
        if (!e0()) {
            return LayoutInflater.from(u()).inflate(i10, (ViewGroup) null);
        }
        if (N() != null) {
            return LayoutInflater.from(N()).inflate(i10, (ViewGroup) null);
        }
        r("DialogX 未初始化(E3)。\n请检查是否在启动对话框前进行初始化操作，使用以下代码进行初始化：\nDialogX.init(context);\n\n另外建议您前往查看 DialogX 的文档进行使用：https://github.com/kongzue/DialogX");
        return null;
    }

    public boolean m0() {
        return this.f74071r;
    }

    public abstract String n();

    public int o(float f10) {
        return (int) ((f10 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    protected void p0() {
        com.kongzue.dialogx.interfaces.i iVar = this.f74066m;
        if (iVar != null) {
            iVar.run(this);
        }
    }

    public boolean q(MotionEvent motionEvent) {
        if (C() != null) {
            return C().dispatchTouchEvent(motionEvent);
        }
        WeakReference<Activity> weakReference = this.f74055b;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        return this.f74055b.get().dispatchTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void q0() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void r0() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<View> s(View view) {
        ArrayList arrayList = new ArrayList();
        if (view instanceof com.kongzue.dialogx.interfaces.b) {
            arrayList.add(view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                List<View> listS = s(viewGroup.getChildAt(i10));
                if (listS != null) {
                    arrayList.addAll(listS);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void s0() {
        com.kongzue.dialogx.interfaces.i iVar = this.f74065l;
        if (iVar != null) {
            iVar.run(this);
        }
    }

    public boolean t0(BaseDialog baseDialog) {
        return false;
    }

    public boolean u0(BaseDialog baseDialog) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int v(int i10) {
        if (u() != null) {
            return getResources().getColor(i10);
        }
        r("DialogX 未初始化(E7)。\n请检查是否在启动对话框前进行初始化操作，使用以下代码进行初始化：\nDialogX.init(context);\n\n另外建议您前往查看 DialogX 的文档进行使用：https://github.com/kongzue/DialogX");
        return -16777216;
    }

    protected Integer w(Integer num) {
        if (num == null) {
            return null;
        }
        return Integer.valueOf(v(num.intValue()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Integer x(Integer num, Integer num2) {
        return Integer.valueOf(v(num == null ? num2.intValue() : num.intValue()));
    }

    protected void x0() {
    }

    public <T> T y(String str) {
        Map<String, Object> map = this.f74064k;
        if (map == null) {
            return null;
        }
        return (T) map.get(str);
    }
}
