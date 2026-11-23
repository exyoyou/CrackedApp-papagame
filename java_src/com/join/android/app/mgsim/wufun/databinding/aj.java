package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class aj implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f35843b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f35844c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XListView2 f35845d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f35846e;

    private aj(@NonNull RelativeLayout rootView, @NonNull View bottom, @NonNull XListView2 forumPostsList, @NonNull PtrClassicFrameLayout mPtrFrame) {
        this.f35843b = rootView;
        this.f35844c = bottom;
        this.f35845d = forumPostsList;
        this.f35846e = mPtrFrame;
    }

    @NonNull
    public static aj bind(@NonNull View rootView) {
        int i10 = R.id.bottom;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.bottom);
        if (viewFindChildViewById != null) {
            i10 = R.id.forum_posts_list;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.forum_posts_list);
            if (xListView2 != null) {
                i10 = R.id.mPtrFrame;
                PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                if (ptrClassicFrameLayout != null) {
                    return new aj((RelativeLayout) rootView, viewFindChildViewById, xListView2, ptrClassicFrameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static aj inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f35843b;
    }

    @NonNull
    public static aj inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dynamic_my_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
