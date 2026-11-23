package com.kingja.loadsir.callback;

import android.R;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.StyleRes;

/* JADX INFO: loaded from: classes3.dex */
public class HintCallback extends Callback {
    private int imgResId;
    private String subTitle;
    private int subTitleStyleRes;
    private String title;
    private int titleStyleRes;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f73560a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f73561b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f73562c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f73563d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f73564e = -1;

        public HintCallback f() {
            return new HintCallback(this);
        }

        public a g(@DrawableRes int i10) {
            this.f73562c = i10;
            return this;
        }

        public a h(String str) {
            return i(str, -1);
        }

        public a i(String str, @StyleRes int i10) {
            this.f73561b = str;
            this.f73563d = i10;
            return this;
        }

        public a j(String str) {
            return k(str, -1);
        }

        public a k(String str, @StyleRes int i10) {
            this.f73560a = str;
            this.f73564e = i10;
            return this;
        }
    }

    public HintCallback(a aVar) {
        this.title = aVar.f73560a;
        this.subTitle = aVar.f73561b;
        this.imgResId = aVar.f73562c;
        this.subTitleStyleRes = aVar.f73563d;
        this.titleStyleRes = aVar.f73564e;
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
        if (this.imgResId != -1) {
            ImageView imageView = new ImageView(context);
            imageView.setBackgroundResource(this.imgResId);
            linearLayout.addView(imageView, layoutParams);
        }
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
            textView2.setTextAppearance(context, R.style.TextAppearance.Small);
        } else {
            textView2.setTextAppearance(context, i11);
        }
        linearLayout.addView(textView2, layoutParams);
    }
}
