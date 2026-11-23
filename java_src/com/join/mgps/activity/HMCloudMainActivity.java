package com.join.mgps.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Outline;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.util.Consumer;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.MApplication;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.beans.CapScreenData;
import com.haima.hmcp.beans.GameArchitectureType;
import com.haima.hmcp.beans.HMInputOpData;
import com.haima.hmcp.beans.PlayNotification;
import com.haima.hmcp.beans.VideoDelayInfo;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.haima.hmcp.device.input.enums.KeyType;
import com.haima.hmcp.enums.CloudPlayerKeyboardStatus;
import com.haima.hmcp.enums.ErrorType;
import com.haima.hmcp.enums.MessageType;
import com.haima.hmcp.enums.NetWorkState;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.enums.StreamType;
import com.haima.hmcp.enums.TouchMode;
import com.haima.hmcp.enums.WsMessageType;
import com.haima.hmcp.listeners.HmcpPlayerListener;
import com.haima.hmcp.listeners.IVideoDelayCallback;
import com.haima.hmcp.listeners.OnRelaunchGameListener;
import com.haima.hmcp.listeners.OnSendMessageListener;
import com.haima.hmcp.listeners.OnSendWsMessageListener;
import com.haima.hmcp.listeners.OnUpdataGameUIDListener;
import com.haima.hmcp.listeners.StreamingCallback;
import com.haima.hmcp.utils.CryptoUtils;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.StatusCallbackUtil;
import com.haima.hmcp.widgets.BaseVideoView;
import com.haima.hmcp.widgets.HmcpVideoView;
import com.haima.hmcp.widgets.HmcpVideoViewImpl;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.aw0;
import com.join.android.app.mgsim.wufun.databinding.se;
import com.join.kotlin.module.hmcloud.pad.HMZoomLayout;
import com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.kotlin.ui.hmcloud.dialog.DialogUtils;
import com.join.kotlin.ui.hmcloud.model.QueueAdBean;
import com.join.kotlin.utils.extention.StringKt;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.cloud.bean.HMMessage;
import com.join.mgps.customview.GifView;
import com.join.mgps.customview.TransparentClickImageView;
import com.join.mgps.dto.CloudGameConfigBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.OpGameTimeCountDown;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.enums.ApiName;
import com.join.mgps.hmcloud.HMCloudGameManager;
import com.join.mgps.pref.PrefDef_;
import com.kongzue.dialogx.dialogs.CustomDialog;
import com.kongzue.dialogx.dialogs.WaitDialog;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.arc.ext.ToastManager;
import com.papa91.arc.widget.htmltext.HtmlTextView;
import com.uc.crashsdk.export.LogType;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingVipStateRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse;
import com.wufan.user.service.protobuf.NewMemberInfo;
import com.wufan.user.service.protobuf.UserInfo;
import com.wufan.user.service.protobuf.enumeration.SceneType;
import com.wufan.user.service.protobuf.enumeration.ServerState;
import java.util.HashMap;
import java.util.Objects;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_hm_cloud_main)
public class HMCloudMainActivity extends HMCloudMenuActivity implements HmcpPlayerListener, OnSendWsMessageListener, StreamingCallback, IVideoDelayCallback, com.join.mgps.hmcloud.t, View.OnSystemUiVisibilityChangeListener {
    public static String EVENT_NAME = "HMCloudMain";
    public static final int H_RESTART_PLAY = 1001;
    private static final String TAG = "HMCloudMainActivity";
    private com.join.mgps.rpc.c accountClientV2;
    AnimationSet animationSet;

    @Extra
    ArchiveData archiveData;

    @Extra
    ModGameArchivePathData archivePathData;
    PopupWindow checkInPop;
    private ConstraintLayout cl_init_state;

    @ViewById
    ConstraintLayout cl_load_state;
    private ConstraintLayout cl_loading_state;

    @ViewById
    ConstraintLayout cl_menu;

    @ViewById
    ConstraintLayout cl_time_tip;

    @ViewById
    ConstraintLayout cl_wait_state;
    CloudGameConfigBean cloudGameConfigBean;

    @ViewById
    Group g_1;
    private com.join.mgps.rpc.k gameClient;

    @Extra
    String gameId;
    String gamePackageName;
    DownloadTask gameTask;

    @ViewById
    GifView gif_view;

    @ViewById
    GifView gif_view_1;

    @ViewById
    HmcpVideoView hm_video_view;

    @ViewById
    HtmlTextView htv_1;

    @ViewById
    ImageView iv_close;
    private RelativeLayout ll_x86_switch;

    @Extra
    ExtBean parentExtBean;
    private ProgressBar pb_view;

    @Extra
    long playTime;

    @Pref
    PrefDef_ prefDef_;
    QueueAdBean queueAdBean;
    private RadioGroup rg_touch_mode;

    @ViewById
    RelativeLayout rl_ad;
    com.join.mgps.rpc.c rpcAccountClientV2;
    private SimpleDraweeView sdv_icon;
    CustomDialog serverDialog;

    @ViewById
    TextView tv_btn_1;

    @ViewById
    TextView tv_btn_2;
    private TextView tv_text_1;
    private TextView tv_text_2;

    @ViewById
    TextView tv_text_3;

    @ViewById
    HtmlTextView tv_text_4;

    @ViewById
    TextView tv_text_5;

    @ViewById
    TextView tv_text_6;

    @ViewById
    TextView tv_text_7;

    @ViewById
    View v_mimi;

    @ViewById
    HMZoomLayout zoom_layout;

    @Extra
    String showTopTip = "";

    @Extra
    String secretKeyStr = "";

    @Extra
    int goldFingerSwitch = 0;

