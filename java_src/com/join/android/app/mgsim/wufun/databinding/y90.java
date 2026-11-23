package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class y90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f47630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f47631d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f47632e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47633f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47634g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f47635h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f47636i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f47637j;

    private y90(@NonNull ConstraintLayout rootView, @NonNull TextView addKey, @NonNull ImageView arr, @NonNull ImageView close, @NonNull TextView combineKey, @NonNull LinearLayout menuMain, @NonNull ConstraintLayout opEditMenu, @NonNull TextView reset, @NonNull TextView save) {
        this.f47629b = rootView;
        this.f47630c = addKey;
        this.f47631d = arr;
        this.f47632e = close;
        this.f47633f = combineKey;
        this.f47634g = menuMain;
        this.f47635h = opEditMenu;
        this.f47636i = reset;
        this.f47637j = save;
    }

    @NonNull
    public static y90 bind(@NonNull View rootView) {
        int i10 = R.id.add_key;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.add_key);
        if (textView != null) {
            i10 = R.id.arr;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arr);
            if (imageView != null) {
                i10 = R.id.close;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
                if (imageView2 != null) {
                    i10 = R.id.combine_key;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.combine_key);
                    if (textView2 != null) {
                        i10 = R.id.menu_main;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.menu_main);
                        if (linearLayout != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
                            i10 = R.id.reset;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.reset);
                            if (textView3 != null) {
                                i10 = R.id.save;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.save);
                                if (textView4 != null) {
                                    return new y90(constraintLayout, textView, imageView, imageView2, textView2, linearLayout, constraintLayout, textView3, textView4);
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
    public static y90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f47629b;
    }

    @NonNull
    public static y90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_op_edit_menu, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
