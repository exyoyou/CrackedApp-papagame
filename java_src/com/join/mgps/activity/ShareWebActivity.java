package com.join.mgps.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.DownloadManager;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.lifecycle.ViewModelProvider;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.BaseFragmentActivity;
import com.MApplication;
import com.alipay.sdk.app.PayTask;
import com.byazt.quv.AbsServerManager;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.ClipBoardItemData;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.album.MyAlbumActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.extention.Flow;
import com.join.kotlin.utils.extention.MobclickAgentKt;
import com.join.kotlin.viewmodel.RewardAdViewModel;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.activity.arena.NewArenaDownloadActivity_;
import com.join.mgps.activity.label.MainLabelActivity_;
import com.join.mgps.activity.posting.PostingActivity;
import com.join.mgps.customview.LJWebView;
import com.join.mgps.customview.input.InputNumView;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.CreateVipData;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GroupInfoBean;
import com.join.mgps.dto.IntentDataMain;
import com.join.mgps.dto.LiveUploadData;
import com.join.mgps.dto.NetBattleStartGameDto;
import com.join.mgps.dto.PaOpenBean;
import com.join.mgps.dto.PapayOrder;
import com.join.mgps.dto.PapayResult;
import com.join.mgps.dto.PayResult;
import com.join.mgps.dto.PlayCfgBean;
import com.join.mgps.dto.RequestDomainInfoArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.RewardAdParam;
import com.join.mgps.dto.SimulatorAdCfgBean;
import com.join.mgps.dto.UpdateIntentDataBean;
import com.join.mgps.dto.VipMoneyRequest;
import com.join.mgps.dto.WebAccountDataBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.mgsim.common.fragment.BackHandledFragment;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.arc.common.constants.BAction;
import com.papa91.arc.ext.ToastManager;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.battle.protocol.RoomCategory;
import com.papa91.battle.protocol.RoomPosition;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.wufan.user.service.protobuf.MessageCheckTokenRequest;
import com.wufan.user.service.protobuf.MessageCheckTokenResponse;
import com.wufan.user.service.protobuf.MessageUserInfoRequest;
import com.wufan.user.service.protobuf.ResponseResult;
import com.wufan.user.service.protobuf.UserInfo;
import io.reactivex.functions.Consumer;
import java.io.File;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.share_activity_layout)
public class ShareWebActivity extends BaseFragmentActivity implements LJWebView.b, com.join.mgps.Util.u2.e, com.mgsim.common.fragment.a {
    private static final int CAPTURE_IMAGE_CAMERA = 100;
    private static final int CROP_CHOOSE = 10;
    private static final int IMAGE_STORE = 200;
    public static final int LOCATION_PERMISSION_REQ_CODE = 1;
    public static final int PAPAPay_RESULT_CODE_CANCEL = 5002;
    public static final int PAPAPay_RESULT_CODE_FAILURE = 5001;
    public static final int PAPAPay_RESULT_CODE_SUCCESS = 5000;
    public static final int PAPAPay_RESULT_CODE_WAIT = 5003;
    private static final int REQUEST_FOR_DOWNLOADGAME = 4112;
    private static final int SDK_PAY_FLAG = 2;
    public static final int WRITE_PERMISSION_REQ_CODE = 2;
    private UserInfo accountBean;

    @Bean
    com.join.mgps.Util.b accountUtil;

    @ViewById
    ImageView backNew;

    @ViewById
    ImageView back_imag;
    private WebChromeClient chromeClient;
    private Activity context;
    private Uri cropUri;
    Dialog dialogU;

    @ViewById
    ImageView download;

    @ViewById
    TextView failedMessage;
    private Uri fileUri;
    private boolean hadIntercept;

    @Extra
    IntentDataMain intentDataMain;

    @Extra
    IntentDateBean intentdate;
    Iterator<String> iterator;
    private String keyboardChangeCallback;
    private long lastClick;

    @ViewById
    LinearLayout layout_share;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private BackHandledFragment mBackHandedFragment;
    private com.join.mgps.dialog.f1 mDataLoadingDialog;
    private com.join.mgps.dialog.h0 mDownloadBottomDialog;
    private GameRoom mGameRoom;
    private String mGameRoomNum;
    private com.join.mgps.dialog.d1 mHintDialog;
    private boolean mPermission;
    private Dialog mPicChsDialog;
    private com.join.mgps.dialog.a2 mPrePostingHintDialog;
    private com.join.mgps.socket.fight.arena.b mServiceDelegate;
    private com.join.mgps.Util.u2 mUploadHelper;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private int f55806p1;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    private int f55807p2;

    /* JADX INFO: renamed from: p3, reason: collision with root package name */
    private int f55808p3;

    /* JADX INFO: renamed from: p4, reason: collision with root package name */
    private int f55809p4;

    @Extra
    ExtBean parentExtBean;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.rpc.e recommendClient;

    @ViewById
    ImageView refresh;
    RewardAdViewModel rewardAdViewModel;
    com.join.mgps.rpc.b rpcAccountClient;
    com.join.mgps.rpc.c rpcAccountClientV2;
    com.join.mgps.rpc.k rpcGameClient;

    @ViewById
    ImageView search;
    private com.join.mgps.callbacks.r shareWebCallback;

    @ViewById
    RelativeLayout title;

    @ViewById
    TextView title_textview;
    private String url;
    private String urlFirst;

    @ViewById
    View v_status;

    @ViewById(R.id.video_view)
    FrameLayout video;

    @ViewById
    FrameLayout video_view;

    @ViewById
    LJWebView web;

    @ViewById
    RelativeLayout weblayout;
    private View xCustomView;
    String TAG = "ShareWebActivity";
    private String imgRelativeDir = "/wufan91/live";
    private String INTENT_EXTRA_ACTION_FROM = "PAPA_EMU_INTENT_EXTRA_ACTION_FROM";
    private Handler mHandler = new Handler();
    private boolean isError = false;
    private boolean startLogling = false;

    @Extra
    boolean supportJavascript = true;
    private int defaultScreenState = 0;
    private boolean hasdestroy = false;
    private int lastImeBottom = -1;
    private int lastBottomInset = 0;
    com.join.mgps.dialog.f1 dialog = null;
    boolean isFromEmu = false;
    AlertDialog.Builder dialogB = null;
    private final PostingActivity.m mPostingCallback = new g();

