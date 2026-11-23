package com.join.kotlin.ui.hmcloud.fragment;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.core.content.pm.e1;
import com.MApplication;
import com.bykv.vk.component.ttvideo.player.C;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.ge;
import com.join.android.app.mgsim.wufun.databinding.ue;
import com.join.kotlin.ui.hmcloud.activity.CloudAssetRecordActivity;
import com.join.kotlin.ui.hmcloud.dialog.DialogUtils;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.j2;
import com.join.mgps.Util.k2;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.w0;
import com.join.mgps.activity.FullShareWebActivity_;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.activity.MyGamePlugManagerActivity_;
import com.join.mgps.activity.MyGameUpdateManagerActivity_;
import com.join.mgps.activity.UninstallWufunGameActivity_;
import com.join.mgps.activity.mygame.dialog.WufunGameDownFirstNotPermissDialog_;
import com.join.mgps.adapter.i4;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CloudGameConfigBean;
import com.join.mgps.dto.CollectionModuleSevenArgs;
import com.join.mgps.dto.CollectionModuleSevenBean;
import com.join.mgps.dto.CollectionModuleSevenItemBean;
import com.join.mgps.dto.CollectionModuleSevenSubBean;
import com.join.mgps.dto.CollectionSevenListBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ApiName;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.receiver.ShortcutReceiver;
import com.kongzue.dialogx.dialogs.CustomDialog;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa91.arc.ext.ToastManager;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import com.wufan.user.service.protobuf.MessageUserInfoRequest;
import com.wufan.user.service.protobuf.NewMemberInfo;
import com.wufan.user.service.protobuf.SetBirthdayResponse;
import com.wufan.user.service.protobuf.UserInfo;
import com.wufan.user.service.protobuf.enumeration.SceneType;
import com.zyyoona7.picker.DatePickerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.fragment_papa_game_cloud)
public class MyGamePapaCloudFragment extends com.join.mgps.fragment.e implements i4.e, AbsListView.OnScrollListener {
    private UserInfo accountBean;
    private com.join.mgps.rpc.c accountClientV2;
    i4 adapter;
    com.join.mgps.customview.a0 filterPw;
    Group g_1;
    View iv_7;
    long lastTime;

    @ViewById
    XListView2 listView;
    private Context mContext;
    com.join.mgps.rpc.e mRpcClient;
    private String pendingSignData;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    View root;
    com.join.mgps.rpc.b rpcAccountClient;
    SimpleDraweeView sdv_head;
    String templateId;
    TextView tv_btn_1;
    TextView tv_label_3;
    TextView tv_text_1;
    TextView tv_text_2;
    TextView tv_text_3;
    TextView tv_text_4;
    TextView tv_text_5;
    TextView tv_text_6;
    TextView tv_text_7;
    View v_1;
    View v_2;
    View v_3;
    View v_4;
    View v_5;
    View v_6;
    View v_7;
    View v_8;
    View v_head;
    HashMap<String, Boolean> shortCutMap = new HashMap<>();
    HashMap<String, Boolean> isNotShowIconAppMaps = new HashMap<>();
    private List<DownloadTask> games = new ArrayList();
    private int lastGamesCount = 0;
    private boolean hasExposureAd = false;
    private int noGameAdIndex = 0;
    private boolean isCreate = false;
    private boolean checkingProactiveSign = false;
    private boolean entryDialogsHandled = false;
    private List<CommonGameInfoBean> allDownloadAppHomeBeans = new ArrayList();
    private List<String> gameIds = new ArrayList();
    private List<CollectionSevenListBean> cloudRecGames = new ArrayList();
    CloudGameConfigBean cloudGameConfigBean = null;
    private Handler mHanler = new Handler();
    ExtBean pageExtBean = new ExtBean().setFirstModule(EventP.FirstModel.meTab.name()).setSecondModule(EventP.SecondModel.myCloudGame.name());
    private View headView = null;
    ExtBean parentExtBean = null;
    boolean isSign = false;
    int year = 0;
    int month = 0;
    int day = 0;
    boolean birthDay = false;
    boolean vipDays = false;
    boolean vipBirthday = false;
    private int lastVisibleIndex = 0;
    private int firstVisiblePosition = 0;
    private boolean SCROLLING = false;

    /* JADX INFO: renamed from: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment$1, reason: invalid class name */
    class AnonymousClass1 extends m6.d {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onEvent$0(String str) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                MyGamePapaCloudFragment.this.showSignDialog(jSONObject.optString("totalTime"), jSONObject.optString("freeTime"), jSONObject.optString("vipTime"), Boolean.TRUE);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }

