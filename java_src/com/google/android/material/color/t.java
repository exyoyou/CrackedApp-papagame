package com.google.android.material.color;

import android.content.Context;
import android.content.res.Configuration;
import android.view.ContextThemeWrapper;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.google.android.material.R;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(api = 30)
class t implements j {

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final t f30170a = new t();

        private b() {
        }
    }

    static j c() {
        return b.f30170a;
    }

    @Override // com.google.android.material.color.j
    @NonNull
    public Context a(Context context, Map<Integer, Integer> map) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, R.style.ThemeOverlay_Material3_PersonalizedColors);
        contextThemeWrapper.applyOverrideConfiguration(new Configuration());
        return v.a(contextThemeWrapper, map) ? contextThemeWrapper : context;
    }

    @Override // com.google.android.material.color.j
    public boolean b(Context context, Map<Integer, Integer> map) {
        if (!v.a(context, map)) {
            return false;
        }
        w.a(context, R.style.ThemeOverlay_Material3_PersonalizedColors);
        return true;
    }

    private t() {
    }
}
