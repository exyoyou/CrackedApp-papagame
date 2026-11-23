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
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
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
import com.join.kotlin.base.dialog.callback.IDialogActivityCallback;
import com.join.kotlin.utils.extention.MobclickAgentKt;
import com.join.kotlin.utils.extention.StringKt;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.activity.arena.NewArenaDownloadActivity_;
import com.join.mgps.activity.label.MainLabelActivity_;
import com.join.mgps.activity.posting.PostingActivity;
import com.join.mgps.base.dialog.BaseDialogActivity;
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
import com.join.mgps.dto.RequestDomainInfoArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
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
import com.uc.crashsdk.export.LogType;
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
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Fullscreen;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.full_share_activity_layout)
@Fullscreen
public class FullShareWebActivity extends BaseDialogActivity implements LJWebView.b, com.join.mgps.Util.u2.e, com.mgsim.common.fragment.a, View.OnSystemUiVisibilityChangeListener {
    private static final int CAPTURE_IMAGE_CAMERA = 100;
    private static final int CROP_CHOOSE = 10;
    public static String EVENT_NAME = "FullShareWeb";
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
    private WebChromeClient chromeClient;
    private Activity context;
    private Uri cropUri;
    Dialog dialogU;

    @ViewById
    TextView failedMessage;
    private Uri fileUri;
    private boolean hadIntercept;

    @Extra
    IntentDataMain intentDataMain;

    @Extra
    IntentDateBean intentdate;
    Iterator<String> iterator;
    private long lastClick;

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
    private int f52131p1;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    private int f52132p2;

    /* JADX INFO: renamed from: p3, reason: collision with root package name */
    private int f52133p3;

    /* JADX INFO: renamed from: p4, reason: collision with root package name */
    private int f52134p4;

    @Extra
    ExtBean parentExtBean;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.rpc.e recommendClient;
    com.join.mgps.rpc.b rpcAccountClient;
    com.join.mgps.rpc.c rpcAccountClientV2;
    com.join.mgps.rpc.k rpcGameClient;
    private com.join.mgps.callbacks.r shareWebCallback;
    private String url;
    private String urlFirst;

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

    @Extra
    int screenOrientation = -2;
    private int defaultScreenState = 0;
    private boolean hasdestroy = false;
    com.join.mgps.dialog.f1 dialog = null;
    boolean isFromEmu = false;
    AlertDialog.Builder dialogB = null;
    private final PostingActivity.m mPostingCallback = new h();

    @SuppressLint({"HandlerLeak"})
    private Handler handler = new k();
    boolean isGetingUserInfo = false;
    long timeLastClick = 0;
    private final SocketListener.NotifyObserver mObserver = new n();
    private int porder = -1;
    boolean hasRom = false;
    boolean hasPlug = false;
    private boolean mUploading = false;
    private boolean uploadFiles = false;
    private List<String> uploadFilesSuccessUrl = new ArrayList();
    List<String> mSelectedImages = new ArrayList();
    private net.bither.util.b.e mCompressListener = new e();
    private List<String> uploadImages = new ArrayList();

    class a implements InputNumView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.input.a f52135a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f52136b;

