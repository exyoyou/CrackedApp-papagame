package notchtools.geek.com.notchtools.helper;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import com.haima.hmcp.proto.GSSDK;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f94914a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f94915b;

    static class a implements View.OnSystemUiVisibilityChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Window f94916b;

        a(Window window) {
            this.f94916b = window;
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i10) {
            if (i10 == 0) {
                b.e(this.f94916b, false);
            }
        }
    }

    public static ViewGroup a(Window window) {
        View decorView = window.getDecorView();
        if (decorView == null) {
            return null;
        }
        return (ViewGroup) decorView.findViewWithTag(notchtools.geek.com.notchtools.b.f94901e);
    }

    public static int b(Context context) {
        int identifier;
        int i10 = f94914a;
        if (i10 != -1) {
            return i10;
        }
        if (i10 <= 0 && (identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android")) > 0) {
            f94914a = context.getResources().getDimensionPixelSize(identifier);
        }
        return f94914a;
    }

    public static ViewGroup c(Window window) {
        ViewGroup viewGroupA = a(window);
        if (viewGroupA == null) {
            return null;
        }
        if (viewGroupA.getChildCount() > 0) {
            viewGroupA.removeAllViews();
        }
        return viewGroupA;
    }

    public static void d(Window window) {
        ViewGroup viewGroupC = c(window);
        if (viewGroupC == null) {
            return;
        }
        View view = new View(window.getContext());
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, notchtools.geek.com.notchtools.b.o().f(window)));
        view.setBackgroundColor(-16777216);
        viewGroupC.addView(view);
    }

    public static void e(Window window, boolean z10) {
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.flags |= 1024;
        window.setAttributes(attributes);
        window.getDecorView().setSystemUiVisibility((!f94915b ? 1542 : GSSDK.OneInputOPData.InputOP.OP_XINPUT_THUMB_LY_VALUE) | 4096);
        if (z10) {
            window.getDecorView().setOnSystemUiVisibilityChangeListener(new a(window));
        }
    }
}
