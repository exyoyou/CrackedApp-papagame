package com.facebook.common.activitylistener;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;
import java.lang.ref.WeakReference;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class b {

    private static class a extends c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final WeakReference<com.facebook.common.activitylistener.a> f26842c;

        public a(com.facebook.common.activitylistener.a activityListener) {
            this.f26842c = new WeakReference<>(activityListener);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Nullable
        private com.facebook.common.activitylistener.a b(Activity activity) {
            com.facebook.common.activitylistener.a aVar = this.f26842c.get();
            if (aVar == null) {
                i.d(Boolean.valueOf(activity instanceof d));
                ((d) activity).b(this);
            }
            return aVar;
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void a(Activity activity) {
            com.facebook.common.activitylistener.a aVarB = b(activity);
            if (aVarB != null) {
                aVarB.a(activity);
            }
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void onDestroy(Activity activity) {
            com.facebook.common.activitylistener.a aVarB = b(activity);
            if (aVarB != null) {
                aVarB.onDestroy(activity);
            }
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void onPause(Activity activity) {
            com.facebook.common.activitylistener.a aVarB = b(activity);
            if (aVarB != null) {
                aVarB.onPause(activity);
            }
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void onResume(Activity activity) {
            com.facebook.common.activitylistener.a aVarB = b(activity);
            if (aVarB != null) {
                aVarB.onResume(activity);
            }
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void onStart(Activity activity) {
            com.facebook.common.activitylistener.a aVarB = b(activity);
            if (aVarB != null) {
                aVarB.onStart(activity);
            }
        }

        @Override // com.facebook.common.activitylistener.c, com.facebook.common.activitylistener.a
        public void onStop(Activity activity) {
            com.facebook.common.activitylistener.a aVarB = b(activity);
            if (aVarB != null) {
                aVarB.onStop(activity);
            }
        }
    }

    @Nullable
    public static d a(Context context) {
        boolean z10 = context instanceof d;
        Object baseContext = context;
        if (!z10 && (context instanceof ContextWrapper)) {
            baseContext = context;
            baseContext = ((ContextWrapper) context).getBaseContext();
        }
        baseContext = context;
        if (baseContext instanceof d) {
            return (d) baseContext;
        }
        return null;
    }

    public static void b(com.facebook.common.activitylistener.a activityListener, Context context) {
        d dVarA = a(context);
        if (dVarA != null) {
            dVarA.a(new a(activityListener));
        }
    }
}
