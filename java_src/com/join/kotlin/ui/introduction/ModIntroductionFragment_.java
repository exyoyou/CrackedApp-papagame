package com.join.kotlin.ui.introduction;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.BbsTagListBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ModIntroductionFragment_ extends ModIntroductionFragment implements xc.a, zc.a, zc.b {
    private View contentView_;
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class FragmentBuilder_ extends org.androidannotations.api.builder.d<FragmentBuilder_, ModIntroductionFragment> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.androidannotations.api.builder.d
        public ModIntroductionFragment build() {
            ModIntroductionFragment_ modIntroductionFragment_ = new ModIntroductionFragment_();
            modIntroductionFragment_.setArguments(this.args);
            return modIntroductionFragment_;
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
    @Override // com.join.kotlin.ui.introduction.ModIntroductionFragment
    public void hideLoading() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.ModIntroductionFragment_.6
            @Override // java.lang.Runnable
            public void run() {
                ModIntroductionFragment_.super.hideLoading();
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
    @Override // com.join.kotlin.ui.introduction.ModIntroductionFragment
    public void loadData() {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.ModIntroductionFragment_.8
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    ModIntroductionFragment_.super.loadData();
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
            this.contentView_ = inflater.inflate(R.layout.fragment_mod_introduction, container, false);
        }
        return this.contentView_;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.contentView_ = null;
        this.rv_list_type = null;
        this.view_pager = null;
        this.loding_layout = null;
        this.loding_faile = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.rv_list_type = (RecyclerView) hasViews.internalFindViewById(R.id.rv_list_type);
        this.view_pager = (ViewPager) hasViews.internalFindViewById(R.id.view_pager);
        this.loding_layout = hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = hasViews.internalFindViewById(R.id.loding_faile);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.tv_draft);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.ModIntroductionFragment_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ModIntroductionFragment_.this.setNetwork();
                }
            });
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.ModIntroductionFragment_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ModIntroductionFragment_.this.relodingimag();
                }
            });
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.ModIntroductionFragment_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ModIntroductionFragment_.this.onDraftClick();
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
    @Override // com.join.kotlin.ui.introduction.ModIntroductionFragment
    public void showLoadFailed(final String msg) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.ModIntroductionFragment_.5
            @Override // java.lang.Runnable
            public void run() {
                ModIntroductionFragment_.super.showLoadFailed(msg);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.ModIntroductionFragment
    public void showLoadingView() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.ModIntroductionFragment_.7
            @Override // java.lang.Runnable
            public void run() {
                ModIntroductionFragment_.super.showLoadingView();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.ModIntroductionFragment
    public void showMain(final List<BbsTagListBean> types) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.ModIntroductionFragment_.4
            @Override // java.lang.Runnable
            public void run() {
                ModIntroductionFragment_.super.showMain(types);
            }
        }, 0L);
    }
}