        a(final com.join.mgps.customview.input.a val$mInputGameRoomPwdDialog, final GameRoom val$gameRoom) {
            this.f52135a = val$mInputGameRoomPwdDialog;
            this.f52136b = val$gameRoom;
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void a() {
            this.f52135a.c();
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void b(String num) {
            this.f52135a.c();
            if (TextUtils.isEmpty(num)) {
                return;
            }
            FullShareWebActivity.this.showLoadingDialog("正在获取房间...");
            FullShareWebActivity.this.doJoinRoom(this.f52136b, num);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FullShareWebActivity.this.getPicFrom(100);
            FullShareWebActivity.this.mPicChsDialog.dismiss();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FullShareWebActivity.this.getPicFrom(200);
            FullShareWebActivity.this.mPicChsDialog.dismiss();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            FullShareWebActivity.this.mPicChsDialog.dismiss();
        }
    }

    class e implements net.bither.util.b.e {
        e() {
        }

        private void b(List<String> list) {
            if (list == null || list.size() <= 0) {
                return;
            }
            com.join.mgps.Util.g1.d("uploadData", "  togglePostSubmit " + list.size());
            FullShareWebActivity.this.uploadImages.clear();
            FullShareWebActivity.this.uploadImages.addAll(list);
            FullShareWebActivity.this.dialogZ();
            FullShareWebActivity.this.uploadImage();
            FullShareWebActivity.this.uploadFiles = true;
        }

        @Override // net.bither.util.b.e
        public void a(Boolean allFinished, Map<String, String> compressMap, Map<String, Integer> compressState) {
            List<String> list;
            int iIntValue;
            com.join.mgps.Util.g1.d("uploadData", allFinished + "   " + compressMap.size() + "  " + compressState.size());
            if (!allFinished.booleanValue() || (list = FullShareWebActivity.this.mSelectedImages) == null || list.size() == 0) {
                b(null);
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < FullShareWebActivity.this.mSelectedImages.size(); i10++) {
                String str = FullShareWebActivity.this.mSelectedImages.get(i10);
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

    class f implements DownloadListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IntentDateBean f52142a;

        f(final IntentDateBean val$intentDateBean) {
            this.f52142a = val$intentDateBean;
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String url, String userAgent, String contentDisposition, String mimetype, long contentLength) {
            FullShareWebActivity.this.downGame(url, this.f52142a);
        }
    }

    class g implements Consumer<com.tbruyelle.rxpermissions2.b> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ IntentDateBean f52144b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f52145c;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f52147b;

            a(final String val$filename) {
                this.f52147b = val$filename;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.join.mgps.Util.a3.b(FullShareWebActivity.this.context).d(this.f52147b + "正在下载");
                UtilsMy.S0(FullShareWebActivity.this.context, g.this.f52145c, "temp_" + this.f52147b);
                FullShareWebActivity.this.mDownloadBottomDialog.dismiss();
            }
        }

        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((ClipboardManager) FullShareWebActivity.this.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setPrimaryClip(ClipData.newPlainText(null, g.this.f52145c));
                FullShareWebActivity.this.mDownloadBottomDialog.dismiss();
                if (FullShareWebActivity.this.mPrePostingHintDialog != null) {
                    FullShareWebActivity.this.mPrePostingHintDialog.c();
                }
                FullShareWebActivity fullShareWebActivity = FullShareWebActivity.this;
                fullShareWebActivity.mPrePostingHintDialog = new com.join.mgps.dialog.a2(fullShareWebActivity, fullShareWebActivity.mPostingCallback, 4355, "提示", "已复制地址至剪切板，请自行使用浏览器打开。", "我知道了");
                FullShareWebActivity.this.mPrePostingHintDialog.e();
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
                intent.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, FullShareWebActivity.this.getPackageName(), null));
                FullShareWebActivity.this.startActivity(intent);
            }
        }

        g(final IntentDateBean val$intentDateBean, final String val$url) {
            this.f52144b = val$intentDateBean;
            this.f52145c = val$url;
        }

        @Override // io.reactivex.functions.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
            if (!permission.f83019b) {
                if (permission.f83020c) {
                    return;
                }
                FullShareWebActivity fullShareWebActivity = FullShareWebActivity.this;
                Dialog dialog = fullShareWebActivity.dialogU;
                if (dialog == null) {
                    fullShareWebActivity.dialogB = new AlertDialog.Builder(fullShareWebActivity.context, R.style.AlertDialogCustom);
                } else if (dialog.isShowing()) {
                    return;
                }
                if (permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74783g)) {
                    return;
                }
                FullShareWebActivity.this.dialog.setTitle("提示");
                if (permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74786j) || permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74785i)) {
                    FullShareWebActivity.this.dialogB.setMessage("需要打开读写存储权限，请去设置中开启权限");
                } else {
                    FullShareWebActivity.this.dialogB.setMessage("请去设置中开启权限");
                }
                FullShareWebActivity.this.dialogB.setPositiveButton("去打开", new c());
                FullShareWebActivity fullShareWebActivity2 = FullShareWebActivity.this;
                fullShareWebActivity2.dialogU = fullShareWebActivity2.dialogB.show();
                return;
            }
            Object object = this.f52144b.getObject();
            UpdateIntentDataBean updateIntentDataBean = null;
            try {
                if (object instanceof UpdateIntentDataBean) {
                    updateIntentDataBean = (UpdateIntentDataBean) object;
                }
            } catch (Exception unused) {
            }
            if (updateIntentDataBean != null && "10".equals(this.f52144b.getFrom())) {
                updateIntentDataBean.getDownloadTask().setUrl(this.f52145c);
                if (UtilsMy.o1(FullShareWebActivity.this.context, updateIntentDataBean.getDownloadTask())) {
                    return;
                }
                ChociceDownActivity_.intent(FullShareWebActivity.this.context).a(updateIntentDataBean.getDownloadTask()).c(updateIntentDataBean).b(10).start();
                return;
            }
            if (updateIntentDataBean != null && "11".equals(this.f52144b.getFrom())) {
                updateIntentDataBean.getDownloadTask().setUrl(this.f52145c);
                if (UtilsMy.o1(FullShareWebActivity.this.context, updateIntentDataBean.getDownloadTask())) {
                    return;
                }
                ChociceDownActivity_.intent(FullShareWebActivity.this.context).a(updateIntentDataBean.getDownloadTask()).c(updateIntentDataBean).b(12).start();
                return;
            }
            if (!FullShareWebActivity.this.prefDef.firstShowUserPermiss().d().booleanValue()) {
                MobclickAgentKt.onEvent(FullShareWebActivity.this.context, "onSourceDownloadBegin");
            }
            String str = this.f52145c;
            String strSubstring = str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
            Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath();
            FullShareWebActivity.this.queryDownTask(strSubstring);
            if (FullShareWebActivity.this.mDownloadBottomDialog != null) {
                FullShareWebActivity.this.mDownloadBottomDialog.dismiss();
            }
            FullShareWebActivity.this.mDownloadBottomDialog = new com.join.mgps.dialog.h0(FullShareWebActivity.this.context);
            FullShareWebActivity.this.mDownloadBottomDialog.show();
            FullShareWebActivity.this.mDownloadBottomDialog.a(new a(strSubstring));
            FullShareWebActivity.this.mDownloadBottomDialog.b(new b());
        }
    }

    class h implements PostingActivity.m {
        h() {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void a(int value) {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void b(int type) {
            if (type == 4355 && FullShareWebActivity.this.mPrePostingHintDialog != null) {
                FullShareWebActivity.this.mPrePostingHintDialog.c();
            }
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void c(int type) {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void d(int type) {
            FullShareWebActivity.this.finish();
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void e(GroupInfoBean groupInfoBean) {
        }
    }

    class i implements LJWebView.c {
        i() {
        }

        @Override // com.join.mgps.customview.LJWebView.c
        public void a() {
            FullShareWebActivity.this.openImageChooserActivity();
        }
    }

    class j implements GameRoomActivity.x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f52153a;

        j(final DetailResultBean val$collectionBeanSub) {
            this.f52153a = val$collectionBeanSub;
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
            FullShareWebActivity.this.startDownv2(this.f52153a);
        }
    }

    class k extends Handler {
        k() {
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
                FullShareWebActivity.this.finish();
                Toast.makeText(FullShareWebActivity.this.context, "支付成功", 1);
            } else if (TextUtils.equals(resultStatus, "8000")) {
                Toast.makeText(FullShareWebActivity.this.context, "支付结果确认中", 0).show();
            }
        }
    }

    class l extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52156b;

        l(final String val$alipay_sign) {
            this.f52156b = val$alipay_sign;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                String strPay = new PayTask(FullShareWebActivity.this.context).pay(com.join.mgps.Util.c0.a(this.f52156b), true);
                Message message = new Message();
                message.what = 2;
                message.obj = strPay;
                FullShareWebActivity.this.handler.sendMessage(message);
            } catch (Exception e10) {
                e10.printStackTrace();
                Message message2 = new Message();
                message2.what = 3;
                FullShareWebActivity.this.handler.sendMessage(message2);
            }
        }
    }

    class m extends com.join.mgps.socket.fight.arena.b.c {
        m() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void c() {
            super.c();
        }
    }

    class n implements SocketListener.NotifyObserver {
        n() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(NetBattleStartGameDto netBattleStartGameDto, DownloadTask downloadTask) {
            UtilsMy.g4(FullShareWebActivity.this.context, netBattleStartGameDto, downloadTask, null, com.join.mgps.socket.fight.arena.c.i(FullShareWebActivity.this.mGameRoom.getBattleArea(), false));
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError error) {
            FullShareWebActivity.this.myError(error);
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
                        FullShareWebActivity.this.handleFailure(arenaResponse);
                        return;
                    }
                    if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                        if (TextUtils.isEmpty(FullShareWebActivity.this.mGameRoomNum)) {
                            return;
                        }
                        FullShareWebActivity fullShareWebActivity = FullShareWebActivity.this;
                        fullShareWebActivity.doSearchRoomCmd(fullShareWebActivity.mGameRoomNum);
                        return;
                    }
                    if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_SEARCH_ROOM_BY_ID)) {
                        FullShareWebActivity.this.handleSearchRoomResponse((GameRoom) arenaResponse.data);
                        return;
                    }
                    if (arenaResponse.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM)) {
                        FullShareWebActivity.this.cancelRegisterObserver();
                        GameRoom gameRoom = (GameRoom) arenaResponse.data;
                        FullShareWebActivity.this.mServiceDelegate.d().E(null);
                        final DownloadTask downloadTaskG = q5.f.M().G("" + gameRoom.getGameId());
                        FullShareWebActivity.this.dismissLoadingDialog();
                        FullShareWebActivity.this.initStartGameParams();
                        int i10 = FullShareWebActivity.this.f52131p1 + FullShareWebActivity.this.f52132p2 + FullShareWebActivity.this.f52133p3 + FullShareWebActivity.this.f52134p4;
                        final ?? netBattleStartGameDto = new NetBattleStartGameDto();
                        netBattleStartGameDto.setGameID(FullShareWebActivity.this.mGameRoom.getGameId() + "");
                        netBattleStartGameDto.setRoomID(gameRoom.getBattleServerAddr().getBattleRoomId() + "");
                        netBattleStartGameDto.setUserID(FullShareWebActivity.this.accountBean.getUid() + "");
                        netBattleStartGameDto.setServerIP(gameRoom.getBattleServerAddr().getHost());
                        netBattleStartGameDto.setServerPort(gameRoom.getBattleServerAddr().getPort());
                        if (gameRoom.getRoomCategory() == RoomCategory.LIVE) {
                            elite = 3;
                        } else {
                            elite = gameRoom.getRoomCategory() == RoomCategory.TOURNAMENT ? 2 : FullShareWebActivity.this.mGameRoom.getElite();
                        }
                        netBattleStartGameDto.setRoomMode(elite);
                        netBattleStartGameDto.setAllowPeripheralJoin(FullShareWebActivity.this.mGameRoom.getAllowPeripheralJoin());
                        netBattleStartGameDto.setAllowPCJoin(FullShareWebActivity.this.mGameRoom.getAllowPCJoin());
                        netBattleStartGameDto.setGameype(FullShareWebActivity.this.mGameRoom.getGameType().getNumber());
                        netBattleStartGameDto.setGroupId(FullShareWebActivity.this.mGameRoom.getRoomId());
                        netBattleStartGameDto.setP1Name("");
                        netBattleStartGameDto.setP2Name("");
                        netBattleStartGameDto.setOldGame(0);
                        netBattleStartGameDto.setUserName(FullShareWebActivity.this.accountBean.getNickname());
                        netBattleStartGameDto.setUserIcon(FullShareWebActivity.this.accountBean.getAvatarSrc());
                        netBattleStartGameDto.setGamePlayers(FullShareWebActivity.this.mGameRoom.getSeatsNumber());
                        netBattleStartGameDto.setTcptype(1);
                        netBattleStartGameDto.setPorder(FullShareWebActivity.this.porder);
                        netBattleStartGameDto.setNetPlayers(i10);
                        if (!FullShareWebActivity.this.mGameRoom.getElite()) {
                            netBattleStartGameDto.setOpenBattleScore(FullShareWebActivity.this.mGameRoom.getOpenBattleScore());
                        }
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(">>>>>>>>>>>>>>>>>>>tbl>>>>>>>>>>>>>>>>>>>>>>join game!!!!!! ");
                        sb2.append(netBattleStartGameDto.toString());
                        FullShareWebActivity.this.mServiceDelegate.f(ArenaRequestFactory.startLobbyGame(ArenaConstants.REGISTER_TYPE_GAMEROOM, FullShareWebActivity.this.mGameRoom.getRoomId()));
                        if (FullShareWebActivity.this.mGameRoom != null && FullShareWebActivity.this.mGameRoom.getRoomId() != 0) {
                            com.wufan.friend.chat.c.u().i(0, FullShareWebActivity.this.mGameRoom.getRoomId());
                        }
                        FullShareWebActivity.this.runOnUiThread(new Runnable() { // from class: com.join.mgps.activity.r1
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f57946b.b(netBattleStartGameDto, downloadTaskG);
                            }
                        });
                    }
                }
            }
        }
    }

    public class o extends com.join.mgps.callbacks.u {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f52161b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f52162c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f52163d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f52164e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f52165f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ String f52166g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            final /* synthetic */ String f52167h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            final /* synthetic */ String f52168i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            final /* synthetic */ String f52169j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            final /* synthetic */ String f52170k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            final /* synthetic */ String f52171l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            final /* synthetic */ String f52172m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            final /* synthetic */ String f52173n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ String f52174o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            final /* synthetic */ String f52175p;

            a(final String val$app_key, final int val$payType, final String val$callback_url, final String val$app_name, final String val$app_order_id, final String val$paOpenuid, final String val$uid, final String val$product_id, final String val$product_name, final String val$pay_rmb, final String val$extra1, final String val$extra2, final String val$appPrivateKey, final String val$token, final String val$payShowType) {
                this.f52161b = val$app_key;
                this.f52162c = val$payType;
                this.f52163d = val$callback_url;
                this.f52164e = val$app_name;
                this.f52165f = val$app_order_id;
                this.f52166g = val$paOpenuid;
                this.f52167h = val$uid;
                this.f52168i = val$product_id;
                this.f52169j = val$product_name;
                this.f52170k = val$pay_rmb;
                this.f52171l = val$extra1;
                this.f52172m = val$extra2;
                this.f52173n = val$appPrivateKey;
                this.f52174o = val$token;
                this.f52175p = val$payShowType;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    PapayOrder papayOrder = new PapayOrder();
                    papayOrder.APPKEY = this.f52161b;
                    papayOrder.PAYTYPE = this.f52162c;
                    papayOrder.NOTIFY_URI = this.f52163d;
                    papayOrder.APP_NAME = this.f52164e;
                    papayOrder.APP_ORDER_ID = this.f52165f;
                    if (com.join.mgps.Util.t2.i(this.f52166g)) {
                        papayOrder.PA_OPEN_UID = Integer.parseInt(this.f52166g);
                    }
                    papayOrder.APP_USER_ID = this.f52167h;
                    papayOrder.APP_USER_NAME = this.f52164e;
                    papayOrder.PRODUCT_ID = this.f52168i;
                    papayOrder.PRODUCT_NAME = this.f52169j;
                    papayOrder.MONEY_AMOUNT = this.f52170k;
                    papayOrder.APP_DISTRICT = 1;
                    papayOrder.APP_SERVER = 1;
                    papayOrder.APP_EXT1 = this.f52171l;
                    papayOrder.APP_EXT2 = this.f52172m;
                    papayOrder.PAYORRECHARGE = 1;
                    papayOrder.PRIVATEKEY = this.f52173n;
                    papayOrder.TOKEN = this.f52174o;
                    if (com.join.mgps.Util.t2.i(this.f52175p)) {
                        papayOrder.PAYSHOWTYPE = Integer.parseInt(this.f52175p);
                    }
                    FullShareWebActivity.this.startPay(papayOrder);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f52177b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f52178c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f52179d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f52180e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f52181f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ String f52182g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            final /* synthetic */ String f52183h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            final /* synthetic */ String f52184i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            final /* synthetic */ String f52185j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            final /* synthetic */ String f52186k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            final /* synthetic */ String f52187l;

            b(final int val$payType, final String val$callback_url, final String val$app_name, final String val$app_order_id, final String val$paOpenuid, final String val$uid, final String val$product_id, final String val$product_name, final String val$pay_rmb, final String val$extra1, final String val$extra2) {
                this.f52177b = val$payType;
                this.f52178c = val$callback_url;
                this.f52179d = val$app_name;
                this.f52180e = val$app_order_id;
                this.f52181f = val$paOpenuid;
                this.f52182g = val$uid;
                this.f52183h = val$product_id;
                this.f52184i = val$product_name;
                this.f52185j = val$pay_rmb;
                this.f52186k = val$extra1;
                this.f52187l = val$extra2;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    PapayOrder papayOrder = new PapayOrder();
                    papayOrder.APPKEY = "qh97";
                    papayOrder.PAYTYPE = this.f52177b;
                    papayOrder.NOTIFY_URI = this.f52178c;
                    papayOrder.APP_NAME = this.f52179d;
                    papayOrder.APP_ORDER_ID = this.f52180e;
                    if (com.join.mgps.Util.t2.i(this.f52181f)) {
                        papayOrder.PA_OPEN_UID = Integer.parseInt(this.f52181f);
                    }
                    papayOrder.APP_USER_ID = this.f52182g;
                    papayOrder.APP_USER_NAME = this.f52179d;
                    papayOrder.PRODUCT_ID = this.f52183h;
                    papayOrder.PRODUCT_NAME = this.f52184i;
                    papayOrder.MONEY_AMOUNT = this.f52185j;
                    papayOrder.APP_DISTRICT = 1;
                    papayOrder.APP_SERVER = 1;
                    papayOrder.APP_EXT1 = this.f52186k;
                    papayOrder.APP_EXT2 = this.f52187l;
                    papayOrder.PAYORRECHARGE = 2;
                    FullShareWebActivity.this.startPay(papayOrder);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class c implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f52189b;

            c(final int val$orderType) {
                this.f52189b = val$orderType;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    FullShareWebActivity.this.dialog.b();
                    FullShareWebActivity.this.createVip(this.f52189b);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class d implements Runnable {
            d() {
            }

            @Override // java.lang.Runnable
            public void run() {
                FullShareWebActivity.this.initPhotoDialog();
            }
        }

        class e implements Runnable {
            e() {
            }

            @Override // java.lang.Runnable
            public void run() {
                FullShareWebActivity.this.goMyAlbumActivity4PickPic();
            }
        }

        class f implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f52193b;

            f(final String val$tag_id) {
                this.f52193b = val$tag_id;
            }

            @Override // java.lang.Runnable
            public void run() {
                FullShareWebActivity.this.goMyMainLabel(this.f52193b);
            }
        }

        class g implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f52195b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f52196c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f52197d;

            g(final String val$tag_id, final String val$fid, final String val$fname) {
                this.f52195b = val$tag_id;
                this.f52196c = val$fid;
                this.f52197d = val$fname;
            }

            @Override // java.lang.Runnable
            public void run() {
                FullShareWebActivity.this.goMyMainLabel(this.f52195b, this.f52196c, this.f52197d);
            }
        }

        class h implements Runnable {
            h() {
            }

            @Override // java.lang.Runnable
            public void run() {
                FullShareWebActivity.this.goSearchLabel();
            }
        }

        class i implements Runnable {
            i() {
            }

            @Override // java.lang.Runnable
            public void run() {
                FullShareWebActivity.this.setFullScreen();
            }
        }

        class j implements Runnable {
            j() {
            }

            @Override // java.lang.Runnable
            public void run() {
                FullShareWebActivity.this.quitFullScreen();
            }
        }

        class k implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f52202b;

            k(final String val$json) {
                this.f52202b = val$json;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.join.mgps.Util.w.s(FullShareWebActivity.this, this.f52202b, 5);
            }
        }

        class l implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f52204b;

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
                    l lVar = l.this;
                    FullShareWebActivity.this.loaclJumpGameMatch(lVar.f52204b);
                }
            }

            l(final String val$roomId) {
                this.f52204b = val$roomId;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    UtilsMy.A0(FullShareWebActivity.this.context, 4, "", "FIGHT_LOBBY", new a());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class m implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f52207b;

            m(final String val$json) {
                this.f52207b = val$json;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    IntentDateBean intentDateBean = (IntentDateBean) JsonMapper.getInstance().fromJson(this.f52207b, IntentDateBean.class);
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
                    IntentUtil.getInstance().intentActivity(FullShareWebActivity.this, intentDateBean);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        class n implements Runnable {
            n() {
            }

            @Override // java.lang.Runnable
            public void run() {
                WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
                FullShareWebActivity fullShareWebActivity = FullShareWebActivity.this;
                fullShareWebActivity.accountBean = AccountUtil_.getInstance_(fullShareWebActivity.context).getAccountData();
                webAccountDataBean.setAccountBean(AccountBean.convert(FullShareWebActivity.this.accountBean));
                if (FullShareWebActivity.this.accountBean == null) {
                    FullShareWebActivity.this.startLogling = true;
                    IntentUtil.getInstance().goMyAccountLoginActivity(FullShareWebActivity.this.context, 0, 2);
                    return;
                }
                webAccountDataBean.setHasLogin(true);
                FullShareWebActivity.this.web.w("javascript:papaPutAccountData(" + JsonMapper.getInstance().toJson(webAccountDataBean) + ")");
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.activity.FullShareWebActivity$o$o, reason: collision with other inner class name */
        class RunnableC0666o implements Runnable {
            RunnableC0666o() {
            }

            @Override // java.lang.Runnable
            public void run() {
                WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
                FullShareWebActivity fullShareWebActivity = FullShareWebActivity.this;
                fullShareWebActivity.accountBean = AccountUtil_.getInstance_(fullShareWebActivity.context).getAccountData();
                webAccountDataBean.setAccountBean(AccountBean.convert(FullShareWebActivity.this.accountBean));
                if (!AccountUtil_.getInstance_(FullShareWebActivity.this.context).isTourist() && FullShareWebActivity.this.accountBean != null && !TextUtils.isEmpty(FullShareWebActivity.this.accountBean.getToken())) {
                    AccountUtil_.getInstance_(FullShareWebActivity.this.context).accountLoginOut(FullShareWebActivity.this.context);
                }
                FullShareWebActivity.this.startLogling = true;
                IntentUtil.getInstance().goMyAccountLoginActivity(FullShareWebActivity.this.context, 0, 2);
            }
        }

        class p implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f52211b;

            p(final String val$url) {
                this.f52211b = val$url;
            }

            @Override // java.lang.Runnable
            public void run() {
                if ("".equals(this.f52211b)) {
                    FullShareWebActivity.this.finishM();
                } else {
                    FullShareWebActivity.this.web.w(this.f52211b);
                }
            }
        }

        class q implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f52213b;

            q(final int val$screenLandOrPort) {
                this.f52213b = val$screenLandOrPort;
            }

            @Override // java.lang.Runnable
            public void run() {
                int i10 = this.f52213b;
                if (i10 == 0) {
                    FullShareWebActivity.this.setRequestedOrientation(4);
                    FullShareWebActivity.this.defaultScreenState = 0;
                    return;
                }
                if (i10 == 1) {
                    FullShareWebActivity.this.setRequestedOrientation(0);
                    FullShareWebActivity.this.defaultScreenState = 1;
                } else if (i10 == 2) {
                    FullShareWebActivity.this.setRequestedOrientation(1);
                    FullShareWebActivity.this.defaultScreenState = 2;
                } else {
                    if (i10 != 3) {
                        return;
                    }
                    FullShareWebActivity.this.setFullScreen();
                    FullShareWebActivity.this.defaultScreenState = 3;
                }
            }
        }

        class r implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f52215b;

            r(final boolean val$success) {
                this.f52215b = val$success;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean zH = com.join.android.app.common.utils.i.h(FullShareWebActivity.this.prefDef.lastCheckInTime().d().longValue());
                if (this.f52215b) {
                    if (zH) {
                        return;
                    }
                    FullShareWebActivity.this.prefDef.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
                } else if (zH) {
                    FullShareWebActivity.this.prefDef.lastCheckInTime().g(0L);
                }
            }
        }

        class s implements Runnable {
            s() {
            }

            @Override // java.lang.Runnable
            public void run() {
                FullShareWebActivity.this.startLogling = true;
                IntentUtil.getInstance().goAccountUpgradeActivity(FullShareWebActivity.this.context);
            }
        }

        class t implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f52218b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f52219c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ String f52220d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f52221e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f52222f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ int f52223g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            final /* synthetic */ String f52224h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            final /* synthetic */ String f52225i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            final /* synthetic */ String f52226j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            final /* synthetic */ String f52227k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            final /* synthetic */ String f52228l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            final /* synthetic */ String f52229m;

            t(final String val$app_key, final int val$payType, final String val$callback_url, final String val$app_name, final String val$app_order_id, final int val$paOpenuid, final String val$uid, final String val$product_id, final String val$product_name, final String val$pay_rmb, final String val$extra1, final String val$extra2) {
                this.f52218b = val$app_key;
                this.f52219c = val$payType;
                this.f52220d = val$callback_url;
                this.f52221e = val$app_name;
                this.f52222f = val$app_order_id;
                this.f52223g = val$paOpenuid;
                this.f52224h = val$uid;
                this.f52225i = val$product_id;
                this.f52226j = val$product_name;
                this.f52227k = val$pay_rmb;
                this.f52228l = val$extra1;
                this.f52229m = val$extra2;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    PapayOrder papayOrder = new PapayOrder();
                    papayOrder.APPKEY = this.f52218b;
                    papayOrder.PAYTYPE = this.f52219c;
                    papayOrder.NOTIFY_URI = this.f52220d;
                    papayOrder.APP_NAME = this.f52221e;
                    papayOrder.APP_ORDER_ID = this.f52222f;
                    papayOrder.PA_OPEN_UID = this.f52223g;
                    papayOrder.APP_USER_ID = this.f52224h;
                    papayOrder.APP_USER_NAME = "";
                    papayOrder.PRODUCT_ID = this.f52225i;
                    papayOrder.PRODUCT_NAME = this.f52226j;
                    papayOrder.MONEY_AMOUNT = this.f52227k;
                    papayOrder.APP_DISTRICT = 1;
                    papayOrder.APP_SERVER = 1;
                    papayOrder.APP_EXT1 = this.f52228l;
                    papayOrder.APP_EXT2 = this.f52229m;
                    papayOrder.PAYORRECHARGE = 1;
                    FullShareWebActivity.this.startPay(papayOrder);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public o(Activity target) {
            super(target);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(int i10, String str) {
            if (FullShareWebActivity.this.shareWebCallback != null) {
                FullShareWebActivity.this.shareWebCallback.onEvent(FullShareWebActivity.this, i10, str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j() {
            Intent intent = new Intent(BAction.ACTION_REAL_NAME_RESULT);
            intent.putExtra("result", 1);
            FullShareWebActivity.this.sendBroadcast(intent);
            IntentDateBean intentDateBean = FullShareWebActivity.this.intentdate;
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
                FullShareWebActivity.this.startPayAlipay(data);
            }
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void checkin(final boolean success) {
            FullShareWebActivity.this.mHandler.post(new r(success));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void creatVipOrder(final int orderType) {
            FullShareWebActivity.this.mHandler.post(new c(orderType));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void downloadGameByGameId(String gameId) {
            FullShareWebActivity.this.getDetailData(gameId, null, 0, "");
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void downloadGameByGameIdAndFrom(String gameId, int from) {
            FullShareWebActivity.this.getDetailData(gameId, null, from, "");
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void downloadGameByGameIdAndUrl(String gameId, String gameurl) {
            FullShareWebActivity.this.getDetailData(gameId, gameurl, 0, "");
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void downloadGameByGameIdIfNoGame(String gameId) {
            if (q5.f.M().G(gameId) == null) {
                FullShareWebActivity.this.getDetailData(gameId, null, 0, "");
            }
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void downloadGameByGameIdWithExt(String gameId, String extStr) {
            FullShareWebActivity.this.getDetailData(gameId, null, 0, extStr);
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void getAccount() {
            FullShareWebActivity.this.mHandler.post(new n());
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public String getFrom() {
            IntentDateBean intentDateBean = FullShareWebActivity.this.intentdate;
            return intentDateBean != null ? intentDateBean.getFrom() : "";
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public String getPapaUIDAndToken() {
            FullShareWebActivity fullShareWebActivity = FullShareWebActivity.this;
            fullShareWebActivity.accountBean = AccountUtil_.getInstance_(fullShareWebActivity.context).getAccountData();
            if (FullShareWebActivity.this.accountBean != null && FullShareWebActivity.this.accountBean.getAccountType() == 1) {
                return JsonMapper.toJsonString(new PaOpenBean(FullShareWebActivity.this.accountBean.getUid(), FullShareWebActivity.this.accountBean.getToken()));
            }
            IntentUtil.getInstance().goMyAccountLoginActivity(FullShareWebActivity.this.context, 0, 2);
            return "";
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public String getParentExtBean() {
            ExtBean extBean = FullShareWebActivity.this.parentExtBean;
            return extBean != null ? JsonMapper.toJsonString(extBean.buildScene().toExt()) : "";
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public String getSdkIntentData() {
            IntentDataMain intentDataMain = FullShareWebActivity.this.intentDataMain;
            return intentDataMain != null ? intentDataMain.getData() : "";
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void goBackUrl(final String url) {
            FullShareWebActivity.this.mHandler.post(new p(url));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void goChoiceUploadImage() {
            FullShareWebActivity.this.mHandler.post(new e());
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void goMainLabel(final String tag_id) {
            FullShareWebActivity.this.mHandler.post(new f(tag_id));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void goSearchLabel() {
            FullShareWebActivity.this.mHandler.post(new h());
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void intentToCompletAccount() {
            FullShareWebActivity.this.mHandler.post(new s());
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void jumpGameMatch(String roomId) {
            FullShareWebActivity.this.mHandler.post(new l(roomId));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void launchMiniProgram(int location, String abUid, String url) {
            FullShareWebActivity.this.getPrivateDomain(location, abUid, url);
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void login() {
            FullShareWebActivity.this.mHandler.post(new RunnableC0666o());
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void onEvent(final int event, @Nullable final String jsonParams) {
            FullShareWebActivity.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.s1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f57979b.i(event, jsonParams);
                }
            });
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void papaLiveCropImage() {
            FullShareWebActivity.this.mHandler.post(new d());
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void payByPapa(final String app_key, final int payType, final String callback_url, final String app_name, final String app_order_id, final int paOpenuid, final String uid, final String product_id, final String product_name, final String pay_rmb, final String extra1, final String extra2) {
            FullShareWebActivity.this.mHandler.post(new t(app_key, payType, callback_url, app_name, app_order_id, paOpenuid, uid, product_id, product_name, pay_rmb, extra1, extra2));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void payGameFinish(int resultCode) {
            if (resultCode == 1) {
                FullShareWebActivity.this.setResult(10010);
            } else if (resultCode == 2) {
                FullShareWebActivity.this.setResult(10011);
            }
            FullShareWebActivity.this.finish();
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void rechargePabiFrom(final String app_key, final int payType, final String callback_url, final String app_name, final String app_order_id, final String paOpenuid, final String uid, final String product_id, final String product_name, final String pay_rmb, final String extra1, final String extra2) {
            FullShareWebActivity.this.mHandler.post(new b(payType, callback_url, app_name, app_order_id, paOpenuid, uid, product_id, product_name, pay_rmb, extra1, extra2));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void setFullScreenJs(final String json) {
            FullShareWebActivity.this.mHandler.post(new i());
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void setQuitFullScreenJs(final String json) {
            FullShareWebActivity.this.mHandler.post(new j());
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void setScreenLandOrPort(final int screenLandOrPort) {
            FullShareWebActivity.this.mHandler.post(new q(screenLandOrPort));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void setTitle(final String title) {
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void shareFromJson(final String json) {
            FullShareWebActivity.this.mHandler.post(new k(json));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void showBackNew(final boolean show) {
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void showDownload(final boolean show) {
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void showFinish(final boolean show) {
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void showRefresh(final boolean show) {
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void showSearch(final boolean show) {
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void showShareButn(final String json) {
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void showTitle(final boolean showOrHide) {
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void startIntent(final String json) {
            FullShareWebActivity.this.mHandler.post(new m(json));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void updateAccount() {
            FullShareWebActivity.this.getUserInfo();
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void updateRealNameState() {
            try {
                FullShareWebActivity.this.mHandler.post(new Runnable() { // from class: com.join.mgps.activity.t1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f58107b.j();
                    }
                });
            } catch (Exception unused) {
            }
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void updateVip() {
            FullShareWebActivity.this.checkToken();
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void goMainLabel(final String tag_id, final String fid, final String fname) {
            FullShareWebActivity.this.mHandler.post(new g(tag_id, fid, fname));
        }

        @Override // com.join.mgps.callbacks.u
        @JavascriptInterface
        public void payByPapa(final String app_key, final String appPrivateKey, final int payType, final String callback_url, final String app_name, final String app_order_id, final String paOpenuid, final String uid, final String product_id, final String product_name, final String pay_rmb, final String extra1, final String extra2, final String token, final String payShowType) {
            FullShareWebActivity.this.mHandler.post(new a(app_key, payType, callback_url, app_name, app_order_id, paOpenuid, uid, product_id, product_name, pay_rmb, extra1, extra2, appPrivateKey, token, payShowType));
        }
    }

    private class p extends WebViewClient {
        public p(Context context) {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url2) {
            super.onPageFinished(view, url2);
            if (url2.endsWith(".zip")) {
                return;
            }
            com.join.mgps.Util.g1.b(FullShareWebActivity.this.TAG, "onPageFinished() called." + url2);
            if (url2.startsWith("http") || url2.startsWith("https") || url2.startsWith("file://")) {
                FullShareWebActivity.this.url = url2;
            }
            if (FullShareWebActivity.this.url.equals("data:text/html,chromewebdata") || FullShareWebActivity.this.isError) {
                FullShareWebActivity.this.showLodingFailed();
            } else {
                view.getSettings().setBlockNetworkImage(false);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url2, Bitmap favicon) {
            super.onPageStarted(view, url2, favicon);
            com.join.mgps.Util.g1.b(FullShareWebActivity.this.TAG, "onPageStarted() called." + url2);
            if (url2.endsWith(".zip")) {
                return;
            }
            if (url2.startsWith("http") || url2.startsWith("https") || url2.startsWith("file://")) {
                FullShareWebActivity.this.url = url2;
            }
            FullShareWebActivity.this.showLoding();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            super.onReceivedError(view, errorCode, description, failingUrl);
            com.join.mgps.Util.g1.b(FullShareWebActivity.this.TAG, "onReceivedError() called." + failingUrl);
            if (failingUrl.endsWith(".zip")) {
                return;
            }
            FullShareWebActivity.this.isError = true;
            view.loadDataWithBaseURL(null, "", ClipBoardItemData.TYPE_TEXT_HTML, "utf-8", null);
            FullShareWebActivity.this.showLodingFailed();
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
            com.join.mgps.Util.g1.b(FullShareWebActivity.this.TAG, "shouldOverrideUrlLoading() called.");
            if (!com.join.android.app.common.utils.m.j(FullShareWebActivity.this.context)) {
                com.join.mgps.Util.a3.b(FullShareWebActivity.this.context).d(FullShareWebActivity.this.getString(R.string.net_connect_failed));
            } else {
                if (!url2.startsWith("weixin:")) {
                    if (url2.startsWith("http") || url2.startsWith("https") || url2.startsWith("file://")) {
                        FullShareWebActivity.this.url = url2;
                        return super.shouldOverrideUrlLoading(view, url2);
                    }
                    try {
                        FullShareWebActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url2)));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    return true;
                }
                try {
                    FullShareWebActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url2)));
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
        textView.setOnClickListener(new b());
        textView2.setOnClickListener(new c());
        textView3.setOnClickListener(new d());
        this.mPicChsDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initStartGameParams() {
        RoomPosition p10 = this.mGameRoom.getP1();
        if (p10.getUid() == 0) {
            this.f52131p1 = 0;
        } else {
            if (p10.getUid() == this.accountUtil.getAccountData().getUid()) {
                this.porder = 0;
            }
            this.f52131p1 = 1;
        }
        RoomPosition p11 = this.mGameRoom.getP2();
        if (p11.getUid() == 0) {
            this.f52132p2 = 0;
        } else {
            if (p11.getUid() == this.accountUtil.getAccountData().getUid()) {
                this.porder = 1;
            }
            this.f52132p2 = 1;
        }
        RoomPosition p12 = this.mGameRoom.getP3();
        if (p12.getUid() == 0) {
            this.f52133p3 = 0;
        } else {
            if (p12.getUid() == this.accountUtil.getAccountData().getUid()) {
                this.porder = 2;
            }
            this.f52133p3 = 1;
        }
        RoomPosition p13 = this.mGameRoom.getP4();
        if (p13.getUid() == 0) {
            this.f52134p4 = 0;
            return;
        }
        if (p13.getUid() == this.accountUtil.getAccountData().getUid()) {
            this.porder = 3;
        }
        this.f52134p4 = 1;
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
            this.web.setWebViewClient(new p(this));
            o oVar = new o(this);
            if (this.supportJavascript) {
                this.web.r(oVar);
            }
            this.web.s(oVar);
            HashMap map = new HashMap();
            if (this.screenOrientation != -2) {
                map.put("screen_orientation", "" + this.screenOrientation);
            }
            this.web.w(StringKt.addUrlParams(url, map));
            this.web.setonShowFileChooser(new i());
            this.web.setActivity(this);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openImageChooserActivity() {
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
    /* JADX WARN: Code duplicated, block: B:13:0x0023  */
    public void quitFullScreen() {
        this.video.setVisibility(8);
        this.weblayout.setVisibility(0);
        int i10 = this.defaultScreenState;
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

    private void setHideVirtualKey() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
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
        new l(alipay_sign).start();
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

    /* JADX WARN: Code duplicated, block: B:70:0x0242  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14, types: [int] */
    /* JADX WARN: Type inference failed for: r1v43 */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.StringBuilder] */
    @AfterViews
    void afterview() {
        ?? K;
        int i10 = this.screenOrientation;
        if (i10 != -2) {
            setRequestedOrientation(i10);
        }
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
            if (intentDateBean2.getFrom().equals("11")) {
                initSocket(false);
            }
            if (this.url == null) {
                this.url = "";
            }
            if (com.join.android.app.common.http.c.f34547c && this.url.contains("http://")) {
                this.url = this.url.replace("http://", "https://");
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
                            K = APKUtils.K(updateIntentDataBean.getDownloadTask());
                        } else {
                            K = 0;
                        }
                    } else {
                        K = 0;
                    }
                } else {
                    K = 0;
                }
            } catch (Exception unused) {
            }
            this.web.setProgressVisible(false);
            if (this.url.contains("?")) {
                lodeWebView(this.url + "&ver=" + Build.VERSION.RELEASE + "&type=" + K);
            } else {
                lodeWebView(this.url + "?ver=" + Build.VERSION.RELEASE + "&type=" + K);
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
            this.mUploadHelper = new com.join.mgps.Util.u2(this, this);
            this.web.getWebView().setDownloadListener(new f(intentDateBean2));
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
            bVarNewBuilder.setUid(accountData.getUid());
            bVarNewBuilder.setToken(accountData.getToken());
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
            AccountUtil_.getInstance_(this).saveAccountData(accountData.toBuilder().setVipLevel(data.getVipLevel()).setSVIPLevel(data.getSvipLevel()).setVipExpTime(data.getVipExpTime()).setSecretKey(data.getSecretKey()).build(), this);
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
            new com.tbruyelle.rxpermissions2.c(this).s(com.kuaishou.weapon.p0.g.f74786j, com.kuaishou.weapon.p0.g.f74785i).subscribe(new g(intentDateBean, url));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void initSocket(boolean isShow) {
        if (isShow) {
            com.join.mgps.Util.a3.b(this.context).d("正在连接服务器，请稍候...");
        }
        com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(this.context, new m());
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

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        String strX;
        super.onActivityResult(requestCode, resultCode, data);
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

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        com.join.mgps.Util.p2.v(this);
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
        IDialogActivityCallback iDialogActivityCallback = this.callback;
        if (iDialogActivityCallback instanceof com.join.mgps.callbacks.r) {
            this.shareWebCallback = (com.join.mgps.callbacks.r) iDialogActivityCallback;
        }
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
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        cancelRegisterObserver();
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

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFinishEvent(com.join.mgps.event.v event) {
        if (event == null || !event.a().equals(EVENT_NAME)) {
            return;
        }
        finish();
    }

    @Override // com.join.mgps.customview.LJWebView.b
    public void onHideCustomView() {
        this.xCustomView = null;
        quitFullScreen();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
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
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
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
        this.video.removeAllViews();
        this.video.setVisibility(0);
        this.video.addView(view, new RelativeLayout.LayoutParams(-1, -1));
        setRequestedOrientation(0);
        setFullScreen();
    }

    @Override // android.view.View.OnSystemUiVisibilityChangeListener
    public void onSystemUiVisibilityChange(int visibility) {
        setHideVirtualKey();
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
        aVar.g(new a(aVar, gameRoom));
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
        String crc_sign_id;
        boolean z10;
        String str;
        if (collectionBeanSub.getMod_info() != null) {
            crc_sign_id = collectionBeanSub.getMod_info().getMod_game_id();
            collectionBeanSub.get_from();
            collectionBeanSub.get_from_type();
        } else {
            crc_sign_id = collectionBeanSub.getCrc_sign_id();
            collectionBeanSub.get_from();
            collectionBeanSub.get_from_type();
        }
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
            UtilsMy.A0(this.context, 2, crc_sign_id, str, new j(collectionBeanSub));
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
                    downloadtaskDown = q5.f.M().G(detialResultBean.getMod_info().getMain_game_id());
                } else if (z11) {
                    if (detialResultBean.getMod_info() != null) {
                        downloadtaskDown = q5.f.M().G(detialResultBean.getMod_info().getMod_game_id());
                    }
                } else if (z10) {
                    downloadtaskDown = q5.f.M().G(detialResultBean.getMod_info().getMain_game_id());
                } else {
                    downloadtaskDown = detialResultBean.getMod_info() != null ? q5.f.M().G(detialResultBean.getMod_info().getMod_game_id()) : null;
                    if (downloadtaskDown == null) {
                        downloadtaskDown = q5.f.M().G(detialResultBean.getMod_info().getMain_game_id());
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
}
