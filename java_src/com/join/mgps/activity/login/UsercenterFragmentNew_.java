package com.join.mgps.activity.login;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class UsercenterFragmentNew_ extends UsercenterFragmentNew implements xc.a, zc.a, zc.b {
    private View contentView_;
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver updateInfoReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            UsercenterFragmentNew_.this.updateInfo(context);
        }
    };
    private final IntentFilter intentFilter2_ = new IntentFilter();
    private final BroadcastReceiver loginOutReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            UsercenterFragmentNew_.this.loginOut(context);
        }
    };

    public static class FragmentBuilder_ extends org.androidannotations.api.builder.d<FragmentBuilder_, UsercenterFragmentNew> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.androidannotations.api.builder.d
        public UsercenterFragmentNew build() {
            UsercenterFragmentNew_ usercenterFragmentNew_ = new UsercenterFragmentNew_();
            usercenterFragmentNew_.setArguments(this.args);
            return usercenterFragmentNew_;
        }
    }

    public static FragmentBuilder_ builder() {
        return new FragmentBuilder_();
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(getActivity());
        zc.c.b(this);
        this.intentFilter1_.addAction(p5.a.B);
        this.intentFilter2_.addAction(p5.a.f96217r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void changeMgState(final String content, final int tag_id) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.17
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    UsercenterFragmentNew_.super.changeMgState(content, tag_id);
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
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.21
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    UsercenterFragmentNew_.super.getDownloadTaskInfo();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void getUserInfo() {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.19
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    UsercenterFragmentNew_.super.getUserInfo();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void hideRedPoint() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.12
            @Override // java.lang.Runnable
            public void run() {
                UsercenterFragmentNew_.super.hideRedPoint();
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
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void loadViewConfigsFromLocal() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.11
            @Override // java.lang.Runnable
            public void run() {
                UsercenterFragmentNew_.super.loadViewConfigsFromLocal();
            }
        }, 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.updateInfoReceiver_, this.intentFilter1_);
        getActivity().registerReceiver(this.loginOutReceiver_, this.intentFilter2_);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.contentView_ = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.contentView_ = inflater.inflate(R.layout.fragment_usercenter_new, container, false);
        }
        return this.contentView_;
    }

    @Override // com.join.mgps.activity.login.UsercenterFragmentNew, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.updateInfoReceiver_);
        getActivity().unregisterReceiver(this.loginOutReceiver_);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.contentView_ = null;
        this.iv_user_avatar = null;
        this.iv_arrow = null;
        this.tv_user_nickname = null;
        this.iv_user_vip = null;
        this.tv_user_rank = null;
        this.tv_user_account = null;
        this.tv_user_coppers = null;
        this.ll_copperTitle = null;
        this.onekeyTitle = null;
        this.svipTitle = null;
        this.onekeyMessage = null;
        this.tv_user_member = null;
        this.tv_user_svip = null;
        this.ll_userinfo = null;
        this.ll_svip = null;
        this.rl_members = null;
        this.ll_membersNew = null;
        this.vipTime = null;
        this.vipModText = null;
        this.vipModIcon = null;
        this.vipModLayout = null;
        this.fingerText = null;
        this.fingerIcon = null;
        this.fingerLayout = null;
        this.onkeyText = null;
        this.onkeyIcon = null;
        this.onkeyLayout = null;
        this.everdayGiftText = null;
        this.everdayGiftIcon = null;
        this.everdayGiftLayout = null;
        this.mGridView = null;
        this.mGridView2 = null;
        this.mGridView3 = null;
        this.scroolView = null;
        this.userLayout = null;
        this.titleLayout = null;
        this.modNotVipView = null;
        this.iv_user_avatar2 = null;
        this.statubar = null;
        this.downloadView2 = null;
        this.downloadView1 = null;
        this.detail = null;
        this.test = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.iv_user_avatar = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iv_user_avatar);
        this.iv_arrow = (ImageView) hasViews.internalFindViewById(R.id.iv_arrow);
        this.tv_user_nickname = (TextView) hasViews.internalFindViewById(R.id.tv_user_nickname);
        this.iv_user_vip = (ImageView) hasViews.internalFindViewById(R.id.iv_user_vip);
        this.tv_user_rank = (TextView) hasViews.internalFindViewById(R.id.tv_user_rank);
        this.tv_user_account = (TextView) hasViews.internalFindViewById(R.id.tv_user_account);
        this.tv_user_coppers = (TextView) hasViews.internalFindViewById(R.id.tv_user_coppers);
        this.ll_copperTitle = (TextView) hasViews.internalFindViewById(R.id.ll_copperTitle);
        this.onekeyTitle = (TextView) hasViews.internalFindViewById(R.id.onekeyTitle);
        this.svipTitle = (TextView) hasViews.internalFindViewById(R.id.svipTitle);
        this.onekeyMessage = (TextView) hasViews.internalFindViewById(R.id.onekeyMessage);
        this.tv_user_member = (TextView) hasViews.internalFindViewById(R.id.tv_user_member);
        this.tv_user_svip = (TextView) hasViews.internalFindViewById(R.id.tv_user_svip);
        this.ll_userinfo = (LinearLayout) hasViews.internalFindViewById(R.id.ll_userinfo);
        this.ll_svip = (ConstraintLayout) hasViews.internalFindViewById(R.id.ll_svip);
        this.rl_members = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_members);
        this.ll_membersNew = hasViews.internalFindViewById(R.id.ll_membersNew);
        this.vipTime = (TextView) hasViews.internalFindViewById(R.id.vipTime);
        this.vipModText = (TextView) hasViews.internalFindViewById(R.id.vipModText);
        this.vipModIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.vipModIcon);
        this.vipModLayout = (LinearLayout) hasViews.internalFindViewById(R.id.vipModLayout);
        this.fingerText = (TextView) hasViews.internalFindViewById(R.id.fingerText);
        this.fingerIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.fingerIcon);
        this.fingerLayout = (LinearLayout) hasViews.internalFindViewById(R.id.fingerLayout);
        this.onkeyText = (TextView) hasViews.internalFindViewById(R.id.onkeyText);
        this.onkeyIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.onkeyIcon);
        this.onkeyLayout = (LinearLayout) hasViews.internalFindViewById(R.id.onkeyLayout);
        this.everdayGiftText = (TextView) hasViews.internalFindViewById(R.id.everdayGiftText);
        this.everdayGiftIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.everdayGiftIcon);
        this.everdayGiftLayout = (LinearLayout) hasViews.internalFindViewById(R.id.everdayGiftLayout);
        this.mGridView = (RecyclerView) hasViews.internalFindViewById(R.id.mGridView);
        this.mGridView2 = (RecyclerView) hasViews.internalFindViewById(R.id.mGridView2);
        this.mGridView3 = (RecyclerView) hasViews.internalFindViewById(R.id.mGridView3);
        this.scroolView = (NestedScrollView) hasViews.internalFindViewById(R.id.scroolView);
        this.userLayout = hasViews.internalFindViewById(R.id.userLayout);
        this.titleLayout = hasViews.internalFindViewById(R.id.titleLayout);
        this.modNotVipView = hasViews.internalFindViewById(R.id.modNotVipView);
        this.iv_user_avatar2 = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iv_user_avatar2);
        this.statubar = hasViews.internalFindViewById(R.id.statubar);
        this.downloadView2 = (CustomerDownloadView) hasViews.internalFindViewById(R.id.downloadView2);
        this.downloadView1 = (CustomerDownloadView) hasViews.internalFindViewById(R.id.downloadView1);
        this.detail = (TextView) hasViews.internalFindViewById(R.id.detail);
        this.test = hasViews.internalFindViewById(R.id.test);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.onekey);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.ll_copper);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    UsercenterFragmentNew_.this.onekey();
                }
            });
        }
        View view = this.test;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    UsercenterFragmentNew_.this.test();
                }
            });
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    UsercenterFragmentNew_.this.ll_copper();
                }
            });
        }
        TextView textView = this.detail;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    UsercenterFragmentNew_.this.detail();
                }
            });
        }
        CustomerDownloadView customerDownloadView = this.downloadView1;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    UsercenterFragmentNew_.this.downloadView1();
                }
            });
        }
        CustomerDownloadView customerDownloadView2 = this.downloadView2;
        if (customerDownloadView2 != null) {
            customerDownloadView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    UsercenterFragmentNew_.this.downloadView2();
                }
            });
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void pullMyProfileInfo() {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.20
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    UsercenterFragmentNew_.super.pullMyProfileInfo();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void refreshViews() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.9
            @Override // java.lang.Runnable
            public void run() {
                UsercenterFragmentNew_.super.refreshViews();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void showNotifUi() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.10
            @Override // java.lang.Runnable
            public void run() {
                UsercenterFragmentNew_.super.showNotifUi();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void showToast(final String info) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.14
            @Override // java.lang.Runnable
            public void run() {
                UsercenterFragmentNew_.super.showToast(info);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void tokenFailure() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.13
            @Override // java.lang.Runnable
            public void run() {
                UsercenterFragmentNew_.super.tokenFailure();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void touristLogin() {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.18
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    UsercenterFragmentNew_.super.touristLogin();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void updateAdapterByNewMsgCount(final int count) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.15
            @Override // java.lang.Runnable
            public void run() {
                UsercenterFragmentNew_.super.updateAdapterByNewMsgCount(count);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.login.UsercenterFragmentNew
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew_.16
            @Override // java.lang.Runnable
            public void run() {
                UsercenterFragmentNew_.super.updateDownloadView();
            }
        }, 0L);
    }
}
