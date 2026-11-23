package com.join.kotlin.ui.introduction;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.BbsCommentListBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class IntroductionCommentListFragment_ extends IntroductionCommentListFragment implements xc.a, zc.a, zc.b {
    private View contentView_;
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    public static class FragmentBuilder_ extends org.androidannotations.api.builder.d<FragmentBuilder_, IntroductionCommentListFragment> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.androidannotations.api.builder.d
        public IntroductionCommentListFragment build() {
            IntroductionCommentListFragment_ introductionCommentListFragment_ = new IntroductionCommentListFragment_();
            introductionCommentListFragment_.setArguments(this.args);
            return introductionCommentListFragment_;
        }
    }

    public static FragmentBuilder_ builder() {
        return new FragmentBuilder_();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void commitComment(final String content) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.25
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    IntroductionCommentListFragment_.super.commitComment(content);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void hideLoading() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.12
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.hideLoading();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void hideLoadingDetail() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.14
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.hideLoadingDetail();
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

    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void loadCommentDetail(final int page) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.21
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    IntroductionCommentListFragment_.super.loadCommentDetail(page);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void loadData(final int page) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.22
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    IntroductionCommentListFragment_.super.loadData(page);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void loadDataDetail(final int page) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.23
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    IntroductionCommentListFragment_.super.loadDataDetail(page);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void loadDataDetailFromNotice(final int page) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.24
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    IntroductionCommentListFragment_.super.loadDataDetailFromNotice(page);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void onBbsDisPraise(final Integer resourceId, final BbsCommentListBean item) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.27
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    IntroductionCommentListFragment_.super.onBbsDisPraise(resourceId, item);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void onBbsPraise(final String ruid, final Integer resourceId, final BbsCommentListBean item) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.26
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    IntroductionCommentListFragment_.super.onBbsPraise(ruid, resourceId, item);
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
            this.contentView_ = inflater.inflate(R.layout.fragment_comment_list_introduction, container, false);
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
        this.loding_layout_detail = null;
        this.loding_faile_detail = null;
        this.tv_title = null;
        this.et_content = null;
        this.iv_back = null;
        this.rl_comment_detail = null;
        this.rl_comment_list = null;
        this.rv_comment_detail_list = null;
        this.textView2 = null;
        this.ll_empty = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.rv_list_data = (RecyclerView) hasViews.internalFindViewById(R.id.rv_list_data);
        this.loding_layout = hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = hasViews.internalFindViewById(R.id.loding_faile);
        this.loding_layout_detail = hasViews.internalFindViewById(R.id.loding_layout_detail);
        this.loding_faile_detail = hasViews.internalFindViewById(R.id.loding_faile_detail);
        this.tv_title = (TextView) hasViews.internalFindViewById(R.id.tv_title);
        this.et_content = (EditText) hasViews.internalFindViewById(R.id.et_content);
        this.iv_back = (ImageView) hasViews.internalFindViewById(R.id.iv_back);
        this.rl_comment_detail = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_comment_detail);
        this.rl_comment_list = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_comment_list);
        this.rv_comment_detail_list = (XRecyclerView) hasViews.internalFindViewById(R.id.rv_comment_detail_list);
        this.textView2 = (TextView) hasViews.internalFindViewById(R.id.textView2);
        this.ll_empty = (LinearLayout) hasViews.internalFindViewById(R.id.ll_empty);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork_detail);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.relodingimag_detail);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.iv_close);
        View viewInternalFindViewById6 = hasViews.internalFindViewById(R.id.tv_commit);
        ImageView imageView = this.iv_back;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IntroductionCommentListFragment_.this.onBackClick();
                }
            });
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IntroductionCommentListFragment_.this.setNetwork();
                }
            });
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IntroductionCommentListFragment_.this.setNetworkDetail();
                }
            });
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IntroductionCommentListFragment_.this.relodingimag();
                }
            });
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IntroductionCommentListFragment_.this.relodingimagDetail();
                }
            });
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IntroductionCommentListFragment_.this.onClockClick();
                }
            });
        }
        if (viewInternalFindViewById6 != null) {
            viewInternalFindViewById6.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    IntroductionCommentListFragment_.this.onClickComment();
                }
            });
        }
        aftervidew();
    }

    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showDetail(final List<BbsCommentListBean> list, final boolean loadMore) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.10
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showDetail(list, loadMore);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showEmpty() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.15
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showEmpty();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showLoadFailed(final String msg) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.11
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showLoadFailed(msg);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showLoadFailedDetail(final String msg) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.13
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showLoadFailedDetail(msg);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showLoadingView() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.16
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showLoadingView();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showLoadingViewDetail() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.17
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showLoadingViewDetail();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showMain(final List<BbsCommentListBean> list, final boolean loadMore) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.9
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showMain(list, loadMore);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showNoticeDetail(final List<BbsCommentListBean> list, final boolean loadMore) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.8
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showNoticeDetail(list, loadMore);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void showTost(final String message) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.19
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.showTost(message);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void updateCommentInput() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.18
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.updateCommentInput();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.introduction.IntroductionCommentListFragment
    public void updatePraise(final boolean praise, final BbsCommentListBean item) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment_.20
            @Override // java.lang.Runnable
            public void run() {
                IntroductionCommentListFragment_.super.updatePraise(praise, item);
            }
        }, 0L);
    }
}
