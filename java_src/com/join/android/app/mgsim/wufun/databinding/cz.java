package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class cz implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f37158c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37159d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37160e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37161f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f37162g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f37163h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f37164i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f37165j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f37166k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f37167l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f37168m;

    private cz(@NonNull LinearLayout rootView, @NonNull TextView tvLabel1, @NonNull TextView tvLabel2, @NonNull TextView tvLabel3, @NonNull TextView tvLabel4, @NonNull TextView tvLabel5, @NonNull TextView tvTitle, @NonNull TextView tvValue1, @NonNull TextView tvValue2, @NonNull TextView tvValue3, @NonNull TextView tvValue4, @NonNull TextView tvValue5) {
        this.f37157b = rootView;
        this.f37158c = tvLabel1;
        this.f37159d = tvLabel2;
        this.f37160e = tvLabel3;
        this.f37161f = tvLabel4;
        this.f37162g = tvLabel5;
        this.f37163h = tvTitle;
        this.f37164i = tvValue1;
        this.f37165j = tvValue2;
        this.f37166k = tvValue3;
        this.f37167l = tvValue4;
        this.f37168m = tvValue5;
    }

    @NonNull
    public static cz bind(@NonNull View rootView) {
        int i10 = R.id.tv_label1;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label1);
        if (textView != null) {
            i10 = R.id.tv_label2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label2);
            if (textView2 != null) {
                i10 = R.id.tv_label3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label3);
                if (textView3 != null) {
                    i10 = R.id.tv_label4;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label4);
                    if (textView4 != null) {
                        i10 = R.id.tv_label5;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label5);
                        if (textView5 != null) {
                            i10 = R.id.tv_title;
                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                            if (textView6 != null) {
                                i10 = R.id.tv_value1;
                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_value1);
                                if (textView7 != null) {
                                    i10 = R.id.tv_value2;
                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_value2);
                                    if (textView8 != null) {
                                        i10 = R.id.tv_value3;
                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_value3);
                                        if (textView9 != null) {
                                            i10 = R.id.tv_value4;
                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_value4);
                                            if (textView10 != null) {
                                                i10 = R.id.tv_value5;
                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_value5);
                                                if (textView11 != null) {
                                                    return new cz((LinearLayout) rootView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cz inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37157b;
    }

    @NonNull
    public static cz inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_detail_game_info, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
