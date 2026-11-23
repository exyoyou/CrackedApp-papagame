package r7;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: r7.a$a, reason: collision with other inner class name */
    public static class ViewTreeObserverOnGlobalLayoutListenerC1241a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final String f96787f = "ListenerHandler";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private View f96788b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f96789c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f96790d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private InterfaceC1242a f96791e;

        /* JADX INFO: renamed from: r7.a$a$a, reason: collision with other inner class name */
        public interface InterfaceC1242a {
            void a(boolean z10, int i10);
        }

        public ViewTreeObserverOnGlobalLayoutListenerC1241a(Activity activity) {
            if (activity == null) {
                return;
            }
            View viewC = c(activity);
            this.f96788b = viewC;
            if (viewC != null) {
                a();
            }
        }

        private void a() {
            this.f96788b.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        private View c(Activity activity) {
            return activity.findViewById(R.id.content);
        }

        public void b() {
            View view = this.f96788b;
            if (view != null) {
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        }

        public void d(InterfaceC1242a interfaceC1242a) {
            this.f96791e = interfaceC1242a;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x001c  */
        /* JADX WARN: Code duplicated, block: B:14:0x0020  */
        /* JADX WARN: Code duplicated, block: B:15:0x0022  */
        /* JADX WARN: Code duplicated, block: B:18:0x0028  */
        /* JADX WARN: Code duplicated, block: B:20:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:21:? A[RETURN, SYNTHETIC] */
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            boolean z10;
            int i10;
            InterfaceC1242a interfaceC1242a;
            int height = this.f96788b.getHeight();
            if (height == 0) {
                return;
            }
            int i11 = this.f96790d;
            boolean z11 = true;
            int i12 = 0;
            if (i11 != 0) {
                if (i11 != height) {
                    this.f96790d = height;
                    z10 = true;
                }
                if (z10) {
                    i10 = this.f96789c;
                    if (i10 == height) {
                        z11 = false;
                    } else {
                        i12 = i10 - height;
                    }
                    interfaceC1242a = this.f96791e;
                    if (interfaceC1242a != null) {
                        interfaceC1242a.a(z11, i12);
                    }
                }
            }
            this.f96790d = height;
            this.f96789c = height;
            z10 = false;
            if (z10) {
                i10 = this.f96789c;
                if (i10 == height) {
                    z11 = false;
                } else {
                    i12 = i10 - height;
                }
                interfaceC1242a = this.f96791e;
                if (interfaceC1242a != null) {
                    interfaceC1242a.a(z11, i12);
                }
            }
        }
    }

    public static void a(Context context, IBinder iBinder) {
        if (context == null || iBinder == null) {
            return;
        }
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(iBinder, 0);
    }

    public static void b(View view) {
        if (view == null) {
            return;
        }
        a(view.getContext(), view.getWindowToken());
    }

    public static void c(View view) {
        if (view == null) {
            return;
        }
        view.requestFocus();
        ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 2);
    }
}
