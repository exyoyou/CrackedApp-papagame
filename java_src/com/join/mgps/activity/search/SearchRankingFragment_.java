package com.join.mgps.activity.search;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.builder.d;
import xc.a;
import zc.b;
import zc.c;

/* JADX INFO: loaded from: classes9.dex */
public final class SearchRankingFragment_ extends SearchRankingFragment implements a, zc.a, b {
    private View contentView_;
    private final c onViewChangedNotifier_ = new c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class FragmentBuilder_ extends d<FragmentBuilder_, SearchRankingFragment> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.androidannotations.api.builder.d
        public SearchRankingFragment build() {
            SearchRankingFragment_ searchRankingFragment_ = new SearchRankingFragment_();
            searchRankingFragment_.setArguments(this.args);
            return searchRankingFragment_;
        }
    }

    public static FragmentBuilder_ builder() {
        return new FragmentBuilder_();
    }

    private void init_(Bundle savedInstanceState) {
        c.b(this);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.contentView_;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        c cVarC = c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.contentView_ = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.contentView_ = inflater.inflate(R.layout.search_ranking_fragment_layout, container, false);
        }
        return this.contentView_;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.contentView_ = null;
        this.recyclerView = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.recyclerView = (RecyclerView) hasViews.internalFindViewById(R.id.recyclerView);
        afterVidew();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }
}