    @Extra
    int bbsStrategySwitch = 0;
    String curServerId = "";
    public MutableLiveData<Integer> fpsLive = new MutableLiveData<>();
    public MutableLiveData<String> toastLive = new MutableLiveData<>();
    public MutableLiveData<OpGameTimeCountDown> countDownLive = new MutableLiveData<>();
    int retryCount = 0;
    boolean checkRealNameRequired = false;
    Handler mHandler = new Handler(new Handler.Callback() { // from class: com.join.mgps.activity.j4
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            return this.f57348b.lambda$new$0(message);
        }
    });
    private boolean isFirstFrameArrived = false;
    boolean isSign = false;
    boolean loadingServerList = false;
    boolean isShowQueueState = false;
    boolean isShowLoadState = false;
    private long startPlayTime = 0;
    int firstStartPlay = 0;
    WaitDialog waitDialog = null;

    class a extends m6.d {
        a() {
        }

        @Override // m6.d, com.join.mgps.callbacks.r
        public void onEvent(Activity activity, int event, String jsonParams) {
            super.onEvent(activity, event, jsonParams);
        }
    }

    class b implements OnUpdataGameUIDListener {
        b() {
        }

        @Override // com.haima.hmcp.listeners.OnUpdataGameUIDListener
        public void fail(String s10) {
        }

        @Override // com.haima.hmcp.listeners.OnUpdataGameUIDListener
        public void success(boolean b10) {
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (HMCloudMainActivity.this.viewModel.getResolutionList().getValue() == null || HMCloudMainActivity.this.viewModel.getResolutionList().getValue().isEmpty()) {
                HMCloudMainActivity.this.viewModel.getResolutionList().postValue(HMCloudMainActivity.this.hm_video_view.getResolutionList());
            }
            HMCloudMainActivity.this.viewModel.getCurrentResolution().postValue(HMCloudMainActivity.this.hm_video_view.getCurResolution());
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int childCount = HMCloudMainActivity.this.hm_video_view.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = HMCloudMainActivity.this.hm_video_view.getChildAt(i10);
                if (childAt instanceof HmcpVideoViewImpl) {
                    HmcpVideoViewImpl hmcpVideoViewImpl = (HmcpVideoViewImpl) childAt;
                    hmcpVideoViewImpl.hideKeyboard();
                    hmcpVideoViewImpl.showVirtualStick(false);
                    hmcpVideoViewImpl.mVirtualDeviceLayout = null;
                }
            }
            HMCloudMainActivity hMCloudMainActivity = HMCloudMainActivity.this;
            hMCloudMainActivity.resizeOpContainer(hMCloudMainActivity.hm_video_view.getMeasuredWidth(), HMCloudMainActivity.this.hm_video_view.getMeasuredHeight());
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            HMCloudMainActivity.this.goCharge("");
        }
    }

    class f extends ViewOutlineProvider {
        f() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), view.getHeight() / 2.0f);
        }
    }

    class g implements Animation.AnimationListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupWindow f53603b;

        g(final PopupWindow val$popupWindow) {
            this.f53603b = val$popupWindow;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f53603b.dismiss();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class h implements OnSendMessageListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f53605a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f53606b;

        h(final String val$payload, final boolean val$retry) {
            this.f53605a = val$payload;
            this.f53606b = val$retry;
        }

        @Override // com.haima.hmcp.listeners.OnSendMessageListener
        public void result(boolean b10, String s10) {
            if (!b10 && this.f53606b) {
                HMCloudMainActivity.this.sendMessage(this.f53605a, false);
            }
        }
    }

    class i implements OnSendMessageListener {
        i() {
        }

        @Override // com.haima.hmcp.listeners.OnSendMessageListener
        public void result(boolean b10, String s10) {
            if (b10) {
                return;
            }
            HMCloudMainActivity.this.toastLive.postValue("截图失败");
        }
    }

    class j implements OnRelaunchGameListener {
        j() {
        }

        @Override // com.haima.hmcp.listeners.OnRelaunchGameListener
        public void fail(String s10) {
        }

        @Override // com.haima.hmcp.listeners.OnRelaunchGameListener
        public void success(boolean b10) {
            HMCloudMainActivity.this.toastLive.postValue("重启成功");
        }
    }

    class k extends m6.d {
        k() {
        }

        @Override // m6.d, com.join.mgps.callbacks.r
        public void onEvent(Activity activity, int event, String jsonParams) {
            super.onEvent(activity, event, jsonParams);
            if (event == 3) {
                HMCloudMainActivity.this.exitGame();
            }
        }
    }

    class l extends ViewOutlineProvider {
        l() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), view.getHeight() / 2.0f);
        }
    }

    class m implements GameRoomActivity.x {
        m() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int from, int duration) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean btnBean) {
            if (btnBean.getEventType().intValue() == 1) {
                HMCloudMainActivity.this.checkRealNameRequired = true;
            }
        }
    }

    class n implements Function1<HMInputOpData, Unit> {
        n() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Unit invoke(HMInputOpData data) {
            HMCloudMainActivity.this.hm_video_view.sendCustomKeycode(data);
            return null;
        }
    }

    class o implements Animation.AnimationListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f53614b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f53615c;

        o(final View val$target, final boolean val$showCharge) {
            this.f53614b = val$target;
            this.f53615c = val$showCharge;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f53614b.setVisibility(8);
            if (this.f53615c) {
                HMCloudMainActivity.this.showTip("");
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class p extends m6.d {
        p() {
        }

        @Override // m6.d, com.join.mgps.callbacks.r
        public void onEvent(Activity activity, int event, String jsonParams) {
            super.onEvent(activity, event, jsonParams);
            if (event == 9) {
                activity.finish();
                HMCloudMainActivity.this.showRechargeResult();
            } else if (event == 10) {
                activity.finish();
                HMCloudMainActivity.this.showGameOver();
            }
        }
    }

    class q implements Consumer<Boolean> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ExtBean f53618b;

        q(final ExtBean val$extBean) {
            this.f53618b = val$extBean;
        }

        @Override // androidx.core.util.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Boolean aBoolean) {
            HMCloudGameManager.W().V();
            com.papa.sim.statistic.t.l(HMCloudMainActivity.this).R1(Event.commonExp, this.f53618b.copy().setTypeCode(EventP.TypeCode.btnExit.name()).buildScene().toExt());
        }
    }

    class r extends m6.d {
        r() {
        }

        @Override // m6.d, com.join.mgps.callbacks.r
        public void onEvent(Activity activity, int event, String jsonParams) {
            super.onEvent(activity, event, jsonParams);
        }
    }

    class s extends com.kongzue.dialogx.interfaces.s<CustomDialog, se> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f53621a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53622b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f53623c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Activity f53624d;

        s(final String val$totalTime, final String val$freeTime, final String val$vipTime, final Activity val$parent) {
            this.f53621a = val$totalTime;
            this.f53622b = val$freeTime;
            this.f53623c = val$vipTime;
            this.f53624d = val$parent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(CustomDialog customDialog, Activity activity, View view) {
            customDialog.E1();
            activity.finish();
            HMCloudMainActivity.this.showCloudNewUser();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(CustomDialog customDialog, Activity activity, View view) {
            customDialog.E1();
            activity.finish();
            HMCloudMainActivity.this.showCloudNewUser();
        }

        @Override // com.kongzue.dialogx.interfaces.s
        public void onBind(final CustomDialog dialog, View v10, se binding) {
            binding.L(this.f53621a);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("免费时长+");
            sb2.append(Html.fromHtml("<font color='#FF6200'>" + this.f53622b + "</font>").toString());
            binding.G(sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append("会员时长+");
            sb3.append(Html.fromHtml("<font color='#FF6200'>" + this.f53623c + "</font>").toString());
            binding.M(sb3.toString());
            UserInfo accountData = AccountUtil_.getInstance_(HMCloudMainActivity.this).getAccountData();
            binding.K(Boolean.FALSE);
            binding.f44746e.setVisibility(8);
            NewMemberInfo newMemberInfo = accountData.getNewMemberInfo();
            if (newMemberInfo.getVipType() == 3) {
                binding.N("年卡");
            } else if (newMemberInfo.getVipType() == 2) {
                binding.N("季卡");
            } else if (newMemberInfo.getVipType() == 1) {
                binding.N("月卡");
            } else {
                binding.N("");
            }
            TextView textView = binding.f44748g;
            final Activity activity = this.f53624d;
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.l4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f57397b.j(dialog, activity, view);
                }
            });
            ImageView imageView = binding.f44745d;
            final Activity activity2 = this.f53624d;
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.m4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f57481b.k(dialog, activity2, view);
                }
            });
        }
    }

    class t extends com.kongzue.dialogx.interfaces.s<CustomDialog, se> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f53626a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53627b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f53628c;

        t(final String val$totalTime, final String val$freeTime, final String val$vipTime) {
            this.f53626a = val$totalTime;
            this.f53627b = val$freeTime;
            this.f53628c = val$vipTime;
        }

        @Override // com.kongzue.dialogx.interfaces.s
        public void onBind(final CustomDialog dialog, View v10, se binding) {
            binding.L(this.f53626a);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("免费时长+");
            sb2.append(Html.fromHtml("<font color='#FF6200'>" + this.f53627b + "</font>").toString());
            binding.G(sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append("会员时长+");
            sb3.append(Html.fromHtml("<font color='#FF6200'>" + this.f53628c + "</font>").toString());
            binding.M(sb3.toString());
            binding.K(Boolean.FALSE);
            binding.f44746e.setVisibility(8);
            NewMemberInfo newMemberInfo = AccountUtil_.getInstance_(HMCloudMainActivity.this).getAccountData().getNewMemberInfo();
            if (newMemberInfo.getVipType() == 3) {
                binding.N("年卡");
            } else if (newMemberInfo.getVipType() == 2) {
                binding.N("季卡");
            } else if (newMemberInfo.getVipType() == 1) {
                binding.N("月卡");
            } else {
                binding.N("");
            }
            binding.f44748g.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.n4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dialog.E1();
                }
            });
            binding.f44745d.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.o4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dialog.E1();
                }
            });
        }
    }

    class u extends com.kongzue.dialogx.interfaces.r<CustomDialog> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MessageCloudGamingServerListResponse.ServerInfo f53630a;

        class a extends com.join.mgps.base.decoration.b {
            a() {
            }

            @Override // com.join.mgps.base.decoration.b
            public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
                com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
                aVar.f64116f = 0;
                aVar.f64120d = (int) HMCloudMainActivity.this.getResources().getDimension(R.dimen.wdp10);
                return aVar;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        u(int layoutResId, final MessageCloudGamingServerListResponse.ServerInfo val$serverInfo) {
            super(layoutResId);
            this.f53630a = val$serverInfo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(com.join.mgps.adapter.k kVar, CustomDialog customDialog, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
            MessageCloudGamingServerListResponse.LineList item = kVar.getItem(i10);
            UserInfo accountData = AccountUtil_.getInstance_(HMCloudMainActivity.this).getAccountData();
            HMCloudGameManager.W().W0(item);
            if (kVar.k(item) || item.getState() == ServerState.SERVER_LINE_STOP) {
                customDialog.E1();
                return;
            }
            customDialog.E1();
            if (!item.getIsVip() || com.join.mgps.Util.b.pivc(accountData)) {
                kVar.m(item.getServerLineNum());
                if (HMCloudGameManager.W().Q0(item)) {
                    return;
                }
                HMCloudGameManager.W().L(item);
                HMCloudMainActivity.this.updateLineUI(item, 2);
                return;
            }
            ExtBean extBean = new ExtBean();
            extBean.setGameId(HMCloudGameManager.W().e0());
            extBean.setTypeCode(EventP.TypeCode.page.name()).setChatId(EventP.ChatId.cloudGameLoading.name());
            extBean.setParent(HMCloudGameManager.W().b0().f71687i);
            HMCloudMainActivity.this.openChargeVip(extBean);
        }

        @Override // com.kongzue.dialogx.interfaces.r
        public void onBind(final CustomDialog dialog, View v10) {
            View viewFindViewById = v10.findViewById(R.id.iv_1);
            RecyclerView recyclerView = (RecyclerView) v10.findViewById(R.id.rv_list);
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.p4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dialog.E1();
                }
            });
            final com.join.mgps.adapter.k kVar = new com.join.mgps.adapter.k();
            recyclerView.setAdapter(kVar);
            recyclerView.setLayoutManager(new LinearLayoutManager(HMCloudMainActivity.this));
            recyclerView.addItemDecoration(new a());
            kVar.submitList(this.f53630a.getListInfoList());
            kVar.m(HMCloudMainActivity.this.curServerId);
            kVar.setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.mgps.activity.q4
                @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
                public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                    this.f57905a.f(kVar, dialog, baseQuickAdapter, view, i10);
                }
            });
        }
    }

    private boolean afterFirstFrameArrival() {
        boolean z10;
        this.mHandler.post(new c());
        this.viewModel.setCid(HmcpManager.getInstance().getCloudId());
        if (this.isFirstFrameArrived) {
            z10 = false;
        } else {
            toast("点击右侧悬浮球更改设置哦~");
            ExtBean extBean = new ExtBean();
            extBean.setGameId(HMCloudGameManager.W().e0());
            extBean.setTypeCode(EventP.TypeCode.cloudGame.name()).setChatId(EventP.ChatId.cloudGame.name()).setResourceId(this.gameId).setParent(this.parentExtBean).setGuideKey(HMCloudGameManager.W().c0()).buildScene();
            com.papa.sim.statistic.t.l(this).R1(Event.gameStart, extBean.toExt());
            checkRealName();
            this.signViewModel.checkSign();
            hideHmVirtual();
            setLastResolution();
            if (this.playTime < 60) {
                OpGameTimeCountDown opGameTimeCountDown = new OpGameTimeCountDown();
                opGameTimeCountDown.setAhead(this.playTime);
                this.countDownLive.postValue(opGameTimeCountDown);
            }
            if (this.viewModel.getMute().getValue() != null) {
                this.hm_video_view.setAudioMute(this.viewModel.getMute().getValue().booleanValue());
            }
            checkGuide();
            z10 = true;
        }
        this.isFirstFrameArrived = true;
        hookKeyboardShow();
        boolean z11 = HmcpManager.getInstance().getGameArchitectureType() == GameArchitectureType.X86;
        this.viewModel.isHmCloudPc().postValue(Boolean.valueOf(z11));
        this.viewModel.getGameCfgInfoBySrv();
        if (this.viewModel.getTouchMode().getValue() == null) {
            this.viewModel.getTouchMode().postValue(Integer.valueOf(this.hm_video_view.getTouchMode().ordinal()));
        }
        if (z11) {
            this.viewModel.refreshKeys();
        }
        return z10;
    }

    private void collectOpInput() {
        this.viewModel.collectOpInputData(new n());
    }

    private void hideHmVirtual() {
        HmcpVideoView hmcpVideoView = this.hm_video_view;
        if (hmcpVideoView == null) {
            return;
        }
        hmcpVideoView.post(new d());
    }

    private void hideTimeTip(View target, AnimationSet animationSet, long delay, boolean showCharge) {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, 1.0f);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setStartOffset(delay);
        translateAnimation.setDuration(500L);
        translateAnimation.setFillAfter(true);
        translateAnimation.setStartOffset(delay);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(alphaAnimation);
        animationSet.setAnimationListener(new o(target, showCharge));
        target.startAnimation(animationSet);
    }

    private void initUIData() {
        DownloadTask downloadTask = this.gameTask;
        if (downloadTask != null) {
            this.sdv_icon.setImageURI(downloadTask.getPortraitURL());
            this.tv_text_1.setText(this.gameTask.getShowName());
            this.gif_view_1.c(R.raw.ic_cloud_wait);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$HmcpPlayerStatusCallback$17(Boolean bool) {
        HMCloudGameManager.W().V();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$HmcpPlayerStatusCallback$18(Boolean bool) {
        HMCloudGameManager.W().V();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$HmcpPlayerStatusCallback$19(Boolean bool) {
        HMCloudGameManager.W().V();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$HmcpPlayerStatusCallback$20(JSONObject jSONObject) {
        JSONObject jSONObject2;
        try {
            jSONObject2 = new JSONObject(jSONObject.optString(StatusCallbackUtil.DATA));
        } catch (Exception e10) {
            e10.printStackTrace();
            jSONObject2 = null;
        }
        String strOptString = jSONObject2.optString("errorCodeWithoutCid");
        String str = jSONObject2.optString("errorMessage") + "[" + strOptString + "]";
        if ("200211008".equals(strOptString) || "500100024".equals(strOptString)) {
            int i10 = this.retryCount;
            if (i10 < 3) {
                this.retryCount = i10 + 1;
                this.mHandler.sendEmptyMessageDelayed(1001, BaseCloudFileManager.ACK_TIMEOUT);
            } else {
                DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_10, "退出提醒", "退出游戏", "服务器连接错误，请重新进入", new Consumer() { // from class: com.join.mgps.activity.h3
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        HMCloudMainActivity.lambda$HmcpPlayerStatusCallback$18((Boolean) obj);
                    }
                });
            }
        } else {
            DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_10, "退出提醒", "退出游戏", "服务器连接错误，请重新进入", new Consumer() { // from class: com.join.mgps.activity.i3
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    HMCloudMainActivity.lambda$HmcpPlayerStatusCallback$19((Boolean) obj);
                }
            });
        }
        HMCloudGameManager.W().Y0(EventP.ResultCode.fail, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$HmcpPlayerStatusCallback$21(Boolean bool) {
        onFinishGame();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$HmcpPlayerStatusCallback$22(JSONObject jSONObject) {
        JSONObject jSONObject2;
        try {
            jSONObject2 = new JSONObject(jSONObject.optString(StatusCallbackUtil.DATA));
        } catch (Exception e10) {
            e10.printStackTrace();
            jSONObject2 = null;
        }
        if (jSONObject2 != null) {
            String strOptString = jSONObject2.optString("finishTip");
            if (jSONObject2.optInt("quitType", 0) == 1) {
                showGameOver();
            } else {
                DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_10, "退出提醒", "退出游戏", strOptString, new Consumer() { // from class: com.join.mgps.activity.g3
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        this.f57222b.lambda$HmcpPlayerStatusCallback$21((Boolean) obj);
                    }
                });
            }
            if (HMCloudGameManager.W().n0()) {
                ExtBean extBean = new ExtBean();
                if (HMCloudGameManager.W().b0() != null) {
                    extBean.setParent(HMCloudGameManager.W().b0().f71687i);
                }
                extBean.setGameId(HMCloudGameManager.W().e0());
                extBean.setTypeCode(EventP.TypeCode.cloudGameLineUp.name()).setChatId(EventP.ChatId.cloudGameLoading.name()).setSopNo(HMCloudGameManager.W().i0().getServerLineNum()).setSopName(Html.fromHtml(HMCloudGameManager.W().i0().getServerName()).toString()).setResourceId(HMCloudGameManager.W().e0()).setGuideKey(HMCloudGameManager.W().c0()).setResultCode(EventP.ResultCode.fail.name()).setReMarks(strOptString).buildScene();
                com.papa.sim.statistic.t.l(this).R1(Event.commonReport, extBean.toExt());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$HmcpPlayerStatusCallback$23(Boolean bool) {
        HMCloudGameManager.W().V();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$HmcpPlayerStatusCallback$24() {
        DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_11, "检测到账号信息改变", "退出游戏", "1、可能因您登录其他账号导致\n2、可能因其他设备登录您账号导致", new Consumer() { // from class: com.join.mgps.activity.q3
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                HMCloudMainActivity.lambda$HmcpPlayerStatusCallback$23((Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$HmcpPlayerStatusCallback$25(Boolean bool) {
        onFinishGame();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$HmcpPlayerStatusCallback$26(JSONObject jSONObject) {
        JSONObject jSONObject2;
        try {
            jSONObject2 = new JSONObject(jSONObject.optString(StatusCallbackUtil.DATA));
        } catch (Exception e10) {
            e10.printStackTrace();
            jSONObject2 = null;
        }
        if (jSONObject2 != null) {
            int iOptInt = jSONObject2.optInt("stateChangeReason");
            String strOptString = jSONObject2.optString("errorMsg");
            if (iOptInt == 100140) {
                strOptString = "游戏结束，无效时长";
            } else if (iOptInt == 100141) {
                runOnUiThread(new Runnable() { // from class: com.join.mgps.activity.k4
                    @Override // java.lang.Runnable
                    public final void run() {
                        HMCloudMainActivity.lambda$HmcpPlayerStatusCallback$24();
                    }
                });
                return;
            }
            if (com.join.mgps.Util.t2.h(strOptString)) {
                strOptString = "游戏异常退出";
            }
            DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_10, "退出提醒", "退出游戏", strOptString, new Consumer() { // from class: com.join.mgps.activity.f3
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f57208b.lambda$HmcpPlayerStatusCallback$25((Boolean) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterViews$1(View view) {
        QueueAdBean queueAdBean = this.queueAdBean;
        if (queueAdBean != null && queueAdBean.getMember_buy_ad() == null && this.queueAdBean.getCard_buy_ad() == null) {
            exitGame();
            return;
        }
        if (!HMCloudGameManager.W().n0()) {
            exitGame();
            return;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        Intent intent = new Intent();
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        String str = com.join.mgps.rpc.h.X;
        if (!str.contains("isVip")) {
            if (str.contains("?") && str.contains(SimpleComparison.EQUAL_TO_OPERATION)) {
                str = str + "&isVip=" + com.join.mgps.Util.b.pivc(accountData);
            } else {
                str = str + "?isVip=" + com.join.mgps.Util.b.pivc(accountData);
            }
        }
        intentDateBean.setLink_type_val(str);
        intent.putExtra("intentdate", intentDateBean);
        IntentUtil.getInstance().startActivityWithCallback(this, FullShareWebActivity_.class, intent, new k());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterViews$2(View view) {
        HMCloudGameManager.W().c1(true);
        finish();
        HMCloudGameManager.W().m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initObserver$4(Boolean bool) {
        this.hm_video_view.setAudioMute(bool.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initObserver$5(Integer num) {
        TouchMode touchMode;
        if (num == null || this.hm_video_view.getTouchMode() == (touchMode = TouchMode.parse(num.intValue()))) {
            return;
        }
        this.hm_video_view.setTouchMode(touchMode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initObserver$6(Float f10) {
        this.hm_video_view.setMouseSensitivity(f10.floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initObserver$7(Boolean bool) {
        this.zoom_layout.setAllowZoom(bool.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$0(Message message) {
        if (message.what != 1001) {
            return false;
        }
        startPlay();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onChangeUiState$14(HMCloudGameManager.GAME_UI_STATE game_ui_state, Bundle bundle) {
        boolean z10 = false;
        if (game_ui_state == HMCloudGameManager.GAME_UI_STATE.INIT) {
            showLoadingState(true);
            showInitState(true);
            showQueueState(false);
            showLoadState(false);
            showMenuState(true);
            this.tv_text_2.setText("云端资源初始化中，请稍后 ...");
            return;
        }
        if (game_ui_state == HMCloudGameManager.GAME_UI_STATE.HM_LOAD_RESOURCE) {
            showInitState(false);
            showLoadState(true);
            showQueueState(false);
            showMenuState(false);
            this.tv_text_2.setText("初始化完成，资源加载中...");
            CustomDialog customDialog = this.serverDialog;
            if (customDialog != null && customDialog.m0()) {
                this.serverDialog.E1();
            }
            startPlay();
            return;
        }
        if (game_ui_state == HMCloudGameManager.GAME_UI_STATE.QUEUE) {
            showLoadingState(true);
            showInitState(false);
            showQueueState(true);
            showLoadState(false);
            if (bundle != null) {
                int i10 = bundle.getInt("queueIndex", 1);
                if (i10 <= 0) {
                    this.tv_text_3.setText("即将进入游戏");
                    this.tv_text_6.setVisibility(8);
                    this.tv_text_7.setVisibility(8);
                    return;
                }
                this.tv_text_3.setText("线路爆满 排队中，前方剩余：");
                this.tv_text_6.setVisibility(0);
                this.tv_text_7.setVisibility(0);
                this.tv_text_6.setText(i10 + "");
                return;
            }
            return;
        }
        if (game_ui_state == HMCloudGameManager.GAME_UI_STATE.HM_START_PLAY_REQUEST) {
            showLoadingState(true);
            showInitState(false);
            showQueueState(false);
            showLoadState(true);
            this.hm_video_view.play();
            return;
        }
        if (game_ui_state != HMCloudGameManager.GAME_UI_STATE.HM_START_PLAY) {
            if (game_ui_state != HMCloudGameManager.GAME_UI_STATE.HM_FIRST_FRAME_ARRIVAL || this.firstStartPlay == 1) {
                return;
            }
            afterFirstFrameArrival();
            return;
        }
        showLoadingState(false);
        showInitState(false);
        showQueueState(false);
        showLoadState(false);
        if (this.firstStartPlay == 0) {
            this.firstStartPlay = 1;
            boolean zAfterFirstFrameArrival = afterFirstFrameArrival();
            this.firstStartPlay = 0;
            z10 = zAfterFirstFrameArrival;
        }
        HMCloudGameManager.W().J0(z10);
        if (this.cl_time_tip.getVisibility() == 0) {
            AnimationSet animationSet = new AnimationSet(true);
            this.animationSet = animationSet;
            hideTimeTip(this.cl_time_tip, animationSet, 500L, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateProgress$15(HMCloudGameManager.GAME_UI_STATE game_ui_state, int i10) {
        if (game_ui_state == HMCloudGameManager.GAME_UI_STATE.INIT) {
            if (Build.VERSION.SDK_INT >= 24) {
                this.pb_view.setProgress(i10, true);
                return;
            } else {
                this.pb_view.setProgress(i10);
                return;
            }
        }
        if (game_ui_state == HMCloudGameManager.GAME_UI_STATE.HM_LOAD_RESOURCE) {
            this.tv_text_5.setText(com.alipay.sdk.widget.a.f7251d + ((Object) Html.fromHtml(HMCloudGameManager.W().i0().getServerName())) + "线路，请稍后...");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCloudSignTip$27(View view) {
        this.signViewModel.performClickSign();
        this.checkInPop.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCloudSignTip$28(View view) {
        this.checkInPop.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showGameOver$10(ExtBean extBean, CustomDialog customDialog) {
        customDialog.E1();
        showCloudCharge(AccountUtil_.getInstance_(this).getAccountData());
        com.papa.sim.statistic.t.l(this).R1(Event.commonClick, extBean.copy().setTypeCode(EventP.TypeCode.btnBuy.name()).buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showGameOver$11(ExtBean extBean, Boolean bool) {
        onFinishGame();
        com.papa.sim.statistic.t.l(this).R1(Event.commonClick, extBean.copy().setTypeCode(EventP.TypeCode.btnExit.name()).buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showQueueState$12(ExtBean extBean, View view) {
        IntentDateBean intentDataBean = this.queueAdBean.getCard_buy_ad().getIntentDataBean();
        if (intentDataBean != null) {
            intentDataBean.setLink_type_val(this.queueAdBean.getUse_card_url());
            onCardClick(intentDataBean, extBean);
        }
        com.papa.sim.statistic.t.l(this).R1(Event.commonClick, extBean.buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showQueueState$13(ExtBean extBean, View view) {
        IntentDateBean intentDataBean = this.queueAdBean.getMember_buy_ad().getIntentDataBean();
        if (intentDataBean != null) {
            String link_type_val = intentDataBean.getLink_type_val();
            if (!link_type_val.contains("onlyshow")) {
                if (link_type_val.contains("?") && link_type_val.contains(SimpleComparison.EQUAL_TO_OPERATION)) {
                    link_type_val = link_type_val + "&onlyshow=vip";
                } else {
                    link_type_val = link_type_val + "?onlyshow=vip";
                }
            }
            intentDataBean.setLink_type_val(link_type_val);
            onCardClick(intentDataBean, extBean);
        }
        com.papa.sim.statistic.t.l(this).R1(Event.commonClick, extBean.buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTip$9(View view) {
        ExtBean extBean = new ExtBean();
        extBean.setGameId(HMCloudGameManager.W().e0());
        extBean.setTypeCode(EventP.TypeCode.page.name()).setChatId(EventP.ChatId.cloudGameLoading.name());
        if (HMCloudGameManager.W().b0() != null) {
            extBean.setParent(HMCloudGameManager.W().b0().f71687i);
        }
        openChargeVip(extBean);
        HMCloudGameManager.W().U0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toastTimeCountDown1$16(AnimationSet animationSet, PopupWindow popupWindow, View view) {
        animationSet.setAnimationListener(new g(popupWindow));
        view.startAnimation(animationSet);
    }

    private void onCardClick(IntentDateBean intentDateBean, ExtBean extBean) {
        if (intentDateBean.getLink_type() == 4) {
            String link_type_val = intentDateBean.getLink_type_val();
            HashMap map = new HashMap();
            map.put("gameId", this.gameId);
            StringKt.addUrlParams(link_type_val, map);
            intentDateBean.setLink_type_val(link_type_val);
            Intent intent = new Intent();
            intent.putExtra("intentdate", intentDateBean);
            intent.putExtra("parentExtBean", extBean.buildScene());
            IntentUtil.getInstance().startActivityWithCallback(this, FullShareWebActivity_.class, intent, new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessage(String payload, boolean retry) {
        HmcpVideoView hmcpVideoView = this.hm_video_view;
        if (hmcpVideoView == null) {
            return;
        }
        hmcpVideoView.sendMessage(payload, MessageType.PAY_TYPE, new h(payload, retry));
    }

    private void setHideVirtualKey() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    private void setLastResolution() {
        HmcpVideoView hmcpVideoView = this.hm_video_view;
        if (hmcpVideoView == null) {
            return;
        }
        if (hmcpVideoView.getCurResolution() == null || !Objects.equals(this.hm_video_view.getCurResolution().f33828id, this.viewModel.getLastResolutionId())) {
            HMCloudMainViewModel hMCloudMainViewModel = this.viewModel;
            hMCloudMainViewModel.onSwitchResolution(hMCloudMainViewModel.getLastResolutionId(), null);
        }
    }

    private void showInitState(boolean show) {
        if (show) {
            this.cl_init_state.setVisibility(0);
        } else {
            this.cl_init_state.setVisibility(8);
        }
    }

    private void showLoadState(boolean show) {
        if (this.isShowLoadState == show && show) {
            return;
        }
        if (!show) {
            this.isShowLoadState = false;
            this.gif_view.d();
            this.cl_load_state.setVisibility(8);
        } else {
            this.isShowLoadState = true;
            this.cl_load_state.setVisibility(0);
            this.gif_view.c(R.raw.ic_cloud_game_loading);
            this.gif_view.e();
        }
    }

    private void showLoadingState(boolean show) {
        if (show) {
            this.cl_loading_state.setVisibility(0);
        } else {
            this.cl_loading_state.setVisibility(8);
        }
    }

    private void showMenuState(boolean show) {
        if (show) {
            this.cl_menu.setVisibility(0);
        } else {
            this.cl_menu.setVisibility(8);
        }
    }

    private void showTimeTip(boolean autoHide, long delay, boolean showCharge) {
        this.cl_time_tip.setVisibility(0);
        this.animationSet = new AnimationSet(true);
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, -1.0f, 1, 0.0f);
        translateAnimation.setDuration(500L);
        translateAnimation.setFillAfter(true);
        this.animationSet.addAnimation(translateAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setFillAfter(true);
        this.animationSet.addAnimation(alphaAnimation);
        if (autoHide) {
            hideTimeTip(this.cl_time_tip, this.animationSet, delay, showCharge);
        } else {
            this.cl_time_tip.startAnimation(this.animationSet);
        }
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public void HmcpPlayerStatusCallback(String s10) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("HmcpPlayerStatusCallback:");
            sb2.append(s10);
            final JSONObject jSONObject = new JSONObject(s10);
            int i10 = jSONObject.getInt(StatusCallbackUtil.STATUS);
            if (i10 == 1) {
                onChangeUiState(HMCloudGameManager.GAME_UI_STATE.HM_START_PLAY_REQUEST, null);
                return;
            }
            if (i10 == 2) {
                onChangeUiState(HMCloudGameManager.GAME_UI_STATE.HM_START_PLAY, null);
                HMCloudGameManager.W().Y0(EventP.ResultCode.succ, "");
                String cloudId = HmcpManager.getInstance().getCloudId();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("cloud_cid=");
                sb3.append(cloudId);
                return;
            }
            if (i10 == 11) {
                DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_10, "退出提醒", "退出游戏", "长时间无操作，游戏结束", new Consumer() { // from class: com.join.mgps.activity.e4
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        HMCloudMainActivity.lambda$HmcpPlayerStatusCallback$17((Boolean) obj);
                    }
                });
                return;
            }
            if (i10 == 26) {
                this.toastLive.postValue("您的网络环境不稳定，建议您降低分辨率以保证最佳游戏体验");
                return;
            }
            if (i10 == 42) {
                runOnUiThread(new Runnable() { // from class: com.join.mgps.activity.h4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f57259b.lambda$HmcpPlayerStatusCallback$26(jSONObject);
                    }
                });
                return;
            }
            if (i10 == 102) {
                if (this.startPlayTime == 0) {
                    this.startPlayTime = SystemClock.elapsedRealtime();
                }
                onChangeUiState(HMCloudGameManager.GAME_UI_STATE.HM_FIRST_FRAME_ARRIVAL, null);
                return;
            }
            if (i10 == 23) {
                this.toastLive.postValue("网络异常，正在等待网络恢复连接...");
                return;
            }
            if (i10 == 24) {
                this.toastLive.postValue("悟饭账号校验失败，请重新登录");
                return;
            }
            if (i10 == 29) {
                runOnUiThread(new Runnable() { // from class: com.join.mgps.activity.f4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f57209b.lambda$HmcpPlayerStatusCallback$20(jSONObject);
                    }
                });
                return;
            }
            if (i10 == 30) {
                notifyOpGameTimeCountDown(jSONObject.optString(StatusCallbackUtil.DATA));
                return;
            }
            switch (i10) {
                case 13:
                    try {
                        new JSONObject(jSONObject.optString(StatusCallbackUtil.DATA));
                        return;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return;
                    }
                case 14:
                    if (this.startPlayTime == 0) {
                        this.startPlayTime = SystemClock.elapsedRealtime();
                        return;
                    }
                    return;
                case 15:
                    runOnUiThread(new Runnable() { // from class: com.join.mgps.activity.g4
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f57223b.lambda$HmcpPlayerStatusCallback$22(jSONObject);
                        }
                    });
                    return;
                default:
                    return;
            }
            e.printStackTrace();
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.action_login_success"})
    public void afterLogin() {
        HMCloudGameManager.W().K0();
    }

    @AfterViews
    void afterViews() {
        this.rpcAccountClientV2 = com.join.mgps.rpc.impl.b.C();
        String strL = com.join.mgps.Util.t2.l(this.gameId, "cld_", "");
        this.gameId = strL;
        if (com.join.mgps.Util.t2.h(strL)) {
            this.gameId = HMCloudGameManager.W().e0();
        }
        if (!TextUtils.isEmpty(this.gameId)) {
            this.viewModel.setGameId(this.gameId);
        }
        initObserver();
        com.join.mgps.Util.j0.a().d(this);
        if (com.join.mgps.Util.t2.h(this.gameId)) {
            ToastManager.show("游戏数据异常，请重试");
            finish();
            return;
        }
        DownloadTask downloadTaskL = q5.f.M().L(this.gameId);
        this.gameTask = downloadTaskL;
        if (downloadTaskL == null) {
            ToastManager.show("游戏数据异常，请重试");
            finish();
            return;
        }
        this.viewModel.loadLastCommonConfig();
        this.viewModel.loadLastOpConfig();
        this.viewModel.getGameCfgInfoBySrv();
        this.hm_video_view.enableVirtualKeyBoardView(false);
        this.hm_video_view.setAutoShowIME(false);
        String strD = this.prefDef_.cloudGameConfig().d();
        if (com.join.mgps.Util.t2.i(strD)) {
            this.cloudGameConfigBean = (CloudGameConfigBean) JsonMapper.getInstance().fromJson(strD, CloudGameConfigBean.class);
        }
        this.gamePackageName = this.gameTask.getPackageName();
        this.accountClientV2 = com.join.mgps.rpc.impl.b.C();
        this.gameClient = com.join.mgps.rpc.impl.i.P0();
        this.ll_x86_switch = (RelativeLayout) findViewById(R.id.ll_x86_switch);
        this.sdv_icon = (SimpleDraweeView) findViewById(R.id.sdv_icon);
        this.tv_text_1 = (TextView) findViewById(R.id.tv_text_1);
        this.cl_loading_state = (ConstraintLayout) findViewById(R.id.cl_loading_state);
        this.cl_init_state = (ConstraintLayout) findViewById(R.id.cl_init_state);
        this.pb_view = (ProgressBar) findViewById(R.id.pb_view);
        this.tv_text_2 = (TextView) findViewById(R.id.tv_text_2);
        HMCloudGameManager.W().b1(this);
        this.hm_video_view.setHmcpPlayerListener(this);
        if (!HMCloudGameManager.W().m0()) {
            HMCloudGameManager.f fVar = new HMCloudGameManager.f(this.gameId);
            fVar.f71680b = false;
            fVar.f71686h = this.archivePathData;
            fVar.f71681c = this.goldFingerSwitch;
            fVar.f71682d = this.bbsStrategySwitch;
            fVar.f71685g = this.archiveData;
            fVar.f71687i = this.parentExtBean;
            fVar.f71699u = this.playTime;
            HMCloudGameManager.W().q0(fVar);
            showTip(this.showTopTip);
            loadServerList(true);
        } else if (!HMCloudGameManager.W().s0()) {
            showTip(this.showTopTip);
        }
        setRequestedOrientation(HMCloudGameManager.W().d0());
        ExtBean extBean = new ExtBean();
        extBean.setGameId(HMCloudGameManager.W().e0());
        extBean.setParent(this.parentExtBean);
        extBean.setTypeCode(EventP.TypeCode.page.name()).setChatId(EventP.ChatId.cloudGameLoading.name()).setResourceId(this.gameId).setGuideKey(HMCloudGameManager.W().c0()).buildScene();
        com.papa.sim.statistic.t.l(this).R1(Event.commonExp, extBean.toExt());
        initUIData();
        if (HMCloudGameManager.W().n0()) {
            showLoadingState(true);
            showQueueState(true);
            Bundle bundle = new Bundle();
            bundle.putString("serverName", Html.fromHtml(HMCloudGameManager.W().i0().getServerName()).toString());
            bundle.putInt("queueIndex", HMCloudGameManager.W().g0());
            onChangeUiState(HMCloudGameManager.GAME_UI_STATE.QUEUE, bundle);
            updateLineUI(HMCloudGameManager.W().i0(), 2);
        }
        this.iv_close.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.s3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f58093b.lambda$afterViews$1(view);
            }
        });
        this.v_mimi.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.t3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f58109b.lambda$afterViews$2(view);
            }
        });
        getVipAdFeature(HMCloudGameManager.W().n0());
        HMCloudGameManager.W().I0(this, getIntent());
    }

    public void capScreen() {
        CapScreenData capScreenData = new CapScreenData();
        capScreenData.scalePercent = 1.0f;
        this.hm_video_view.sendWsMessage(JsonUtil.toJsonString(capScreenData), WsMessageType.CAP_SCREEN_TYPE, this);
    }

    void checkRealName() {
        UtilsMy.A0(this, 6, this.gameId, "CLOUD_GAMING", new m());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkSign() {
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData == null || TextUtils.isEmpty(accountData.getToken()) || !com.join.android.app.common.utils.m.j(this)) {
            return;
        }
        try {
            MessageCloudGamingAdCfgRequest.MessageCloudGamingAdCfgRequestParameters.b bVarNewBuilder = MessageCloudGamingAdCfgRequest.MessageCloudGamingAdCfgRequestParameters.newBuilder();
            bVarNewBuilder.setUid(accountData.getUid());
            bVarNewBuilder.setToken(accountData.getToken());
            bVarNewBuilder.setSceneType(SceneType.APP_HOME_PAGE);
            bVarNewBuilder.setAppVersion(g8.b.a(this));
            HashMap map = new HashMap();
            map.put("uid", bVarNewBuilder.getUid() + "");
            map.put(Constants.TOKEN, bVarNewBuilder.getToken());
            map.put("sceneType", bVarNewBuilder.getSceneType().name());
            map.put("appVersion", bVarNewBuilder.getAppVersion());
            bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
            MessageCloudGamingAdCfgResponse.MessageCloudGamingAdCfgResponseResult messageCloudGamingAdCfgResponseResultN = this.rpcAccountClientV2.n(bVarNewBuilder.build());
            if (messageCloudGamingAdCfgResponseResultN == null || messageCloudGamingAdCfgResponseResultN.getError() != 200) {
                return;
            }
            lambda$initObserver$8(messageCloudGamingAdCfgResponseResultN.getData());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void chooseBestLine(MessageCloudGamingServerListResponse.ServerInfo serverInfo, boolean init) {
        MessageCloudGamingServerListResponse.LineList lineList;
        if (!init) {
            CustomDialog customDialogP2 = new CustomDialog(new u(R.layout.dialog_cloud_game_router, serverInfo)).P2(Color.parseColor("#60000000"));
            this.serverDialog = customDialogP2;
            customDialogP2.M0();
            return;
        }
        WaitDialog waitDialog = this.waitDialog;
        if (waitDialog != null && waitDialog.m0()) {
            WaitDialog.c2();
            this.waitDialog = null;
        }
        boolean zPivc = com.join.mgps.Util.b.pivc(AccountUtil_.getInstance_(this).getAccountData());
        MessageCloudGamingServerListResponse.LineList lineList2 = null;
        MessageCloudGamingServerListResponse.LineList lineList3 = null;
        MessageCloudGamingServerListResponse.LineList lineList4 = null;
        MessageCloudGamingServerListResponse.LineList lineList5 = null;
        for (MessageCloudGamingServerListResponse.LineList lineList6 : serverInfo.getListInfoList()) {
            if (lineList6.getIsVip()) {
                if (lineList3 == null) {
                    lineList3 = lineList6;
                }
            } else if (lineList2 == null) {
                lineList2 = lineList6;
            }
            if (lineList6.getState() == ServerState.SERVER_LINE_IDLE) {
                if (lineList6.getIsVip()) {
                    if (lineList5 == null) {
                        lineList5 = lineList6;
                    }
                } else if (lineList4 == null) {
                    lineList4 = lineList6;
                }
            }
            if (lineList5 != null && lineList4 != null) {
                break;
            }
        }
        if (zPivc) {
            lineList = lineList5 != null ? lineList5 : null;
            if (lineList4 == null || lineList != null) {
                lineList4 = lineList;
            }
            if (lineList3 == null || lineList4 != null) {
                lineList3 = lineList4;
            }
            if (lineList2 == null || lineList3 != null) {
                lineList2 = lineList3;
            }
        } else {
            lineList = lineList4 != null ? lineList4 : null;
            if (lineList2 == null || lineList != null) {
                lineList2 = lineList;
            }
        }
        if (lineList2 != null) {
            updateLineUI(lineList2, 1);
            HMCloudGameManager.W().o0(lineList2);
        }
    }

    void exitGame() {
        HMCloudGameManager.W().c1(false);
        if (HMCloudGameManager.W().i0() != null) {
            ExtBean extBean = new ExtBean();
            extBean.setGameId(HMCloudGameManager.W().e0());
            extBean.setTypeCode(EventP.TypeCode.btnExit.name()).setChatId(EventP.ChatId.cloudGameLoading.name()).setSopNo(HMCloudGameManager.W().i0().getServerLineNum()).setSopName(Html.fromHtml(HMCloudGameManager.W().i0().getServerName()).toString()).setResourceId(this.gameId).setParent(this.parentExtBean).setGuideKey(HMCloudGameManager.W().c0()).buildScene();
            com.papa.sim.statistic.t.l(this).R1(Event.commonClick, extBean.toExt());
        }
        HMCloudGameManager.W().T();
        onFinishGame();
    }

    public long getStartPlayTime() {
        if (this.startPlayTime != 0) {
            this.viewModel.getStartPlayTime().postValue(Long.valueOf(this.startPlayTime));
            return this.startPlayTime;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.viewModel.getStartPlayTime().postValue(Long.valueOf(jElapsedRealtime));
        return jElapsedRealtime;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getVipAdFeature(boolean show) {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
                UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
                requestGameIdArgs.setUid(accountData.getUid());
                requestGameIdArgs.setUserToken(accountData.getToken());
                RequestModel requestModel = new RequestModel(this);
                requestModel.setArgs(requestGameIdArgs);
                ResponseModel<QueueAdBean> responseModelG0 = this.gameClient.g0(requestModel.makeSign());
                if (responseModelG0 == null || responseModelG0.getData() == null) {
                    return;
                }
                this.queueAdBean = responseModelG0.getData();
                if (show) {
                    showQueueState(true);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // com.join.mgps.activity.HMCloudMenuActivity
    public void goCharge(String from) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(com.join.mgps.rpc.h.T);
        ExtBean extBean = new ExtBean();
        if (!TextUtils.isEmpty(from)) {
            extBean.setChatId(from);
        }
        onCardClick(intentDateBean, extBean);
    }

    void hookKeyboardShow() {
        this.hm_video_view.enableVirtualKeyBoardView(false);
        this.hm_video_view.setAutoShowIME(false);
    }

    @Override // com.join.mgps.activity.HMCloudMenuActivity
    public void initObserver() {
        super.initObserver();
        this.toastLive.observe(this, new Observer() { // from class: com.join.mgps.activity.u3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f58153a.toast((String) obj);
            }
        });
        this.countDownLive.observe(this, new Observer() { // from class: com.join.mgps.activity.v3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f58169a.toastTimeCountDown1((OpGameTimeCountDown) obj);
            }
        });
        this.viewModel.getGameRatio().observe(this, new Observer() { // from class: com.join.mgps.activity.w3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f58194a.lambda$initObserver$3((String) obj);
            }
        });
        this.viewModel.getMute().observe(this, new Observer() { // from class: com.join.mgps.activity.x3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f58205a.lambda$initObserver$4((Boolean) obj);
            }
        });
        this.viewModel.getTouchMode().observe(this, new Observer() { // from class: com.join.mgps.activity.y3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f58242a.lambda$initObserver$5((Integer) obj);
            }
        });
        this.viewModel.getMouseSensitivity().observe(this, new Observer() { // from class: com.join.mgps.activity.z3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f58277a.lambda$initObserver$6((Float) obj);
            }
        });
        this.viewModel.getPinchToZoom().observe(this, new Observer() { // from class: com.join.mgps.activity.b4
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f56867a.lambda$initObserver$7((Boolean) obj);
            }
        });
        this.signViewModel.getAdCfgInfo().observe(this, new Observer() { // from class: com.join.mgps.activity.c4
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f56879a.lambda$initObserver$8((MessageCloudGamingAdCfgResponse.AdCfgInfo) obj);
            }
        });
        this.signViewModel.getPlaytimeSignResult().observe(this, new Observer() { // from class: com.join.mgps.activity.d4
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f57077a.updateSignUI((MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult) obj);
            }
        });
        collectOpInput();
    }

    public void intent(IntentDateBean bean) {
        if (bean != null) {
            IntentUtil.getInstance().intentActivity(this, bean);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadCloudVipState() {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            if (accountData != null) {
                MessageCloudGamingVipStateRequest.MessageCloudGamingVipStateRequestParameters.b bVarNewBuilder = MessageCloudGamingVipStateRequest.MessageCloudGamingVipStateRequestParameters.newBuilder();
                bVarNewBuilder.setUid(accountData.getUid());
                bVarNewBuilder.setToken(accountData.getToken());
                bVarNewBuilder.setAppVersion("");
                HashMap map = new HashMap();
                map.put("uid", bVarNewBuilder.getUid() + "");
                map.put(Constants.TOKEN, bVarNewBuilder.getToken());
                map.put("appVersion", "");
                bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
                MessageCloudGamingVipStateResponse.MessageCloudGamingVipStateResponseResult messageCloudGamingVipStateResponseResultU = this.accountClientV2.u(bVarNewBuilder.build());
                if (messageCloudGamingVipStateResponseResultU == null || messageCloudGamingVipStateResponseResultU.getError() != 200) {
                    updateVipState(null);
                } else {
                    updateVipState(messageCloudGamingVipStateResponseResultU.getData());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadServerList(boolean auto) {
        long jLongValue;
        try {
            if (this.loadingServerList) {
                return;
            }
            this.loadingServerList = true;
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            if (accountData != null) {
                MessageCloudGamingServerListRequest.MessageCloudGamingServerListRequestParameters.b bVarNewBuilder = MessageCloudGamingServerListRequest.MessageCloudGamingServerListRequestParameters.newBuilder();
                bVarNewBuilder.setUid(accountData.getUid());
                bVarNewBuilder.setToken(accountData.getToken());
                bVarNewBuilder.setAppVersion("");
                try {
                    jLongValue = Long.valueOf(this.gameId).longValue();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    jLongValue = 0;
                }
                bVarNewBuilder.setGameId(jLongValue);
                bVarNewBuilder.setPackageName(this.gamePackageName);
                HashMap map = new HashMap();
                map.put("uid", bVarNewBuilder.getUid() + "");
                map.put(Constants.TOKEN, bVarNewBuilder.getToken());
                map.put("appVersion", "");
                map.put("gameId", this.gameId);
                map.put("packageName", this.gamePackageName);
                bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
                MessageCloudGamingServerListResponse.MessageCloudGamingServerListResponseResult messageCloudGamingServerListResponseResultB = this.accountClientV2.B(bVarNewBuilder.build());
                if (messageCloudGamingServerListResponseResultB == null || messageCloudGamingServerListResponseResultB.getError() != 200) {
                    ToastManager.show("服务器配置获取失败,请切换线路重试");
                    ExtBean extBean = new ExtBean();
                    extBean.setGameId(HMCloudGameManager.W().e0());
                    extBean.setParent(this.parentExtBean);
                    extBean.setChatId(EventP.ChatId.cloudGameErrorPop.name()).setResultCode(EventP.ResultCode.error.name()).setReMarks("cloudGameError-1.1 err:[" + messageCloudGamingServerListResponseResultB.getError() + "]").setGuideKey(HMCloudGameManager.W().c0()).buildScene();
                    com.papa.sim.statistic.t.l(this).R1(Event.commonReport, extBean.toExt());
                } else {
                    chooseBestLine(messageCloudGamingServerListResponseResultB.getDataInfo(), auto);
                }
                this.loadingServerList = false;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            ToastManager.show("服务器配置获取失败,请切换线路重试");
            this.loadingServerList = false;
            ExtBean extBean2 = new ExtBean();
            extBean2.setGameId(HMCloudGameManager.W().e0());
            extBean2.setParent(this.parentExtBean);
            extBean2.setChatId(EventP.ChatId.cloudGameErrorPop.name()).setResultCode(EventP.ResultCode.error.name()).setReMarks("cloudGameError-1.1 err:[" + e11.getMessage() + "]").setGuideKey(HMCloudGameManager.W().c0()).buildScene();
            com.papa.sim.statistic.t.l(this).R1(Event.commonReport, extBean2.toExt());
        }
    }

    @Override // com.join.mgps.activity.HMCloudMenuActivity
    public void locateUploadArchive() {
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData == null || accountData.getUid() == 0) {
            IntentUtil.getInstance().goLogin(this);
        } else {
            sendMessage(JsonMapper.getInstance().toJson(new HMMessage.UploadCloudArchive()), false);
        }
    }

    void notifyOpGameTimeCountDown(String data) {
        if (TextUtils.isEmpty(data)) {
            return;
        }
        try {
            OpGameTimeCountDown opGameTimeCountDown = (OpGameTimeCountDown) JsonMapper.getInstance().fromJson(data, OpGameTimeCountDown.class);
            if (opGameTimeCountDown == null) {
                return;
            }
            this.countDownLive.postValue(opGameTimeCountDown);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void notifyVipStateChanged() {
        HMMessage.UserInfo userInfo = new HMMessage.UserInfo();
        userInfo.setUserId(AccountUtil_.getInstance_(this).getAccountData().getUid() + "");
        userInfo.setAccountData(AccountUtil_.getInstance_(this).getAccountStr());
        sendMessage(JsonMapper.getInstance().toJson(userInfo), true);
        afterFirstFrameArrival();
        onVipStateChanged();
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public /* synthetic */ void onAccProxyConnectStateChange(int i10) {
        i5.a.a(this, i10);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public void onBackPressed() {
        this.hm_video_view.sendKeyEvent(KeyType.KEY_BACK);
    }

    @Override // com.join.mgps.hmcloud.t
    public void onChangeUiState(final HMCloudGameManager.GAME_UI_STATE state, final Bundle extra) {
        runOnUiThread(new Runnable() { // from class: com.join.mgps.activity.r3
            @Override // java.lang.Runnable
            public final void run() {
                this.f57950b.lambda$onChangeUiState$14(state, extra);
            }
        });
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener, com.haima.hmcp.listeners.HmcpPlayerListenerPlatform
    public void onCloudDeviceStatus(String s10) {
        try {
            JSONObject jSONObject = new JSONObject(s10);
            String string = jSONObject.getString("type");
            if (!TextUtils.isEmpty(string) && com.haima.hmcp.Constants.WS_MESSAGE_TYPE_CAP_SCREEN.equals(string)) {
                this.hm_video_view.sendMessage(JsonMapper.getInstance().toJson(new HMMessage.CapScreenResult(true, jSONObject.optString("data"))), MessageType.PAY_TYPE, new i());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onCloudGameEvent(com.join.mgps.event.j event) {
        if (event != null && event.a() == 0) {
            notifyVipStateChanged();
        }
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener, com.haima.hmcp.listeners.HmcpPlayerListenerPlatform
    public void onCloudPlayerKeyboardStatusChanged(CloudPlayerKeyboardStatus cloudPlayerKeyboardStatus) {
        if (cloudPlayerKeyboardStatus == CloudPlayerKeyboardStatus.CLOUD_PLAYER_KEYBOARD_STATUS_SHOW) {
            showKeyboard();
        }
    }

    @Override // com.join.mgps.activity.HMCloudMenuActivity, com.join.mgps.activity.Hilt_HMCloudMenuActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (Build.VERSION.SDK_INT < 28) {
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
            getWindow().getDecorView().setSystemUiVisibility(2);
        } else {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
            getWindow().getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        }
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1000)
    public void onDelayLoad() {
        loadServerList(true);
    }

    @Override // com.join.mgps.activity.Hilt_HMCloudMenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - getStartPlayTime();
        AnimationSet animationSet = this.animationSet;
        if (animationSet != null) {
            animationSet.cancel();
        }
        this.startPlayTime = 0L;
        this.hm_video_view.onDestroy();
        com.join.mgps.event.b bVar = new com.join.mgps.event.b(3);
        bVar.d(2);
        bVar.e(BaseCloudFileManager.ACK_TIMEOUT);
        org.greenrobot.eventbus.c.f().q(bVar);
        HMCloudGameManager.W().R();
        com.join.mgps.Util.j0.a().e(this);
        try {
            ExtBean extBean = new ExtBean();
            extBean.setGameId(HMCloudGameManager.W().e0());
            extBean.setTypeCode(EventP.TypeCode.cloudGame.name()).setChatId(EventP.ChatId.cloudGame.name()).setResourceId(this.gameId).setParent(this.parentExtBean).setGuideKey(HMCloudGameManager.W().c0()).buildScene();
            extBean.toExt().setClearTime(jElapsedRealtime);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        com.join.mgps.Util.j0.a().c(new com.join.mgps.event.f(ApiName.ArchivingCfg));
        PopupWindow popupWindow = this.checkInPop;
        if (popupWindow != null && popupWindow.isShowing()) {
            this.checkInPop.dismiss();
            this.checkInPop = null;
        }
        super.onDestroy();
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public void onError(ErrorType errorType, String s10) {
    }

    @Override // com.join.mgps.activity.HMCloudMenuActivity
    protected void onExit() {
        super.onExit();
        this.hm_video_view.onExitGame();
        this.hm_video_view.onDestroy();
        exitGame();
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public void onExitQueue() {
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFinishEvent(com.join.mgps.event.v event) {
        if (event == null || !event.a().equals(EVENT_NAME)) {
            return;
        }
        onFinishGame();
    }

    @Override // com.join.mgps.hmcloud.t
    public void onFinishGame() {
        this.retryCount = 0;
        this.mHandler.removeMessages(1001);
        com.join.mgps.Util.j0.a().c(new com.join.mgps.event.v(FullShareWebActivity.EVENT_NAME));
        finish();
    }

    @Override // com.haima.hmcp.listeners.StreamingCallback
    public void onFreeze() {
        this.toastLive.postValue("您的网络环境不稳定，建议您降低分辨率以保证最佳游戏体验");
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public void onInputDevice(int i10, int i11) {
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public void onInputMessage(String s10) {
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener, com.haima.hmcp.listeners.HmcpPlayerListenerPlatform
    public void onInterceptIntent(String s10) {
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public void onMessage(String payload) {
        if (TextUtils.isEmpty(payload)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(payload);
            if (jSONObject.has("action")) {
                String string = jSONObject.getString("action");
                if (string.equals(HMMessage.ConfigWait.INSTANCE.getAction())) {
                    HMMessage.Config config = new HMMessage.Config();
                    config.setConfig(HMCloudGameManager.W().a0());
                    sendMessage(JsonMapper.getInstance().toJson(config), true);
                } else if (string.equals(new HMMessage.Intent().getAction())) {
                    String strOptString = jSONObject.optString("str", "");
                    if (TextUtils.isEmpty(strOptString)) {
                    } else {
                        intent((IntentDateBean) JsonMapper.getInstance().fromJson(strOptString, IntentDateBean.class));
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public void onMiscResponse(String s10) {
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public void onNetworkChanged(NetWorkState netWorkState) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        HMCloudGameManager.W().L0(intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        HmcpVideoView hmcpVideoView = this.hm_video_view;
        if (hmcpVideoView != null) {
            hmcpVideoView.onPause();
        }
        super.onPause();
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public void onPermissionNotGranted(String s10) {
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public /* synthetic */ void onPlayNotification(PlayNotification playNotification) {
        i5.a.b(this, playNotification);
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public void onPlayStatus(int status, long value, String data) {
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public void onPlayerError(String s10, String s11) {
    }

    @Override // com.join.mgps.hmcloud.t
    public void onReload() {
        this.retryCount = 0;
        this.mHandler.removeMessages(1001);
        if (!this.isFirstFrameArrived) {
            com.join.mgps.Util.j0.a().c(new com.join.mgps.event.v(FullShareWebActivity.EVENT_NAME));
        }
        onDelayLoad();
    }

    @Override // com.haima.hmcp.listeners.StreamingCallback
    public void onRemoteVideoEncodeChange(String codecName, int fps, int width, int height) {
        this.fpsLive.postValue(Integer.valueOf(fps));
    }

    @Override // com.join.mgps.hmcloud.t
    public void onRestUI() {
        this.waitDialog = WaitDialog.X1().c3("加载中...").K2(true).M0();
        onChangeUiState(HMCloudGameManager.GAME_UI_STATE.INIT, null);
        showTip(this.showTopTip);
        this.rl_ad.removeAllViews();
        getVipAdFeature(false);
    }

    @Override // android.app.Activity
    protected void onRestart() {
        HmcpVideoView hmcpVideoView = this.hm_video_view;
        if (hmcpVideoView != null) {
            hmcpVideoView.onRestart(-1);
        }
        super.onRestart();
    }

    @Override // com.join.mgps.activity.HMCloudMenuActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        HmcpVideoView hmcpVideoView = this.hm_video_view;
        if (hmcpVideoView != null) {
            hmcpVideoView.onResume();
        }
        HMCloudGameManager.W().M0();
        super.onResume();
        loadCloudVipState();
        if (this.checkRealNameRequired) {
            this.checkRealNameRequired = false;
            checkRealName();
        }
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public void onSceneChanged(String s10) {
        if (TextUtils.isEmpty(s10)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(s10);
            if (jSONObject.has("sceneId") && jSONObject.optString("sceneId", "").equals("cred")) {
                JSONObject jSONObject2 = new JSONObject(jSONObject.optString("extraInfo"));
                onSwitchResolutionResult(jSONObject2.getString("cur_id"), jSONObject2.getString("cur_rate"), jSONObject2.getInt("result"));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void onSignClick() {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        HmcpVideoView hmcpVideoView = this.hm_video_view;
        if (hmcpVideoView != null) {
            hmcpVideoView.onStart();
        }
        super.onStart();
    }

    @Override // com.join.mgps.activity.HMCloudMenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        HmcpVideoView hmcpVideoView = this.hm_video_view;
        if (hmcpVideoView != null) {
            hmcpVideoView.onStop();
        }
        super.onStop();
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public void onSuccess() {
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public /* synthetic */ void onSwitchConnectionCallback(int i10, int i11) {
        i5.a.c(this, i10, i11);
    }

    @Override // com.join.mgps.activity.HMCloudMenuActivity
    public void onSwitchResolution(@NotNull String id2) {
        this.hm_video_view.onSwitchResolution(0, this.viewModel.findResolutionById(id2), 0);
    }

    public void onSwitchResolutionResult(String curId, String curRate, int result) {
        if (result != 1) {
            return;
        }
        this.viewModel.onSwitchResolutionResult(curId);
    }

    @Override // android.view.View.OnSystemUiVisibilityChangeListener
    public void onSystemUiVisibilityChange(int visibility) {
        setHideVirtualKey();
    }

    @Override // com.haima.hmcp.listeners.HmcpPlayerListener
    public /* synthetic */ void onUpdateCToken() {
        i5.a.d(this);
    }

    @Override // com.join.mgps.hmcloud.t
    public void onUpdateProgress(final HMCloudGameManager.GAME_UI_STATE state, final int progress) {
        runOnUiThread(new Runnable() { // from class: com.join.mgps.activity.l3
            @Override // java.lang.Runnable
            public final void run() {
                this.f57394b.lambda$onUpdateProgress$15(state, progress);
            }
        });
    }

    @Override // com.haima.hmcp.listeners.IVideoDelayCallback
    public void onVideoDelayCallback(VideoDelayInfo videoDelayInfo) {
        if (Boolean.TRUE.equals(this.viewModel.isLatencyOn().getValue())) {
            setLatency(videoDelayInfo.getNetDelay(), videoDelayInfo.getPacketsLostRate());
        }
    }

    public void openChargeVip(ExtBean extBean) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(com.join.mgps.rpc.h.T);
        onCardClick(intentDateBean, extBean.buildScene());
    }

    @Override // com.join.mgps.activity.HMCloudMenuActivity
    protected void refreshResolutionInfo() {
        super.refreshResolutionInfo();
        if (this.hm_video_view == null) {
            return;
        }
        this.viewModel.getResolutionList().postValue(this.hm_video_view.getResolutionList());
        this.viewModel.getCurrentResolution().postValue(this.hm_video_view.getCurResolution());
        this.viewModel.getTouchMode().postValue(Integer.valueOf(this.hm_video_view.getTouchMode().ordinal()));
    }

    @Override // com.join.mgps.activity.HMCloudMenuActivity
    public void relaunchGame() {
        this.hm_video_view.relaunchGame(new j());
    }

    @Override // com.haima.hmcp.listeners.OnSendWsMessageListener
    public void sendWsMessageFail(String s10) {
    }

    @Override // com.haima.hmcp.listeners.OnSendWsMessageListener
    public void sendWsMessageSuccess() {
    }

    /* JADX INFO: renamed from: setViewRatio, reason: merged with bridge method [inline-methods] */
    public void lambda$initObserver$3(String ratio) {
        if (TextUtils.isEmpty(ratio)) {
            ViewGroup.LayoutParams layoutParams = this.hm_video_view.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -1;
            this.hm_video_view.setLayoutParams(layoutParams);
            return;
        }
        if (ratio.equals("16:9")) {
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.hm_video_view.getLayoutParams();
            layoutParams2.width = (int) ((this.hm_video_view.getMeasuredHeight() > 0 ? this.hm_video_view.getMeasuredHeight() : getResources().getDisplayMetrics().heightPixels) * 1.7777778f);
            layoutParams2.height = -1;
            layoutParams2.gravity = 17;
            this.hm_video_view.setLayoutParams(layoutParams2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showCloudCharge(UserInfo userInfo) {
        NewMemberInfo newMemberInfo = userInfo.getNewMemberInfo();
        String str = com.join.mgps.rpc.h.T;
        Intent intent = new Intent();
        IntentDateBean intentDateBean = new IntentDateBean();
        if (newMemberInfo.getShowNewGift()) {
            str = com.join.mgps.rpc.h.V;
        } else {
            intentDateBean.setLink_type(4);
            if (!str.contains("isVip")) {
                if (str.contains("?") && str.contains(SimpleComparison.EQUAL_TO_OPERATION)) {
                    str = str + "&isVip=" + com.join.mgps.Util.b.pivc(userInfo);
                } else {
                    str = str + "?isVip=" + com.join.mgps.Util.b.pivc(userInfo);
                }
            }
        }
        ExtBean chatId = new ExtBean().setChatId(EventP.ChatId.cloudGameNoTimesPop.name());
        if (HMCloudGameManager.W().b0() != null) {
            chatId.setParent(HMCloudGameManager.W().b0().f71687i);
        }
        chatId.setGameId(HMCloudGameManager.W().e0()).setResourceId(HMCloudGameManager.W().e0()).setGuideKey(HMCloudGameManager.W().c0());
        intent.putExtra("parentExtBean", chatId.buildScene());
        intentDateBean.setLink_type_val(str);
        intent.putExtra("intentdate", intentDateBean);
        IntentUtil.getInstance().startActivityWithCallback(this, FullShareWebActivity_.class, intent, new p());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 800)
    public void showCloudNewUser() {
        String str = com.join.mgps.rpc.h.V;
        Intent intent = new Intent();
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type_val(str);
        intent.putExtra("intentdate", intentDateBean);
        IntentUtil.getInstance().startActivityWithCallback(this, FullShareWebActivity_.class, intent, new r());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    /* JADX INFO: renamed from: showCloudSignTip, reason: merged with bridge method [inline-methods] */
    public void lambda$initObserver$8(MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
        if (adCfgInfo == null) {
            return;
        }
        if (!adCfgInfo.getIsNewMember()) {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            if (accountData == null || accountData.getNewMemberInfo().getIsSigned()) {
                return;
            }
        } else if (!adCfgInfo.getIsSigned() || this.cloudGameConfigBean == null) {
            return;
        }
        aw0 aw0VarInflate = aw0.inflate(LayoutInflater.from(this));
        CloudGameConfigBean cloudGameConfigBean = this.cloudGameConfigBean;
        aw0VarInflate.f36102e.setText(this.viewModel.formatSignTime(cloudGameConfigBean != null ? cloudGameConfigBean.getTotal_sign_in_time() : 0, adCfgInfo.getIsNewMember()));
        aw0VarInflate.getRoot().setOutlineProvider(new l());
        aw0VarInflate.getRoot().setClipToOutline(true);
        PopupWindow popupWindowShowPopup = showPopup(aw0VarInflate.getRoot(), null, null);
        this.checkInPop = popupWindowShowPopup;
        if (popupWindowShowPopup == null) {
            return;
        }
        aw0VarInflate.f36100c.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.j3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f57347b.lambda$showCloudSignTip$27(view);
            }
        });
        aw0VarInflate.f36101d.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.k3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f57381b.lambda$showCloudSignTip$28(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 800)
    public void showGameOver() {
        final ExtBean chatId = new ExtBean().setChatId(EventP.ChatId.cloudGameNoTimesPop.name());
        if (HMCloudGameManager.W().b0() != null) {
            chatId.setParent(HMCloudGameManager.W().b0().f71687i);
        }
        chatId.setGameId(HMCloudGameManager.W().e0()).setResourceId(HMCloudGameManager.W().e0()).setGuideKey(HMCloudGameManager.W().c0());
        DialogUtils.INSTANCE.alterGameOverDialog(R.drawable.ic_cloud_game_10, new Consumer() { // from class: com.join.mgps.activity.n3
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                this.f57776b.lambda$showGameOver$10(chatId, (CustomDialog) obj);
            }
        }, new Consumer() { // from class: com.join.mgps.activity.o3
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                this.f57807b.lambda$showGameOver$11(chatId, (Boolean) obj);
            }
        });
        com.papa.sim.statistic.t.l(this).R1(Event.commonExp, chatId.copy().buildScene().toExt());
    }

    @Override // com.join.mgps.activity.HMCloudMenuActivity
    public void showMenu() {
        loadCloudVipState();
        super.showMenu();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showQueueState(boolean show) {
        if (show == this.isShowQueueState && show) {
            return;
        }
        if (!show) {
            this.isShowQueueState = false;
            this.cl_wait_state.setVisibility(8);
            this.g_1.setVisibility(8);
            this.gif_view_1.d();
            return;
        }
        this.cl_wait_state.setVisibility(0);
        this.g_1.setVisibility(0);
        this.isShowQueueState = true;
        if (this.queueAdBean != null) {
            this.rl_ad.setVisibility(0);
            this.rl_ad.removeAllViews();
            if (this.queueAdBean.getCard_buy_ad() != null) {
                TransparentClickImageView transparentClickImageView = new TransparentClickImageView(this);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) getResources().getDimension(R.dimen.wdp196), (int) getResources().getDimension(R.dimen.wdp196));
                layoutParams.addRule(12);
                this.rl_ad.addView(transparentClickImageView, layoutParams);
                com.join.android.app.common.utils.l.s(transparentClickImageView, this.queueAdBean.getCard_buy_ad().getBig_pic());
                final ExtBean typeCode = new ExtBean().setParent(this.parentExtBean).setChatId(EventP.ChatId.cloudGameLoading.name()).setFrom("30002").setTypeCode(EventP.TypeCode.AD.name());
                typeCode.setGameId(HMCloudGameManager.W().e0());
                com.papa.sim.statistic.t.l(this).R1(Event.commonExp, typeCode.buildScene().toExt());
                transparentClickImageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.p3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f57833b.lambda$showQueueState$12(typeCode, view);
                    }
                });
            }
            if (this.queueAdBean.getMember_buy_ad() != null) {
                TransparentClickImageView transparentClickImageView2 = new TransparentClickImageView(this);
                int dimension = (int) getResources().getDimension(R.dimen.wdp196);
                if (this.queueAdBean.getMember_buy_ad() != null) {
                    dimension = (int) getResources().getDimension(R.dimen.wdp230);
                }
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(dimension, dimension);
                layoutParams2.addRule(12);
                this.rl_ad.addView(transparentClickImageView2, layoutParams2);
                com.join.android.app.common.utils.l.s(transparentClickImageView2, this.queueAdBean.getMember_buy_ad().getBig_pic());
                final ExtBean typeCode2 = new ExtBean().setParent(this.parentExtBean).setChatId(EventP.ChatId.cloudGameLoading.name()).setFrom("30001").setTypeCode(EventP.TypeCode.AD.name());
                typeCode2.setGameId(HMCloudGameManager.W().e0());
                com.papa.sim.statistic.t.l(this).R1(Event.commonExp, typeCode2.buildScene().toExt());
                transparentClickImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.a4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f56457b.lambda$showQueueState$13(typeCode2, view);
                    }
                });
            }
        } else {
            this.rl_ad.setVisibility(8);
            this.isShowQueueState = false;
        }
        this.gif_view_1.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 800)
    public void showRechargeResult() {
        ExtBean chatId = new ExtBean().setChatId(EventP.ChatId.cloudGameNoTimesPaySucc.name());
        if (HMCloudGameManager.W().b0() != null) {
            chatId.setParent(HMCloudGameManager.W().b0().f71687i);
        }
        chatId.setGameId(HMCloudGameManager.W().e0()).setResourceId(HMCloudGameManager.W().e0()).setGuideKey(HMCloudGameManager.W().c0());
        DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_5, "时长补充成功！", "退出游戏", "再次进入游戏即可从当前进度继续游玩啦！", new q(chatId));
        com.papa.sim.statistic.t.l(this).R1(Event.commonExp, chatId.copy().buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void showSignDialog(Activity parent, String totalTime, String freeTime, String vipTime) {
        new CustomDialog(new s(totalTime, freeTime, vipTime, parent)).P2(Color.parseColor("#90000000")).M0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void showTip(String tipMsg) {
        if (com.join.mgps.Util.t2.i(tipMsg)) {
            this.tv_btn_2.setVisibility(8);
            this.tv_text_4.setHtml(tipMsg);
            showTimeTip(true, ConstantsInternal.WAIT_VIRTUAL_GAME_PAD_TIMEOUT_MS, true);
            return;
        }
        this.tv_btn_2.setVisibility(0);
        long j10 = this.playTime;
        int i10 = (int) (j10 / 3600);
        int i11 = (int) ((j10 - ((long) (i10 * 3600))) / 60);
        this.tv_text_4.setHtml("当前云增强模式可用时长:" + i10 + "小时" + i11 + "分钟");
        showTimeTip(false, ConstantsInternal.WAIT_VIRTUAL_GAME_PAD_TIMEOUT_MS, false);
        this.tv_btn_2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.m3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f57480b.lambda$showTip$9(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void sign() {
        if (this.isSign) {
            return;
        }
        if (!com.join.android.app.common.utils.m.j(this)) {
            ToastManager.show("网络异常，请检查网络");
            return;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData.getNewMemberInfo().getIsSigned()) {
            ToastManager.show("今日已签,明日再来吧~");
            return;
        }
        this.isSign = true;
        MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSignInRequest.b bVarNewBuilder = MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSignInRequest.newBuilder();
        bVarNewBuilder.setUid(accountData.getUid()).setToken(accountData.getToken()).setAppVersion("517_6.1.7.0");
        HashMap map = new HashMap();
        map.put("uid", bVarNewBuilder.getUid() + "");
        map.put(Constants.TOKEN, bVarNewBuilder.getToken());
        map.put("appVersion", "517_6.1.7.0");
        bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
        updateSignUI(this.accountClientV2.l(bVarNewBuilder.build()));
        this.isSign = false;
    }

    void startPlay() {
        if (this.hm_video_view != null) {
            HMCloudGameManager.f fVarB0 = HMCloudGameManager.W().b0();
            com.haima.hmcp.beans.UserInfo userInfo = new com.haima.hmcp.beans.UserInfo();
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            if (accountData != null) {
                userInfo.userId = accountData.getUid() + "";
                userInfo.userToken = accountData.getToken();
            }
            this.hm_video_view.setUserInfo(userInfo);
            if ((this.gameTask.isMod() || this.gameTask.isSingleGame()) && !this.gamePackageName.startsWith("wfcloud.")) {
                this.gamePackageName = "wfcloud." + this.gamePackageName;
            }
            Bundle bundle = new Bundle();
            fVarB0.f71690l = CryptoUtils.generateCToken(this.gamePackageName, userInfo.userId, userInfo.userToken, HMCloudGameManager.W().Y(), HMCloudGameManager.W().Z(), HMCloudGameManager.W().X());
            bundle.putSerializable("orientation", fVarB0.f71680b ? ScreenOrientation.PORTRAIT : ScreenOrientation.LANDSCAPE);
            bundle.putLong("playTime", this.playTime * 1000);
            bundle.putInt("priority", Integer.valueOf("0").intValue());
            bundle.putString("appName", this.gamePackageName);
            bundle.putString("appChannel", HMCloudGameManager.W().Z());
            bundle.putString("cToken", fVarB0.f71690l);
            bundle.putInt("noInputLimitTime", HMCloudGameManager.W().i0().getTimeOut());
            bundle.putInt("streamType", StreamType.WEBRTC.ordinal());
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("uid", userInfo.userId);
                jSONObject.put("userIdType", 0);
                jSONObject.put("gameId", fVarB0.f71679a);
                jSONObject.put("playTime", this.playTime);
                jSONObject.put("androidId", MApplication.J);
                jSONObject.put("serverName", HMCloudGameManager.W().i0().getServerLineNum());
                jSONObject.put("resourceId", HMCloudGameManager.W().h0());
                ExtBean extBean = new ExtBean();
                extBean.setGameId(HMCloudGameManager.W().e0());
                extBean.setTypeCode(EventP.TypeCode.cloudGame.name()).setChatId(EventP.ChatId.cloudGame.name()).setSopNo(HMCloudGameManager.W().i0().getServerLineNum()).setSopName(Html.fromHtml(HMCloudGameManager.W().i0().getServerName()).toString()).setResourceId(this.gameId).setParent(this.parentExtBean).setGuideKey(HMCloudGameManager.W().c0()).buildScene();
                jSONObject.put("trackField", JsonMapper.toJsonString(extBean));
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            bundle.putString("protoData", com.join.mgps.Util.p.b(jSONObject.toString().getBytes()));
            bundle.putBoolean(BaseVideoView.VIRTUAL_KEYBOARD_ENABLE, false);
            this.hm_video_view.setConfigInfo(JsonMapper.getInstance().toJson(HMCloudGameManager.W().a0()));
            this.hm_video_view.setStreamingCallback(this);
            this.hm_video_view.setVideoDelayCallback(this);
            this.hm_video_view.play(bundle);
        }
        HMCloudGameManager.W().d1(true);
        HMCloudGameManager.W().Y0(null, "");
    }

    void toast(String msg) {
        if (TextUtils.isEmpty(msg)) {
            return;
        }
        com.join.mgps.Util.a3.e(this, msg);
    }

    void toastTimeCountDown1(OpGameTimeCountDown timeCountDown) {
        final View viewInflate = LayoutInflater.from(this).inflate(R.layout.toast_op_game_time_count_down, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.text)).setText(getResources().getString(R.string.op_game_time_count_down, com.join.android.app.common.utils.i.e(timeCountDown != null ? timeCountDown.getAhead() : 0L)));
        viewInflate.findViewById(R.id.charge).setOnClickListener(new e());
        viewInflate.setOutlineProvider(new f());
        viewInflate.setClipToOutline(true);
        int iA = com.join.mgps.ad.q.a(this, 50);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, false);
        popupWindow.setOutsideTouchable(false);
        popupWindow.setClippingEnabled(false);
        AnimationSet animationSet = new AnimationSet(true);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 20.0f, 0.0f);
        animationSet.addAnimation(alphaAnimation);
        animationSet.addAnimation(translateAnimation);
        animationSet.setDuration(300L);
        animationSet.setFillAfter(true);
        final AnimationSet animationSet2 = new AnimationSet(true);
        AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
        TranslateAnimation translateAnimation2 = new TranslateAnimation(0.0f, 0.0f, 0.0f, 20.0f);
        animationSet2.addAnimation(alphaAnimation2);
        animationSet2.addAnimation(translateAnimation2);
        animationSet2.setDuration(200L);
        animationSet2.setFillAfter(true);
        popupWindow.showAtLocation(getWindow().getDecorView().findViewById(android.R.id.content), 49, 0, iA);
        viewInflate.startAnimation(animationSet);
        viewInflate.postDelayed(new Runnable() { // from class: com.join.mgps.activity.i4
            @Override // java.lang.Runnable
            public final void run() {
                this.f57333b.lambda$toastTimeCountDown1$16(animationSet2, popupWindow, viewInflate);
            }
        }, 10000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateLineUI(MessageCloudGamingServerListResponse.LineList serverInfo, int scene) {
        this.curServerId = serverInfo.getServerLineNum();
    }

    public void updatePlayTime(HmcpVideoView hmcpVideoView, long playTime) {
        if (HMCloudGameManager.W().b0() != null) {
            Bundle bundle = new Bundle();
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            bundle.putLong("playTime", playTime * 1000);
            bundle.putString("userid", accountData.getUid() + "");
            bundle.putString("message", "游戏时长已更新");
            bundle.putString("cToken", HMCloudGameManager.W().b0().f71690l);
            hmcpVideoView.updateGameUID(bundle, new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateSignUI(MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult result) {
        if (result == null || result.getError() != 200 || result.getInto() == null) {
            ToastManager.show("签到失败，请重试");
        } else {
            showSignDialog(result.getInto().getTotalTime(), result.getInto().getFreeTime(), result.getInto().getVipTime());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateVipState(MessageCloudGamingVipStateResponse.Info info) {
        if (info != null) {
            try {
                this.playTime = info.getGameSurplus();
                HMCloudGameManager.W().k1(this.playTime);
                updatePlayTime(this.hm_video_view, this.playTime);
                this.viewModel.getPlayTime().postValue(Long.valueOf(this.playTime));
                onVipStateChanged();
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void showSignDialog(String totalTime, String freeTime, String vipTime) {
        new CustomDialog(new t(totalTime, freeTime, vipTime)).P2(Color.parseColor("#90000000")).M0();
    }
}
