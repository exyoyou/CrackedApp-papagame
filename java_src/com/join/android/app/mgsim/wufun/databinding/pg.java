package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class pg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CardView f43346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43348d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43349e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43350f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43351g;

    private pg(@NonNull CardView rootView, @NonNull ImageView ivClose, @NonNull TextView tvBtnLeft, @NonNull TextView tvBtnRight, @NonNull TextView tvContent, @NonNull TextView tvTitle) {
        this.f43346b = rootView;
        this.f43347c = ivClose;
        this.f43348d = tvBtnLeft;
        this.f43349e = tvBtnRight;
        this.f43350f = tvContent;
        this.f43351g = tvTitle;
    }

    @NonNull
    public static pg bind(@NonNull View rootView) {
        int i10 = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
        if (imageView != null) {
            i10 = R.id.tv_btn_left;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_left);
            if (textView != null) {
                i10 = R.id.tv_btn_right;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_right);
                if (textView2 != null) {
                    i10 = R.id.tv_content;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_content);
                    if (textView3 != null) {
                        i10 = R.id.tv_title;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                        if (textView4 != null) {
                            return new pg((CardView) rootView, imageView, textView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CardView getRoot() {
        return this.f43346b;
    }

    @NonNull
    public static pg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_legend_game_bespeak, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
