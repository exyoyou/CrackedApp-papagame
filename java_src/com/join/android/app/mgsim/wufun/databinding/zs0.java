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
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class zs0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f48424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f48425c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f48426d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f48427e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f48428f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f48429g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RecyclerView f48430h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f48431i;

    private zs0(@NonNull LinearLayout rootView, @NonNull TextView enterGame, @NonNull ImageView lodingImg, @NonNull ConstraintLayout protocol, @NonNull ImageView protocolCheck, @NonNull View protocolCheckPlaceholder, @NonNull RecyclerView recycleView, @NonNull TextView userProtocolTxt) {
        this.f48424b = rootView;
        this.f48425c = enterGame;
        this.f48426d = lodingImg;
        this.f48427e = protocol;
        this.f48428f = protocolCheck;
        this.f48429g = protocolCheckPlaceholder;
        this.f48430h = recycleView;
        this.f48431i = userProtocolTxt;
    }

    @NonNull
    public static zs0 bind(@NonNull View rootView) {
        int i10 = R.id.enterGame;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.enterGame);
        if (textView != null) {
            i10 = R.id.lodingImg;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lodingImg);
            if (imageView != null) {
                i10 = R.id.protocol;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.protocol);
                if (constraintLayout != null) {
                    i10 = R.id.protocolCheck;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.protocolCheck);
                    if (imageView2 != null) {
                        i10 = R.id.protocolCheckPlaceholder;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.protocolCheckPlaceholder);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.recycleView;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.recycleView);
                            if (recyclerView != null) {
                                i10 = R.id.userProtocolTxt;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userProtocolTxt);
                                if (textView2 != null) {
                                    return new zs0((LinearLayout) rootView, textView, imageView, constraintLayout, imageView2, viewFindChildViewById, recyclerView, textView2);
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
    public static zs0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f48424b;
    }

    @NonNull
    public static zs0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.recommend_activity_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
