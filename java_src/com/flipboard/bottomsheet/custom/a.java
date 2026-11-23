package com.flipboard.bottomsheet.custom;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Outline;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: classes9.dex */
class a {

    /* JADX INFO: renamed from: com.flipboard.bottomsheet.custom.a$a, reason: collision with other inner class name */
    @TargetApi(21)
    static class C0590a extends ViewOutlineProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f29157a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f29158b;

        C0590a(int width, int height) {
            this.f29157a = width;
            this.f29158b = height;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRect(0, 0, this.f29157a, this.f29158b);
        }
    }

    private a() {
        throw new AssertionError("No Instances");
    }

    static int a(Context context, float dp) {
        return Math.round(TypedValue.applyDimension(1, dp, context.getResources().getDisplayMetrics()));
    }
}