        @Override // m6.d, com.join.mgps.callbacks.r
        public void onEvent(Activity activity, int event, final String jsonParams) {
            super.onEvent(activity, event, jsonParams);
            if (event == 2) {
                activity.finish();
                MyGamePapaCloudFragment.this.mHanler.postDelayed(new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.e0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f49188b.lambda$onEvent$0(jsonParams);
                    }
                }, 800L);
            }
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment$2, reason: invalid class name */
    class AnonymousClass2 extends com.kongzue.dialogx.interfaces.s<CustomDialog, ge> {

        /* JADX INFO: renamed from: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment$2$1, reason: invalid class name */
        class AnonymousClass1 extends com.kongzue.dialogx.interfaces.r<com.kongzue.dialogx.dialogs.a> {
            final /* synthetic */ ge val$binding;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(int layoutResId, final ge val$binding) {
                super(layoutResId);
                this.val$binding = val$binding;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onBind$1(DatePickerView datePickerView, ge geVar, com.kongzue.dialogx.dialogs.a aVar, View view) {
                MyGamePapaCloudFragment.this.year = datePickerView.getSelectedYear();
                MyGamePapaCloudFragment.this.month = datePickerView.getSelectedMonth();
                MyGamePapaCloudFragment.this.day = datePickerView.getSelectedDay();
                geVar.f38826f.setText(MyGamePapaCloudFragment.this.year + "年/" + MyGamePapaCloudFragment.this.month + "月/" + MyGamePapaCloudFragment.this.day + "日");
                aVar.b2();
            }

            @Override // com.kongzue.dialogx.interfaces.r
            public void onBind(final com.kongzue.dialogx.dialogs.a dialog1, View v10) {
                if (dialog1.j2().f73730e != null) {
                    ((ViewGroup) dialog1.j2().f73730e.getParent()).removeView(dialog1.j2().f73730e);
                }
                dialog1.j2().f73729d.setBackgroundResource(R.drawable.transparent_bg);
                final DatePickerView datePickerView = (DatePickerView) v10.findViewById(R.id.date_picker);
                TextView textView = (TextView) v10.findViewById(R.id.tv_btn_1);
                ((ImageView) v10.findViewById(R.id.iv_btn_1)).setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.i0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        dialog1.b2();
                    }
                });
                final ge geVar = this.val$binding;
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.j0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f49200b.lambda$onBind$1(datePickerView, geVar, dialog1, view);
                    }
                });
            }
        }

        AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBind$0(ge geVar, View view) {
            new com.kongzue.dialogx.dialogs.a(new AnonymousClass1(R.layout.dialog_date_picker, geVar)).i3(Color.parseColor("#90000000")).L2(false).M0();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBind$1(CustomDialog customDialog, View view) {
            customDialog.E1();
            MyGamePapaCloudFragment myGamePapaCloudFragment = MyGamePapaCloudFragment.this;
            myGamePapaCloudFragment.setBirthdayClick(customDialog, myGamePapaCloudFragment.month, myGamePapaCloudFragment.day);
            com.papa.sim.statistic.t.l(MyGamePapaCloudFragment.this.requireContext()).R1(Event.commonClick, MyGamePapaCloudFragment.this.pageExtBean.copy().setChatId(EventP.ChatId.cloudGameSetVipBtnPop.name()).setTypeCode(EventP.TypeCode.btnOk.name()).setParent(MyGamePapaCloudFragment.this.pageExtBean).buildScene().toExt());
        }

        @Override // com.kongzue.dialogx.interfaces.s
        public void onBind(final CustomDialog dialog, View v10, final ge binding) {
            binding.f38826f.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.f0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f49191b.lambda$onBind$0(binding, view);
                }
            });
            binding.f38824d.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.g0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f49194b.lambda$onBind$1(dialog, view);
                }
            });
            binding.f38823c.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.h0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dialog.E1();
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment$3, reason: invalid class name */
    class AnonymousClass3 extends com.kongzue.dialogx.interfaces.s<CustomDialog, ue> {
        final /* synthetic */ MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeVipDaysResponseResult val$info;

        AnonymousClass3(final MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeVipDaysResponseResult val$info) {
            this.val$info = val$info;
        }

        @Override // com.kongzue.dialogx.interfaces.s
        public void onBind(final CustomDialog dialog, View v10, ue binding) {
            binding.n(this.val$info.getInto());
            binding.f45666d.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.k0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dialog.E1();
                }
            });
            binding.f45665c.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.l0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dialog.E1();
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment$4, reason: invalid class name */
    class AnonymousClass4 extends com.kongzue.dialogx.interfaces.s<CustomDialog, ue> {
        final /* synthetic */ MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeVipBirthdayResponseResult val$info;

        AnonymousClass4(final MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeVipBirthdayResponseResult val$info) {
            this.val$info = val$info;
        }

        @Override // com.kongzue.dialogx.interfaces.s
        public void onBind(final CustomDialog dialog, View v10, ue binding) {
            binding.n(this.val$info.getInto());
            binding.f45666d.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.m0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dialog.E1();
                }
            });
            binding.f45665c.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.n0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dialog.E1();
                }
            });
        }
    }

    private void addShortcut(String s10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("s:");
        sb2.append(s10);
        DownloadTask downloadTaskG = q5.f.M().G(s10);
        if (downloadTaskG != null) {
            Bitmap bitmapM = ImageLoader.q().m(downloadTaskG.getPortraitURL());
            if (bitmapM == null) {
                bitmapM = returnBitmap(downloadTaskG.getPortraitURL());
            }
            j2.c(getActivity(), downloadTaskG.getShowName(), s10, bitmapM);
        }
    }

    private List<DownloadTask> getCurrentTypeGames() {
        return this.games;
    }

    private boolean isLogined() {
        UserInfo accountData = AccountUtil_.getInstance_(requireContext()).getAccountData();
        return accountData != null && t2.i(accountData.getToken());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterviews$0(View view) {
        v_head();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterviews$1(View view) {
        onTimeClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterviews$10(View view) {
        onYBClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterviews$2(View view) {
        v_3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterviews$3(View view) {
        v_3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterviews$4(View view) {
        v_4();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterviews$5(View view) {
        v_5();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterviews$6(View view) {
        v_6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterviews$7(View view) {
        iv_7();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterviews$8(View view) {
        onDJClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterviews$9(View view) {
        onYZClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$19() {
        updateDownStateList(this.allDownloadAppHomeBeans);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onVipBirthdayUI$18(CustomDialog customDialog) {
        refreshUserCenter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onVipDaysUI$17(CustomDialog customDialog) {
        refreshUserCenter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSetBirthday$15(CustomDialog customDialog) {
        com.papa.sim.statistic.t.l(requireContext()).R1(Event.commonExp, this.pageExtBean.copy().setChatId(EventP.ChatId.cloudGameSetVipBtnPop.name()).setTypeCode(EventP.TypeCode.popup.name()).setParent(this.pageExtBean).buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSetBirthday$16(CustomDialog customDialog) {
        refreshUserCenter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$showSignDialog$11(DownloadTask downloadTask) {
        if (!isAdded()) {
            return Boolean.FALSE;
        }
        ExtBean extBeanItemWithParent = this.pageExtBean.copy().itemWithParent(this.parentExtBean);
        extBeanItemWithParent.setChatId(EventP.ChatId.cloudGameVipDailySignPop.name());
        extBeanItemWithParent.setTypeCode(EventP.TypeCode.cloudGame.name());
        extBeanItemWithParent.setGameId(downloadTask.getCrc_link_type_val().replace("cld_", ""));
        extBeanItemWithParent.setResourceId(downloadTask.getCrc_link_type_val().replace("cld_", ""));
        Context context = getContext();
        if (context == null) {
            return Boolean.FALSE;
        }
        com.papa.sim.statistic.t.l(context).R1(Event.gameStart, extBeanItemWithParent.buildScene().toExt());
        w0.h().s(context, downloadTask.getCrc_link_type_val(), extBeanItemWithParent);
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$showSignDialog$12() {
        if (!isAdded()) {
            return Boolean.FALSE;
        }
        refreshUserCenter();
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateUserInfo$14(int i10, NewMemberInfo newMemberInfo, View view) {
        if (i10 == 1) {
            showSetBirthday();
            return;
        }
        if (i10 == 2) {
            vipBirthdayClick(newMemberInfo);
        } else if (i10 == 3) {
            vipDaysClick(newMemberInfo);
        } else if (i10 == 4) {
            IntentUtil.getInstance().goShareWebActivity(requireContext(), com.join.mgps.rpc.h.O, this.pageExtBean);
        }
    }

    private void openWebPage(MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
        Intent intent = new Intent();
        IntentDateBean intentDateBean = new IntentDateBean();
        String str = com.join.mgps.rpc.h.U;
        intentDateBean.setLink_type(4);
        UserInfo accountData = AccountUtil_.getInstance_(requireActivity()).getAccountData();
        if (!str.contains("isVip")) {
            if (str.contains("?") && str.contains(SimpleComparison.EQUAL_TO_OPERATION)) {
                str = str + "&isVip=" + com.join.mgps.Util.b.pivc(accountData) + "&currentDay=" + adCfgInfo.getSignDay();
            } else {
                str = str + "?isVip=" + com.join.mgps.Util.b.pivc(accountData) + "&currentDay=" + adCfgInfo.getSignDay();
            }
        }
        if (t2.i(str)) {
            intentDateBean.setLink_type_val(str);
            intent.putExtra("intentdate", intentDateBean);
            intent.putExtra("parentExtBean", new ExtBean().setFirstModule(EventP.FirstModel.meTab.name()).setSecondModule(EventP.SecondModel.myCloudGame.name()).setChatId(EventP.ChatId.myCloudGame.name()).buildScene());
            IntentUtil.getInstance().startActivityWithCallback(requireActivity(), FullShareWebActivity_.class, intent, new AnonymousClass1());
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        loadData();
        Iterator<DownloadTask> it2 = this.games.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (!TextUtils.isEmpty(next.getCrc_link_type_val()) && next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                next.setStatus(0);
                it2.remove();
                break;
            }
        }
        notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        List<DownloadTask> list = this.games;
        if (list == null || downloadTask == null) {
            return;
        }
        try {
            for (DownloadTask downloadTask2 : list) {
                if (!TextUtils.isEmpty(downloadTask2.getCrc_link_type_val()) && downloadTask2.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    UtilsMy.U4(downloadTask2);
                    break;
                }
            }
            notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        notifyDataSetChanged();
    }

    private void receiveStart(DownloadTask downloadTask) {
        DownloadTask next;
        ModInfoBean modInfoBean;
        if (downloadTask == null) {
            return;
        }
        boolean z10 = true;
        if (!TextUtils.isEmpty(downloadTask.getFileType()) && downloadTask.getFileType().equals(Dtype.chajian.name())) {
            notifyDataSetChanged();
            return;
        }
        UtilsMy.X4(this.games);
        Iterator<DownloadTask> it2 = this.games.iterator();
        do {
            if (!it2.hasNext()) {
                z10 = false;
                break;
            }
            next = it2.next();
        } while (!(!t2.i(next.getMod_info()) ? TextUtils.isEmpty(next.getCrc_link_type_val()) || !next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val()) : (modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(next.getMod_info(), ModInfoBean.class)) == null || TextUtils.isEmpty(next.getCrc_link_type_val()) || !(next.getCrc_link_type_val().equals(modInfoBean.getMod_game_id()) || next.getCrc_link_type_val().equals(modInfoBean.getMain_game_id()))));
        if (!z10) {
            this.games.add(0, downloadTask);
        }
        loadData();
        notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        if (this.games == null || downloadTask == null) {
            return;
        }
        if (!d2.g(downloadTask.getPackageName()) || d2.w(downloadTask.getCrc_link_type_val())) {
            for (int i10 = 0; i10 < this.games.size(); i10++) {
                DownloadTask downloadTask2 = this.games.get(i10);
                if (!TextUtils.isEmpty(downloadTask2.getCrc_link_type_val()) && downloadTask2.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.games.set(i10, downloadTask);
                    break;
                }
            }
            loadData();
            notifyDataSetChanged();
        }
    }

    private Bitmap returnBitmap(String imgUri) {
        if (t2.h(imgUri)) {
            return null;
        }
        try {
            return BitmapFactory.decodeFile(((d3.c) Fresco.getImagePipelineFactory().n().c(new com.facebook.cache.common.j(Uri.parse(imgUri).toString()))).d().getPath());
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void updateDownStateList(List<CommonGameInfoBean> itemList) {
        Iterator<CommonGameInfoBean> it2 = itemList.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        View childAt;
        XListView2 xListView2 = this.listView;
        if (xListView2 == null || this.firstVisiblePosition < 0 || this.lastVisibleIndex >= xListView2.getCount()) {
            return;
        }
        for (int i10 = this.firstVisiblePosition; i10 <= this.lastVisibleIndex; i10++) {
            int itemViewType = this.listView.getAdapter().getItemViewType(i10);
            if (this.listView.getItemAtPosition(i10) != null) {
                if (itemViewType == 8) {
                    try {
                        CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) this.adapter.getItem(i10);
                        View childAt2 = this.listView.getChildAt(i10 - this.firstVisiblePosition);
                        if (childAt2 != null && childAt2.getTag() != null && (childAt2.getTag() instanceof com.join.mgps.base.b)) {
                            com.join.mgps.base.b bVar = (com.join.mgps.base.b) childAt2.getTag();
                            if ((bVar instanceof com.join.mgps.base.b) && commonGameInfoBean != null && commonGameInfoBean.getDownloadTask() != null) {
                                DownloadTask downloadTask2 = commonGameInfoBean.getDownloadTask();
                                DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask2.getCrc_link_type_val());
                                if (downloadTaskG != null) {
                                    long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                                    if (downloadTask2.getSize() == 0) {
                                        bVar.setText(R.id.appSize, UtilsMy.i(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(j10));
                                    } else {
                                        bVar.setText(R.id.appSize, UtilsMy.i(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.i(j10));
                                    }
                                    if (downloadTask2.getStatus() == 12) {
                                        bVar.setProgress(R.id.progressBarZip, (int) downloadTaskG.getProgress());
                                    } else {
                                        bVar.setProgress(R.id.progressBar, (int) downloadTaskG.getProgress());
                                    }
                                    if (downloadTask2.getStatus() == 2) {
                                        bVar.setText(R.id.loding_info, downloadTaskG.getSpeed() + "/S");
                                    }
                                }
                            }
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else if (itemViewType != 2 && (this.listView.getItemAtPosition(i10) instanceof DownloadTask) && (downloadTask = (DownloadTask) this.listView.getItemAtPosition(i10)) != null && ((downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) && (childAt = this.listView.getChildAt(i10 - this.firstVisiblePosition)) != null && childAt.getTag() != null && (childAt.getTag() instanceof i4.h))) {
                    i4.h hVar = (i4.h) childAt.getTag();
                    try {
                        DownloadTask downloadTaskG2 = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                        if (downloadTaskG2 == null) {
                            return;
                        }
                        if (!TextUtils.isEmpty(downloadTaskG2.getShowSize())) {
                            long j11 = (long) (Double.parseDouble(downloadTaskG2.getShowSize()) * 1024.0d * 1024.0d);
                            if (downloadTask.getSize() == 0) {
                                UtilsMy.c(downloadTaskG2.getCurrentSize());
                                UtilsMy.c(j11);
                            } else {
                                UtilsMy.c(downloadTaskG2.getCurrentSize());
                                UtilsMy.c(j11);
                            }
                        }
                        if (downloadTask.getStatus() == 12) {
                            hVar.f62399h.s((int) downloadTaskG2.getProgress());
                        } else {
                            hVar.f62399h.s((int) downloadTaskG2.getProgress());
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
            }
        }
    }

    void addShortout(Context mContext, String name, String GameId, Bitmap bitmap) {
        if (bitmap == null) {
            bitmap = BitmapFactory.decodeResource(mContext.getResources(), R.drawable.icon);
        }
        if (bitmap == null) {
            a3.b(mContext).d("创建失败！");
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            ShortcutManager shortcutManagerA = e1.a(mContext.getSystemService("shortcut"));
            if (shortcutManagerA.isRequestPinShortcutSupported()) {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.setClass(mContext, MGMainActivity_.class);
                intent.putExtra("shortcutGameId", GameId);
                intent.addFlags(67108864);
                shortcutManagerA.requestPinShortcut(androidx.core.content.pm.k.a(mContext, name).setIcon(Icon.createWithBitmap(bitmap)).setShortLabel(name).setIntent(intent).build(), PendingIntent.getBroadcast(mContext, 0, new Intent(mContext, (Class<?>) ShortcutReceiver.class), 134217728).getIntentSender());
                j2.e(mContext, GameId);
            }
        } else {
            Intent intent2 = new Intent(j2.f49767a);
            intent2.putExtra("duplicate", false);
            intent2.putExtra("android.intent.extra.shortcut.NAME", name);
            intent2.putExtra("android.intent.extra.shortcut.ICON", Bitmap.createScaledBitmap(bitmap, 142, 142, true));
            Intent intent3 = new Intent("android.intent.action.MAIN");
            intent3.setClass(mContext, MGMainActivity_.class);
            intent3.putExtra("shortcutGameId", GameId);
            intent3.addFlags(67108864);
            intent3.addCategory("android.intent.category.LAUNCHER");
            intent2.putExtra("android.intent.extra.shortcut.INTENT", intent3);
            mContext.sendBroadcast(intent2);
            j2.e(mContext, GameId);
        }
        this.shortCutMap.put(GameId, Boolean.FALSE);
        notifyDataSetChanged();
        showAddShortcutResultDialog(GameId);
    }

    @AfterViews
    void afterviews() {
        this.mContext = getContext();
        com.join.mgps.Util.j0.a().d(this);
        this.mRpcClient = com.join.mgps.rpc.impl.d.O1();
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        this.accountClientV2 = com.join.mgps.rpc.impl.b.C();
        i4 i4Var = new i4(getContext());
        this.adapter = i4Var;
        i4Var.r0(this);
        this.adapter.s0(1);
        this.listView.setAdapter((ListAdapter) this.adapter);
        this.listView.setOnScrollListener(this);
        if (this.root == null) {
            this.root = ((Activity) getContext()).getWindow().getDecorView().findViewById(R.id.root);
        }
        if (this.headView == null) {
            View viewInflate = View.inflate(requireContext(), R.layout.layout_my_cloud_game_head, null);
            this.headView = viewInflate;
            this.listView.addHeaderView(viewInflate);
            this.tv_text_1 = (TextView) this.headView.findViewById(R.id.tv_text_1);
            this.tv_btn_1 = (TextView) this.headView.findViewById(R.id.tv_btn_1);
            this.v_head = this.headView.findViewById(R.id.v_head);
            this.v_head = this.headView.findViewById(R.id.v_head);
            this.sdv_head = (SimpleDraweeView) this.headView.findViewById(R.id.sdv_head);
            this.tv_text_2 = (TextView) this.headView.findViewById(R.id.tv_text_2);
            this.tv_text_3 = (TextView) this.headView.findViewById(R.id.tv_text_3);
            this.tv_text_4 = (TextView) this.headView.findViewById(R.id.tv_text_4);
            this.g_1 = (Group) this.headView.findViewById(R.id.g_1);
            this.tv_text_5 = (TextView) this.headView.findViewById(R.id.tv_text_5);
            this.tv_text_6 = (TextView) this.headView.findViewById(R.id.tv_text_6);
            this.tv_label_3 = (TextView) this.headView.findViewById(R.id.tv_label_3);
            this.tv_text_7 = (TextView) this.headView.findViewById(R.id.tv_text_7);
            this.v_1 = this.headView.findViewById(R.id.v_1);
            this.v_2 = this.headView.findViewById(R.id.v_2);
            this.v_3 = this.headView.findViewById(R.id.v_3);
            this.v_4 = this.headView.findViewById(R.id.v_4);
            this.v_5 = this.headView.findViewById(R.id.v_5);
            this.v_6 = this.headView.findViewById(R.id.v_6);
            this.v_7 = this.headView.findViewById(R.id.v_7);
            this.v_8 = this.headView.findViewById(R.id.v_8);
            this.iv_7 = this.headView.findViewById(R.id.iv_7);
            this.v_head.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f49215b.lambda$afterviews$0(view);
                }
            });
            this.v_1.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.x
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f49222b.lambda$afterviews$1(view);
                }
            });
            this.v_2.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.y
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f49223b.lambda$afterviews$2(view);
                }
            });
            this.v_3.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.z
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f49224b.lambda$afterviews$3(view);
                }
            });
            this.v_4.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.a0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f49176b.lambda$afterviews$4(view);
                }
            });
            this.v_5.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.b0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f49179b.lambda$afterviews$5(view);
                }
            });
            this.v_6.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.c0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f49181b.lambda$afterviews$6(view);
                }
            });
            this.iv_7.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f49186b.lambda$afterviews$7(view);
                }
            });
            this.v_8.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f49197b.lambda$afterviews$8(view);
                }
            });
            this.tv_text_2.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f49199b.lambda$afterviews$9(view);
                }
            });
            this.tv_text_3.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.w
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f49221b.lambda$afterviews$10(view);
                }
            });
        }
        loadData();
        UserInfo accountData = AccountUtil_.getInstance_(requireContext()).getAccountData();
        this.accountBean = accountData;
        updateUserInfo(accountData);
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("_sign_data");
            this.parentExtBean = (ExtBean) arguments.getSerializable("prentExtBean");
            if (t2.i(string)) {
                this.pendingSignData = string;
            }
        }
    }

    @Click
    void back() {
        if (getContext() instanceof Activity) {
            ((Activity) getContext()).finish();
        }
    }

    boolean canShowAddShortcut(Context context, DownloadTask downloadTask) {
        return false;
    }

    void checkCloudSignOnEnter() {
        if (this.checkingProactiveSign) {
            return;
        }
        this.checkingProactiveSign = true;
        checkSign(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkSign(boolean proactive) {
        UserInfo accountData = AccountUtil_.getInstance_(requireContext()).getAccountData();
        this.accountBean = accountData;
        if (accountData == null || TextUtils.isEmpty(accountData.getToken())) {
            if (proactive) {
                showCloudSign(null, true);
                return;
            }
            return;
        }
        if (!com.join.android.app.common.utils.m.j(requireContext())) {
            if (proactive) {
                showCloudSign(null, true);
                return;
            }
            return;
        }
        try {
            MessageCloudGamingAdCfgRequest.MessageCloudGamingAdCfgRequestParameters.b bVarNewBuilder = MessageCloudGamingAdCfgRequest.MessageCloudGamingAdCfgRequestParameters.newBuilder();
            bVarNewBuilder.setUid(this.accountBean.getUid());
            bVarNewBuilder.setToken(this.accountBean.getToken());
            bVarNewBuilder.setSceneType(SceneType.CLOUD_GAMING_SIGN_BTN);
            bVarNewBuilder.setAppVersion(g8.b.a(requireContext()));
            HashMap map = new HashMap();
            map.put("uid", bVarNewBuilder.getUid() + "");
            map.put(Constants.TOKEN, bVarNewBuilder.getToken());
            map.put("sceneType", bVarNewBuilder.getSceneType().name());
            map.put("appVersion", bVarNewBuilder.getAppVersion());
            bVarNewBuilder.setSign(k2.d(map));
            MessageCloudGamingAdCfgResponse.MessageCloudGamingAdCfgResponseResult messageCloudGamingAdCfgResponseResultN = this.accountClientV2.n(bVarNewBuilder.build());
            if (messageCloudGamingAdCfgResponseResultN != null) {
                if (messageCloudGamingAdCfgResponseResultN.getError() == 200) {
                    showCloudSign(messageCloudGamingAdCfgResponseResultN.getData(), proactive);
                } else if (proactive) {
                    showCloudSign(null, true);
                }
            } else if (proactive) {
                showCloudSign(null, true);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            if (proactive) {
                showCloudSign(null, true);
            }
        }
    }

    void del(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.games.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (!TextUtils.isEmpty(next.getCrc_link_type_val()) && next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                it2.remove();
            }
        }
    }

    void deleteGame(String gameId) {
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        Context context = getContext();
        if (downloadTaskG == null) {
            return;
        }
        String fileType = downloadTaskG.getFileType();
        if (!(!TextUtils.isEmpty(fileType) && fileType.equals(Dtype.android.name()))) {
            UtilsMy.O0(downloadTaskG);
            del(downloadTaskG);
            UtilsMy.U4(downloadTaskG);
            notifyDataSetChanged();
            return;
        }
        if (!com.join.android.app.common.utils.g.t0(context).e(context, downloadTaskG.getPackageName())) {
            UtilsMy.O0(downloadTaskG);
            del(downloadTaskG);
            UtilsMy.U4(downloadTaskG);
            notifyDataSetChanged();
            return;
        }
        if (downloadTaskG.getStatus() == 5 || downloadTaskG.getStatus() == 9) {
            com.join.android.app.common.utils.g.t0(context).o0(context, downloadTaskG.getPackageName());
            return;
        }
        UtilsMy.L0(downloadTaskG);
        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(context).n(context, downloadTaskG.getPackageName());
        if (aVarN != null) {
            downloadTaskG.setVer(aVarN.d() + "");
        }
        UtilsMy.i3(downloadTaskG, 5);
        notifyDataSetChanged();
    }

    void deleteModGame(String modGameId) {
        DownloadTask downloadTaskG = q5.f.M().G(modGameId);
        if (downloadTaskG.getStatus() == 48) {
            a3.b(getContext()).d("游戏安装中无法删除");
            return;
        }
        UtilsMy.R0(getContext(), downloadTaskG);
        del(downloadTaskG);
        getCurrentTypeGames();
        notifyDataSetChanged();
    }

    public void explore() {
        CollectionSevenListBean collectionSevenListBean;
        XListView2 xListView2 = this.listView;
        if (xListView2 == null || this.firstVisiblePosition < 0 || this.lastVisibleIndex >= xListView2.getCount()) {
            return;
        }
        for (int i10 = this.firstVisiblePosition; i10 <= this.lastVisibleIndex; i10++) {
            if (this.listView.getAdapter().getItemViewType(i10) == 8 && (collectionSevenListBean = (CollectionSevenListBean) this.adapter.getItem(i10 - this.listView.getHeaderViewsCount())) != null && (collectionSevenListBean.getItem() instanceof CommonGameInfoBean)) {
                CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) collectionSevenListBean.getItem();
                if (!commonGameInfoBean.getExposure()) {
                    com.papa.sim.statistic.t.l(requireContext()).R1(Event.expGameAdPage, commonGameInfoBean.getExtBean().copy().setResourceId(commonGameInfoBean.getGameId()).buildScene().toExt());
                    commonGameInfoBean.setExposure(true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getCloudRecGameData() {
        String strD = this.prefDef.cloud_gaming_section_id().d();
        this.templateId = strD;
        if (t2.i(strD) && com.join.android.app.common.utils.m.j(requireContext())) {
            try {
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(requireContext());
                CollectionModuleSevenArgs collectionModuleSevenArgs = new CollectionModuleSevenArgs();
                collectionModuleSevenArgs.setTemplateId(this.templateId);
                requestModel.setArgs(collectionModuleSevenArgs);
                ResponseModel<CollectionModuleSevenBean> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().N(requestModel.makeSign()).execute().body();
                if (responseModelBody == null || responseModelBody.getCode() != 200 || responseModelBody.getData() == null) {
                    return;
                }
                updateData(responseModelBody.getData());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    boolean isNotShowIconApp(Context context, String pkgName) {
        boolean zE = false;
        if (context == null || TextUtils.isEmpty(pkgName)) {
            return false;
        }
        if (this.isNotShowIconAppMaps.containsKey(pkgName) && this.isNotShowIconAppMaps.get(pkgName) != null) {
            if (this.isNotShowIconAppMaps.get(pkgName) != null) {
                return this.isNotShowIconAppMaps.get(pkgName).booleanValue();
            }
            return false;
        }
        try {
            zE = com.join.mgps.Util.l.e(context, pkgName);
            this.isNotShowIconAppMaps.put(pkgName, Boolean.valueOf(zE));
            return zE;
        } catch (Exception e10) {
            e10.printStackTrace();
            return zE;
        }
    }

    boolean isSingleGame(DownloadTask task) {
        for (TipBean tipBean : task.getTipBeans()) {
            if (UtilsMy.w0(task.getPay_game_amount(), task.getCrc_link_type_val()) <= 0 && tipBean.getName().contains("单机")) {
                return true;
            }
        }
        return false;
    }

    void iv_7() {
        NewMemberInfo newMemberInfo = AccountUtil_.getInstance_(requireContext()).getAccountData().getNewMemberInfo();
        PopupWindow popupWindow = new PopupWindow((int) requireContext().getResources().getDimension(R.dimen.wdp349), (int) requireContext().getResources().getDimension(R.dimen.wdp92));
        popupWindow.setBackgroundDrawable(new BitmapDrawable());
        popupWindow.setOutsideTouchable(true);
        popupWindow.setTouchable(true);
        View viewInflate = View.inflate(requireContext(), R.layout.pop_cloud_time_tip, null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_text_1);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_text_2);
        String str = "";
        if (newMemberInfo.getVipType() == 3) {
            textView.setText("年卡会员：" + newMemberInfo.getYearExpireTime());
            if (t2.i(newMemberInfo.getSeasonExpireTime())) {
                str = "季卡会员：" + newMemberInfo.getSeasonExpireTime();
            }
            if (t2.i(newMemberInfo.getMonthExpireTime())) {
                if (t2.i(str)) {
                    str = str + "\n";
                }
                str = str + "月卡会员：" + newMemberInfo.getMonthExpireTime();
            }
        } else if (newMemberInfo.getVipType() == 2) {
            textView.setText("季卡会员：" + newMemberInfo.getSeasonExpireTime());
            if (t2.i(newMemberInfo.getYearExpireTime())) {
                str = "年卡会员：" + newMemberInfo.getYearExpireTime();
            }
            if (t2.i(newMemberInfo.getMonthExpireTime())) {
                if (t2.i(str)) {
                    str = str + "\n";
                }
                str = str + "月卡会员：" + newMemberInfo.getMonthExpireTime();
            }
        } else if (newMemberInfo.getVipType() == 1) {
            textView.setText("月卡会员：" + newMemberInfo.getMonthExpireTime());
            if (t2.i(newMemberInfo.getYearExpireTime())) {
                str = "年卡会员：" + newMemberInfo.getYearExpireTime();
            }
            if (t2.i(newMemberInfo.getSeasonExpireTime())) {
                if (t2.i(str)) {
                    str = str + "\n";
                }
                str = str + "季卡会员：" + newMemberInfo.getSeasonExpireTime();
            }
        }
        if (t2.i(str)) {
            textView2.setVisibility(0);
            textView2.setText(str);
        } else {
            textView2.setVisibility(8);
        }
        popupWindow.setContentView(viewInflate);
        popupWindow.showAsDropDown(this.iv_7, -((int) requireContext().getResources().getDimension(R.dimen.wdp260)), 0);
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
        i4 i4Var = this.adapter;
        if (i4Var != null) {
            i4Var.i0(true);
            notifyDataSetChanged();
        }
        com.papa.sim.statistic.t.l(requireContext()).R1(Event.commonExp, new ExtBean().setTypeCode(EventP.TypeCode.page.name()).setFirstModule(EventP.FirstModel.meTab.name()).setSecondModule(EventP.SecondModel.myCloudGame.name()).buildScene().toExt());
        getCloudRecGameData();
    }

    protected void loadData() {
        try {
            List<DownloadTask> listA = q5.f.M().A();
            List<DownloadTask> list = this.games;
            if (list != null) {
                list.clear();
            }
            if (listA != null) {
                for (DownloadTask downloadTask : listA) {
                    if (!d2.g(downloadTask.getPackageName()) || d2.w(downloadTask.getCrc_link_type_val())) {
                        if (t2.i(downloadTask.getMod_info())) {
                            ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class);
                            if (modInfoBean != null) {
                                DownloadTask downloadTaskG = q5.f.M().G(modInfoBean.getMod_game_id());
                                DownloadTask downloadTaskG2 = q5.f.M().G(modInfoBean.getMain_game_id());
                                boolean z10 = true;
                                boolean z11 = false;
                                boolean z12 = downloadTaskG != null && downloadTaskG.getStatus() == 5;
                                if (downloadTaskG2 != null) {
                                    if (downloadTaskG2.getStatus() != 5) {
                                        z10 = false;
                                    }
                                    z11 = z10;
                                }
                                if (z12 && z11) {
                                    if (!this.games.contains(downloadTaskG2)) {
                                        this.games.add(downloadTaskG2);
                                    }
                                } else if (z12) {
                                    if (!this.games.contains(downloadTaskG)) {
                                        this.games.add(downloadTaskG);
                                    }
                                } else if (!z11) {
                                    this.games.add(downloadTask);
                                } else if (!this.games.contains(downloadTaskG2)) {
                                    this.games.add(downloadTaskG2);
                                }
                            }
                        } else if (!d2.g(downloadTask.getPackageName()) || d2.w(downloadTask.getCrc_link_type_val())) {
                            this.games.add(downloadTask);
                        }
                    }
                }
            }
            List<DownloadTask> list2 = this.games;
            if (list2 != null) {
                this.lastGamesCount = list2.size();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showNoData();
        }
    }

    @Click
    void needUpdate() {
        MyGameUpdateManagerActivity_.intent(getContext()).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyDataSetChanged() {
        i4 i4Var = this.adapter;
        if (i4Var == null || i4Var.y() == null) {
            return;
        }
        this.adapter.y().clear();
        this.gameIds.clear();
        ArrayList arrayList = new ArrayList();
        List<DownloadTask> currentTypeGames = getCurrentTypeGames();
        try {
            Collections.sort(currentTypeGames, new Comparator<DownloadTask>() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment.5
                boolean isDownloading(int status) {
                    return status == 2 || status == 3 || status == 12 || status == 13 || status == 36 || status == 11 || status == 6 || status == 10 || status == 48;
                }

                boolean isFinished(int status) {
                    return status == 5 || isUpdate(status);
                }

                boolean isOpened(DownloadTask o10) {
                    return o10.isOpen();
                }

                boolean isUpdate(int status) {
                    return status == 9;
                }

                @Override // java.util.Comparator
                public int compare(DownloadTask o10, DownloadTask o11) {
                    if (isDownloading(o10.getStatus())) {
                        return (!isDownloading(o11.getStatus()) || o11.getStartTime() <= o10.getStartTime()) ? -1 : 1;
                    }
                    if (isDownloading(o11.getStatus())) {
                        return 1;
                    }
                    if (isFinished(o10.getStatus()) && !isOpened(o10)) {
                        return (!isFinished(o11.getStatus()) || isOpened(o11) || o11.getFinishTime() <= o10.getFinishTime()) ? -1 : 1;
                    }
                    if (isFinished(o11.getStatus()) && !isOpened(o11)) {
                        return 1;
                    }
                    if (isFinished(o10.getStatus())) {
                        return (!isFinished(o11.getStatus()) || o11.getOpenTime() < o10.getOpenTime()) ? -1 : 1;
                    }
                    return isFinished(o11.getStatus()) ? 1 : 0;
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        arrayList.add(new i4.f(11, Integer.valueOf(currentTypeGames.size())));
        int i10 = 0;
        if (currentTypeGames.size() > 0) {
            arrayList.add(new i4.f(12, "最近在玩"));
            int i11 = 0;
            for (DownloadTask downloadTask : currentTypeGames) {
                if (!d2.g(downloadTask.getPackageName()) || d2.w(downloadTask.getCrc_link_type_val())) {
                    arrayList.add(new i4.f(2, downloadTask, (!this.shortCutMap.containsKey(downloadTask.getCrc_link_type_val()) || this.shortCutMap.get(downloadTask.getCrc_link_type_val()) == null) ? false : this.shortCutMap.get(downloadTask.getCrc_link_type_val()).booleanValue()));
                    this.gameIds.add(downloadTask.getCrc_link_type_val().replace("cld_", ""));
                    i11++;
                }
            }
            i10 = i11;
        }
        if (i10 == 0) {
            arrayList.add(new i4.f(9, Integer.valueOf(currentTypeGames.size())));
        }
        arrayList.add(new i4.f(11, Integer.valueOf(currentTypeGames.size())));
        String strD = this.prefDef.cloudGameConfig().d();
        if (t2.i(strD)) {
            if (this.cloudGameConfigBean == null) {
                this.cloudGameConfigBean = (CloudGameConfigBean) JsonMapper.getInstance().fromJson(strD, CloudGameConfigBean.class);
            }
            CloudGameConfigBean cloudGameConfigBean = this.cloudGameConfigBean;
            if (cloudGameConfigBean != null && cloudGameConfigBean.getBanner() != null && this.cloudGameConfigBean.getBanner().getPersonal_center_banner() != null && !this.cloudGameConfigBean.getBanner().getPersonal_center_banner().isEmpty()) {
                arrayList.add(new i4.f(10, this.cloudGameConfigBean.getBanner().getPersonal_center_banner()));
            }
        }
        if (!this.cloudRecGames.isEmpty()) {
            arrayList.add(new i4.f(12, "为你推荐"));
            ArrayList arrayList2 = new ArrayList();
            for (CollectionSevenListBean collectionSevenListBean : this.cloudRecGames) {
                if (collectionSevenListBean.getItem() != null && (collectionSevenListBean.getItem() instanceof CommonGameInfoBean)) {
                    if (!this.gameIds.contains(((CommonGameInfoBean) collectionSevenListBean.getItem()).getGameId())) {
                        arrayList2.add(new i4.f(8, collectionSevenListBean));
                    }
                }
            }
            if (!arrayList2.isEmpty()) {
                arrayList.addAll(arrayList2);
                updateDownStateList(this.allDownloadAppHomeBeans);
            }
        }
        if (arrayList.isEmpty()) {
            showNoData();
        } else {
            showUi();
        }
        updateArchiveTime();
        this.adapter.q0(arrayList);
        this.adapter.notifyDataSetChanged();
        refreshShortcutState(currentTypeGames);
    }

    public void notifyShortcutAdded(String gameId) {
        this.shortCutMap.put(gameId, Boolean.FALSE);
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyShortcutChanged(HashMap<String, Boolean> map) {
        DownloadTask downloadTask;
        i4 i4Var = this.adapter;
        if (i4Var == null || i4Var.y() == null || this.adapter.y().size() == 0) {
            return;
        }
        for (i4.f fVar : this.adapter.y()) {
            if (fVar.b() == 2 && fVar.a() != null && (downloadTask = (DownloadTask) fVar.a()) != null && !TextUtils.isEmpty(downloadTask.getCrc_link_type_val()) && map.containsKey(downloadTask.getCrc_link_type_val())) {
                fVar.d(map.get(downloadTask.getCrc_link_type_val()).booleanValue());
            }
        }
        this.adapter.notifyDataSetChanged();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onAccountChangeEvent(com.join.mgps.event.b event) {
        if (event.b() == 2) {
            UserInfo accountData = AccountUtil_.getInstance_(requireContext()).getAccountData();
            this.accountBean = accountData;
            updateUserInfo(accountData);
        }
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onAddShortcutClick(DownloadTask downloadTask) {
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onApiResponseEvent(com.join.mgps.event.g event) {
        if (event.a() == ApiName.ArchivingCfg) {
            updateArchiveTime();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void onBirthdayUI(CustomDialog dialog, SetBirthdayResponse result) {
        if (result.getError() != 200) {
            ToastManager.show("设置失败，请重试");
            return;
        }
        dialog.E1();
        ToastManager.show("设置成功");
        com.papa.sim.statistic.t.l(requireContext()).R1(Event.commonReport, this.pageExtBean.copy().setChatId(EventP.ChatId.cloudGameSetVipBtnPop.name()).setResultCode(EventP.ResultCode.succ.name()).setParent(this.pageExtBean).buildScene().toExt());
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onClick(String gameId, DownloadTask downloadTask) {
        onMore(gameId, downloadTask);
    }

    void onDJClick() {
        IntentUtil.getInstance().startActivity(getContext(), CloudAssetRecordActivity.class, new Intent().putExtra("parentExtBean", this.pageExtBean.copy().buildScene()).putExtra("position", 3));
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        org.greenrobot.eventbus.c.f().A(this);
        super.onDestroy();
        this.mHanler.removeCallbacksAndMessages(null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadSpeed(com.join.mgps.event.q event) {
        if (event == null || TextUtils.isEmpty(event.a())) {
            return;
        }
        notifyDataSetChanged();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.kotlin.ui.hmcloud.fragment.r
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f49214b.lambda$onEventMainThread$19();
            }
        });
        int iC = downloadTaskEvent.c();
        if (iC == 2) {
            updateUI(downloadTaskA, 1);
            return;
        }
        if (iC == 3) {
            updateUI(downloadTaskA, 2);
            return;
        }
        if (iC != 5) {
            if (iC == 6) {
                updateUI(downloadTaskA, 6);
                return;
            }
            if (iC == 7) {
                updateUI(downloadTaskA, 3);
                return;
            }
            if (iC == 8) {
                if (this.SCROLLING) {
                    return;
                }
                updateProgressPartly();
                return;
            } else if (iC != 48) {
                switch (iC) {
                    case 10:
                        updateUI(downloadTaskA, 7);
                        break;
                    case 12:
                        updateUI(downloadTaskA, 8);
                        break;
                    case 13:
                        updateUI(downloadTaskA, 9);
                        break;
                }
                return;
            }
        }
        updateUI(downloadTaskA, 5);
    }

    @Receiver(actions = {p5.a.f96203k})
    void onGameOpened(@Receiver.Extra String gameId) {
        List<DownloadTask> list = this.games;
        if (list == null || list.size() < 1) {
            return;
        }
        for (DownloadTask downloadTask : this.games) {
            try {
                if (!TextUtils.isEmpty(downloadTask.getCrc_link_type_val()) && downloadTask.getCrc_link_type_val().equals(gameId)) {
                    DownloadTask downloadTaskG = q5.f.M().G(downloadTask.getCrc_link_type_val());
                    downloadTask.setOpen(true);
                    downloadTask.setOpenTime(System.currentTimeMillis());
                    if (downloadTaskG != null) {
                        downloadTaskG.setOpenTime(downloadTask.getOpenTime());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        this.hasExposureAd = false;
        this.noGameAdIndex++;
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onLongClick(String gameId) {
        UninstallWufunGameActivity_.intent(this.mContext).a(gameId).start();
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onMore(final String gameId, DownloadTask downloadTask) {
        com.join.mgps.customview.b0 b0Var = new com.join.mgps.customview.b0(getContext());
        b0Var.d(new com.join.mgps.customview.b0.a() { // from class: com.join.kotlin.ui.hmcloud.fragment.MyGamePapaCloudFragment.6
            @Override // com.join.mgps.customview.b0.a
            public void onAddShortCut(String id2) {
            }

            @Override // com.join.mgps.customview.b0.a
            public void onDeleteArchieve(String id2) {
            }

            @Override // com.join.mgps.customview.b0.a
            public void onDeleteGame(String id2) {
                DownloadTask downloadTaskG = q5.f.M().G(gameId);
                if (downloadTaskG == null) {
                    downloadTaskG = q5.f.M().L(gameId);
                }
                if (downloadTaskG == null) {
                    return;
                }
                MyGamePapaCloudFragment.this.onMoreDeleteGame(id2);
            }

            @Override // com.join.mgps.customview.b0.a
            public void onGameDetail(String id2) {
                DownloadTask downloadTaskG = q5.f.M().G(gameId);
                if (downloadTaskG == null) {
                    ExtBean extBean = new ExtBean();
                    extBean.setGameId(gameId.replace("cld_", ""));
                    extBean.setFirstModule(EventP.FirstModel.meTab.name()).setSecondModule(EventP.SecondModel.myCloudGame.name()).setResourceId(gameId.replace("cld_", "")).buildScene();
                    IntentUtil.getInstance().goGameDetialActivity(MyGamePapaCloudFragment.this.mContext, gameId.replace("cld_", ""), extBean);
                    return;
                }
                if (t2.i(downloadTaskG.getMod_info())) {
                    ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTaskG.getMod_info(), ModInfoBean.class);
                    DownloadTask downloadTaskG2 = modInfoBean != null ? q5.f.M().G(modInfoBean.getMain_game_id()) : null;
                    if (downloadTaskG2 == null) {
                        downloadTaskG.setCrc_link_type_val(modInfoBean.getMain_game_id());
                    } else {
                        downloadTaskG = downloadTaskG2;
                    }
                }
                downloadTaskG.set_from_type(127);
                boolean z10 = (downloadTaskG.getSp_tag_info() == null || downloadTaskG.getSp_tag_info().getOut_game() == null) ? false : true;
                if ((TextUtils.isEmpty(downloadTaskG.getFileType()) || !downloadTaskG.getFileType().equals(Dtype.chajian.name())) && !z10) {
                    IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(MyGamePapaCloudFragment.this.getContext(), downloadTaskG);
                }
            }

            @Override // com.join.mgps.customview.b0.a
            public void onStandMode(String id2) {
                new com.join.mgps.customview.s(MyGamePapaCloudFragment.this.getContext()).c(MyGamePapaCloudFragment.this.root, id2);
            }
        });
        b0Var.e(this.root, gameId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 100)
    public void onMoreDeleteGame(String id2) {
        onLongClick(id2);
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.isCreate) {
            i4 i4Var = this.adapter;
            if (i4Var != null) {
                i4Var.i0(true);
                notifyDataSetChanged();
            }
            if (t2.h(this.templateId)) {
                getCloudRecGameData();
            }
        }
        this.isCreate = true;
        refreshUserCenter();
        checkCloudSignOnEnter();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.lastVisibleIndex = (visibleItemCount + firstVisibleItem) - 1;
        this.firstVisiblePosition = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        boolean z10 = scrollState != 0;
        this.SCROLLING = z10;
        if (z10) {
            return;
        }
        explore();
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onSpeedUp(String gameId) {
    }

    void onTimeClick() {
        IntentUtil.getInstance().startActivity(getContext(), CloudAssetRecordActivity.class, new Intent().putExtra("parentExtBean", this.pageExtBean.copy().buildScene()).putExtra("position", 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void onVipBirthdayUI(MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeVipBirthdayResponseResult info) {
        boolean z10;
        String errorMsg = "";
        if (info == null || info.getError() != 200) {
            z10 = false;
        } else {
            new CustomDialog(new AnonymousClass4(info)).P2(Color.parseColor("#90000000")).g2(new com.kongzue.dialogx.interfaces.i() { // from class: com.join.kotlin.ui.hmcloud.fragment.t
                @Override // com.kongzue.dialogx.interfaces.i
                public final void run(Object obj) {
                    this.f49216a.lambda$onVipBirthdayUI$18((CustomDialog) obj);
                }
            }).M0();
            JSONObject jSONObject = new JSONObject();
            z10 = true;
            try {
                jSONObject.put("total", info.getInto().getTotalTime());
                errorMsg = jSONObject.toString();
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        ExtBean resultCode = this.pageExtBean.copy().setChatId(EventP.ChatId.cloudGameVipGetBenefitsPop.name()).setScenesCode("生日特权").setTypeCode(EventP.TypeCode.popup.name()).setResultCode((z10 ? EventP.ResultCode.succ : EventP.ResultCode.fail).name());
        if (!z10) {
            errorMsg = info != null ? info.getErrorMsg() : "未知";
        }
        com.papa.sim.statistic.t.l(requireContext()).R1(Event.commonReport, resultCode.setReMarks(errorMsg).buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void onVipDaysUI(MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeVipDaysResponseResult info) {
        boolean z10;
        String errorMsg;
        if (info == null || info.getError() != 200) {
            z10 = false;
        } else {
            new CustomDialog(new AnonymousClass3(info)).P2(Color.parseColor("#90000000")).g2(new com.kongzue.dialogx.interfaces.i() { // from class: com.join.kotlin.ui.hmcloud.fragment.v
                @Override // com.kongzue.dialogx.interfaces.i
                public final void run(Object obj) {
                    this.f49220a.lambda$onVipDaysUI$17((CustomDialog) obj);
                }
            }).M0();
            z10 = true;
        }
        ExtBean resultCode = this.pageExtBean.copy().setChatId(EventP.ChatId.cloudGameVipGetBenefitsPop.name()).setScenesCode("会员日特权").setResultCode((z10 ? EventP.ResultCode.succ : EventP.ResultCode.fail).name());
        if (z10) {
            errorMsg = info.getInto().toString();
        } else {
            errorMsg = info != null ? info.getErrorMsg() : "未知";
        }
        com.papa.sim.statistic.t.l(requireContext()).R1(Event.commonReport, resultCode.setReMarks(errorMsg).buildScene().toExt());
    }

    void onYBClick() {
        IntentUtil.getInstance().startActivity(getContext(), CloudAssetRecordActivity.class, new Intent().putExtra("parentExtBean", this.pageExtBean.copy().buildScene()).putExtra("position", 2));
    }

    void onYZClick() {
        IntentUtil.getInstance().startActivity(getContext(), CloudAssetRecordActivity.class, new Intent().putExtra("parentExtBean", this.pageExtBean.copy().buildScene()).putExtra("position", 1));
    }

    @Click
    void plugs() {
        MyGamePlugManagerActivity_.intent(getContext()).start();
    }

    @Receiver(actions = {p5.a.I})
    void refreshGamePurchasedList() {
        loadData();
    }

    public void refreshNotOpenState() {
        i4 i4Var = this.adapter;
        if (i4Var != null) {
            i4Var.i0(true);
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void refreshShortcutState() {
        try {
            HashMap<String, Boolean> mapD = com.join.mgps.Util.l.d(getContext());
            this.isNotShowIconAppMaps.clear();
            if (mapD != null && mapD.size() != 0) {
                this.isNotShowIconAppMaps.putAll(mapD);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void refreshUserCenter() {
        AccountUtil_.getInstance_(MApplication.f3182z).reload();
    }

    @Click
    void search() {
        IntentUtil.getInstance().goSearchHintActivity(getContext());
    }

    void sendSignPoint(String totalTime, String freeTime, String vipTime, Boolean succ) {
        String string;
        Context context = getContext();
        if (context == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("total", totalTime);
            jSONObject.put("dailySign", freeTime);
            jSONObject.put("cloudGameVipSign", vipTime);
            string = jSONObject.toString();
        } catch (JSONException e10) {
            e10.printStackTrace();
            string = "";
        }
        com.papa.sim.statistic.t.l(context).R1(Event.commonReport, this.pageExtBean.copy().itemWithParent(this.parentExtBean).setChatId(EventP.ChatId.cloudGameVipDailySignPop.name()).setResultCode((succ.booleanValue() ? EventP.ResultCode.succ : EventP.ResultCode.fail).name()).setReMarks(string).buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void setBirthdayClick(CustomDialog dialog, int month, int day) {
        Object objValueOf;
        Object objValueOf2;
        if (this.birthDay) {
            return;
        }
        if (!com.join.android.app.common.utils.m.j(requireContext())) {
            ToastManager.show("网络异常，请检查网络");
            return;
        }
        this.birthDay = true;
        MessageUserInfoRequest.SetBirthdayRequest.b bVarNewBuilder = MessageUserInfoRequest.SetBirthdayRequest.newBuilder();
        UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
        bVarNewBuilder.setUid(accountData.getUid()).setToken(accountData.getToken()).setAppVersion("517_6.1.7.0");
        StringBuilder sb2 = new StringBuilder();
        if (month > 9) {
            objValueOf = Integer.valueOf(month);
        } else {
            objValueOf = "0" + month;
        }
        sb2.append(objValueOf);
        sb2.append("-");
        if (day > 9) {
            objValueOf2 = Integer.valueOf(day);
        } else {
            objValueOf2 = "0" + day;
        }
        sb2.append(objValueOf2);
        bVarNewBuilder.setBirthday(sb2.toString());
        HashMap map = new HashMap();
        map.put("uid", bVarNewBuilder.getUid() + "");
        map.put(Constants.TOKEN, bVarNewBuilder.getToken());
        map.put("appVersion", "517_6.1.7.0");
        bVarNewBuilder.setSign(k2.d(map));
        onBirthdayUI(dialog, this.accountClientV2.s(bVarNewBuilder.build()));
        this.birthDay = false;
    }

    void showAddShortcut(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        Bitmap bitmapM = ImageLoader.q().m(downloadTask.getPortraitURL());
        if (bitmapM == null) {
            bitmapM = returnBitmap(downloadTask.getPortraitURL());
        }
        addShortout(getContext(), downloadTask.getShowName(), downloadTask.getCrc_link_type_val(), bitmapM);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void showAddShortcutResultDialog(String gameId) {
        new com.join.android.app.common.dialog.d(this.mContext, gameId).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showCloudSign(MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
        showCloudSign(adCfgInfo, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void showEntryDialogsIfNeeded() {
        if (this.entryDialogsHandled || !isAdded()) {
            return;
        }
        this.entryDialogsHandled = true;
        if (Build.VERSION.SDK_INT > 28 && this.prefDef.needShowPermissdialog().d().booleanValue() && !UtilsMy.n0(this.mContext)) {
            ((WufunGameDownFirstNotPermissDialog_.IntentBuilder_) WufunGameDownFirstNotPermissDialog_.intent(this.mContext).from(2).flags(C.ENCODING_PCM_MU_LAW)).start();
        }
        if (t2.i(this.pendingSignData)) {
            try {
                JSONObject jSONObject = new JSONObject(this.pendingSignData);
                showSignDialog(jSONObject.optString("totalTime"), jSONObject.optString("freeTime"), jSONObject.optString("vipTime"), Boolean.TRUE);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showNoData() {
        try {
            XListView2 xListView2 = this.listView;
            if (xListView2 != null) {
                xListView2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void showSetBirthday() {
        new CustomDialog(new AnonymousClass2()).P2(Color.parseColor("#90000000")).j2(new com.kongzue.dialogx.interfaces.i() { // from class: com.join.kotlin.ui.hmcloud.fragment.k
            @Override // com.kongzue.dialogx.interfaces.i
            public final void run(Object obj) {
                this.f49204a.lambda$showSetBirthday$15((CustomDialog) obj);
            }
        }).g2(new com.kongzue.dialogx.interfaces.i() { // from class: com.join.kotlin.ui.hmcloud.fragment.l
            @Override // com.kongzue.dialogx.interfaces.i
            public final void run(Object obj) {
                this.f49206a.lambda$showSetBirthday$16((CustomDialog) obj);
            }
        }).M0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void showSignDialog(String totalTime, String freeTime, String vipTime, Boolean succ) {
        if (isAdded()) {
            sendSignPoint(totalTime, freeTime, vipTime, succ);
            DialogUtils.INSTANCE.showSignDialog(requireActivity(), totalTime, freeTime, vipTime, new Function1() { // from class: com.join.kotlin.ui.hmcloud.fragment.n
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return this.f49210b.lambda$showSignDialog$11((DownloadTask) obj);
                }
            }, new Function0() { // from class: com.join.kotlin.ui.hmcloud.fragment.o
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return this.f49212b.lambda$showSignDialog$12();
                }
            }, new Function0() { // from class: com.join.kotlin.ui.hmcloud.fragment.p
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Boolean.FALSE;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showUi() {
        try {
            XListView2 xListView2 = this.listView;
            if (xListView2 != null) {
                xListView2.setVisibility(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void sign() {
        if (this.isSign) {
            return;
        }
        if (!com.join.android.app.common.utils.m.j(requireContext())) {
            ToastManager.show("网络异常，请检查网络");
            return;
        }
        if (this.accountBean.getNewMemberInfo().getIsSigned()) {
            com.kongzue.dialogx.dialogs.o.F3("今日已签,明日再来吧~");
            return;
        }
        this.isSign = true;
        MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSignInRequest.b bVarNewBuilder = MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSignInRequest.newBuilder();
        UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
        bVarNewBuilder.setUid(accountData.getUid()).setToken(accountData.getToken()).setAppVersion("517_6.1.7.0");
        HashMap map = new HashMap();
        map.put("uid", bVarNewBuilder.getUid() + "");
        map.put(Constants.TOKEN, bVarNewBuilder.getToken());
        map.put("appVersion", "517_6.1.7.0");
        bVarNewBuilder.setSign(k2.d(map));
        updateSignUI(this.accountClientV2.l(bVarNewBuilder.build()));
        this.isSign = false;
    }

    @UiThread
    public void updateArchiveTime() {
        List<DownloadTask> list = this.games;
        if (list != null) {
            for (DownloadTask downloadTask : list) {
                String strReplace = downloadTask.getCrc_link_type_val().replace("cld_", "");
                DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
                Long cloudArchiveTime = dlTaskManager.getCloudArchiveTime(strReplace);
                if (cloudArchiveTime == null) {
                    cloudArchiveTime = dlTaskManager.getCloudArchiveTime(t2.l(downloadTask.getRef_crc_sign_id(), "cld_", ""));
                }
                if (cloudArchiveTime == null || cloudArchiveTime.longValue() <= 0) {
                    downloadTask.setCloudArchiveTime("");
                } else {
                    downloadTask.setCloudArchiveTime(com.join.mgps.Util.e0.D(cloudArchiveTime.longValue(), "yyyy/MM/dd"));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateData(CollectionModuleSevenBean data) {
        if (data == null || data.getTemplate_items() == null || data.getTemplate_type() != 1) {
            return;
        }
        for (CollectionModuleSevenSubBean collectionModuleSevenSubBean : data.getTemplate_items()) {
            if (collectionModuleSevenSubBean != null && collectionModuleSevenSubBean.getModel_val() != null) {
                collectionModuleSevenSubBean.getModel_type();
                CollectionModuleSevenItemBean model_val = collectionModuleSevenSubBean.getModel_val();
                if (model_val != null && model_val.getGame_list() != null) {
                    for (CommonGameInfoBean commonGameInfoBean : model_val.getGame_list()) {
                        commonGameInfoBean.getExtBean().setFirstModule(EventP.FirstModel.meTab.name()).setSecondModule(EventP.SecondModel.myCloudGame.name()).setChatId(EventP.ChatId.myCloudGame.name()).setTypeCode(EventP.TypeCode.cloudGame.name()).setSopName(data.getTitle());
                        this.cloudRecGames.add(new CollectionSevenListBean(8, commonGameInfoBean));
                        this.allDownloadAppHomeBeans.add(commonGameInfoBean);
                    }
                }
                notifyDataSetChanged();
                this.mHanler.postDelayed(new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f49213b.explore();
                    }
                }, 800L);
            }
        }
    }

    @Receiver(actions = {p5.a.B})
    public void updateInfo(Context context) {
        this.accountBean = AccountUtil_.getInstance_(requireContext()).getAccountData();
        refreshUserCenter();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateSignUI(MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult result) {
        if (result == null) {
            ToastManager.show("签到失败，请重试");
            sendSignPoint("0", "0", "0", Boolean.FALSE);
        } else if (result.getError() == 200) {
            showSignDialog(result.getInto().getTotalTime(), result.getInto().getFreeTime(), result.getInto().getVipTime(), Boolean.TRUE);
        } else {
            ToastManager.show("签到失败，请重试");
            sendSignPoint("0", "0", "0", Boolean.FALSE);
        }
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask != null) {
            switch (from) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    receiveStart(downloadTask);
                    break;
                case 3:
                    receiveDelete(downloadTask);
                    break;
                case 5:
                    receiveSuccess(downloadTask);
                    break;
                case 6:
                    receiveError(downloadTask);
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUserInfo(UserInfo userInfo) {
        String str;
        final NewMemberInfo newMemberInfo = userInfo.getNewMemberInfo();
        if (!TextUtils.equals(this.sdv_head.getTag() + "", userInfo.getAvatarSrc())) {
            this.sdv_head.setTag(userInfo.getAvatarSrc());
            com.join.android.app.common.utils.l.h(this.sdv_head, userInfo.getAvatarSrc());
        }
        this.tv_text_1.setText(userInfo.getNickname());
        this.tv_text_2.setText("云钻 : " + newMemberInfo.getCloudDiamond());
        this.tv_text_3.setText("云币 : " + newMemberInfo.getCloudCoin());
        if (t2.i(newMemberInfo.getTotalTime())) {
            this.tv_text_4.setText(newMemberInfo.getTotalTime());
        } else {
            this.tv_text_4.setText(" 0小时");
        }
        if (newMemberInfo.getIsBaoYeCard() && newMemberInfo.getIsJiSuCard()) {
            str = "包夜/极速秒进";
        } else if (newMemberInfo.getIsBaoYeCard()) {
            str = "包夜";
        } else {
            str = newMemberInfo.getIsJiSuCard() ? "极速秒进" : "";
        }
        if (t2.i(str)) {
            this.tv_text_5.setText(str);
            this.g_1.setVisibility(0);
            this.tv_label_3.setText("特权生效中");
        } else {
            this.tv_text_5.setText("包夜/极速秒进");
            this.tv_label_3.setText("特权未生效");
            this.g_1.setVisibility(8);
        }
        if (newMemberInfo.getIsSigned()) {
            this.v_7.setVisibility(8);
        } else {
            this.v_7.setVisibility(0);
        }
        if (newMemberInfo.getIsVip()) {
            this.iv_7.setVisibility(0);
        } else {
            this.iv_7.setVisibility(8);
        }
        this.tv_text_6.setText(newMemberInfo.getPropNum() + "");
        final int showLabelType = newMemberInfo.getShowLabelType();
        if (!t2.i(newMemberInfo.getShowLabelContent())) {
            this.tv_text_7.setVisibility(8);
            return;
        }
        this.tv_text_7.setText(newMemberInfo.getShowLabelContent());
        this.tv_text_7.setVisibility(0);
        this.tv_text_7.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.fragment.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f49217b.lambda$updateUserInfo$14(showLabelType, newMemberInfo, view);
            }
        });
    }

    void v_3() {
        ExtBean extBeanBuildScene = this.pageExtBean.copy().setChatId(EventP.ChatId.myCloudGame.name()).setTypeCode(EventP.TypeCode.btnBuy.name()).setScenesCode("道具商城").buildScene();
        com.papa.sim.statistic.t.l(requireContext()).R1(Event.commonClick, extBeanBuildScene.toExt());
        IntentUtil.getInstance().goShareWebActivity(this.mContext, com.join.mgps.rpc.h.R, extBeanBuildScene);
    }

    void v_4() {
        ExtBean extBeanBuildScene = this.pageExtBean.copy().setChatId(EventP.ChatId.myCloudGame.name()).setTypeCode(EventP.TypeCode.btnBuy.name()).setScenesCode("云玩会员").buildScene();
        com.papa.sim.statistic.t.l(requireContext()).R1(Event.commonClick, extBeanBuildScene.toExt());
        IntentUtil.getInstance().goShareWebActivity(this.mContext, com.join.mgps.rpc.h.O, extBeanBuildScene);
    }

    void v_5() {
        ExtBean extBeanBuildScene = this.pageExtBean.copy().setChatId(EventP.ChatId.myCloudGame.name()).setTypeCode(EventP.TypeCode.btnBuy.name()).setScenesCode("云钻/币充值").buildScene();
        com.papa.sim.statistic.t.l(requireContext()).R1(Event.commonClick, extBeanBuildScene.toExt());
        IntentUtil.getInstance().goShareWebActivity(this.mContext, com.join.mgps.rpc.h.Q, extBeanBuildScene);
    }

    void v_6() {
        com.papa.sim.statistic.t.l(requireContext()).R1(Event.commonClick, this.pageExtBean.copy().setChatId(EventP.ChatId.myCloudGame.name()).setTypeCode(EventP.TypeCode.btnSign.name()).setScenesCode("日签").buildScene().toExt());
        checkSign(false);
    }

    void v_head() {
        IntentUtil.getInstance().startActivity(getContext(), CloudAssetRecordActivity.class, new Intent().putExtra("parentExtBean", this.pageExtBean.copy().buildScene()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void vipBirthdayClick(NewMemberInfo newMemberInfo) {
        if (this.vipBirthday) {
            return;
        }
        if (!com.join.android.app.common.utils.m.j(requireContext())) {
            ToastManager.show("网络异常，请检查网络");
            return;
        }
        this.vipBirthday = true;
        MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeVipRequest.b bVarNewBuilder = MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeVipRequest.newBuilder();
        UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
        bVarNewBuilder.setUid(accountData.getUid()).setToken(accountData.getToken()).setAppVersion("517_6.1.7.0");
        HashMap map = new HashMap();
        map.put("uid", bVarNewBuilder.getUid() + "");
        map.put(Constants.TOKEN, bVarNewBuilder.getToken());
        map.put("appVersion", "517_6.1.7.0");
        bVarNewBuilder.setSign(k2.d(map));
        onVipBirthdayUI(this.accountClientV2.h(bVarNewBuilder.build()));
        this.vipBirthday = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void vipDaysClick(NewMemberInfo newMemberInfo) {
        if (this.vipDays) {
            return;
        }
        if (!com.join.android.app.common.utils.m.j(requireContext())) {
            ToastManager.show("网络异常，请检查网络");
            return;
        }
        this.vipDays = true;
        MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeVipRequest.b bVarNewBuilder = MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeVipRequest.newBuilder();
        UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
        bVarNewBuilder.setUid(accountData.getUid()).setToken(accountData.getToken()).setAppVersion("517_6.1.7.0");
        HashMap map = new HashMap();
        map.put("uid", bVarNewBuilder.getUid() + "");
        map.put(Constants.TOKEN, bVarNewBuilder.getToken());
        map.put("appVersion", "517_6.1.7.0");
        bVarNewBuilder.setSign(k2.d(map));
        onVipDaysUI(this.accountClientV2.m(bVarNewBuilder.build()));
        this.vipDays = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showCloudSign(MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo, boolean proactive) {
        if (proactive) {
            this.checkingProactiveSign = false;
        }
        if (isAdded()) {
            if (adCfgInfo != null && adCfgInfo.getShowOldMember()) {
                if (DialogUtils.INSTANCE.showCloudGameSignTip(requireContext(), adCfgInfo, this.pageExtBean.copy().itemWithParent(this.parentExtBean).setChatId(EventP.ChatId.cloudGameOldUserDailySignPop.name()).buildScene(), new Runnable() { // from class: com.join.kotlin.ui.hmcloud.fragment.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f49208b.sign();
                    }
                })) {
                    return;
                }
            }
            if (proactive) {
                showEntryDialogsIfNeeded();
            } else {
                if (adCfgInfo == null) {
                    return;
                }
                if (adCfgInfo.getIsSigned()) {
                    openWebPage(adCfgInfo);
                } else {
                    sign();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void refreshShortcutState(List<DownloadTask> downloadTasks) {
        if (downloadTasks != null) {
            try {
                if (downloadTasks.size() == 0) {
                    return;
                }
                HashMap<String, Boolean> map = new HashMap<>();
                for (int i10 = 0; i10 < downloadTasks.size(); i10++) {
                    DownloadTask downloadTask = downloadTasks.get(i10);
                    map.put(downloadTask.getCrc_link_type_val(), Boolean.valueOf(canShowAddShortcut(getContext(), downloadTask)));
                    this.shortCutMap.put(downloadTask.getCrc_link_type_val(), Boolean.valueOf(canShowAddShortcut(getContext(), downloadTask)));
                }
                notifyShortcutChanged(map);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }
}
