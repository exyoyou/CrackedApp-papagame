package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;

/* JADX INFO: loaded from: classes4.dex */
public final class su0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44976b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44977c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44978d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44979e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final GridView f44980f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44981g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44982h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f44983i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final EditText f44984j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final HListView f44985k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final EditText f44986l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final bj0 f44987m;

    private su0(@NonNull RelativeLayout rootView, @NonNull LinearLayout editMainContainer, @NonNull TextView footerTip, @NonNull LinearLayout helpContainer, @NonNull GridView helpGrid, @NonNull TextView helpTipV, @NonNull TextView helpTitle, @NonNull TextView myRemainHelpMoney, @NonNull EditText postsContent, @NonNull HListView postsPicHlist, @NonNull EditText postsTitle, @NonNull bj0 title) {
        this.f44976b = rootView;
        this.f44977c = editMainContainer;
        this.f44978d = footerTip;
        this.f44979e = helpContainer;
        this.f44980f = helpGrid;
        this.f44981g = helpTipV;
        this.f44982h = helpTitle;
        this.f44983i = myRemainHelpMoney;
        this.f44984j = postsContent;
        this.f44985k = postsPicHlist;
        this.f44986l = postsTitle;
        this.f44987m = title;
    }

    @NonNull
    public static su0 bind(@NonNull View rootView) {
        int i10 = R.id.editMainContainer;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.editMainContainer);
        if (linearLayout != null) {
            i10 = R.id.footer_tip;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.footer_tip);
            if (textView != null) {
                i10 = R.id.helpContainer;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.helpContainer);
                if (linearLayout2 != null) {
                    i10 = R.id.helpGrid;
                    GridView gridView = (GridView) ViewBindings.findChildViewById(rootView, R.id.helpGrid);
                    if (gridView != null) {
                        i10 = R.id.helpTipV;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.helpTipV);
                        if (textView2 != null) {
                            i10 = R.id.helpTitle;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.helpTitle);
                            if (textView3 != null) {
                                i10 = R.id.myRemainHelpMoney;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.myRemainHelpMoney);
                                if (textView4 != null) {
                                    i10 = R.id.posts_content;
                                    EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.posts_content);
                                    if (editText != null) {
                                        i10 = R.id.posts_pic_hlist;
                                        HListView hListView = (HListView) ViewBindings.findChildViewById(rootView, R.id.posts_pic_hlist);
                                        if (hListView != null) {
                                            i10 = R.id.posts_title;
                                            EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, R.id.posts_title);
                                            if (editText2 != null) {
                                                i10 = R.id.title;
                                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.title);
                                                if (viewFindChildViewById != null) {
                                                    return new su0((RelativeLayout) rootView, linearLayout, textView, linearLayout2, gridView, textView2, textView3, textView4, editText, hListView, editText2, bj0.bind(viewFindChildViewById));
                                                }
                                            }
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
    public static su0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44976b;
    }

    @NonNull
    public static su0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.share_posts_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
