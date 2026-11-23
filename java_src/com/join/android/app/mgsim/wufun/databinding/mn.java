package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.WrapContentGridView;

/* JADX INFO: loaded from: classes4.dex */
public final class mn implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41979c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f41980d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41981e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final WrapContentGridView f41982f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f41983g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41984h;

    private mn(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView classicHjAdView, @NonNull ImageView imageView13, @NonNull LinearLayout noGame, @NonNull WrapContentGridView noGameList, @NonNull TextView textView42, @NonNull TextView textView45) {
        this.f41978b = rootView;
        this.f41979c = classicHjAdView;
        this.f41980d = imageView13;
        this.f41981e = noGame;
        this.f41982f = noGameList;
        this.f41983g = textView42;
        this.f41984h = textView45;
    }

    @NonNull
    public static mn bind(@NonNull View rootView) {
        int i10 = R.id.classicHjAdView;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.classicHjAdView);
        if (simpleDraweeView != null) {
            i10 = R.id.imageView13;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView13);
            if (imageView != null) {
                LinearLayout linearLayout = (LinearLayout) rootView;
                i10 = R.id.noGameList;
                WrapContentGridView wrapContentGridView = (WrapContentGridView) ViewBindings.findChildViewById(rootView, R.id.noGameList);
                if (wrapContentGridView != null) {
                    i10 = R.id.textView42;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView42);
                    if (textView != null) {
                        i10 = R.id.textView45;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView45);
                        if (textView2 != null) {
                            return new mn(linearLayout, simpleDraweeView, imageView, linearLayout, wrapContentGridView, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mn inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41978b;
    }

    @NonNull
    public static mn inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_my_game_no_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
