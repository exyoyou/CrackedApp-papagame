package ru.noties.scrollable;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes10.dex */
class p {
    private p() {
    }

    static void a(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }
}
