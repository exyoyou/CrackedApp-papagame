package com.google.android.material.color;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class w {
    private w() {
    }

    public static void a(@NonNull Context context, @StyleRes int i10) {
        Resources.Theme themeB;
        context.getTheme().applyStyle(i10, true);
        if (!(context instanceof Activity) || (themeB = b((Activity) context)) == null) {
            return;
        }
        themeB.applyStyle(i10, true);
    }

    @Nullable
    private static Resources.Theme b(@NonNull Activity activity) {
        View viewPeekDecorView;
        Context context;
        Window window = activity.getWindow();
        if (window == null || (viewPeekDecorView = window.peekDecorView()) == null || (context = viewPeekDecorView.getContext()) == null) {
            return null;
        }
        return context.getTheme();
    }
}
