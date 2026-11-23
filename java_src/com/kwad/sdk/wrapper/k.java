package com.kwad.sdk.wrapper;

import android.app.Application;
import android.content.Context;
import com.kwad.sdk.api.core.ResContext;
import com.kwad.sdk.api.loader.Wrapper;
import com.kwad.sdk.service.ServiceProvider;

/* JADX INFO: loaded from: classes2.dex */
final class k {
    /* JADX WARN: Multi-variable type inference failed */
    static Context bd(Context context) {
        return ((ResContext) context).getDelegatedContext();
    }

    static boolean be(Context context) {
        return context instanceof ResContext;
    }

    static Context eM(Context context) {
        Context applicationContext = unwrapContextIfNeed(context).getApplicationContext();
        if (applicationContext instanceof Application) {
            return applicationContext;
        }
        for (int i10 = 0; i10 < 10; i10++) {
            applicationContext = applicationContext.getApplicationContext();
            if (applicationContext instanceof Application) {
                return applicationContext;
            }
            if (be(applicationContext)) {
                applicationContext = bd(applicationContext);
            }
        }
        return applicationContext;
    }

    public static void onDestroy(Context context) {
        Wrapper.onDestroy(context);
    }

    static Context unwrapContextIfNeed(Context context) {
        if (be(context)) {
            context = bd(context);
        }
        if (!be(context)) {
            return context;
        }
        RuntimeException runtimeException = null;
        for (int i10 = 0; i10 < 10; i10++) {
            if (runtimeException == null) {
                RuntimeException runtimeException2 = new RuntimeException("expect normalContext --context:" + context.getClass().getName() + "--initFinish:" + ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).Fx());
                ((com.kwad.sdk.service.a.e) ServiceProvider.get(com.kwad.sdk.service.a.e.class)).gatherException(runtimeException2);
                runtimeException = runtimeException2;
            }
            context = bd(context);
            if (!be(context)) {
                return context;
            }
        }
        return context;
    }

    static Context wrapContextIfNeed(Context context) {
        return Wrapper.wrapContextIfNeed(context);
    }
}
