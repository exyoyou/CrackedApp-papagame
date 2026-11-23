package com.join.kotlin.ui.hmcloud.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionModuleSevenBean;
import com.join.mgps.pref.PrefDef_;
import com.kongzue.dialogx.dialogs.CustomDialog;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import com.wufan.user.service.protobuf.NewMemberInfo;
import com.wufan.user.service.protobuf.SetBirthdayResponse;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MyGamePapaCloudFragment_ extends MyGamePapaCloudFragment implements xc.a, zc.a, zc.b {
    private View contentView_;
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver updateInfoReceiver_ = new BroadcastReceiver() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MyGamePapaCloudFragment_.this.updateInfo(context);
        }
    };
    private final IntentFilter intentFilter2_ = new IntentFilter();
    private final BroadcastReceiver onGameOpenedReceiver_ = new BroadcastReceiver() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.2
        public static final String GAME_ID_EXTRA = "gameId";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MyGamePapaCloudFragment_.this.onGameOpened((intent.getExtras() != null ? intent.getExtras() : new Bundle()).getString("gameId"));
        }
    };
    private final IntentFilter intentFilter3_ = new IntentFilter();
    private final BroadcastReceiver refreshGamePurchasedListReceiver_ = new BroadcastReceiver() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MyGamePapaCloudFragment_.this.refreshGamePurchasedList();
        }
    };

    public static class FragmentBuilder_ extends org.androidannotations.api.builder.d<FragmentBuilder_, MyGamePapaCloudFragment> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // org.androidannotations.api.builder.d
        public MyGamePapaCloudFragment build() {
            MyGamePapaCloudFragment_ myGamePapaCloudFragment_ = new MyGamePapaCloudFragment_();
            myGamePapaCloudFragment_.setArguments(this.args);
            return myGamePapaCloudFragment_;
        }
    }

    public static FragmentBuilder_ builder() {
        return new FragmentBuilder_();
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(getActivity());
        zc.c.b(this);
        this.intentFilter1_.addAction(p5.a.B);
        this.intentFilter2_.addAction(p5.a.f96203k);
        this.intentFilter3_.addAction(p5.a.I);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void checkSign(final boolean proactive) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.24
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    MyGamePapaCloudFragment_.super.checkSign(proactive);
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
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void getCloudRecGameData() {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.31
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    MyGamePapaCloudFragment_.super.getCloudRecGameData();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
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
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void notifyDataSetChanged() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.21
            @Override // java.lang.Runnable
            public void run() {
                MyGamePapaCloudFragment_.super.notifyDataSetChanged();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void notifyShortcutChanged(final HashMap<String, Boolean> map) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.18
            @Override // java.lang.Runnable
            public void run() {
                MyGamePapaCloudFragment_.super.notifyShortcutChanged(map);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void onBirthdayUI(final CustomDialog dialog, final SetBirthdayResponse result) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.14
            @Override // java.lang.Runnable
            public void run() {
                MyGamePapaCloudFragment_.super.onBirthdayUI(dialog, result);
            }
        }, 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.updateInfoReceiver_, this.intentFilter1_);
        getActivity().registerReceiver(this.onGameOpenedReceiver_, this.intentFilter2_);
        getActivity().registerReceiver(this.refreshGamePurchasedListReceiver_, this.intentFilter3_);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.contentView_ = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.contentView_ = inflater.inflate(R.layout.fragment_papa_game_cloud, container, false);
        }
        return this.contentView_;
    }

    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment, com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.updateInfoReceiver_);
        getActivity().unregisterReceiver(this.onGameOpenedReceiver_);
        getActivity().unregisterReceiver(this.refreshGamePurchasedListReceiver_);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.contentView_ = null;
        this.listView = null;
        this.root = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void onMoreDeleteGame(final String id2) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.23
            @Override // java.lang.Runnable
            public void run() {
                MyGamePapaCloudFragment_.super.onMoreDeleteGame(id2);
            }
        }, 100L);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.listView = (XListView2) hasViews.internalFindViewById(R.id.listView);
        this.root = hasViews.internalFindViewById(R.id.root);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.search);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.plugs);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.needUpdate);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MyGamePapaCloudFragment_.this.back();
                }
            });
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MyGamePapaCloudFragment_.this.search();
                }
            });
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MyGamePapaCloudFragment_.this.plugs();
                }
            });
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MyGamePapaCloudFragment_.this.needUpdate();
                }
            });
        }
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void onVipBirthdayUI(final MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeVipBirthdayResponseResult info) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.16
            @Override // java.lang.Runnable
            public void run() {
                MyGamePapaCloudFragment_.super.onVipBirthdayUI(info);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void onVipDaysUI(final MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeVipDaysResponseResult info) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.15
            @Override // java.lang.Runnable
            public void run() {
                MyGamePapaCloudFragment_.super.onVipDaysUI(info);
            }
        }, 0L);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void refreshShortcutState() {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.29
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    MyGamePapaCloudFragment_.super.refreshShortcutState();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void setBirthdayClick(final CustomDialog dialog, final int month, final int day) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.26
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    MyGamePapaCloudFragment_.super.setBirthdayClick(dialog, month, day);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void showAddShortcutResultDialog(final String gameId) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.17
            @Override // java.lang.Runnable
            public void run() {
                MyGamePapaCloudFragment_.super.showAddShortcutResultDialog(gameId);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void showCloudSign(final MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.8
            @Override // java.lang.Runnable
            public void run() {
                MyGamePapaCloudFragment_.super.showCloudSign(adCfgInfo);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void showNoData() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.19
            @Override // java.lang.Runnable
            public void run() {
                MyGamePapaCloudFragment_.super.showNoData();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void showSignDialog(final String totalTime, final String freeTime, final String vipTime, final Boolean succ) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.11
            @Override // java.lang.Runnable
            public void run() {
                MyGamePapaCloudFragment_.super.showSignDialog(totalTime, freeTime, vipTime, succ);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void showUi() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.20
            @Override // java.lang.Runnable
            public void run() {
                MyGamePapaCloudFragment_.super.showUi();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void sign() {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.25
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    MyGamePapaCloudFragment_.super.sign();
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void updateArchiveTime() {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.12
            @Override // java.lang.Runnable
            public void run() {
                MyGamePapaCloudFragment_.super.updateArchiveTime();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void updateData(final CollectionModuleSevenBean data) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.22
            @Override // java.lang.Runnable
            public void run() {
                MyGamePapaCloudFragment_.super.updateData(data);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void updateSignUI(final MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult result) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.10
            @Override // java.lang.Runnable
            public void run() {
                MyGamePapaCloudFragment_.super.updateSignUI(result);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void updateUserInfo(final UserInfo userInfo) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.13
            @Override // java.lang.Runnable
            public void run() {
                MyGamePapaCloudFragment_.super.updateUserInfo(userInfo);
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void vipBirthdayClick(final NewMemberInfo newMemberInfo) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.28
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    MyGamePapaCloudFragment_.super.vipBirthdayClick(newMemberInfo);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void vipDaysClick(final NewMemberInfo newMemberInfo) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.27
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    MyGamePapaCloudFragment_.super.vipDaysClick(newMemberInfo);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void refreshShortcutState(final List<DownloadTask> downloadTasks) {
        org.androidannotations.api.a.l(new org.androidannotations.api.a.c("", 0L, "") { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.30
            @Override // org.androidannotations.api.a.c
            public void execute() {
                try {
                    MyGamePapaCloudFragment_.super.refreshShortcutState(downloadTasks);
                } catch (Throwable th) {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment
    public void showCloudSign(final MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo, final boolean proactive) {
        org.androidannotations.api.b.e("", new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment_.9
            @Override // java.lang.Runnable
            public void run() {
                MyGamePapaCloudFragment_.super.showCloudSign(adCfgInfo, proactive);
            }
        }, 0L);
    }
}
