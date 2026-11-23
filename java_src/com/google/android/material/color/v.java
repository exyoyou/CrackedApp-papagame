package com.google.android.material.color;

import android.content.Context;
import android.content.res.loader.ResourcesLoader;
import androidx.annotation.RequiresApi;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(api = 30)
final class v {
    private v() {
    }

    static boolean a(Context context, Map<Integer, Integer> map) {
        ResourcesLoader resourcesLoaderA = h.a(context, map);
        if (resourcesLoaderA == null) {
            return false;
        }
        context.getResources().addLoaders(resourcesLoaderA);
        return true;
    }

    static boolean b(int i10) {
        return 28 <= i10 && i10 <= 31;
    }
}
