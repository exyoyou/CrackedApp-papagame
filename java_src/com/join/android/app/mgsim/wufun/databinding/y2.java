package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class y2 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final bj0 f47544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f47545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RecyclerView f47547f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47548g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47549h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f47550i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f47551j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f47552k;

    private y2(@NonNull LinearLayout rootView, @NonNull bj0 actionBar, @NonNull EditText etComment, @NonNull LinearLayout llMain, @NonNull RecyclerView rvComment, @NonNull TextView tvFeedBackDesc, @NonNull TextView tvFeedBackGameName, @NonNull TextView tvFeedBackReason, @NonNull TextView tvSend, @NonNull TextView tvTime) {
        this.f47543b = rootView;
        this.f47544c = actionBar;
        this.f47545d = etComment;
        this.f47546e = llMain;
        this.f47547f = rvComment;
        this.f47548g = tvFeedBackDesc;
        this.f47549h = tvFeedBackGameName;
        this.f47550i = tvFeedBackReason;
        this.f47551j = tvSend;
        this.f47552k = tvTime;
    }

    @NonNull
    public static y2 bind(@NonNull View rootView) {
        int i10 = R.id.actionBar;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.actionBar);
        if (viewFindChildViewById != null) {
            bj0 bj0VarBind = bj0.bind(viewFindChildViewById);
            i10 = R.id.etComment;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.etComment);
            if (editText != null) {
                i10 = R.id.llMain;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llMain);
                if (linearLayout != null) {
                    i10 = R.id.rvComment;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvComment);
                    if (recyclerView != null) {
                        i10 = R.id.tvFeedBackDesc;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvFeedBackDesc);
                        if (textView != null) {
                            i10 = R.id.tvFeedBackGameName;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvFeedBackGameName);
                            if (textView2 != null) {
                                i10 = R.id.tvFeedBackReason;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvFeedBackReason);
                                if (textView3 != null) {
                                    i10 = R.id.tvSend;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvSend);
                                    if (textView4 != null) {
                                        i10 = R.id.tvTime;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTime);
                                        if (textView5 != null) {
                                            return new y2((LinearLayout) rootView, bj0VarBind, editText, linearLayout, recyclerView, textView, textView2, textView3, textView4, textView5);
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
    public static y2 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47543b;
    }

    @NonNull
    public static y2 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_message_detail_feedback, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
