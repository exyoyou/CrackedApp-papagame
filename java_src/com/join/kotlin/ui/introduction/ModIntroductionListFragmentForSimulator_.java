package com.join.kotlin.ui.introduction;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.BbsListBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ModIntroductionListFragmentForSimulator_ extends ModIntroductionListFragmentForSimulator implements xc.a, zc.a, zc.b {
    private View contentView_;
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class FragmentBuilder_ extends org.androidannotations.api.builder.d<FragmentBuilder_, ModIntroductionListFragmentForSimulator> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.androidannotations.api.builder.d
        public ModIntroductionListFragmentForSimulator build() {
            ModIntroductionListFragmentForSimulator_ modIntroductionListFragmentForSimulator_ = new ModIntroductionListFragmentForSimulator_();
            modIntroductionListFragmentForSimulator_.setArguments(this.args);
            return modIntroductionListFragmentForSimulator_;
        }
    }

    public static FragmentBuilder_ builder() {
        return new FragmentBuilder_();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.ModIntroductionListFragmentForSimulator
    public void hideLoading() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.ModIntroductionListFragmentForSimulator_.5
            @Override // java.lang.Runnable
            public void run() {
                ModIntroductionListFragmentForSimulator_.super.hideLoading();
            }
        }, 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.contentView_;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.ModIntroductionListFragmentForSimulator
    public void loadData(final int page) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.ModIntroductionListFragmentForSimulator_.7
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    ModIntroductionListFragmentForSimulator_.super.loadData(page);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.contentView_ = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.contentView_ = inflater.inflate(R.layout.fragment_mod_introduction_list_for_simulator, container, false);
        }
        return this.contentView_;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.contentView_ = null;
        this.rv_list_data = null;
        this.loding_layout = null;
        this.loding_faile = null;
        this.setNetwork = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.rv_list_data = (RecyclerView) hasViews.internalFindViewById(R.id.rv_list_data);
        this.loding_layout = hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = hasViews.internalFindViewById(R.id.loding_faile);
        this.setNetwork = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View view = this.setNetwork;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.ModIntroductionListFragmentForSimulator_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ModIntroductionListFragmentForSimulator_.this.setNetwork();
                }
            });
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.ModIntroductionListFragmentForSimulator_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ModIntroductionListFragmentForSimulator_.this.relodingimag();
                }
            });
        }
        aftervidew();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.ModIntroductionListFragmentForSimulator
    public void showLoadFailed(final String msg) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.ModIntroductionListFragmentForSimulator_.4
            @Override // java.lang.Runnable
            public void run() {
                ModIntroductionListFragmentForSimulator_.super.showLoadFailed(msg);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.ModIntroductionListFragmentForSimulator
    public void showLoadingView() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.ModIntroductionListFragmentForSimulator_.6
            @Override // java.lang.Runnable
            public void run() {
                ModIntroductionListFragmentForSimulator_.super.showLoadingView();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.ModIntroductionListFragmentForSimulator
    public void showMain(final List<BbsListBean> list, final boolean loadMore) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.ModIntroductionListFragmentForSimulator_.3
            @Override // java.lang.Runnable
            public void run() {
                ModIntroductionListFragmentForSimulator_.super.showMain(list, loadMore);
            }
        }, 0L);
    }
}
