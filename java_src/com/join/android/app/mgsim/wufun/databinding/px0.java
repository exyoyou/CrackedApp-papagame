package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class px0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f43567c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f43568d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f43569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f43570f;

    private px0(@NonNull LinearLayout rootView, @NonNull View musicBar1, @NonNull View musicBar2, @NonNull View musicBar3, @NonNull View musicBar4) {
        this.f43566b = rootView;
        this.f43567c = musicBar1;
        this.f43568d = musicBar2;
        this.f43569e = musicBar3;
        this.f43570f = musicBar4;
    }

    @NonNull
    public static px0 bind(@NonNull View rootView) {
        int i10 = R.id.music_bar1;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.music_bar1);
        if (viewFindChildViewById != null) {
            i10 = R.id.music_bar2;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.music_bar2);
            if (viewFindChildViewById2 != null) {
                i10 = R.id.music_bar3;
                View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.music_bar3);
                if (viewFindChildViewById3 != null) {
                    i10 = R.id.music_bar4;
                    View viewFindChildViewById4 = ViewBindings.findChildViewById(rootView, R.id.music_bar4);
                    if (viewFindChildViewById4 != null) {
                        return new px0((LinearLayout) rootView, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3, viewFindChildViewById4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static px0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43566b;
    }

    @NonNull
    public static px0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.view_equalizer_loading, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
