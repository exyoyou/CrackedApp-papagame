package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class bm implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f36453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XListView f36454d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f36455e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Group f36456f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36457g;

    private bm(@NonNull ConstraintLayout rootView, @NonNull ImageView imageView62, @NonNull XListView listView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull Group noRecord, @NonNull TextView textView49) {
        this.f36452b = rootView;
        this.f36453c = imageView62;
        this.f36454d = listView;
        this.f36455e = mPtrFrame;
        this.f36456f = noRecord;
        this.f36457g = textView49;
    }

    @NonNull
    public static bm bind(@NonNull View rootView) {
        int i10 = R.id.imageView62;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView62);
        if (imageView != null) {
            i10 = R.id.listView;
            XListView xListView = (XListView) ViewBindings.findChildViewById(rootView, R.id.listView);
            if (xListView != null) {
                i10 = R.id.mPtrFrame;
                PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                if (ptrClassicFrameLayout != null) {
                    i10 = R.id.noRecord;
                    Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.noRecord);
                    if (group != null) {
                        i10 = R.id.textView49;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView49);
                        if (textView != null) {
                            return new bm((ConstraintLayout) rootView, imageView, xListView, ptrClassicFrameLayout, group, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bm inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36452b;
    }

    @NonNull
    public static bm inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_friend_msg_req, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
