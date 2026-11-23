package com.join.kotlin.ui.introduction;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class IntroductionProgressFragment_ extends IntroductionProgressFragment implements xc.a, zc.a, zc.b {
    private View contentView_;
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class FragmentBuilder_ extends org.androidannotations.api.builder.d<FragmentBuilder_, IntroductionProgressFragment> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.androidannotations.api.builder.d
        public IntroductionProgressFragment build() {
            IntroductionProgressFragment_ introductionProgressFragment_ = new IntroductionProgressFragment_();
            introductionProgressFragment_.setArguments(this.args);
            return introductionProgressFragment_;
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
            this.contentView_ = inflater.inflate(R.layout.introduction_progress_fragment, container, false);
        }
        return this.contentView_;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.contentView_ = null;
        this.ll_empty = null;
        this.tv_title = null;
        this.rv_list_data = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.ll_empty = (LinearLayout) hasViews.internalFindViewById(R.id.ll_empty);
        this.tv_title = (TextView) hasViews.internalFindViewById(R.id.tv_title);
        this.rv_list_data = (RecyclerView) hasViews.internalFindViewById(R.id.rv_list_data);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.iv_close);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionProgressFragment_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IntroductionProgressFragment_.this.onClockClick();
                }
            });
        }
        afterView();
    }

    @Override // com.join.kotlin.ui.introduction.IntroductionProgressFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionProgressFragment
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionProgressFragment_.2
            @Override // java.lang.Runnable
            public void run() {
                IntroductionProgressFragment_.super.showMessage(message);
            }
        }, 0L);
    }
}
