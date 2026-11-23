package com.kingja.loadsir.callback;

import android.R;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.StyleRes;

/* JADX INFO: loaded from: classes3.dex */
public class ProgressCallback extends Callback {
    private String subTitle;
    private int subTitleStyleRes;
    private String title;
    private int titleStyleRes;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f73565a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f73566b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f73567c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f73568d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f73569e;

        public ProgressCallback f() {
            return new ProgressCallback(this);
        }

        public b g(boolean z10) {
            this.f73569e = z10;
            return this;
        }

        public b h(String str) {
            return i(str, -1);
        }

        public b i(String str, @StyleRes int i10) {
            this.f73566b = str;
            this.f73567c = i10;
            return this;
        }

        public b j(String str) {
            return k(str, -1);
        }

        public b k(String str, @StyleRes int i10) {
            this.f73565a = str;
            this.f73568d = i10;
            return this;
        }
    }

    @Override // com.kingja.loadsir.callback.Callback
    protected View onBuildView(Context context) {
        return new LinearLayout(context);
    }

    @Override // com.kingja.loadsir.callback.Callback
    protected int onCreateView() {
        return 0;
    }

    @Override // com.kingja.loadsir.callback.Callback
    protected void onViewCreate(Context context, View view) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        LinearLayout linearLayout = (LinearLayout) view;
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.addView(new ProgressBar(context), layoutParams);
        if (!TextUtils.isEmpty(this.title)) {
            TextView textView = new TextView(context);
            textView.setText(this.title);
            int i10 = this.titleStyleRes;
            if (i10 == -1) {
                textView.setTextAppearance(context, R.style.TextAppearance.Large);
            } else {
                textView.setTextAppearance(context, i10);
            }
            linearLayout.addView(textView, layoutParams);
        }
        if (TextUtils.isEmpty(this.subTitle)) {
            return;
        }
        TextView textView2 = new TextView(context);
        textView2.setText(this.subTitle);
        int i11 = this.subTitleStyleRes;
        if (i11 == -1) {
            textView2.setTextAppearance(context, R.style.TextAppearance.Medium);
        } else {
            textView2.setTextAppearance(context, i11);
        }
        linearLayout.addView(textView2, layoutParams);
    }

    private ProgressCallback(b bVar) {
        this.subTitleStyleRes = -1;
        this.titleStyleRes = -1;
        this.title = bVar.f73565a;
        this.subTitle = bVar.f73566b;
        this.subTitleStyleRes = bVar.f73567c;
        this.titleStyleRes = bVar.f73568d;
        setSuccessVisible(bVar.f73569e);
    }
}