    @SuppressLint({"HandlerLeak"})
    private Handler handler = new i();
    boolean isGetingUserInfo = false;
    private final SocketListener.NotifyObserver mObserver = new l();
    private int porder = -1;
    boolean hasRom = false;
    boolean hasPlug = false;
    private boolean mUploading = false;
    private boolean uploadFiles = false;
    private List<String> uploadFilesSuccessUrl = new ArrayList();
    List<String> mSelectedImages = new ArrayList();
    private net.bither.util.b.e mCompressListener = new d();
    private List<String> uploadImages = new ArrayList();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity.this.getPicFrom(100);
            ShareWebActivity.this.mPicChsDialog.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareWebActivity.this.getPicFrom(200);
            ShareWebActivity.this.mPicChsDialog.dismiss();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ShareWebActivity.this.mPicChsDialog.dismiss();
        }
    }

    class d implements net.bither.util.b.e {
        d() {
        }

        private void b(List<String> list) {
            if (list == null || list.size() <= 0) {
                return;
            }
            com.join.mgps.Util.g1.d("uploadData", "  togglePostSubmit " + list.size());
            ShareWebActivity.this.uploadImages.clear();
            ShareWebActivity.this.uploadImages.addAll(list);
            ShareWebActivity.this.dialogZ();
            ShareWebActivity.this.uploadImage();
            ShareWebActivity.this.uploadFiles = true;
        }

        @Override // net.bither.util.b.e
        public void a(Boolean allFinished, Map<String, String> compressMap, Map<String, Integer> compressState) {
            List<String> list;
            int iIntValue;
            com.join.mgps.Util.g1.d("uploadData", allFinished + "   " + compressMap.size() + "  " + compressState.size());
            if (!allFinished.booleanValue() || (list = ShareWebActivity.this.mSelectedImages) == null || list.size() == 0) {
                b(null);
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < ShareWebActivity.this.mSelectedImages.size(); i10++) {
                String str = ShareWebActivity.this.mSelectedImages.get(i10);
                try {
                    iIntValue = 0;
                    for (String str2 : compressState.keySet()) {
                        try {
                            if (str.contains(new File(str2).getName())) {
                                str = str2;
                                iIntValue = 1;
                            }
                        } catch (Exception e10) {
                            e = e10;
                            e.printStackTrace();
                        }
                    }
                } catch (Exception e11) {
                    e = e11;
                    iIntValue = 0;
                }
                if (iIntValue == 0) {
                    try {
                        iIntValue = compressState.get(str).intValue();
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                }
                String str3 = compressMap.get(str);
                if (iIntValue == 1) {
                    arrayList.add(str3);
                }
            }
            b(arrayList);
        }
    }

    class e implements DownloadListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IntentDateBean f55814a;

        e(final IntentDateBean val$intentDateBean) {
            this.f55814a = val$intentDateBean;
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String url, String userAgent, String contentDisposition, String mimetype, long contentLength) {
            ShareWebActivity.this.downGame(url, this.f55814a);
        }
    }

    class f implements Consumer<com.tbruyelle.rxpermissions2.b> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ IntentDateBean f55816b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f55817c;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f55819b;

            a(final String val$filename) {
                this.f55819b = val$filename;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.join.mgps.Util.a3.b(ShareWebActivity.this.context).d(this.f55819b + "正在下载");
                UtilsMy.S0(ShareWebActivity.this.context, f.this.f55817c, "temp_" + this.f55819b);
                ShareWebActivity.this.mDownloadBottomDialog.dismiss();
            }
        }

        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((ClipboardManager) ShareWebActivity.this.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setPrimaryClip(ClipData.newPlainText(null, f.this.f55817c));
                ShareWebActivity.this.mDownloadBottomDialog.dismiss();
                if (ShareWebActivity.this.mPrePostingHintDialog != null) {
                    ShareWebActivity.this.mPrePostingHintDialog.c();
                }
                ShareWebActivity shareWebActivity = ShareWebActivity.this;
                shareWebActivity.mPrePostingHintDialog = new com.join.mgps.dialog.a2(shareWebActivity, shareWebActivity.mPostingCallback, 4355, "提示", "已复制地址至剪切板，请自行使用浏览器打开。", "我知道了");
                ShareWebActivity.this.mPrePostingHintDialog.e();
            }
        }

        class c implements DialogInterface.OnClickListener {
            c() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                Intent intent = new Intent();
                intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, ShareWebActivity.this.getPackageName(), null));
                ShareWebActivity.this.startActivity(intent);
            }
        }

        f(final IntentDateBean val$intentDateBean, final String val$url) {
            this.f55816b = val$intentDateBean;
            this.f55817c = val$url;
        }

        @Override // io.reactivex.functions.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
            if (!permission.f83019b) {
                if (permission.f83020c) {
                    return;
                }
                ShareWebActivity shareWebActivity = ShareWebActivity.this;
                Dialog dialog = shareWebActivity.dialogU;
                if (dialog == null) {
                    shareWebActivity.dialogB = new AlertDialog.Builder(shareWebActivity.context, R.style.AlertDialogCustom);
                } else if (dialog.isShowing()) {
                    return;
                }
                if (permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74783g)) {
                    return;
                }
                ShareWebActivity.this.dialog.setTitle("提示");
                if (permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74786j) || permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74785i)) {
                    ShareWebActivity.this.dialogB.setMessage("需要打开读写存储权限，请去设置中开启权限");
                } else {
                    ShareWebActivity.this.dialogB.setMessage("请去设置中开启权限");
                }
                ShareWebActivity.this.dialogB.setPositiveButton("去打开", new c());
                ShareWebActivity shareWebActivity2 = ShareWebActivity.this;
                shareWebActivity2.dialogU = shareWebActivity2.dialogB.show();
                return;
            }
            Object object = this.f55816b.getObject();
            UpdateIntentDataBean updateIntentDataBean = null;
            try {
                if (object instanceof UpdateIntentDataBean) {
                    updateIntentDataBean = (UpdateIntentDataBean) object;
                }
            } catch (Exception unused) {
            }
            if (updateIntentDataBean != null && "10".equals(this.f55816b.getFrom())) {
                updateIntentDataBean.getDownloadTask().setUrl(this.f55817c);
                if (UtilsMy.o1(ShareWebActivity.this.context, updateIntentDataBean.getDownloadTask())) {
                    return;
                }
                ChociceDownActivity_.intent(ShareWebActivity.this.context).a(updateIntentDataBean.getDownloadTask()).c(updateIntentDataBean).b(10).start();
                return;
            }
            if (updateIntentDataBean != null && "11".equals(this.f55816b.getFrom())) {
                updateIntentDataBean.getDownloadTask().setUrl(this.f55817c);
                if (UtilsMy.o1(ShareWebActivity.this.context, updateIntentDataBean.getDownloadTask())) {
                    return;
                }
                ChociceDownActivity_.intent(ShareWebActivity.this.context).a(updateIntentDataBean.getDownloadTask()).c(updateIntentDataBean).b(12).start();
                return;
            }
            if (!ShareWebActivity.this.prefDef.firstShowUserPermiss().d().booleanValue()) {
                MobclickAgentKt.onEvent(ShareWebActivity.this.context, "onSourceDownloadBegin");
            }
            String str = this.f55817c;
            String strSubstring = str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
            Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath();
            ShareWebActivity.this.queryDownTask(strSubstring);
            if (ShareWebActivity.this.mDownloadBottomDialog != null) {
                ShareWebActivity.this.mDownloadBottomDialog.dismiss();
            }
            ShareWebActivity.this.mDownloadBottomDialog = new com.join.mgps.dialog.h0(ShareWebActivity.this.context);
            ShareWebActivity.this.mDownloadBottomDialog.show();
            ShareWebActivity.this.mDownloadBottomDialog.a(new a(strSubstring));
            ShareWebActivity.this.mDownloadBottomDialog.b(new b());
        }
    }

    class g implements PostingActivity.m {
        g() {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void a(int value) {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void b(int type) {
            if (type == 4355 && ShareWebActivity.this.mPrePostingHintDialog != null) {
                ShareWebActivity.this.mPrePostingHintDialog.c();
            }
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void c(int type) {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void d(int type) {
            ShareWebActivity.this.finish();
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void e(GroupInfoBean groupInfoBean) {
        }
    }

    class h implements GameRoomActivity.x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f55824a;

        h(final DetailResultBean val$collectionBeanSub) {
            this.f55824a = val$collectionBeanSub;
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
            ShareWebActivity.this.startDownv2(this.f55824a);
        }
    }

    class i extends Handler {
        i() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what != 2) {
                return;
            }
            PayResult payResult = new PayResult((String) msg.obj);
            payResult.getResult();
            String resultStatus = payResult.getResultStatus();
            if (TextUtils.equals(resultStatus, "9000")) {
                ShareWebActivity.this.finish();
                Toast.makeText(ShareWebActivity.this.context, "支付成功", 1);
            } else if (TextUtils.equals(resultStatus, "8000")) {
                Toast.makeText(ShareWebActivity.this.context, "支付结果确认中", 0).show();
            }
        }
    }

    class j extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55827b;

        j(final String val$alipay_sign) {
            this.f55827b = val$alipay_sign;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                String strPay = new PayTask(ShareWebActivity.this.context).pay(com.join.mgps.Util.c0.a(this.f55827b), true);
                Message message = new Message();
                message.what = 2;
                message.obj = strPay;
                ShareWebActivity.this.handler.sendMessage(message);
            } catch (Exception e10) {
                e10.printStackTrace();
                Message message2 = new Message();
                message2.what = 3;
                ShareWebActivity.this.handler.sendMessage(message2);
            }
        }
    }

    class k extends com.join.mgps.socket.fight.arena.b.c {
        k() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void c() {
            super.c();
        }
    }

    class l implements SocketListener.NotifyObserver {
        l() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(NetBattleStartGameDto netBattleStartGameDto, DownloadTask downloadTask) {
            UtilsMy.g4(ShareWebActivity.this.context, netBattleStartGameDto, downloadTask, null, com.join.mgps.socket.fight.arena.c.i(ShareWebActivity.this.mGameRoom.getBattleArea(), false));
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError error) {
            ShareWebActivity.this.myError(error);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v7, types: [com.join.mgps.dto.NetBattleStartGameDto] */
        /* JADX WARN: Type inference failed for: r8v24 */
        /* JADX WARN: Type inference failed for: r8v31 */
        /* JADX WARN: Type inference failed for: r8v7 */
        /* JADX WARN: Type inference failed for: r8v8, types: [int] */
        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse arenaResponse) {
            ?? elite;
            ArenaRequest arenaRequest = arenaResponse.request;
            if (arenaRequest != null) {
                String str = arenaRequest.register_type;
                if (str == ArenaConstants.REGISTER_TYPE_ARENAMAIN || str == ArenaConstants.REGISTER_TYPE_PUBLIC) {
                    if (arenaResponse.responseCode == 0) {
                        ShareWebActivity.this.handleFailure(arenaResponse);
                        return;
                    }
                    if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                        if (TextUtils.isEmpty(ShareWebActivity.this.mGameRoomNum)) {
                            return;
                        }
                        ShareWebActivity shareWebActivity = ShareWebActivity.this;
                        shareWebActivity.doSearchRoomCmd(shareWebActivity.mGameRoomNum);
                        return;
                    }
                    if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SEARCH_ROOM_BY_ID)) {
                        ShareWebActivity.this.handleSearchRoomResponse((GameRoom) arenaResponse.data);
                        return;
                    }
                    if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM)) {
                        ShareWebActivity.this.cancelRegisterObserver();
                        GameRoom gameRoom = (GameRoom) arenaResponse.data;
                        ShareWebActivity.this.mServiceDelegate.d().E(null);
                        final DownloadTask downloadTaskG = q5.f.M().G("" + gameRoom.getGameId());
                        ShareWebActivity.this.dismissLoadingDialog();
                        ShareWebActivity.this.initStartGameParams();
                        int i10 = ShareWebActivity.this.f55806p1 + ShareWebActivity.this.f55807p2 + ShareWebActivity.this.f55808p3 + ShareWebActivity.this.f55809p4;
                        final ?? netBattleStartGameDto = new NetBattleStartGameDto();
                        netBattleStartGameDto.setGameID(ShareWebActivity.this.mGameRoom.getGameId() + "");
                        netBattleStartGameDto.setRoomID(gameRoom.getBattleServerAddr().getBattleRoomId() + "");
                        netBattleStartGameDto.setUserID(ShareWebActivity.this.accountBean.getUid() + "");
                        netBattleStartGameDto.setServerIP(gameRoom.getBattleServerAddr().getHost());
                        netBattleStartGameDto.setServerPort(gameRoom.getBattleServerAddr().getPort());
                        if (gameRoom.getRoomCategory() == RoomCategory.LIVE) {
                            elite = 3;
                        } else {
                            elite = gameRoom.getRoomCategory() == RoomCategory.TOURNAMENT ? 2 : ShareWebActivity.this.mGameRoom.getElite();
                        }
                        netBattleStartGameDto.setRoomMode(elite);
                        netBattleStartGameDto.setAllowPeripheralJoin(ShareWebActivity.this.mGameRoom.getAllowPeripheralJoin());
                        netBattleStartGameDto.setAllowPCJoin(ShareWebActivity.this.mGameRoom.getAllowPCJoin());
                        netBattleStartGameDto.setGameype(ShareWebActivity.this.mGameRoom.getGameType().getNumber());
                        netBattleStartGameDto.setGroupId(ShareWebActivity.this.mGameRoom.getRoomId());
                        netBattleStartGameDto.setP1Name("");
                        netBattleStartGameDto.setP2Name("");
                        netBattleStartGameDto.setOldGame(0);
                        netBattleStartGameDto.setUserName(ShareWebActivity.this.accountBean.getNickname());
                        netBattleStartGameDto.setUserIcon(ShareWebActivity.this.accountBean.getAvatarSrc());
                        netBattleStartGameDto.setGamePlayers(ShareWebActivity.this.mGameRoom.getSeatsNumber());
                        netBattleStartGameDto.setTcptype(1);
                        netBattleStartGameDto.setPorder(ShareWebActivity.this.porder);
                        netBattleStartGameDto.setNetPlayers(i10);
                        if (!ShareWebActivity.this.mGameRoom.getElite()) {
                            netBattleStartGameDto.setOpenBattleScore(ShareWebActivity.this.mGameRoom.getOpenBattleScore());
                        }
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(">>>>>>>>>>>>>>>>>>>tbl>>>>>>>>>>>>>>>>>>>>>>join game!!!!!! ");
                        sb2.append(netBattleStartGameDto.toString());
                        ShareWebActivity.this.mServiceDelegate.f(ArenaRequestFactory.startLobbyGame(ArenaConstants.REGISTER_TYPE_GAMEROOM, ShareWebActivity.this.mGameRoom.getRoomId()));
                        if (ShareWebActivity.this.mGameRoom != null && ShareWebActivity.this.mGameRoom.getRoomId() != 0) {
                            com.wufan.friend.chat.c.u().i(0, ShareWebActivity.this.mGameRoom.getRoomId());
                        }
                        ShareWebActivity.this.runOnUiThread(new Runnable() { // from class: com.join.mgps.activity.h9
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f57287b.b(netBattleStartGameDto, downloadTaskG);
                            }
                        });
                    }
                }
            }
        }
    }

    class m implements InputNumView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.input.a f55831a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f55832b;

        m(final com.join.mgps.customview.input.a val$mInputGameRoomPwdDialog, final GameRoom val$gameRoom) {
            this.f55831a = val$mInputGameRoomPwdDialog;
            this.f55832b = val$gameRoom;
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void a() {
            this.f55831a.c();
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void b(String num) {
            this.f55831a.c();
            if (TextUtils.isEmpty(num)) {
                return;
            }
            ShareWebActivity.this.showLoadingDialog("正在获取房间...");
            ShareWebActivity.this.doJoinRoom(this.f55832b, num);
        }
    }

    public class n extends com.join.mgps.callbacks.u {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f55835b;

            a(final boolean val$success) {
                this.f55835b = val$success;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean zH = com.join.android.app.common.utils.i.h(ShareWebActivity.this.prefDef.lastCheckInTime().d().longValue());
                if (this.f55835b) {
                    if (zH) {
                        return;
                    }
                    ShareWebActivity.this.prefDef.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
                } else if (zH) {
                    ShareWebActivity.this.prefDef.lastCheckInTime().g(0L);
                }
            }
        }

        class a0 implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f55837b;

            a0(final int val$screenLandOrPort) {
                this.f55837b = val$screenLandOrPort;
            }

            @Override // java.lang.Runnable
            public void run() {
                int i10 = this.f55837b;
                if (i10 == 0) {
                    ShareWebActivity.this.setRequestedOrientation(4);
                    ShareWebActivity.this.defaultScreenState = 0;
                    return;
                }
                if (i10 == 1) {
                    ShareWebActivity.this.setRequestedOrientation(0);
                    ShareWebActivity.this.defaultScreenState = 1;
                    return;
                }
                if (i10 == 2) {
                    ShareWebActivity.this.setRequestedOrientation(1);
                    ShareWebActivity.this.defaultScreenState = 2;
                } else if (i10 == 3) {
                    ShareWebActivity.this.setFullScreen();
                    ShareWebActivity.this.defaultScreenState = 3;
                } else {
                    if (i10 != 4) {
                        return;
                    }
                    ShareWebActivity.this.defaultScreenState = 4;
                    ShareWebActivity.this.v_status.setVisibility(8);
                }
            }
        }

        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.startLogling = true;
                IntentUtil.getInstance().goAccountUpgradeActivity(ShareWebActivity.this.context);
            }
        }

        class b0 implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f55840b;

            b0(final boolean val$showOrHide) {
                this.f55840b = val$showOrHide;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f55840b) {
                    ShareWebActivity.this.title.setVisibility(0);
                } else {
                    ShareWebActivity.this.title.setVisibility(8);
                }
            }
        }

        class c implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f55842b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f55843c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f55844d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f55845e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f55846f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ int f55847g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            final /* synthetic */ String f55848h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            final /* synthetic */ String f55849i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            final /* synthetic */ String f55850j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            final /* synthetic */ String f55851k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            final /* synthetic */ String f55852l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            final /* synthetic */ String f55853m;

            c(final String val$app_key, final int val$payType, final String val$callback_url, final String val$app_name, final String val$app_order_id, final int val$paOpenuid, final String val$uid, final String val$product_id, final String val$product_name, final String val$pay_rmb, final String val$extra1, final String val$extra2) {
                this.f55842b = val$app_key;
                this.f55843c = val$payType;
                this.f55844d = val$callback_url;
                this.f55845e = val$app_name;
                this.f55846f = val$app_order_id;
                this.f55847g = val$paOpenuid;
                this.f55848h = val$uid;
                this.f55849i = val$product_id;
                this.f55850j = val$product_name;
                this.f55851k = val$pay_rmb;
                this.f55852l = val$extra1;
                this.f55853m = val$extra2;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    PapayOrder papayOrder = new PapayOrder();
                    papayOrder.APPKEY = this.f55842b;
                    papayOrder.PAYTYPE = this.f55843c;
                    papayOrder.NOTIFY_URI = this.f55844d;
                    papayOrder.APP_NAME = this.f55845e;
                    papayOrder.APP_ORDER_ID = this.f55846f;
                    papayOrder.PA_OPEN_UID = this.f55847g;
                    papayOrder.APP_USER_ID = this.f55848h;
                    papayOrder.APP_USER_NAME = "";
                    papayOrder.PRODUCT_ID = this.f55849i;
                    papayOrder.PRODUCT_NAME = this.f55850j;
                    papayOrder.MONEY_AMOUNT = this.f55851k;
                    papayOrder.APP_DISTRICT = 1;
                    papayOrder.APP_SERVER = 1;
                    papayOrder.APP_EXT1 = this.f55852l;
                    papayOrder.APP_EXT2 = this.f55853m;
                    papayOrder.PAYORRECHARGE = 1;
                    ShareWebActivity.this.startPay(papayOrder);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class d implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f55855b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f55856c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f55857d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f55858e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f55859f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ String f55860g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            final /* synthetic */ String f55861h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            final /* synthetic */ String f55862i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            final /* synthetic */ String f55863j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            final /* synthetic */ String f55864k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            final /* synthetic */ String f55865l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            final /* synthetic */ String f55866m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            final /* synthetic */ String f55867n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ String f55868o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            final /* synthetic */ String f55869p;

            d(final String val$app_key, final int val$payType, final String val$callback_url, final String val$app_name, final String val$app_order_id, final String val$paOpenuid, final String val$uid, final String val$product_id, final String val$product_name, final String val$pay_rmb, final String val$extra1, final String val$extra2, final String val$appPrivateKey, final String val$token, final String val$payShowType) {
                this.f55855b = val$app_key;
                this.f55856c = val$payType;
                this.f55857d = val$callback_url;
                this.f55858e = val$app_name;
                this.f55859f = val$app_order_id;
                this.f55860g = val$paOpenuid;
                this.f55861h = val$uid;
                this.f55862i = val$product_id;
                this.f55863j = val$product_name;
                this.f55864k = val$pay_rmb;
                this.f55865l = val$extra1;
                this.f55866m = val$extra2;
                this.f55867n = val$appPrivateKey;
                this.f55868o = val$token;
                this.f55869p = val$payShowType;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    PapayOrder papayOrder = new PapayOrder();
                    papayOrder.APPKEY = this.f55855b;
                    papayOrder.PAYTYPE = this.f55856c;
                    papayOrder.NOTIFY_URI = this.f55857d;
                    papayOrder.APP_NAME = this.f55858e;
                    papayOrder.APP_ORDER_ID = this.f55859f;
                    if (com.join.mgps.Util.t2.i(this.f55860g)) {
                        papayOrder.PA_OPEN_UID = Integer.parseInt(this.f55860g);
                    }
                    papayOrder.APP_USER_ID = this.f55861h;
                    papayOrder.APP_USER_NAME = this.f55858e;
                    papayOrder.PRODUCT_ID = this.f55862i;
                    papayOrder.PRODUCT_NAME = this.f55863j;
                    papayOrder.MONEY_AMOUNT = this.f55864k;
                    papayOrder.APP_DISTRICT = 1;
                    papayOrder.APP_SERVER = 1;
                    papayOrder.APP_EXT1 = this.f55865l;
                    papayOrder.APP_EXT2 = this.f55866m;
                    papayOrder.PAYORRECHARGE = 1;
                    papayOrder.PRIVATEKEY = this.f55867n;
                    papayOrder.TOKEN = this.f55868o;
                    if (com.join.mgps.Util.t2.i(this.f55869p)) {
                        papayOrder.PAYSHOWTYPE = Integer.parseInt(this.f55869p);
                    }
                    ShareWebActivity.this.startPay(papayOrder);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class e implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f55871b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f55872c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f55873d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f55874e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f55875f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ String f55876g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            final /* synthetic */ String f55877h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            final /* synthetic */ String f55878i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            final /* synthetic */ String f55879j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            final /* synthetic */ String f55880k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            final /* synthetic */ String f55881l;

            e(final int val$payType, final String val$callback_url, final String val$app_name, final String val$app_order_id, final String val$paOpenuid, final String val$uid, final String val$product_id, final String val$product_name, final String val$pay_rmb, final String val$extra1, final String val$extra2) {
                this.f55871b = val$payType;
                this.f55872c = val$callback_url;
                this.f55873d = val$app_name;
                this.f55874e = val$app_order_id;
                this.f55875f = val$paOpenuid;
                this.f55876g = val$uid;
                this.f55877h = val$product_id;
                this.f55878i = val$product_name;
                this.f55879j = val$pay_rmb;
                this.f55880k = val$extra1;
                this.f55881l = val$extra2;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    PapayOrder papayOrder = new PapayOrder();
                    papayOrder.APPKEY = "qh97";
                    papayOrder.PAYTYPE = this.f55871b;
                    papayOrder.NOTIFY_URI = this.f55872c;
                    papayOrder.APP_NAME = this.f55873d;
                    papayOrder.APP_ORDER_ID = this.f55874e;
                    if (com.join.mgps.Util.t2.i(this.f55875f)) {
                        papayOrder.PA_OPEN_UID = Integer.parseInt(this.f55875f);
                    }
                    papayOrder.APP_USER_ID = this.f55876g;
                    papayOrder.APP_USER_NAME = this.f55873d;
                    papayOrder.PRODUCT_ID = this.f55877h;
                    papayOrder.PRODUCT_NAME = this.f55878i;
                    papayOrder.MONEY_AMOUNT = this.f55879j;
                    papayOrder.APP_DISTRICT = 1;
                    papayOrder.APP_SERVER = 1;
                    papayOrder.APP_EXT1 = this.f55880k;
                    papayOrder.APP_EXT2 = this.f55881l;
                    papayOrder.PAYORRECHARGE = 2;
                    ShareWebActivity.this.startPay(papayOrder);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class f implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f55883b;

            f(final boolean val$show) {
                this.f55883b = val$show;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f55883b) {
                    ShareWebActivity.this.refresh.setVisibility(0);
                } else {
                    ShareWebActivity.this.refresh.setVisibility(8);
                }
            }
        }

        class g implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f55885b;

            g(final boolean val$show) {
                this.f55885b = val$show;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f55885b) {
                    ShareWebActivity.this.download.setVisibility(0);
                } else {
                    ShareWebActivity.this.download.setVisibility(8);
                }
            }
        }

        class h implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f55887b;

            h(final boolean val$show) {
                this.f55887b = val$show;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f55887b) {
                    ShareWebActivity.this.search.setVisibility(0);
                } else {
                    ShareWebActivity.this.search.setVisibility(8);
                }
            }
        }

        class i implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f55889b;

            i(final boolean val$show) {
                this.f55889b = val$show;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f55889b) {
                    ShareWebActivity.this.back_imag.setVisibility(0);
                } else {
                    ShareWebActivity.this.back_imag.setVisibility(8);
                }
            }
        }

        class j implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f55891b;

            j(final boolean val$show) {
                this.f55891b = val$show;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f55891b) {
                    ShareWebActivity.this.backNew.setVisibility(0);
                } else {
                    ShareWebActivity.this.backNew.setVisibility(8);
                }
            }
        }

        class k implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f55893b;

            k(final String val$json) {
                this.f55893b = val$json;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.join.mgps.Util.w.s(ShareWebActivity.this, this.f55893b, 5);
            }
        }

        class l implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f55895b;

            class a implements View.OnClickListener {
                a() {
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (System.currentTimeMillis() - ShareWebActivity.this.lastClick <= 2000) {
                        return;
                    }
                    ShareWebActivity.this.lastClick = System.currentTimeMillis();
                    l lVar = l.this;
                    com.join.mgps.Util.w.s(ShareWebActivity.this, lVar.f55895b, 5);
                }
            }

            l(final String val$json) {
                this.f55895b = val$json;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.f55895b;
                if (str == null || str.equals("")) {
                    ShareWebActivity.this.layout_share.setVisibility(8);
                } else {
                    ShareWebActivity.this.layout_share.setVisibility(0);
                    ShareWebActivity.this.layout_share.setOnClickListener(new a());
                }
            }
        }

        class m implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f55898b;

            m(final int val$orderType) {
                this.f55898b = val$orderType;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    ShareWebActivity.this.dialog.b();
                    ShareWebActivity.this.createVip(this.f55898b);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.activity.ShareWebActivity$n$n, reason: collision with other inner class name */
        class RunnableC0676n implements Runnable {
            RunnableC0676n() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.initPhotoDialog();
            }
        }

        class o implements Runnable {
            o() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.goMyAlbumActivity4PickPic();
            }
        }

        class p implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f55902b;

            p(final String val$tag_id) {
                this.f55902b = val$tag_id;
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.goMyMainLabel(this.f55902b);
            }
        }

        class q implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f55904b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f55905c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f55906d;

            q(final String val$tag_id, final String val$fid, final String val$fname) {
                this.f55904b = val$tag_id;
                this.f55905c = val$fid;
                this.f55906d = val$fname;
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.goMyMainLabel(this.f55904b, this.f55905c, this.f55906d);
            }
        }

        class r implements Runnable {
            r() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.goSearchLabel();
            }
        }

        class s implements Runnable {
            s() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.setFullScreen();
            }
        }

        class t implements Runnable {
            t() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.quitFullScreen();
            }
        }

        class u implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f55911b;

            class a implements GameRoomActivity.x {
                a() {
                }

                @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                public void onFail(int type) {
                }

                @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                public void onSuccess(int type, int duration, ButtonBean buttonBean) {
                }

                @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                public void onSuccess(int type, int duration) {
                    u uVar = u.this;
                    ShareWebActivity.this.loaclJumpGameMatch(uVar.f55911b);
                }
            }

            u(final String val$roomId) {
                this.f55911b = val$roomId;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    UtilsMy.A0(ShareWebActivity.this.context, 4, "", "FIGHT_LOBBY", new a());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class v implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f55914b;

            v(final String val$title) {
                this.f55914b = val$title;
            }

            @Override // java.lang.Runnable
            public void run() {
                ShareWebActivity.this.title_textview.setText(this.f55914b);
            }
        }

        class w implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f55916b;

            w(final String val$json) {
                this.f55916b = val$json;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    IntentDateBean intentDateBean = (IntentDateBean) JsonMapper.getInstance().fromJson(this.f55916b, IntentDateBean.class);
                    intentDateBean.setExtBean(new ExtBean(120));
                    if (intentDateBean.getObject() != null && (intentDateBean.getObject() instanceof Map)) {
                        HashMap map = (HashMap) intentDateBean.getObject();
                        if (map.containsKey("from") && map.get("from") != null && (map.get("from") instanceof Integer)) {
                            intentDateBean.setExtBean(new ExtBean(((Integer) map.get("from")).intValue()));
                        }
                    }
                    if (intentDateBean.getLink_type() == 5) {
                        MApplication.f3182z.O(true);
                    }
                    IntentUtil.getInstance().intentActivity(ShareWebActivity.this, intentDateBean);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class x implements Runnable {
            x() {
            }

            @Override // java.lang.Runnable
            public void run() {
                WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
                ShareWebActivity shareWebActivity = ShareWebActivity.this;
                shareWebActivity.accountBean = AccountUtil_.getInstance_(shareWebActivity.context).getAccountData();
                webAccountDataBean.setAccountBean(AccountBean.convert(ShareWebActivity.this.accountBean));
                if (ShareWebActivity.this.accountBean == null) {
                    ShareWebActivity.this.startLogling = true;
                    IntentUtil.getInstance().goMyAccountLoginActivity(ShareWebActivity.this.context, 0, 2);
                    return;
                }
                webAccountDataBean.setHasLogin(true);
                ShareWebActivity.this.web.w("javascript:papaPutAccountData(" + JsonMapper.getInstance().toJson(webAccountDataBean) + ")");
            }
        }

        class y implements Runnable {
            y() {
            }

            @Override // java.lang.Runnable
            public void run() {
                WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
                ShareWebActivity shareWebActivity = ShareWebActivity.this;
                shareWebActivity.accountBean = AccountUtil_.getInstance_(shareWebActivity.context).getAccountData();
                webAccountDataBean.setAccountBean(AccountBean.convert(ShareWebActivity.this.accountBean));
                if (!AccountUtil_.getInstance_(ShareWebActivity.this.context).isTourist() && ShareWebActivity.this.accountBean != null && !TextUtils.isEmpty(ShareWebActivity.this.accountBean.getToken())) {
                    AccountUtil_.getInstance_(ShareWebActivity.this.context).accountLoginOut(ShareWebActivity.this.context);
                }
                ShareWebActivity.this.startLogling = true;
                IntentUtil.getInstance().goMyAccountLoginActivity(ShareWebActivity.this.context, 0, 2);
            }
        }

        class z implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f55920b;

            z(final String val$url) {
                this.f55920b = val$url;
            }

            @Override // java.lang.Runnable
            public void run() {
                if ("".equals(this.f55920b)) {
                    ShareWebActivity.this.finishM();
                } else {
                    ShareWebActivity.this.web.w(this.f55920b);
                }
            }
        }

        public n(Activity target) {
            super(target);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(int i10, String str) {
            if (ShareWebActivity.this.shareWebCallback != null) {
                ShareWebActivity.this.shareWebCallback.onEvent(ShareWebActivity.this, i10, str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(String str) {
            ShareWebActivity.this.registerKeyboardChangeListener(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m() {
            ShareWebActivity.this.unregisterKeyboardChangeListener();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n() {
            Intent intent = new Intent(BAction.ACTION_REAL_NAME_RESULT);
            intent.putExtra("result", 1);
            ShareWebActivity.this.sendBroadcast(intent);
            IntentDateBean intentDateBean = ShareWebActivity.this.intentdate;
            String str = "0";
            if (intentDateBean != null) {
                String ext3 = intentDateBean.getExt3();
                if (!com.join.mgps.Util.t2.h(ext3)) {
                    str = ext3;
                }
            }
            com.join.mgps.va.overmind.i.u0(intent, Integer.parseInt(str));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void alipay(String data) {
            if (com.join.mgps.Util.t2.i(data)) {
                ShareWebActivity.this.startPayAlipay(data);
            }
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void checkin(final boolean success) {
            ShareWebActivity.this.mHandler.post(new a(success));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void creatVipOrder(final int orderType) {
            ShareWebActivity.this.mHandler.post(new m(orderType));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void downloadGameByGameId(String gameId) {
            ShareWebActivity.this.getDetailData(gameId, null, 0, "");
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void downloadGameByGameIdAndFrom(String gameId, int from) {
            ShareWebActivity.this.getDetailData(gameId, null, from, "");
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void downloadGameByGameIdAndUrl(String gameId, String gameurl) {
            ShareWebActivity.this.getDetailData(gameId, gameurl, 0, "");
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void downloadGameByGameIdIfNoGame(String gameId) {
            if (q5.f.M().G(gameId) == null) {
                ShareWebActivity.this.getDetailData(gameId, null, 0, "");
            }
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void downloadGameByGameIdWithExt(String gameId, String extStr) {
            ShareWebActivity.this.getDetailData(gameId, null, 0, extStr);
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void getAccount() {
            ShareWebActivity.this.mHandler.post(new x());
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public String getFrom() {
            IntentDateBean intentDateBean = ShareWebActivity.this.intentdate;
            return intentDateBean != null ? intentDateBean.getFrom() : "";
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public int getNavigationBarHeight() {
            WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(ShareWebActivity.this.weblayout);
            return rootWindowInsets != null ? rootWindowInsets.getInsets(WindowInsetsCompat.Type.navigationBars()).bottom : com.join.android.app.common.utils.q.t(ShareWebActivity.this);
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public String getPapaUIDAndToken() {
            ShareWebActivity shareWebActivity = ShareWebActivity.this;
            shareWebActivity.accountBean = AccountUtil_.getInstance_(shareWebActivity.context).getAccountData();
            if (ShareWebActivity.this.accountBean != null && ShareWebActivity.this.accountBean.getAccountType() == 1) {
                return JsonMapper.toJsonString(new PaOpenBean(ShareWebActivity.this.accountBean.getUid(), ShareWebActivity.this.accountBean.getToken()));
            }
            IntentUtil.getInstance().goMyAccountLoginActivity(ShareWebActivity.this.context, 0, 2);
            return "";
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public String getParentExtBean() {
            ExtBean extBean = ShareWebActivity.this.parentExtBean;
            return extBean != null ? JsonMapper.toJsonString(extBean.buildScene().toExt()) : "";
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public String getSdkIntentData() {
            IntentDataMain intentDataMain = ShareWebActivity.this.intentDataMain;
            return intentDataMain != null ? intentDataMain.getData() : "";
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public int getStatusBarHeight() {
            return com.join.mgps.Util.p2.i(ShareWebActivity.this);
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void goBackUrl(final String url) {
            ShareWebActivity.this.mHandler.post(new z(url));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void goChoiceUploadImage() {
            ShareWebActivity.this.mHandler.post(new o());
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void goMainLabel(final String tag_id) {
            ShareWebActivity.this.mHandler.post(new p(tag_id));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void goSearchLabel() {
            ShareWebActivity.this.mHandler.post(new r());
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void intentToCompletAccount() {
            ShareWebActivity.this.mHandler.post(new b());
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void jumpGameMatch(String roomId) {
            ShareWebActivity.this.mHandler.post(new u(roomId));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void launchMiniProgram(int location, String abUid, String url) {
            ShareWebActivity.this.getPrivateDomain(location, abUid, url);
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void login() {
            ShareWebActivity.this.mHandler.post(new y());
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void onEvent(final int event, @Nullable final String jsonParams) {
            ShareWebActivity.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.k9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f57387b.k(event, jsonParams);
                }
            });
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void onStartPay(final String json) {
            h8.a aVarA;
            if (TextUtils.isEmpty(json)) {
                return;
            }
            try {
                PapayOrder papayOrder = (PapayOrder) JsonMapper.getInstance().fromJson(json, PapayOrder.class);
                if (papayOrder == null) {
                    return;
                }
                String str = papayOrder.MONEY_AMOUNT;
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                double d10 = Double.parseDouble(str);
                if (d10 > 0.0d && (aVarA = com.constant.a.a()) != null) {
                    aVarA.b(d10);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void papaLiveCropImage() {
            ShareWebActivity.this.mHandler.post(new RunnableC0676n());
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void payByPapa(final String app_key, final int payType, final String callback_url, final String app_name, final String app_order_id, final int paOpenuid, final String uid, final String product_id, final String product_name, final String pay_rmb, final String extra1, final String extra2) {
            ShareWebActivity.this.mHandler.post(new c(app_key, payType, callback_url, app_name, app_order_id, paOpenuid, uid, product_id, product_name, pay_rmb, extra1, extra2));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void payGameFinish(int resultCode) {
            if (resultCode == 1) {
                ShareWebActivity.this.setResult(10010);
            } else if (resultCode == 2) {
                ShareWebActivity.this.setResult(10011);
            }
            ShareWebActivity.this.finish();
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public String processCmd(String cmd, String json) {
            if (!TextUtils.isEmpty(cmd) && cmd.equals("goMyGamePapaCloud")) {
                ShareWebActivity.this.goMyGamePapaCloud();
            }
            return "";
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void pullRewardAd(String json) {
            if (TextUtils.isEmpty(json)) {
                return;
            }
            String str = ShareWebActivity.this.TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("pullRewardAd ");
            sb2.append(json);
            RewardAdParam rewardAdParam = (RewardAdParam) JsonMapper.getInstance().fromJson(json, RewardAdParam.class);
            if (rewardAdParam == null || TextUtils.isEmpty(rewardAdParam.getType())) {
                return;
            }
            HashMap<String, Object> map = new HashMap<>();
            try {
                JSONObject jSONObject = new JSONObject(json);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject.opt(next));
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            if (rewardAdParam.getType().equals(com.coremedia.iso.boxes.t.f25121f)) {
                ShareWebActivity.this.startPlayRewardVideo(ShareWebActivity.this.prefDef.simulator_exit_lottery_cfg().d(), map);
            } else if (rewardAdParam.getType().equals("doubleClaim")) {
                ShareWebActivity.this.startPlayRewardVideo(ShareWebActivity.this.prefDef.simulator_exit_double_cfg().d(), map);
            }
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void rechargePabiFrom(final String app_key, final int payType, final String callback_url, final String app_name, final String app_order_id, final String paOpenuid, final String uid, final String product_id, final String product_name, final String pay_rmb, final String extra1, final String extra2) {
            ShareWebActivity.this.mHandler.post(new e(payType, callback_url, app_name, app_order_id, paOpenuid, uid, product_id, product_name, pay_rmb, extra1, extra2));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void registerKeyboardChangeListener(final String callback) {
            ShareWebActivity.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.i9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f57341b.l(callback);
                }
            });
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void setFullScreenJs(final String json) {
            ShareWebActivity.this.mHandler.post(new s());
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void setQuitFullScreenJs(final String json) {
            ShareWebActivity.this.mHandler.post(new t());
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void setScreenLandOrPort(final int screenLandOrPort) {
            ShareWebActivity.this.mHandler.post(new a0(screenLandOrPort));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void setTitle(final String title) {
            ShareWebActivity.this.mHandler.post(new v(title));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void shareFromJson(final String json) {
            ShareWebActivity.this.mHandler.post(new k(json));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void showBackNew(final boolean show) {
            ShareWebActivity.this.mHandler.post(new j(show));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void showDownload(final boolean show) {
            ShareWebActivity.this.mHandler.post(new g(show));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void showFinish(final boolean show) {
            ShareWebActivity.this.mHandler.post(new i(show));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void showRefresh(final boolean show) {
            ShareWebActivity.this.mHandler.post(new f(show));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void showSearch(final boolean show) {
            ShareWebActivity.this.mHandler.post(new h(show));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void showShareButn(final String json) {
            ShareWebActivity.this.mHandler.post(new l(json));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void showTitle(final boolean showOrHide) {
            ShareWebActivity.this.mHandler.post(new b0(showOrHide));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void startIntent(final String json) {
            ShareWebActivity.this.mHandler.post(new w(json));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void unregisterKeyboardChangeListener() {
            ShareWebActivity.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.l9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f57405b.m();
                }
            });
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void updateAccount() {
            ShareWebActivity.this.getUserInfo();
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void updateRealNameState() {
            try {
                ShareWebActivity.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.j9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f57353b.n();
                    }
                });
            } catch (Exception unused) {
            }
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void updateVip() {
            ShareWebActivity.this.checkToken();
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void goMainLabel(final String tag_id, final String fid, final String fname) {
            ShareWebActivity.this.mHandler.post(new q(tag_id, fid, fname));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void payByPapa(final String app_key, final String appPrivateKey, final int payType, final String callback_url, final String app_name, final String app_order_id, final String paOpenuid, final String uid, final String product_id, final String product_name, final String pay_rmb, final String extra1, final String extra2, final String token, final String payShowType) {
            ShareWebActivity.this.mHandler.post(new d(app_key, payType, callback_url, app_name, app_order_id, paOpenuid, uid, product_id, product_name, pay_rmb, extra1, extra2, appPrivateKey, token, payShowType));
        }
    }

    private class o extends WebViewClient {
        public o(Context context) {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url2) {
            super.onPageFinished(view, url2);
            if (url2.endsWith(".zip")) {
                return;
            }
            com.join.mgps.Util.g1.b(ShareWebActivity.this.TAG, "onPageFinished() called." + url2);
            if (url2.startsWith("http") || url2.startsWith("https") || url2.startsWith("file://")) {
                ShareWebActivity.this.url = url2;
            }
            if (ShareWebActivity.this.url.equals("data:text/html,chromewebdata") || ShareWebActivity.this.isError) {
                ShareWebActivity.this.showLodingFailed();
            } else {
                view.getSettings().setBlockNetworkImage(false);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url2, Bitmap favicon) {
            super.onPageStarted(view, url2, favicon);
            com.join.mgps.Util.g1.b(ShareWebActivity.this.TAG, "onPageStarted() called." + url2);
            if (url2.endsWith(".zip")) {
                return;
            }
            if (url2.startsWith("http") || url2.startsWith("https") || url2.startsWith("file://")) {
                ShareWebActivity.this.url = url2;
            }
            ShareWebActivity.this.showLoding();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            super.onReceivedError(view, errorCode, description, failingUrl);
            com.join.mgps.Util.g1.b(ShareWebActivity.this.TAG, "onReceivedError() called." + failingUrl);
            if (failingUrl.endsWith(".zip")) {
                return;
            }
            ShareWebActivity.this.isError = true;
            view.loadDataWithBaseURL(null, "", ClipBoardItemData.TYPE_TEXT_HTML, "utf-8", null);
            ShareWebActivity.this.showLodingFailed();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
            int primaryError = error.getPrimaryError();
            if (primaryError == 3 || primaryError == 5) {
                handler.proceed();
            }
            handler.cancel();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String url2) {
            com.join.mgps.Util.g1.b(ShareWebActivity.this.TAG, "shouldOverrideUrlLoading() called.");
            if (!com.join.android.app.common.utils.m.j(ShareWebActivity.this.context)) {
                com.join.mgps.Util.a3.b(ShareWebActivity.this.context).d(ShareWebActivity.this.getString(R.string.net_connect_failed));
            } else {
                if (!url2.startsWith("weixin:")) {
                    if (url2.startsWith("http") || url2.startsWith("https") || url2.startsWith("file://")) {
                        ShareWebActivity.this.url = url2;
                        return super.shouldOverrideUrlLoading(view, url2);
                    }
                    try {
                        ShareWebActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url2)));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    return true;
                }
                try {
                    ShareWebActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url2)));
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            return true;
        }
    }

    private UserInfo accountBean(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private boolean checkGameIsInstall(String gameId) {
        this.hasRom = false;
        this.hasPlug = false;
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG == null || downloadTaskG.getStatus() != 5) {
            this.hasRom = false;
        } else {
            this.hasRom = true;
            EMUApkTable eMUApkTableN = t6.p.o().n(downloadTaskG.getPlugin_num());
            if (eMUApkTableN == null) {
                this.hasPlug = true;
            } else if (!com.join.android.app.common.utils.o.t(this.context, eMUApkTableN, false, new String[0]) || UtilsMy.D0(this.context, eMUApkTableN)) {
                this.hasPlug = false;
            } else {
                this.hasPlug = true;
            }
        }
        return this.hasPlug && this.hasRom;
    }

    private boolean checkPublishPermission() {
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        if (ContextCompat.checkSelfPermission(this, com.kuaishou.weapon.p0.g.f74786j) != 0) {
            arrayList.add(com.kuaishou.weapon.p0.g.f74786j);
        }
        if (ContextCompat.checkSelfPermission(this, "android.permission.CAMERA") != 0) {
            arrayList.add("android.permission.CAMERA");
        }
        if (ContextCompat.checkSelfPermission(this, com.kuaishou.weapon.p0.g.f74779c) != 0) {
            arrayList.add(com.kuaishou.weapon.p0.g.f74779c);
        }
        if (arrayList.size() == 0) {
            return true;
        }
        ActivityCompat.requestPermissions(this, (String[]) arrayList.toArray(new String[0]), 2);
        return false;
    }

    private Uri createCoverUri(String type) {
        String str;
        String str2 = this.accountBean.getUid() + type + System.currentTimeMillis() + ".jpg";
        if (getExternalFilesDir("") != null) {
            str = getExternalFilesDir("") + this.imgRelativeDir;
        } else {
            str = getFilesDir() + this.imgRelativeDir;
        }
        File file = new File(str, str2);
        try {
            File file2 = new File(str);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            if (file.exists()) {
                file.delete();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            Toast.makeText(this, "生成封面失败", 0).show();
        }
        return FileProvider.getUriForFile(this, getPackageName() + ".fileprovider", file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishM() {
        Activity splashActivity = IntentUtil.getInstance().getSplashActivity();
        if (splashActivity != null) {
            splashActivity.finish();
            IntentUtil.getInstance().setSplashActivity(null);
            Intent intent = new Intent();
            intent.setClass(splashActivity, MGMainActivity_.class);
            intent.setFlags(67108864);
            intent.addFlags(C.ENCODING_PCM_A_LAW);
            startActivity(intent);
        }
        backModGame();
        finish();
    }

    private List<String> getImagesFromAlbum(Intent intent) {
        return (intent == null || intent.getExtras() == null) ? new ArrayList() : (List) intent.getExtras().get(MyAlbumActivity.KEY_SELECTED_IMAGES);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getPicFrom(int type) {
        File[] fileArrListFiles;
        if (!this.mPermission) {
            Toast.makeText(this, getString(R.string.tip_no_permission), 0).show();
            return;
        }
        if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(this, "android.permission-group.STORAGE") == 0) {
            File file = new File(Environment.getExternalStorageDirectory() + this.imgRelativeDir);
            if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2.exists() && file2.isFile() && file2.getName().endsWith(".jpg")) {
                        UtilsMy.delete(file2);
                    }
                }
            }
        }
        File[] fileArrListFiles2 = new File((getExternalFilesDir("") != null ? getExternalFilesDir("") + this.imgRelativeDir : getFilesDir() + this.imgRelativeDir) + this.imgRelativeDir).listFiles();
        if (fileArrListFiles2 != null) {
            for (File file3 : fileArrListFiles2) {
                if (file3.exists() && file3.isFile() && file3.getName().endsWith(".jpg")) {
                    UtilsMy.delete(file3);
                }
            }
        }
        if (type == 100) {
            this.fileUri = createCoverUri("");
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            intent.putExtra("output", this.fileUri);
            startActivityForResult(intent, 100);
            return;
        }
        if (type != 200) {
            return;
        }
        this.fileUri = createCoverUri("_select");
        Intent intent2 = new Intent("android.intent.action.GET_CONTENT");
        intent2.setType("image/*");
        startActivityForResult(intent2, 200);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initPhotoDialog() {
        Dialog dialog = new Dialog(this, R.style.floate_dialog);
        this.mPicChsDialog = dialog;
        dialog.setContentView(R.layout.dialog_pic_choose);
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Window window = this.mPicChsDialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        window.setGravity(80);
        attributes.width = defaultDisplay.getWidth();
        this.mPicChsDialog.getWindow().setAttributes(attributes);
        TextView textView = (TextView) this.mPicChsDialog.findViewById(R.id.chos_camera);
        TextView textView2 = (TextView) this.mPicChsDialog.findViewById(R.id.pic_lib);
        TextView textView3 = (TextView) this.mPicChsDialog.findViewById(R.id.btn_cancel);
        textView.setOnClickListener(new a());
        textView2.setOnClickListener(new b());
        textView3.setOnClickListener(new c());
        this.mPicChsDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initStartGameParams() {
        RoomPosition p10 = this.mGameRoom.getP1();
        if (p10.getUid() == 0) {
            this.f55806p1 = 0;
        } else {
            if (p10.getUid() == this.accountUtil.getAccountData().getUid()) {
                this.porder = 0;
            }
            this.f55806p1 = 1;
        }
        RoomPosition p11 = this.mGameRoom.getP2();
        if (p11.getUid() == 0) {
            this.f55807p2 = 0;
        } else {
            if (p11.getUid() == this.accountUtil.getAccountData().getUid()) {
                this.porder = 1;
            }
            this.f55807p2 = 1;
        }
        RoomPosition p12 = this.mGameRoom.getP3();
        if (p12.getUid() == 0) {
            this.f55808p3 = 0;
        } else {
            if (p12.getUid() == this.accountUtil.getAccountData().getUid()) {
                this.porder = 2;
            }
            this.f55808p3 = 1;
        }
        RoomPosition p13 = this.mGameRoom.getP4();
        if (p13.getUid() == 0) {
            this.f55809p4 = 0;
            return;
        }
        if (p13.getUid() == this.accountUtil.getAccountData().getUid()) {
            this.porder = 3;
        }
        this.f55809p4 = 1;
    }

    private boolean isAppInstalled(String uri) {
        try {
            this.context.getPackageManager().getPackageInfo(uri, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private boolean isTabletDevice(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    private boolean isValidJsCallbackName(String callback) {
        return !TextUtils.isEmpty(callback) && callback.matches("[a-zA-Z_$][\\w.$]*");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$initObserver$0(f6.a aVar) {
        if (aVar instanceof f6.a.h) {
            notifyAdCompleted("{\"event\":\"PlayEnd\"}");
            return null;
        }
        if (aVar instanceof f6.a.c) {
            notifyAdCompleted("{\"event\":\"Completed\"}");
            return null;
        }
        if (aVar instanceof f6.a.C1159a) {
            notifyAdCompleted("{\"event\":\"Clicked\"}");
            return null;
        }
        if (aVar instanceof f6.a.b) {
            notifyAdCompleted("{\"event\":\"Closed\"}");
            return null;
        }
        if (!(aVar instanceof f6.a.f)) {
            return null;
        }
        com.join.mgps.Util.a3.b(this.context).d("广告加载失败");
        notifyAdCompleted("{\"event\":\"LoadError\",\"message\":\"ad load error\"}");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyKeyboardChange$2(String str, boolean z10, int i10) {
        if (this.web == null || this.hasdestroy || TextUtils.isEmpty(str)) {
            return;
        }
        this.web.w("javascript:" + str + "(" + z10 + "," + i10 + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsetsCompat lambda$setupKeyboardInsets$1(View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime());
        Insets insets2 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.navigationBars());
        int i10 = insets.bottom;
        if (i10 <= 0) {
            i10 = insets2.bottom;
        }
        view.setPadding(0, 0, 0, i10);
        int i11 = insets.bottom;
        if (i11 != this.lastImeBottom || i10 != this.lastBottomInset) {
            this.lastImeBottom = i11;
            this.lastBottomInset = i10;
            notifyKeyboardChange(i11 > 0, i10);
        }
        return windowInsetsCompat;
    }

    private void lodeWebView(String url) {
        com.join.mgps.Util.g1.b(this.TAG, "lodeWebView() called." + url);
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                showLodingFailed();
                return;
            }
            LJWebView lJWebView = this.web;
            if (lJWebView == null) {
                return;
            }
            lJWebView.setVisibility(0);
            this.web.setBarHeight(getResources().getDimensionPixelOffset(R.dimen.web_loding_progress_h));
            this.web.setClickable(true);
            this.web.setUseWideViewPort(true);
            this.web.setSupportZoom(false);
            this.web.setBuiltInZoomControls(false);
            this.web.setJavaScriptEnabled(true);
            this.web.setCacheMode(-1);
            this.web.setWebViewClient(new o(this));
            n nVar = new n(this);
            if (this.supportJavascript) {
                this.web.r(nVar);
            }
            this.web.s(nVar);
            this.web.w(url);
            this.web.setonShowFileChooser(new LJWebView.c() { // from class: com.join.mgps.activity.d9
                @Override // com.join.mgps.customview.LJWebView.c
                public final void a() {
                    this.f57120a.lambda$lodeWebView$3();
                }
            });
            this.web.setActivity(this);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void notifyKeyboardChange(final boolean visible, final int height) {
        if (TextUtils.isEmpty(this.keyboardChangeCallback) || this.web == null || this.hasdestroy) {
            return;
        }
        final String str = this.keyboardChangeCallback;
        this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.e9
            @Override // java.lang.Runnable
            public final void run() {
                this.f57142b.lambda$notifyKeyboardChange$2(str, visible, height);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: openImageChooserActivity, reason: merged with bridge method [inline-methods] */
    public void lambda$lodeWebView$3() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        this.context.startActivityForResult(Intent.createChooser(intent, "Image Chooser"), 43234);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryDownTask(String filename) {
        DownloadManager downloadManager = (DownloadManager) getSystemService("download");
        Cursor cursorQuery = downloadManager.query(new DownloadManager.Query());
        while (cursorQuery.moveToNext()) {
            int i10 = cursorQuery.getInt(cursorQuery.getColumnIndex("_id"));
            String string = cursorQuery.getString(cursorQuery.getColumnIndex("title"));
            String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("local_uri"));
            int i11 = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
            String string3 = cursorQuery.getString(cursorQuery.getColumnIndex("bytes_so_far"));
            String string4 = cursorQuery.getString(cursorQuery.getColumnIndex("total_size"));
            StringBuilder sb2 = new StringBuilder();
            sb2.append("downId:");
            sb2.append(i10);
            sb2.append(",status:");
            sb2.append(i11);
            sb2.append(",title:");
            sb2.append(string);
            sb2.append(",address:");
            sb2.append(string2);
            sb2.append(",size:");
            sb2.append(string3);
            sb2.append(",sizeTotal:");
            sb2.append(string4);
            if (!com.join.mgps.Util.t2.h(string2)) {
                String strSubstring = string2.substring(string2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath();
                new File(path, strSubstring);
                if (("temp_" + filename).equals(strSubstring)) {
                    File file = new File(path, filename);
                    if (file.exists()) {
                        file.delete();
                    }
                    File file2 = new File(path, strSubstring);
                    if (file2.exists()) {
                        file2.delete();
                    }
                    downloadManager.remove(i10);
                }
            }
        }
        cursorQuery.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:16:0x0031  */
    public void quitFullScreen() {
        this.video.setVisibility(8);
        this.weblayout.setVisibility(0);
        this.title.setVisibility(0);
        int i10 = this.defaultScreenState;
        if (i10 == 4) {
            this.v_status.setVisibility(0);
            return;
        }
        if (i10 == 0) {
            setRequestedOrientation(4);
        } else if (i10 == 1) {
            setRequestedOrientation(0);
        } else if (i10 == 2) {
            setRequestedOrientation(1);
        } else if (i10 == 3) {
            setRequestedOrientation(4);
        }
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.flags &= -1025;
        getWindow().setAttributes(attributes);
        getWindow().clearFlags(512);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x008a  */
    private String resetUrl(String url) {
        String str;
        String strA;
        String property;
        String strE = com.join.android.app.common.utils.q.n(this.context).e(this.context);
        String strReplace = url.replace("{requestId}", com.join.mgps.Util.j1.d(strE + System.currentTimeMillis() + "" + new Random().nextInt(1000)));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(System.currentTimeMillis());
        sb2.append("");
        String strReplace2 = strReplace.replace("{requestTime}", sb2.toString());
        if (com.join.android.app.common.utils.m.j(this.context)) {
            byte bD = com.join.android.app.common.utils.m.d(this.context);
            if (bD == -1) {
                str = "13-1-0";
            } else if (bD == 1) {
                str = "13-1-2";
            } else if (bD == 2) {
                str = "13-1-6";
            } else if (bD == 3) {
                str = "13-1-5";
            } else if (bD == 4) {
                str = "13-1-4";
            } else if (bD != 5) {
                str = "";
            } else {
                str = "13-1-7";
            }
        } else {
            str = "";
        }
        String strReplace3 = strReplace2.replace("{network}", str);
        try {
            strA = com.join.mgps.Util.a.a(MApplication.D, "");
        } catch (Exception e10) {
            e10.printStackTrace();
            strA = "";
        }
        String strReplace4 = strReplace3.replace("{clientIp}", strA).replace("{deviceType}", isTabletDevice(this.context) ? "13-3-3" : "13-3-2");
        try {
            property = System.getProperty("http.agent");
            try {
                property = URLEncoder.encode(property, "UTF-8");
            } catch (Exception e11) {
                e = e11;
                e.printStackTrace();
            }
        } catch (Exception e12) {
            e = e12;
            property = "";
        }
        String strReplace5 = strReplace4.replace("{ua}", property);
        try {
            strReplace5 = strReplace5.replace("{brand}", URLEncoder.encode(Build.BRAND.toLowerCase(), "UTF-8"));
        } catch (UnsupportedEncodingException e13) {
            e13.printStackTrace();
        }
        try {
            strReplace5 = strReplace5.replace("{model}", URLEncoder.encode(Build.MODEL.toLowerCase(), "UTF-8"));
        } catch (UnsupportedEncodingException e14) {
            e14.printStackTrace();
        }
        String strReplace6 = strReplace5.replace("{carrier}", getCarrier(this.context)).replace("{platid}", "android").replace("{imei}", "").replace("{imeiMd5}", "");
        String str2 = MApplication.L;
        return strReplace6.replace("{oaid}", str2).replace("{oaidMd5}", com.join.mgps.Util.t2.i(str2) ? com.join.mgps.Util.i1.d(str2) : "").replace("{androidId}", strE).replace("{androidIdMd5}", com.join.mgps.Util.i1.d(strE)).replace("{idfa}", "").replace("{idfaMd5}", "").replace("{caid}", "").replace("{caidMd5}", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFullScreen() {
        getWindow().setFlags(1024, 1024);
    }

    private void setupKeyboardInsets() {
        if (this.weblayout == null) {
            return;
        }
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        ViewCompat.setOnApplyWindowInsetsListener(this.weblayout, new OnApplyWindowInsetsListener() { // from class: com.join.mgps.activity.f9
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f57217a.lambda$setupKeyboardInsets$1(view, windowInsetsCompat);
            }
        });
        ViewCompat.requestApplyInsets(this.weblayout);
    }

    private void showHintDialog(GameRoom gameRoom) {
        com.join.mgps.dialog.d1 d1Var = this.mHintDialog;
        if (d1Var != null) {
            d1Var.a();
        }
        com.join.mgps.dialog.d1 d1Var2 = new com.join.mgps.dialog.d1(this.context);
        this.mHintDialog = d1Var2;
        d1Var2.d("加入失败，您与" + gameRoom.getRoomId() + "房间不在同一战区\n请进入该游戏房间列表，并切换至【" + com.join.mgps.socket.fight.arena.c.d(gameRoom.getBattleArea()) + "】后再查找房间号进入");
        this.mHintDialog.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLoadingDialog(String title) {
        com.join.mgps.dialog.f1 f1Var = this.mDataLoadingDialog;
        if (f1Var != null && f1Var.isShowing()) {
            this.mDataLoadingDialog.dismiss();
        }
        com.join.mgps.dialog.f1 f1VarZ = com.join.mgps.Util.h0.h0(this.context).z(this.context, title, false);
        this.mDataLoadingDialog = f1VarZ;
        f1VarZ.b();
    }

    private void startDownloadActivity(int requestCode) {
        Intent intent = new Intent(this.context, (Class<?>) NewArenaDownloadActivity_.class);
        intent.putExtra("gameId", "" + this.mGameRoom.getGameId());
        intent.putExtra(NewArenaDownloadActivity_.P, this.hasPlug);
        intent.putExtra(NewArenaDownloadActivity_.Q, this.hasRom);
        startActivityForResult(intent, requestCode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPayAlipay(final String alipay_sign) {
        new j(alipay_sign).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadImage() {
        Iterator<String> it2 = this.uploadImages.iterator();
        this.iterator = it2;
        if (it2 != null && it2.hasNext()) {
            String next = this.iterator.next();
            this.mUploadHelper.f(next, this.accountBean.getUid() + "", this.accountBean.getToken());
            this.iterator.remove();
            return;
        }
        LiveUploadData liveUploadData = new LiveUploadData();
        liveUploadData.setCode(1);
        if (this.uploadFilesSuccessUrl.size() == 0) {
            liveUploadData.setCode(0);
        } else {
            try {
                List<String> list = this.uploadFilesSuccessUrl;
                liveUploadData.setData((String[]) list.toArray(new String[list.size()]));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        String json = JsonMapper.getInstance().toJson(liveUploadData);
        this.web.w("javascript:papaChoiceAndUploadImg('" + json + "')");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v6, types: [boolean] */
    @AfterViews
    void afterview() {
        this.recommendClient = com.join.mgps.rpc.impl.d.O1();
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        this.rpcAccountClientV2 = com.join.mgps.rpc.impl.b.C();
        com.join.mgps.Util.g1.b(this.TAG, "afterView() called.");
        IntentDateBean intentDateBean = this.intentdate;
        if (intentDateBean != null && TextUtils.equals(intentDateBean.getExt1(), "modGame")) {
            MApplication.f3182z.O(true);
        }
        try {
            this.context = this;
            if ("com.join.mgps.papa.share_webview_raiseVip".equals(getIntent().getAction())) {
                this.intentdate = new IntentDateBean();
                String stringExtra = getIntent().getStringExtra(this.INTENT_EXTRA_ACTION_FROM);
                String stringExtra2 = getIntent().getStringExtra("gameId");
                this.url = com.join.mgps.rpc.h.f72349j + "/member/vip_view/welcome?gameId=" + stringExtra2;
                if (stringExtra.equals("1")) {
                    this.url = com.join.mgps.rpc.h.f72349j + "/member/vip_view/welfare/battle_bullet_screen?gameId=" + stringExtra2;
                } else if (stringExtra.equals("2")) {
                    this.url = com.join.mgps.rpc.h.f72349j + "/member/vip_view/welfare/game_level?gameId=" + stringExtra2;
                } else if (stringExtra.equals("3")) {
                    this.url = com.join.mgps.rpc.h.f72349j + "/member/vip_view/welfare/game_one_key_skill?gameId=" + stringExtra2;
                } else if (stringExtra.equals("4")) {
                    this.url = com.join.mgps.rpc.h.f72349j + "/member/vip_view/welfare/game_more_archive?gameId=" + stringExtra2;
                } else if (stringExtra.equals("5")) {
                    this.url = com.join.mgps.rpc.h.f72349j + "/member/vip_view/welfare/game_bug?gameId=" + stringExtra2;
                } else if (stringExtra.equals("6")) {
                    this.url = com.join.mgps.rpc.h.f72349j + "/member/vip_view/welfare/game_practice?gameId=" + stringExtra2;
                } else if (stringExtra.equals("7")) {
                    this.url = com.join.mgps.rpc.h.f72349j + "/member/vip_view/welfare/game_enhance?gameId=" + stringExtra2;
                } else if (stringExtra.equals(GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD)) {
                    this.url = com.join.mgps.rpc.h.f72349j + "/member/vip_view/welfare/ad?gameId=" + stringExtra2;
                } else if (stringExtra.equals("9")) {
                    this.url = getIntent().getStringExtra("url");
                }
                this.intentdate.setLink_type_val(this.url);
                this.isFromEmu = true;
            }
            IntentDateBean intentDateBean2 = this.intentdate;
            this.url = intentDateBean2.getLink_type_val();
            this.urlFirst = intentDateBean2.getLink_type_val();
            int iK = 0;
            iK = 0;
            iK = 0;
            iK = 0;
            if (intentDateBean2.getFrom().equals("11")) {
                initSocket(false);
            }
            if (this.url == null) {
                this.url = "";
            }
            if (com.join.android.app.common.http.c.f34547c) {
                this.url.contains("http://");
            }
            if (!this.url.contains("http://") && !this.url.contains("file://") && !this.url.contains("https://")) {
                this.url = "https://" + this.url;
            }
            if (this.url.contains("jump_url_type")) {
                this.url = resetUrl(this.url);
            }
            try {
                if (intentDateBean2.getObject() != null) {
                    Object object = intentDateBean2.getObject();
                    if (object instanceof UpdateIntentDataBean) {
                        UpdateIntentDataBean updateIntentDataBean = (UpdateIntentDataBean) object;
                        if (updateIntentDataBean.getDownloadTask() != null) {
                            iK = APKUtils.K(updateIntentDataBean.getDownloadTask());
                        }
                    }
                }
            } catch (Exception unused) {
            }
            if (this.url.contains("?")) {
                lodeWebView(this.url + "&ver=" + Build.VERSION.RELEASE + "&type=" + iK);
            } else {
                lodeWebView(this.url + "?ver=" + Build.VERSION.RELEASE + "&type=" + iK);
            }
            if (intentDateBean2.getObject() instanceof String) {
                this.title_textview.setText((String) intentDateBean2.getObject());
            }
            TextView textView = this.failedMessage;
            if (textView != null) {
                textView.setText("网页加载失败，再试试吧~");
            }
            LJWebView lJWebView = this.web;
            if (lJWebView != null) {
                lJWebView.setMethodListenter(this);
            }
            this.dialog = com.join.mgps.Util.h0.h0(this.context).x(this.context);
            com.join.mgps.Util.j0.a().d(this);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.v_status.getLayoutParams();
            layoutParams.height = com.join.mgps.Util.p2.i(this);
            this.v_status.setLayoutParams(layoutParams);
            setupKeyboardInsets();
            this.mUploadHelper = new com.join.mgps.Util.u2(this, this);
            this.web.getWebView().setDownloadListener(new e(intentDateBean2));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void backModGame() {
        IntentDateBean intentDateBean = this.intentdate;
        if (intentDateBean == null) {
            return;
        }
        String ext1 = intentDateBean.getExt1();
        String ext2 = this.intentdate.getExt2();
        String ext3 = this.intentdate.getExt3();
        String ext4 = this.intentdate.getExt4();
        if ("3ds".equals(ext1) && !TextUtils.isEmpty(ext2) && !TextUtils.isEmpty(ext4)) {
            DownloadTask downloadTaskG = q5.f.M().G(ext4);
            if (downloadTaskG != null) {
                UtilsMy.m(null, downloadTaskG, this.context, 0, "1");
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(ext1) || TextUtils.isEmpty(ext2) || !ext1.equals("modGame")) {
            return;
        }
        if (com.join.mgps.Util.t2.h(ext3)) {
            ext3 = "0";
        }
        com.join.mgps.va.overmind.i.q().a0(this, Integer.parseInt(ext3), ext2);
    }

    @Click
    void backNew() {
        if (this.urlFirst.equals(this.url)) {
            finishM();
        }
        WebView webView = this.web.getWebView();
        if (webView == null || !com.join.android.app.common.utils.m.j(this)) {
            finishM();
        } else {
            webView.loadUrl("javascript:papaBackPageUp()");
        }
    }

    @Click
    void back_imag() {
        finishM();
    }

    void cancelRegisterObserver() {
        com.join.mgps.socket.fight.arena.b bVar = this.mServiceDelegate;
        if (bVar == null || bVar.d() == null) {
            return;
        }
        com.join.mgps.Util.g1.b(this.TAG, "--- removeObserver---");
        this.mServiceDelegate.d().A(this.mObserver);
        this.mServiceDelegate.g();
        this.mServiceDelegate.stopService();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkToken() {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
            if (accountData == null || accountData.getAccountType() == 2) {
                return;
            }
            MessageCheckTokenRequest.MessageCheckTokenRequestParameters.b bVarNewBuilder = MessageCheckTokenRequest.MessageCheckTokenRequestParameters.newBuilder();
            bVarNewBuilder.setUid(this.accountBean.getUid());
            bVarNewBuilder.setToken(this.accountBean.getToken());
            bVarNewBuilder.setAppVersion(g8.b.a(this));
            HashMap map = new HashMap();
            map.put("uid", bVarNewBuilder.getUid() + "");
            map.put(com.czhj.sdk.common.Constants.TOKEN, bVarNewBuilder.getToken());
            map.put("appVersion", bVarNewBuilder.getAppVersion());
            bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
            MessageCheckTokenResponse.MessageCheckTokenResponseResult messageCheckTokenResponseResultB = this.rpcAccountClientV2.b(bVarNewBuilder.build());
            if (messageCheckTokenResponseResultB == null || messageCheckTokenResponseResultB.getData() == null) {
                return;
            }
            MessageCheckTokenResponse.MemberInfo data = messageCheckTokenResponseResultB.getData();
            this.accountBean = this.accountBean.toBuilder().setVipLevel(data.getVipLevel()).setSVIPLevel(data.getSvipLevel()).setVipExpTime(data.getVipExpTime()).setSecretKey(data.getSecretKey()).build();
            AccountUtil_.getInstance_(this).saveAccountData(this.accountBean, this);
            UtilsMy.S(this);
            IntentDateBean intentDateBean = this.intentdate;
            if (intentDateBean == null || TextUtils.isEmpty(intentDateBean.getExt1()) || !"modGameCloud".equals(this.intentdate.getExt1())) {
                return;
            }
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.j());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void createVip(int ordertype) {
        this.accountBean = AccountUtil_.getInstance_(this.context).getAccountData();
        try {
            VipMoneyRequest vipMoneyRequest = new VipMoneyRequest();
            vipMoneyRequest.setMonth(ordertype);
            vipMoneyRequest.setToken(this.accountBean.getToken());
            vipMoneyRequest.setUid(this.accountBean.getUid());
            AccountResultMainBean<CreateVipData> accountResultMainBeanL = this.rpcAccountClient.L(vipMoneyRequest.getParams());
            dismissLoadingDialog();
            if (accountResultMainBeanL != null) {
                if (accountResultMainBeanL.getError() == 0) {
                    CreateVipData data = accountResultMainBeanL.getData();
                    data.setMonth(ordertype);
                    startPayVipOrder(data);
                } else if (accountResultMainBeanL.getError() == 701) {
                    this.startLogling = true;
                    IntentUtil.getInstance().goMyAccountLoginActivity(this.context, 0, 2);
                }
            }
        } catch (Exception unused) {
            dismissLoadingDialog();
        }
    }

    @Override // com.BaseFragmentActivity
    protected void customStatusBar() {
        com.join.mgps.Util.p2.v(this);
        com.join.mgps.Util.p2.g(this, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void dialogZ() {
        this.dialog.b();
        this.dialog.a("正在上传图片请稍候");
        this.dialog.setCancelable(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void dismissLoadingDialog() {
        com.join.mgps.dialog.f1 f1Var = this.dialog;
        if (f1Var != null) {
            f1Var.dismiss();
        }
        com.join.mgps.dialog.f1 f1Var2 = this.mDataLoadingDialog;
        if (f1Var2 != null) {
            f1Var2.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void doJoinRoom(GameRoom gameRoom, String pwd) {
        this.mServiceDelegate.f(ArenaRequestFactory.joinRoom(ArenaConstants.REGISTER_TYPE_ARENAMAIN, gameRoom.getRoomId(), pwd, gameRoom.getElite()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void doSearchRoomCmd(String roomNum) {
        this.mServiceDelegate.f(ArenaRequestFactory.searchRoomById(ArenaConstants.REGISTER_TYPE_ARENAMAIN, Integer.parseInt(roomNum)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void downGame(String url, IntentDateBean intentDateBean) {
        try {
            new com.tbruyelle.rxpermissions2.c(this).s(com.kuaishou.weapon.p0.g.f74786j, com.kuaishou.weapon.p0.g.f74785i).subscribe(new f(intentDateBean, url));
            UtilsMy.c4(this, com.kuaishou.weapon.p0.g.f74786j);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void download() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Receiver(actions = {p5.a.f96196g0})
    void finishView(Intent intent) {
        finish();
    }

    public String getCarrier(Context context) {
        try {
            String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
            if (simOperator == null) {
                return "13-4-0";
            }
            if (!simOperator.equals("46000") && !simOperator.equals("46002")) {
                if (simOperator.equals("46001")) {
                    return "13-4-2";
                }
                if (simOperator.equals("46003")) {
                    return "13-4-3";
                }
            }
            return "13-4-1";
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return "13-4-0";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDetailData(String gameId, String url, int from, String extStr) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showTost("获取游戏信息失败");
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            ResultMainBean<List<DetailResultBean>> resultMainBeanI0 = this.recommendClient.I0(RequestBeanUtil.getInstance(this).getAppDetialBean(gameId, accountData != null ? accountData.getUid() : 0, null));
            if (resultMainBeanI0 == null || resultMainBeanI0.getFlag() == 0) {
                if (resultMainBeanI0 == null || resultMainBeanI0.getFlag() == 0) {
                    showTost("获取游戏信息失败");
                    return;
                } else {
                    showTost("获取游戏信息失败");
                    return;
                }
            }
            List<DetailResultBean> data = resultMainBeanI0.getMessages().getData();
            if (data.size() != 0) {
                DetailResultBean detailResultBean = data.get(0);
                if (com.join.mgps.Util.t2.i(extStr)) {
                    detailResultBean.setExt(extStr);
                } else {
                    detailResultBean.set_from(110);
                    if (from > 0) {
                        detailResultBean.set_from(from);
                    }
                }
                if (url != null) {
                    detailResultBean.setDown_url_remote(url);
                }
                startDown(detailResultBean);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showTost("获取游戏信息失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Removed unreachable split cross block B:25:0x005a */
    @Background
    public void getPrivateDomain(int location, String abUid, String url) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            ToastManager.show("网络异常，请检查网络连接");
            return;
        }
        if (this.rpcGameClient == null) {
            this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        }
        try {
            RequestDomainInfoArgs requestDomainInfoArgs = new RequestDomainInfoArgs();
            requestDomainInfoArgs.setLocation(Integer.valueOf(location));
            RequestModel requestModel = new RequestModel(this);
            requestModel.setArgs(requestDomainInfoArgs);
            requestModel.makeSign();
            try {
                ResponseModel<DomainInfoBean> responseModelT0 = this.rpcGameClient.t0(requestModel.makeSign());
                if (responseModelT0 == null || responseModelT0.getData() == null) {
                    IntentUtil.getInstance().goShareWebActivity(this, url);
                } else {
                    showDomainDialog(responseModelT0.getData(), abUid);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getUserInfo() {
        if (this.isGetingUserInfo) {
            return;
        }
        this.isGetingUserInfo = true;
        this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        if (com.join.android.app.common.utils.m.j(this)) {
            UserInfo userInfo = this.accountBean;
            if (userInfo == null || TextUtils.isEmpty(userInfo.getToken())) {
                Intent intent = new Intent();
                intent.setAction(p5.a.f96219s);
                sendBroadcast(intent);
                return;
            }
            try {
                MessageUserInfoRequest.RequestParameters.b bVarNewBuilder = MessageUserInfoRequest.RequestParameters.newBuilder();
                bVarNewBuilder.setUid(this.accountBean.getUid());
                bVarNewBuilder.setToken(this.accountBean.getToken());
                bVarNewBuilder.setAppVersion(g8.b.a(this));
                HashMap map = new HashMap();
                map.put("uid", bVarNewBuilder.getUid() + "");
                map.put(com.czhj.sdk.common.Constants.TOKEN, bVarNewBuilder.getToken());
                map.put("appVersion", bVarNewBuilder.getAppVersion());
                bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
                ResponseResult responseResultA = this.rpcAccountClientV2.A(bVarNewBuilder.build());
                if (responseResultA != null) {
                    if (responseResultA.getError() == 200) {
                        UserInfo data = responseResultA.getData();
                        if (data != null && data.getUid() != 0) {
                            this.accountBean = data.toBuilder().build();
                            AccountUtil_.getInstance_(this).saveAccountData(data, this);
                        }
                    } else {
                        responseResultA.getError();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        this.isGetingUserInfo = false;
    }

    public void goMyAlbumActivity4PickPic() {
        boolean z10 = false;
        if (ContextCompat.checkSelfPermission(this.context, com.kuaishou.weapon.p0.g.f74786j) != 0) {
            UtilsMy.e3(this.context, com.kuaishou.weapon.p0.g.f74786j);
        } else if (ContextCompat.checkSelfPermission(this.context, com.kuaishou.weapon.p0.g.f74785i) != 0) {
            UtilsMy.e3(this.context, com.kuaishou.weapon.p0.g.f74785i);
        } else {
            z10 = true;
        }
        if (z10) {
            Intent intent = new Intent(this, (Class<?>) MyAlbumActivity.class);
            Bundle bundle = new Bundle();
            this.uploadFilesSuccessUrl.clear();
            this.mSelectedImages.clear();
            bundle.putSerializable(MyAlbumActivity.KEY_SELECTED_IMAGES, (Serializable) this.mSelectedImages);
            intent.putExtras(bundle);
            startActivityForResult(intent, 256);
        }
    }

    void goMyGamePapaCloud() {
        FragmentPageActivity_.intent(this).b(1).c("云玩").start();
    }

    public void goMyMainLabel(String tag_id) {
        try {
            if (TextUtils.isEmpty(tag_id)) {
                com.join.mgps.Util.g1.d("uploadData", "  goMyMainLabel tag_id is null ");
            } else {
                MainLabelActivity_.intent(this).d(Integer.parseInt(tag_id)).start();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void goSearchLabel() {
        SearchLabelActivity_.u(this).a(1).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void handleFailure(ArenaResponse response) {
        String str;
        int i10 = response.errorType;
        if (i10 == 7) {
            str = "密码输入错误，请重试";
        } else if (i10 == 8) {
            str = "房间不存在";
        } else if (i10 == 9) {
            str = "房间已满，无法加入!";
        } else if (i10 == 13) {
            str = "铜板不足，无法加入房间";
        } else if (i10 == 1001) {
            str = response.errorInfo;
        } else if (i10 == 16) {
            str = "无法加入，你被禁止加入该房间";
        } else if (i10 != 17) {
            com.join.mgps.Util.a3.b(this.context).d(com.join.mgps.socket.fight.arena.c.g(response));
            str = "";
        } else {
            str = "该房间为比赛专用房间,非参赛选手无法加入";
        }
        com.join.mgps.Util.a3.b(this.context).d(str);
        dismissLoadingDialog();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void handleSearchRoomResponse(GameRoom gameRoom) {
        dismissLoadingDialog();
        this.mGameRoom = gameRoom;
        if (!gameRoom.getAllowPeripheralJoin() && com.join.mgps.socket.fight.arena.c.o(this.context)) {
            com.join.mgps.Util.a3.b(this.context).d("禁止外设用户加入!");
            return;
        }
        if (this.mGameRoom.getBattleArea().getNumber() != BattleArea.ALL.getNumber() && this.mGameRoom.getBattleArea().getNumber() != this.mServiceDelegate.d().n().getNumber()) {
            showHintDialog(gameRoom);
            return;
        }
        if (!checkGameIsInstall("" + gameRoom.getGameId())) {
            startDownloadActivity(REQUEST_FOR_DOWNLOADGAME);
        } else if (gameRoom.getHasJoinPassword()) {
            showInputGameRoomPwdDialog(gameRoom);
        } else {
            doJoinRoom(gameRoom, "");
        }
    }

    public boolean inCustomView() {
        return this.xCustomView != null;
    }

    void initObserver() {
        RewardAdViewModel rewardAdViewModel = this.rewardAdViewModel;
        if (rewardAdViewModel == null) {
            return;
        }
        Flow.collectSharedFlow(this, rewardAdViewModel.getEvent(), new Function1() { // from class: com.join.mgps.activity.g9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f57252b.lambda$initObserver$0((f6.a) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void initSocket(boolean isShow) {
        if (isShow) {
            com.join.mgps.Util.a3.b(this.context).d("正在连接服务器，请稍候...");
        }
        com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(this.context, new k());
        this.mServiceDelegate = bVar;
        bVar.bindService();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void loaclJumpGameMatch(String romid) {
        this.mGameRoomNum = romid;
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            Toast.makeText(this.context, "当前网络不可用，请检查网络", 0).show();
            return;
        }
        if (!validAccount()) {
            showLoginDialog();
            return;
        }
        com.join.mgps.socket.fight.arena.b bVar = this.mServiceDelegate;
        if (bVar != null && bVar.d() == null) {
            initSocket(true);
            return;
        }
        this.mServiceDelegate.d().z(this.mObserver);
        this.dialog.b();
        this.dialog.setCancelable(true);
        if (this.mServiceDelegate.d().s()) {
            doSearchRoomCmd(romid);
        } else {
            this.mServiceDelegate.f(ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_ARENAMAIN));
        }
    }

    @Click
    void loding_faile() {
        com.join.mgps.Util.g1.b(this.TAG, "loding_faile() called.");
        if (this.web != null) {
            this.isError = false;
            lodeWebView(this.url);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void myError(SocketError error) {
        int i10 = error.errorType;
        if (i10 != 6 && i10 != 3 && i10 != 4) {
            com.join.mgps.Util.a3.b(this.context).d("网络异常，请稍后重试!");
        } else {
            com.join.mgps.Util.a3.b(this.context).d(error.errorInfo);
            showLoginDialog();
        }
    }

    @Override // com.join.mgps.customview.LJWebView.b
    public void noMethod() {
        WebView webView = this.web.getWebView();
        if (webView == null || !webView.canGoBack()) {
            finishM();
        } else {
            webView.goBack();
        }
    }

    void notifyAdCompleted(String json) {
        LJWebView lJWebView = this.web;
        if (lJWebView != null) {
            lJWebView.w("javascript:window.doubleClaim(" + json + ");");
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        String strX;
        if (resultCode == -1) {
            if (requestCode == 10) {
                this.mUploading = true;
                com.facebook.imagepipeline.core.h imagePipeline = Fresco.getImagePipeline();
                imagePipeline.h(this.cropUri);
                imagePipeline.f(this.cropUri);
                imagePipeline.e(this.cropUri);
                this.mUploadHelper.f(this.cropUri.getPath(), this.accountBean.getUid() + "", this.accountBean.getToken());
                this.dialog.b();
                this.dialog.a("正在上传直播封面");
                this.dialog.setCancelable(false);
            } else if (requestCode == 100) {
                startPhotoZoom(this.fileUri);
            } else if (requestCode == 200 && (strX = com.join.mgps.Util.o0.x(this, data.getData())) != null) {
                startPhotoZoom(Uri.fromFile(new File(strX)));
            }
        }
        if (requestCode == 256) {
            if (this.mSelectedImages == null) {
                this.mSelectedImages = new ArrayList();
            }
            this.mSelectedImages.clear();
            this.mSelectedImages.addAll(getImagesFromAlbum(data));
            net.bither.util.b.p().x();
        } else if (requestCode == REQUEST_FOR_DOWNLOADGAME && resultCode == -1) {
            if (this.mGameRoom.getHasJoinPassword() || this.mGameRoom.getHasJoinPassword()) {
                showInputGameRoomPwdDialog(this.mGameRoom);
            } else {
                showLoadingDialog("正在获取房间...");
                doJoinRoom(this.mGameRoom, "");
            }
        }
        this.web.q(requestCode, resultCode, data);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        BackHandledFragment backHandledFragment = this.mBackHandedFragment;
        if (backHandledFragment == null || !backHandledFragment.a()) {
            if (getSupportFragmentManager().getBackStackEntryCount() == 0) {
                super.onBackPressed();
            } else {
                getSupportFragmentManager().popBackStack();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (savedInstanceState != null) {
            try {
                LJWebView lJWebView = this.web;
                if (lJWebView != null) {
                    lJWebView.getWebView().restoreState(savedInstanceState);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        this.shareWebCallback = new m6.d();
        this.rewardAdViewModel = (RewardAdViewModel) new ViewModelProvider(this).get(RewardAdViewModel.class);
        initObserver();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        cancelRegisterObserver();
        this.keyboardChangeCallback = null;
        this.hasdestroy = true;
        this.web.w("");
        com.join.mgps.Util.j0.a().e(this);
        try {
            if (this.intentDataMain != null) {
                moveTaskToBack(true);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.mCompressListener != null) {
            net.bither.util.b.p().y(this.mCompressListener);
        }
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(PapayResult papayResult) {
        if (papayResult != null) {
            int status = papayResult.getStatus();
            if (status == 1) {
                this.web.w("javascript:papaPayResult(5000)");
                return;
            }
            if (status == 2) {
                this.web.w("javascript:papaPayResult(5001)");
            } else if (status == 3) {
                this.web.w("javascript:papaPayResult(5002)");
            } else {
                if (status != 4) {
                    return;
                }
                this.web.w("javascript:papaPayResult(5003)");
            }
        }
    }

    @Override // com.join.mgps.customview.LJWebView.b
    public void onHideCustomView() {
        this.xCustomView = null;
        quitFullScreen();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        com.join.mgps.Util.g1.b(this.TAG, "onKeyDown() called.");
        if (keyCode == 4 && event.getRepeatCount() == 0) {
            if (inCustomView()) {
                this.chromeClient.onHideCustomView();
                return true;
            }
            if (com.join.mgps.Util.t2.i(this.urlFirst) && this.urlFirst.equals(this.url)) {
                finishM();
            }
            String strSubstring = this.urlFirst;
            if (strSubstring == null) {
                finishM();
                return true;
            }
            if (strSubstring.contains("?")) {
                String str = this.urlFirst;
                strSubstring = str.substring(0, str.lastIndexOf("?"));
            }
            if (this.url.contains("?")) {
                String str2 = this.url;
                this.url = str2.substring(0, str2.lastIndexOf("?"));
            }
            if (com.join.mgps.Util.t2.i(this.urlFirst) && strSubstring.equals(this.url)) {
                finishM();
            }
            WebView webView = this.web.getWebView();
            if (webView != null && com.join.android.app.common.utils.m.j(this)) {
                webView.loadUrl("javascript:papaBackPageUp()");
                return true;
            }
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        LJWebView lJWebView = this.web;
        if (lJWebView != null) {
            try {
                lJWebView.getWebView().getClass().getMethod("onPause", new Class[0]).invoke(this.web.getWebView(), null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }
        super.onPause();
    }

    @Override // com.join.mgps.customview.LJWebView.b
    public void onReceivedTitle(String title) {
        TextView textView = this.title_textview;
        if (textView != null) {
            textView.setText(title);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode != 2) {
            return;
        }
        for (int i10 : grantResults) {
            if (i10 != 0) {
                return;
            }
        }
        this.mPermission = true;
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.web.w("javascript:papaActivityOnResume()");
        LJWebView lJWebView = this.web;
        if (lJWebView != null) {
            try {
                lJWebView.getWebView().getClass().getMethod("onResume", new Class[0]).invoke(this.web.getWebView(), null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }
        this.accountBean = AccountUtil_.getInstance_(this.context).getAccountData();
        if (this.startLogling) {
            if (this.web != null) {
                WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
                if (this.accountBean != null) {
                    webAccountDataBean.setHasLogin(true);
                } else {
                    webAccountDataBean.setHasLogin(false);
                }
                webAccountDataBean.setAccountBean(AccountBean.convert(this.accountBean));
                this.web.w("javascript:papaPutAccountData(" + JsonMapper.getInstance().toJson(webAccountDataBean) + ")");
            }
            this.startLogling = false;
        }
        net.bither.util.b.p().e(this.mCompressListener);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        this.web.getWebView().saveState(outState);
    }

    @Override // com.join.mgps.customview.LJWebView.b
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback, WebChromeClient chromeClient) {
        this.xCustomView = view;
        if (view == null) {
            return;
        }
        this.chromeClient = chromeClient;
        this.weblayout.setVisibility(8);
        this.title.setVisibility(8);
        this.video.removeAllViews();
        this.video.setVisibility(0);
        this.video.addView(view, new RelativeLayout.LayoutParams(-1, -1));
        setRequestedOrientation(0);
        setFullScreen();
    }

    @Override // com.join.mgps.Util.u2.e
    public void onUploadResult(int code, String url) {
        com.join.mgps.Util.g1.d("uploadData", "  onUploadResult " + url);
        if (!this.uploadFiles) {
            this.dialog.dismiss();
            this.dialog.a("请稍候...");
            if (code == 0) {
                this.web.w("javascript:papaLiveCropImage2('" + url + "')");
                Toast.makeText(this, "上传成功", 0).show();
            } else {
                Toast.makeText(this, "上传失败，错误码 " + code, 0).show();
            }
            this.mUploading = false;
            return;
        }
        if (code == 0) {
            this.uploadFilesSuccessUrl.add(url);
        }
        Iterator<String> it2 = this.iterator;
        if (it2 != null && it2.hasNext()) {
            uploadImage();
            return;
        }
        LiveUploadData liveUploadData = new LiveUploadData();
        liveUploadData.setCode(0);
        try {
            List<String> list = this.uploadFilesSuccessUrl;
            liveUploadData.setData((String[]) list.toArray(new String[list.size()]));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        String json = JsonMapper.getInstance().toJson(liveUploadData);
        this.web.w("javascript:papaChoiceAndUploadImg('" + json + "')");
        this.dialog.dismiss();
        this.dialog.a("请稍候...");
        this.uploadFiles = false;
    }

    @Click
    void refresh() {
        lodeWebView(this.url);
    }

    void registerKeyboardChangeListener(String callback) {
        if (!isValidJsCallbackName(callback)) {
            this.keyboardChangeCallback = null;
        } else {
            this.keyboardChangeCallback = callback;
            notifyKeyboardChange(this.lastImeBottom > 0, this.lastBottomInset);
        }
    }

    @Click
    void search() {
        SearchHintActivity_.intent(this.context).start();
    }

    @Click
    void setNetwork() {
        com.join.mgps.Util.g1.b(this.TAG, "setNetwork() called.");
        UtilsMy.N3(this);
    }

    @Override // com.mgsim.common.fragment.a
    public void setSelectedFragment(BackHandledFragment selectedFragment) {
        this.mBackHandedFragment = selectedFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showDomainDialog(DomainInfoBean domainInfoBean, String abUid) {
        com.papa.sim.statistic.t.l(getApplicationContext()).R1(Event.pdReceiveCoupon, new Ext().setIsJoin(domainInfoBean.getIs_join()).setTestAbNumber(domainInfoBean.getAb_test_number()));
        UtilsMy.E4(this, domainInfoBean.getInfo(), "real_name", abUid);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInputGameRoomPwdDialog(final GameRoom gameRoom) {
        com.join.mgps.customview.input.a aVar = new com.join.mgps.customview.input.a(this.context, "请输入房间密码", 4, false);
        aVar.g(new m(aVar, gameRoom));
        aVar.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            com.join.mgps.Util.g1.b(this.TAG, "showLoding() called.");
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(8);
            LJWebView lJWebView = this.web;
            if (lJWebView != null) {
                lJWebView.setVisibility(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            com.join.mgps.Util.g1.b(this.TAG, "showLodingFailed() called.");
            this.loding_faile.setVisibility(0);
            this.loding_layout.setVisibility(8);
            LJWebView lJWebView = this.web;
            if (lJWebView != null) {
                lJWebView.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoginDialog() {
        com.join.mgps.Util.h0.h0(this.context).j(this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain() {
        try {
            com.join.mgps.Util.g1.b(this.TAG, "showMain() called.");
            this.loding_faile.setVisibility(8);
            this.loding_layout.setVisibility(8);
            LJWebView lJWebView = this.web;
            if (lJWebView != null) {
                lJWebView.setVisibility(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.customview.LJWebView.b
    public void showMainWebview() {
        LJWebView lJWebView = this.web;
        if (lJWebView == null || lJWebView.getVisibility() == 0) {
            return;
        }
        showMain();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showTost(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startDown(DetailResultBean collectionBeanSub) {
        boolean z10;
        String str;
        String mod_game_id = collectionBeanSub.getMod_info() != null ? collectionBeanSub.getMod_info().getMod_game_id() : collectionBeanSub.getCrc_sign_id();
        collectionBeanSub.getTag_info();
        String str2 = collectionBeanSub.getMod_info() != null ? "VIRTUAL_SINGLE" : "";
        if ("7".equals(collectionBeanSub.getSp_tag_info().getModel().getId())) {
            str = str2;
            z10 = false;
        } else {
            z10 = true;
            str = "ANDROID_SINGLE";
        }
        if (!z10) {
            boolean zW2 = com.join.mgps.Util.t2.h(collectionBeanSub.getPlugin_num()) ? false : UtilsMy.w2(Integer.parseInt(collectionBeanSub.getPlugin_num()));
            if (zW2) {
                str = UtilsMy.f2(collectionBeanSub.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
            }
            z10 = zW2;
        }
        try {
            String strD = new PrefDef_(this.context).androidIdNullsKey().d();
            if (com.join.mgps.Util.t2.i(strD)) {
                List list = (List) JsonMapper.getInstance().fromJson(strD, List.class);
                if (com.join.mgps.Util.t2.i(MApplication.K) && list.contains(MApplication.K) && z10 && IntentUtil.getInstance().goLogin(this.context)) {
                    return;
                }
            }
        } catch (Exception unused) {
        }
        boolean zBooleanValue = new PrefDef_(this.context).download_game_switch().d().booleanValue();
        if (z10 && zBooleanValue) {
            UtilsMy.A0(this.context, 2, mod_game_id, str, new h(collectionBeanSub));
        } else {
            startDownv2(collectionBeanSub);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startDownv2(DetailResultBean detialResultBean) {
        boolean z10;
        if (detialResultBean == null) {
            return;
        }
        try {
            List<DownloadTask> listH = detialResultBean.getMod_info() != null ? q5.f.M().H(detialResultBean.getMod_info().getMod_game_id(), detialResultBean.getMod_info().getMain_game_id()) : q5.f.M().I(detialResultBean.getPackage_name());
            DownloadTask downloadtaskDown = null;
            if (listH != null && listH.size() > 0) {
                boolean z11 = false;
                loop0: while (true) {
                    z10 = false;
                    for (DownloadTask downloadTask : listH) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z11 = com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (com.join.android.app.common.utils.g.t0(this).e(this, downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                            z10 = true;
                        }
                    }
                    break loop0;
                }
                if (z11 && z10) {
                    downloadtaskDown = detialResultBean.getMod_info() != null ? q5.f.M().G(detialResultBean.getMod_info().getMain_game_id()) : q5.f.M().G(detialResultBean.getGameId());
                } else if (z11) {
                    downloadtaskDown = detialResultBean.getMod_info() != null ? q5.f.M().G(detialResultBean.getMod_info().getMod_game_id()) : q5.f.M().G(detialResultBean.getGameId());
                } else if (z10) {
                    downloadtaskDown = q5.f.M().G(detialResultBean.getGameId());
                } else {
                    downloadtaskDown = detialResultBean.getMod_info() != null ? q5.f.M().G(detialResultBean.getMod_info().getMod_game_id()) : null;
                    if (downloadtaskDown == null) {
                        downloadtaskDown = q5.f.M().G(detialResultBean.getGameId());
                    }
                }
            }
            if (downloadtaskDown == null) {
                if (detialResultBean.getMod_info() != null) {
                    UtilsMy.c1(this.context, detialResultBean);
                    return;
                }
                downloadtaskDown = detialResultBean.getDownloadtaskDown();
            }
            if (downloadtaskDown != null) {
                if (UtilsMy.y0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
                    UtilsMy.z4(this.context, downloadtaskDown.getCrc_link_type_val());
                    return;
                }
                UtilsMy.A1(downloadtaskDown, detialResultBean);
                if (UtilsMy.o1(this.context, downloadtaskDown)) {
                    return;
                }
                if (detialResultBean.getDown_status() == 5) {
                    UtilsMy.l1(this.context, downloadtaskDown);
                } else {
                    UtilsMy.U0(this.context, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void startPay(final PapayOrder order) {
        PayNowActivity_.intent(this.context).c(order).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startPayVipOrder(CreateVipData vipData) {
        try {
            this.accountBean = AccountUtil_.getInstance_(this.context).getAccountData();
            PapayOrder papayOrder = new PapayOrder();
            papayOrder.APPKEY = "16000431";
            papayOrder.PAYTYPE = 0;
            papayOrder.NOTIFY_URI = com.join.mgps.rpc.h.f72349j + "/member/buy_vip/callback";
            papayOrder.APP_NAME = "悟饭充值";
            papayOrder.APP_ORDER_ID = "papavip" + System.currentTimeMillis() + "";
            papayOrder.PA_OPEN_UID = this.accountBean.getUid();
            papayOrder.APP_USER_ID = this.accountBean.getUid() + "";
            papayOrder.APP_USER_NAME = this.accountBean.getNickname();
            papayOrder.PRODUCT_ID = com.windmill.sdk.strategy.m.a.f87212d + vipData.getMonth();
            papayOrder.PRODUCT_NAME = "会员充值";
            papayOrder.MONEY_AMOUNT = vipData.getAmount() + "";
            papayOrder.APP_DISTRICT = 1;
            papayOrder.APP_SERVER = 1;
            papayOrder.APP_EXT1 = vipData.getExtra();
            papayOrder.APP_EXT2 = "";
            papayOrder.PAYORRECHARGE = 1;
            papayOrder.ORDERTYPE = 1;
            papayOrder.PAYSHOWTYPE = 3;
            papayOrder.TOKEN = this.accountBean.getToken();
            startPay(papayOrder);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void startPhotoZoom(Uri uri) {
        this.cropUri = createCoverUri("_crop");
        Intent intent = new Intent("com.android.camera.action.CROP");
        intent.setDataAndType(uri, "image/*");
        intent.putExtra("crop", "true");
        intent.putExtra("aspectX", MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO);
        intent.putExtra("aspectY", 290);
        intent.putExtra("outputX", MediaPlayer.MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO);
        intent.putExtra("outputY", 290);
        intent.putExtra("scale", true);
        intent.putExtra("scaleUpIfNeeded", true);
        intent.putExtra("return-data", false);
        intent.putExtra("output", this.cropUri);
        intent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
        startActivityForResult(intent, 10);
    }

    void startPlayRewardVideo(String cfg, HashMap<String, Object> args) {
        if (TextUtils.isEmpty(cfg)) {
            return;
        }
        PlayCfgBean playCfgBean = ((SimulatorAdCfgBean) JsonMapper.getInstance().fromJson(cfg, SimulatorAdCfgBean.class)).getPlay_cfg().get(0);
        this.rewardAdViewModel.init(playCfgBean.getSdk_type(), playCfgBean.getSdk_key());
        this.rewardAdViewModel.load(this, playCfgBean.getAd_id(), true, args);
    }

    void unregisterKeyboardChangeListener() {
        this.keyboardChangeCallback = null;
    }

    boolean validAccount() {
        UserInfo userInfoAccountBean = accountBean(this.context);
        this.accountBean = userInfoAccountBean;
        return (userInfoAccountBean == null || AccountUtil_.getInstance_(this.context).isTourist()) ? false : true;
    }

    public void goMyMainLabel(String tag_id, String fid, String fname) {
        try {
            if (!TextUtils.isEmpty(tag_id)) {
                int i10 = !TextUtils.isEmpty(fid) ? Integer.parseInt(fid) : 0;
                if (TextUtils.isEmpty(fname)) {
                    fname = "";
                }
                IntentUtil.getInstance().goMainLabelActivity(this, Integer.parseInt(tag_id), i10, fname);
                return;
            }
            com.join.mgps.Util.g1.d("uploadData", "  goMyMainLabel tag_id is null ");
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        if (downloadTaskA == null) {
            return;
        }
        if (APKUtils.K(downloadTaskA)) {
            this.web.w("javascript:papaGameStatusNotify(" + downloadTaskA.getRef_crc_sign_id() + "," + downloadTaskA.getStatus() + ")");
            return;
        }
        this.web.w("javascript:papaGameStatusNotify(" + downloadTaskA.getCrc_link_type_val() + "," + downloadTaskA.getStatus() + ")");
    }
}
