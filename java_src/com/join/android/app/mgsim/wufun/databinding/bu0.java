package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.zhy.view.flowlayout.TagFlowLayout2;

/* JADX INFO: loaded from: classes4.dex */
public final class bu0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36594c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ListView f36595d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f36596e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f36597f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36598g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TagFlowLayout2 f36599h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TagFlowLayout2 f36600i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final View f36601j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36602k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f36603l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f36604m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final EditText f36605n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36606o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final XListView2 f36607p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f36608q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ScrollView f36609r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f36610s;

    private bu0(@NonNull RelativeLayout rootView, @NonNull TextView empty, @NonNull ListView historyListView, @NonNull ImageView imgIconback, @NonNull ImageView imgSearch, @NonNull RelativeLayout lLayoutSearch, @NonNull TagFlowLayout2 language, @NonNull TagFlowLayout2 pingtai, @NonNull View requestLayout, @NonNull RelativeLayout searchBarLayout, @NonNull TextView searchBySelector, @NonNull ImageView searchClear, @NonNull EditText searchEditText, @NonNull LinearLayout searchListFragment, @NonNull XListView2 searchListView, @NonNull TextView select, @NonNull ScrollView selectView, @NonNull TextView topNull) {
        this.f36593b = rootView;
        this.f36594c = empty;
        this.f36595d = historyListView;
        this.f36596e = imgIconback;
        this.f36597f = imgSearch;
        this.f36598g = lLayoutSearch;
        this.f36599h = language;
        this.f36600i = pingtai;
        this.f36601j = requestLayout;
        this.f36602k = searchBarLayout;
        this.f36603l = searchBySelector;
        this.f36604m = searchClear;
        this.f36605n = searchEditText;
        this.f36606o = searchListFragment;
        this.f36607p = searchListView;
        this.f36608q = select;
        this.f36609r = selectView;
        this.f36610s = topNull;
    }

    @NonNull
    public static bu0 bind(@NonNull View rootView) {
        int i10 = R.id.empty;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.empty);
        if (textView != null) {
            i10 = R.id.historyListView;
            ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.historyListView);
            if (listView != null) {
                i10 = R.id.img_iconback;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img_iconback);
                if (imageView != null) {
                    i10 = R.id.img_search;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img_search);
                    if (imageView2 != null) {
                        i10 = R.id.lLayout_search;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.lLayout_search);
                        if (relativeLayout != null) {
                            i10 = R.id.language;
                            TagFlowLayout2 tagFlowLayout2 = (TagFlowLayout2) ViewBindings.findChildViewById(rootView, R.id.language);
                            if (tagFlowLayout2 != null) {
                                i10 = R.id.pingtai;
                                TagFlowLayout2 tagFlowLayout3 = (TagFlowLayout2) ViewBindings.findChildViewById(rootView, R.id.pingtai);
                                if (tagFlowLayout3 != null) {
                                    i10 = R.id.requestLayout;
                                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.requestLayout);
                                    if (viewFindChildViewById != null) {
                                        i10 = R.id.search_bar_layout;
                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.search_bar_layout);
                                        if (relativeLayout2 != null) {
                                            i10 = R.id.searchBySelector;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.searchBySelector);
                                            if (textView2 != null) {
                                                i10 = R.id.searchClear;
                                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.searchClear);
                                                if (imageView3 != null) {
                                                    i10 = R.id.searchEditText;
                                                    EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.searchEditText);
                                                    if (editText != null) {
                                                        i10 = R.id.search_list_fragment;
                                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.search_list_fragment);
                                                        if (linearLayout != null) {
                                                            i10 = R.id.searchListView;
                                                            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.searchListView);
                                                            if (xListView2 != null) {
                                                                i10 = R.id.select;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.select);
                                                                if (textView3 != null) {
                                                                    i10 = R.id.select_view;
                                                                    ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, R.id.select_view);
                                                                    if (scrollView != null) {
                                                                        i10 = R.id.topNull;
                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.topNull);
                                                                        if (textView4 != null) {
                                                                            return new bu0((RelativeLayout) rootView, textView, listView, imageView, imageView2, relativeLayout, tagFlowLayout2, tagFlowLayout3, viewFindChildViewById, relativeLayout2, textView2, imageView3, editText, linearLayout, xListView2, textView3, scrollView, textView4);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bu0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36593b;
    }

    @NonNull
    public static bu0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.search_list_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
