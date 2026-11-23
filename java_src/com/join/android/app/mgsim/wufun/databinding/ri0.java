package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ri0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44369c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44370d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44371e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f44372f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44373g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44374h;

    private ri0(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout clRoot, @NonNull TextView count, @NonNull TextView desc, @NonNull View divider, @NonNull SimpleDraweeView icon, @NonNull TextView name) {
        this.f44368b = rootView;
        this.f44369c = clRoot;
        this.f44370d = count;
        this.f44371e = desc;
        this.f44372f = divider;
        this.f44373g = icon;
        this.f44374h = name;
    }

    @NonNull
    public static ri0 bind(@NonNull View rootView) {
        ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
        int i10 = R.id.count;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.count);
        if (textView != null) {
            i10 = R.id.desc;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
            if (textView2 != null) {
                i10 = R.id.divider;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
                if (viewFindChildViewById != null) {
                    i10 = R.id.icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                        if (textView3 != null) {
                            return new ri0(constraintLayout, constraintLayout, textView, textView2, viewFindChildViewById, simpleDraweeView, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ri0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44368b;
    }

    @NonNull
    public static ri0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_search_item_favorite_game_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
