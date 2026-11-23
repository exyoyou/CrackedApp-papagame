package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ClassifyGameTypeLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class d80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ClassifyGameTypeLayout f37324b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37325c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37326d;

    private d80(@NonNull ClassifyGameTypeLayout rootView, @NonNull SimpleDraweeView classifyGameImg, @NonNull TextView classifyGameName) {
        this.f37324b = rootView;
        this.f37325c = classifyGameImg;
        this.f37326d = classifyGameName;
    }

    @NonNull
    public static d80 bind(@NonNull View rootView) {
        int i10 = R.id.classify_game_img;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.classify_game_img);
        if (simpleDraweeView != null) {
            i10 = R.id.classify_game_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.classify_game_name);
            if (textView != null) {
                return new d80((ClassifyGameTypeLayout) rootView, simpleDraweeView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static d80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ClassifyGameTypeLayout getRoot() {
        return this.f37324b;
    }

    @NonNull
    public static d80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_classify_game_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
