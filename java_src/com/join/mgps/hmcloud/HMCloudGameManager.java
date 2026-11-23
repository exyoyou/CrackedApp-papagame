package com.join.mgps.hmcloud;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Consumer;
import com.MApplication;
import com.baidu.oauth.sdkbqt.result.OauthResult;
import com.bykv.vk.component.ttvideo.player.C;
import com.facebook.common.references.CloseableReference;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.HmcpManager;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.haima.hmcp.listeners.OnInitCallBackListener;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.network.message.MessageManager;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.kotlin.ui.hmcloud.dialog.DialogUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.i1;
import com.join.mgps.Util.j0;
import com.join.mgps.Util.q0;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.v0;
import com.join.mgps.activity.FullShareWebActivity;
import com.join.mgps.activity.HMCloudMainActivity;
import com.join.mgps.activity.HMCloudMainActivity_;
import com.join.mgps.activity.HandShankPSPActivity;
import com.join.mgps.activity.MiniGameLoadingActivity;
import com.join.mgps.activity.SimulatorExitPlayActivity;
import com.join.mgps.activity.login.LoginInputPassActivity;
import com.join.mgps.activity.login.LoginMainActivity;
import com.join.mgps.cloud.bean.ConfigInfo;
import com.join.mgps.customview.RoundedImageView;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.event.v;
import com.join.mgps.mod.activity.ModLoadingActivity;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.arc.EmuActivity_psp;
import com.papa91.arc.ext.ToastManager;
import com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse;
import com.wufan.user.service.protobuf.MessageProto;
import com.wufan.user.service.protobuf.UserInfo;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class HMCloudGameManager extends s {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile HMCloudGameManager A = null;
    public static int B = 1;
    public static int C = 2;
    public static int D = 3;
    public static int E = 4;
    public static int F = 5;
    public static int G = 100;
    public static int H = 101;
    public static int I = 102;
    public static int J = 103;
    public static int K = 104;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final String f71643z = "HMCloudGameManager";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    q0 f71650h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    DownloadTask f71652j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private f f71653k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private t f71654l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private MessageCloudGamingServerListResponse.LineList f71655m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    UserInfo f71656n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private WeakReference<Activity> f71658p;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    com.kongzue.dialogx.dialogs.l f71667y;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f71644b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f71645c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f71646d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f71647e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f71648f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f71649g = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    String f71657o = "";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f71659q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    g f71660r = new g(180);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    g f71661s = new g(180);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    g f71662t = new g(60);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    boolean f71663u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f71664v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Handler f71665w = new Handler(new a());

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Handler f71666x = new Handler(new Handler.Callback() { // from class: com.join.mgps.hmcloud.a
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            return this.f71703b.C0(message);
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Context f71651i = MApplication.f3182z;

    public enum GAME_UI_STATE {
        INIT(1, "初始化"),
        HM_LOAD_RESOURCE(2, "资源加载"),
        HM_START_PLAY_REQUEST(3, "开始请求"),
        HM_START_PLAY(4, "开始游戏"),
        HM_FIRST_FRAME_ARRIVAL(5, "首帧到达"),
        QUEUE(6, "排队消息更新");

        private String mDesc;
        private int mState;

        GAME_UI_STATE(int state, String desc) {
            this.mState = state;
            this.mDesc = desc;
        }

        public String getDesc() {
            return this.mDesc;
        }

        public int getState() {
            return this.mState;
        }
    }

    class a implements Handler.Callback {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(Boolean bool) {
            HMCloudGameManager.this.U();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(Boolean bool) {
            HMCloudGameManager.this.U();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message msg) {
            int i10 = msg.what;
            if (i10 == HMCloudGameManager.B) {
                if (HMCloudGameManager.this.f71660r.g(60)) {
                    HMCloudGameManager.this.f71660r.h(1.0d);
                    HMCloudGameManager hMCloudGameManager = HMCloudGameManager.this;
                    hMCloudGameManager.l1(GAME_UI_STATE.INIT, (int) hMCloudGameManager.f71660r.f71702c);
                } else if (HMCloudGameManager.this.f71660r.g(120)) {
                    HMCloudGameManager.this.f71660r.h(0.5d);
                    HMCloudGameManager hMCloudGameManager2 = HMCloudGameManager.this;
                    hMCloudGameManager2.l1(GAME_UI_STATE.INIT, (int) hMCloudGameManager2.f71660r.f71702c);
                } else if (HMCloudGameManager.this.f71660r.g(180)) {
                    HMCloudGameManager.this.f71660r.h(1.6666666666666667d);
                    HMCloudGameManager hMCloudGameManager3 = HMCloudGameManager.this;
                    hMCloudGameManager3.l1(GAME_UI_STATE.INIT, (int) hMCloudGameManager3.f71660r.f71702c);
                }
                if (!HMCloudGameManager.this.f71660r.f()) {
                    HMCloudGameManager.this.f71660r.e();
                    HMCloudGameManager.this.Z0(msg.what, 1000L);
                } else if (HMCloudGameManager.this.f71654l != null) {
                    HMCloudGameManager.this.f71654l.onFinishGame();
                    ToastManager.show("初始化超时，请重新申请游戏...");
                }
            } else if (i10 == HMCloudGameManager.C) {
                if (HMCloudGameManager.this.f71661s.g(60)) {
                    HMCloudGameManager.this.f71661s.h(1.0d);
                    HMCloudGameManager hMCloudGameManager4 = HMCloudGameManager.this;
                    hMCloudGameManager4.l1(GAME_UI_STATE.HM_LOAD_RESOURCE, (int) hMCloudGameManager4.f71661s.f71702c);
                } else if (HMCloudGameManager.this.f71661s.g(120)) {
                    HMCloudGameManager.this.f71661s.h(0.5d);
                    HMCloudGameManager hMCloudGameManager5 = HMCloudGameManager.this;
                    hMCloudGameManager5.l1(GAME_UI_STATE.HM_LOAD_RESOURCE, (int) hMCloudGameManager5.f71661s.f71702c);
                } else if (HMCloudGameManager.this.f71661s.g(180)) {
                    HMCloudGameManager.this.f71661s.h(1.6666666666666667d);
                    HMCloudGameManager hMCloudGameManager6 = HMCloudGameManager.this;
                    hMCloudGameManager6.l1(GAME_UI_STATE.HM_LOAD_RESOURCE, (int) hMCloudGameManager6.f71661s.f71702c);
                }
                if (HMCloudGameManager.this.f71661s.f()) {
                    if (HMCloudGameManager.this.f71653k != null && t2.i(HMCloudGameManager.this.f71653k.f71697s)) {
                        MessageManager.INSTANCE.release(HMCloudGameManager.this.f71653k.f71679a, HMCloudGameManager.this.f71655m.getServerLineNum(), HMCloudGameManager.this.f71653k.f71692n, HMCloudGameManager.this.f71653k.f71697s);
                    }
                    if (HMCloudGameManager.this.f71654l != null) {
                        HMCloudGameManager.this.f71654l.onFinishGame();
                        ToastManager.show("资源加载超时，请重新申请游戏...");
                    }
                } else {
                    HMCloudGameManager.this.f71661s.e();
                    HMCloudGameManager.this.Z0(msg.what, 1000L);
                }
            } else if (i10 == HMCloudGameManager.D) {
                if (HMCloudGameManager.this.f71662t.f()) {
                    HMCloudGameManager.this.f71648f = false;
                    HMCloudGameManager.this.S();
                    v0.c();
                    HMCloudGameManager.this.U();
                    if (HMCloudGameManager.this.f71653k != null && t2.i(HMCloudGameManager.this.f71653k.f71692n)) {
                        MessageManager.INSTANCE.quitQueue(HMCloudGameManager.this.f71653k.f71679a, HMCloudGameManager.this.f71655m.getServerLineNum(), HMCloudGameManager.this.f71653k.f71692n);
                    }
                    ExtBean extBean = new ExtBean();
                    extBean.setGameId(HMCloudGameManager.W().e0());
                    if (HMCloudGameManager.this.f71653k != null) {
                        extBean.setParent(HMCloudGameManager.this.f71653k.f71687i);
                    }
                    extBean.setChatId(EventP.ChatId.cloudGameErrorPop.name()).setResultCode(EventP.ResultCode.error.name()).setReMarks("cloudGameError-2.1").setGuideKey(HMCloudGameManager.this.f71657o).buildScene();
                    com.papa.sim.statistic.t.l(HMCloudGameManager.this.f71651i).R1(Event.commonReport, extBean.toExt());
                } else {
                    HMCloudGameManager.this.f71662t.e();
                    HMCloudGameManager.this.Z0(msg.what, 1000L);
                    if (MApplication.f3182z.f3194o) {
                        if (HMCloudGameManager.this.f71645c) {
                            v0.f(v0.a(HMCloudGameManager.this.f71651i, HMCloudGameManager.this.f71652j.getPortraitURL(), HMCloudGameManager.this.f71662t.f71700a - HMCloudGameManager.this.f71662t.f71701b));
                            HMCloudGameManager.this.l0();
                        } else {
                            HMCloudGameManager.this.S();
                            v0.c();
                        }
                    } else if (HMCloudGameManager.this.f71645c) {
                        HMCloudGameManager hMCloudGameManager7 = HMCloudGameManager.this;
                        hMCloudGameManager7.h1(hMCloudGameManager7.f71652j.getPortraitURL(), HMCloudGameManager.this.f71662t.f71700a - HMCloudGameManager.this.f71662t.f71701b);
                        HMCloudGameManager.this.l0();
                    } else {
                        HMCloudGameManager.this.S();
                        v0.c();
                    }
                }
            } else if (i10 == HMCloudGameManager.G) {
                MessageManager messageManager = MessageManager.INSTANCE;
                if (messageManager.isMessageAlive()) {
                    HMCloudGameManager.this.Z0(HMCloudGameManager.B, 200L);
                    if (HMCloudGameManager.this.f71653k != null) {
                        messageManager.joinQueue(HMCloudGameManager.this.f71653k.f71679a, HMCloudGameManager.this.f71655m.getServerLineNum());
                    } else {
                        DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_10, OauthResult.RESULT_MSG_NETWORK_EXCEPTION, "退出游戏", "游戏启动失败，请退出重试", new Consumer() { // from class: com.join.mgps.hmcloud.n
                            @Override // androidx.core.util.Consumer
                            public final void accept(Object obj) {
                                this.f71716b.c((Boolean) obj);
                            }
                        });
                    }
                } else {
                    messageManager.initMessageClient();
                }
            } else if (i10 == HMCloudGameManager.H) {
                MessageManager.INSTANCE.login();
                HMCloudGameManager.this.f71664v++;
            } else if (i10 == HMCloudGameManager.I) {
                if (HMCloudGameManager.this.f71653k != null) {
                    MessageManager.INSTANCE.queryQueueState(HMCloudGameManager.this.f71653k.f71679a, HMCloudGameManager.this.f71655m.getServerLineNum());
                } else {
                    DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_10, OauthResult.RESULT_MSG_NETWORK_EXCEPTION, "退出游戏", "游戏启动失败，请退出重试", new Consumer() { // from class: com.join.mgps.hmcloud.o
                        @Override // androidx.core.util.Consumer
                        public final void accept(Object obj) {
                            this.f71717b.d((Boolean) obj);
                        }
                    });
                }
            } else if (i10 == HMCloudGameManager.E) {
                HMCloudGameManager.this.l0();
                if (HMCloudGameManager.this.f71658p != null && HMCloudGameManager.this.f71658p.get() != null) {
                    HMCloudGameManager hMCloudGameManager8 = HMCloudGameManager.this;
                    hMCloudGameManager8.f71650h.v((Activity) hMCloudGameManager8.f71658p.get());
                }
                HMCloudGameManager.this.Z0(HMCloudGameManager.F, 500L);
            } else if (i10 == HMCloudGameManager.F) {
                HMCloudGameManager.this.j1();
            }
            return false;
        }
    }

    class b extends com.facebook.imagepipeline.datasource.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RoundedImageView f71669a;

        b(final RoundedImageView val$riv_view) {
            this.f71669a = val$riv_view;
        }

        @Override // com.facebook.datasource.b
        public void e(com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> dataSource) {
        }

        @Override // com.facebook.imagepipeline.datasource.b
        public void g(@Nullable final Bitmap bitmap) {
            if (bitmap == null) {
                return;
            }
            try {
                this.f71669a.setImageBitmap(bitmap);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class c implements OnInitCallBackListener {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(Boolean bool) {
            HMCloudGameManager.this.N0();
        }

        @Override // com.haima.hmcp.listeners.OnInitCallBackListener
        public void fail(String msg) {
            DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_10, OauthResult.RESULT_MSG_NETWORK_EXCEPTION, "立即重启", "游戏启动失败，请重试", new Consumer() { // from class: com.join.mgps.hmcloud.p
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f71718b.b((Boolean) obj);
                }
            });
            ExtBean extBean = new ExtBean();
            if (HMCloudGameManager.this.f71653k != null) {
                extBean.setParent(HMCloudGameManager.this.f71653k.f71687i);
            }
            extBean.setGameId(HMCloudGameManager.W().e0());
            extBean.setTypeCode(EventP.TypeCode.cloudGamePlug.name()).setChatId(EventP.ChatId.cloudGameLoading.name()).setSopNo(HMCloudGameManager.W().i0().getServerLineNum()).setSopName(Html.fromHtml(HMCloudGameManager.this.f71655m.getServerName()).toString()).setResourceId(HMCloudGameManager.this.e0()).setGuideKey(HMCloudGameManager.W().c0()).setResultCode(EventP.ResultCode.fail.name()).buildScene();
            com.papa.sim.statistic.t.l(HMCloudGameManager.this.f71651i).R1(Event.commonReport, extBean.toExt());
        }

        @Override // com.haima.hmcp.listeners.OnInitCallBackListener
        public void success() {
            HMCloudGameManager.this.P0();
            HMCloudGameManager.this.M(GAME_UI_STATE.HM_LOAD_RESOURCE);
            HMCloudGameManager.this.Z0(HMCloudGameManager.C, 1500L);
            ExtBean extBean = new ExtBean();
            if (HMCloudGameManager.this.f71653k != null) {
                extBean.setParent(HMCloudGameManager.this.f71653k.f71687i);
            }
            extBean.setGameId(HMCloudGameManager.W().e0());
            extBean.setTypeCode(EventP.TypeCode.cloudGamePlug.name()).setChatId(EventP.ChatId.cloudGameLoading.name()).setSopNo(HMCloudGameManager.W().i0().getServerLineNum()).setSopName(Html.fromHtml(HMCloudGameManager.this.f71655m.getServerName()).toString()).setResourceId(HMCloudGameManager.this.e0()).setGuideKey(HMCloudGameManager.W().c0()).setResultCode(EventP.ResultCode.succ.name()).buildScene();
            com.papa.sim.statistic.t.l(HMCloudGameManager.this.f71651i).R1(Event.commonReport, extBean.toExt());
        }
    }

    class d implements Runnable {

        class a extends com.facebook.imagepipeline.datasource.b {
            a() {
            }

            @Override // com.facebook.datasource.b
            public void e(com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> dataSource) {
                v0.f(v0.b(HMCloudGameManager.this.f71651i, BitmapFactory.decodeResource(HMCloudGameManager.this.f71651i.getResources(), R.drawable.icon), HMCloudGameManager.this.f71659q));
            }

            @Override // com.facebook.imagepipeline.datasource.b
            public void g(@Nullable final Bitmap bitmap) {
                if (bitmap == null) {
                    return;
                }
                try {
                    v0.f(v0.b(HMCloudGameManager.this.f71651i, bitmap, HMCloudGameManager.this.f71659q));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.join.android.app.common.utils.l.m(HMCloudGameManager.this.f71651i, HMCloudGameManager.this.f71652j.getPortraitURL(), new a());
        }
    }

    class e extends com.kongzue.dialogx.interfaces.r<com.kongzue.dialogx.dialogs.l> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f71674a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f71675b;

        class a extends com.facebook.imagepipeline.datasource.b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ImageView f71677a;

            a(final ImageView val$iv_image) {
                this.f71677a = val$iv_image;
            }

            @Override // com.facebook.datasource.b
            public void e(com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> dataSource) {
                this.f71677a.setImageResource(R.drawable.icon);
            }

            @Override // com.facebook.imagepipeline.datasource.b
            public void g(@Nullable final Bitmap bitmap) {
                if (bitmap != null) {
                    try {
                        if (Build.VERSION.SDK_INT >= 23) {
                            this.f71677a.setImageBitmap(bitmap);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(int layoutResId, final String val$iconUrl, final int val$time) {
            super(layoutResId);
            this.f71674a = val$iconUrl;
            this.f71675b = val$time;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(View view) {
            HMCloudGameManager.this.U();
            HMCloudGameManager.this.S();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ void g(View view) {
            HMCloudGameManager.this.S();
            ((HMCloudMainActivity_.u) ((HMCloudMainActivity_.u) HMCloudMainActivity_.intent(view.getContext()).flags(C.ENCODING_PCM_MU_LAW)).g(HMCloudGameManager.this.f0()).extra("_scene", 3)).start();
        }

        @Override // com.kongzue.dialogx.interfaces.r
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void onBind(com.kongzue.dialogx.dialogs.l dialog, View v10) {
            ImageView imageView = (ImageView) v10.findViewById(R.id.iv_close);
            TextView textView = (TextView) v10.findViewById(R.id.tv_btn_1);
            TextView textView2 = (TextView) v10.findViewById(R.id.tv_text_2);
            com.join.android.app.common.utils.l.m(v10.getContext(), this.f71674a, new a((ImageView) v10.findViewById(R.id.iv_image)));
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.hmcloud.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f71719b.f(view);
                }
            });
            textView2.setText(Html.fromHtml("<font color='#FF0000'>" + this.f71675b + "秒</font>后将自动放弃，再次进入需重新排队"));
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.hmcloud.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f71720b.g(view);
                }
            });
        }
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f71679a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f71680b;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public ArchiveData f71685g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ModGameArchivePathData f71686h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ExtBean f71687i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f71688j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public String f71690l;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f71692n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        String f71693o;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f71681c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f71682d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f71683e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f71684f = 0;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f71689k = false;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f71691m = false;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public String f71694p = "";

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public String f71695q = "";

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public String f71696r = "";

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public String f71697s = "";

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public long f71698t = 0;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public long f71699u = 0;

        public f(String gameId) {
            this.f71679a = Long.parseLong(gameId);
        }
    }

    public static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f71700a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private double f71702c = 0.0d;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f71701b = 0;

        public g(int maxValue) {
            this.f71700a = maxValue;
        }

        public int d() {
            return this.f71701b;
        }

        public void e() {
            this.f71701b++;
        }

        public boolean f() {
            return this.f71701b >= this.f71700a;
        }

        public boolean g(int value) {
            return this.f71701b < value;
        }

        public void h(double value) {
            this.f71702c += value;
        }

        public void i() {
            this.f71701b = 0;
            this.f71702c = 0.0d;
        }
    }

    private HMCloudGameManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A0() {
        MessageManager.INSTANCE.joinQueue(this.f71653k.f71679a, this.f71655m.getServerLineNum());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void B0() {
        ((HMCloudMainActivity_.u) ((HMCloudMainActivity_.u) HMCloudMainActivity_.intent(this.f71651i).flags(C.ENCODING_PCM_MU_LAW)).g(f0()).extra("_scene", 1)).start();
        l0();
        ExtBean extBean = new ExtBean();
        extBean.setGameId(W().e0());
        extBean.setTypeCode(EventP.TypeCode.btnFloating.name()).setChatId(EventP.ChatId.cloudGameLineupMini.name()).setResourceId(e0()).setGuideKey(W().c0()).buildScene();
        com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonClick, extBean.toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean C0(Message message) {
        int i10 = message.what;
        if (i10 == J) {
            P();
            return false;
        }
        if (i10 != K) {
            return false;
        }
        f1();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D0(Boolean bool) {
        V();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E0(Boolean bool) {
        U();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F0(Boolean bool) {
        U();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G0(Boolean bool) {
        N0();
    }

    private void O() {
        this.f71666x.removeMessages(K);
        this.f71666x.sendEmptyMessageDelayed(K, BaseCloudFileManager.ACK_TIMEOUT);
    }

    private void O0() {
        this.f71644b = false;
        this.f71645c = false;
        P0();
        this.f71649g = true;
        this.f71647e = false;
        this.f71648f = false;
        this.f71663u = false;
        l0();
        v0.c();
    }

    private void P() {
        if (this.f71664v < 3) {
            if (com.join.android.app.common.utils.m.j(this.f71651i)) {
                this.f71665w.sendEmptyMessageDelayed(H, 1000L);
                return;
            } else {
                this.f71664v++;
                this.f71666x.sendEmptyMessageDelayed(J, BaseCloudFileManager.ACK_TIMEOUT);
                return;
            }
        }
        DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_10, OauthResult.RESULT_MSG_NETWORK_EXCEPTION, "退出游戏", "网络异常，请检查网络后重试", new Consumer() { // from class: com.join.mgps.hmcloud.d
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                this.f71706b.u0((Boolean) obj);
            }
        });
        ExtBean extBean = new ExtBean();
        f fVar = this.f71653k;
        if (fVar != null) {
            extBean.setParent(fVar.f71687i);
        }
        extBean.setGameId(W().e0());
        extBean.setChatId(EventP.ChatId.cloudGameErrorPop.name()).setResourceId(e0()).setGuideKey(W().c0()).setResultCode(EventP.ResultCode.error.name()).setReMarks("cloudGameError-1 err:[网络异常]").buildScene();
        com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonReport, extBean.toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0() {
        this.f71665w.removeCallbacksAndMessages(null);
        this.f71660r.i();
        this.f71661s.i();
        this.f71662t.i();
    }

    private void Q(int... whats) {
        for (int i10 : whats) {
            this.f71665w.removeMessages(i10);
        }
    }

    public static HMCloudGameManager W() {
        if (A == null) {
            A = new HMCloudGameManager();
        }
        return A;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z0(int event, long delay) {
        this.f71665w.sendEmptyMessageDelayed(event, delay);
    }

    private void f1() {
        UserInfo accountData = AccountUtil_.getInstance_(this.f71651i).getAccountData();
        this.f71656n = accountData;
        int uid = accountData.getUid();
        f fVar = this.f71653k;
        if (fVar == null || uid == fVar.f71688j) {
            return;
        }
        DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_11, "检测到账号信息改变", "退出游戏", "1、可能因您登录其他账号导致\n2、可能因其他设备登录您账号导致", new Consumer() { // from class: com.join.mgps.hmcloud.m
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                this.f71715b.F0((Boolean) obj);
            }
        });
        R0(EventP.ResultCode.error, "cloudGameError-3");
    }

    private void j0(MessageProto.Response response) {
        this.f71648f = false;
        if (this.f71645c) {
            l0();
        }
        if (response.getErrorCode() == 10001) {
            P0();
            ExtBean extBean = new ExtBean();
            extBean.setGameId(W().e0());
            extBean.setParent(this.f71653k.f71687i);
            extBean.setChatId(EventP.ChatId.cloudGameErrorPop.name()).setResultCode(EventP.ResultCode.error.name()).setReMarks("cloudGameError-1 err:[10001]").setGuideKey(this.f71657o).buildScene();
            com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonReport, extBean.toExt());
            DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_10, "消息提醒", "立即重启", "排队失败，请重新进入", new Consumer() { // from class: com.join.mgps.hmcloud.g
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f71709b.x0((Boolean) obj);
                }
            });
        } else if (response.getErrorCode() == 10005) {
            P0();
            ExtBean extBean2 = new ExtBean();
            extBean2.setGameId(W().e0());
            extBean2.setParent(this.f71653k.f71687i);
            extBean2.setChatId(EventP.ChatId.cloudGameErrorPop.name()).setResultCode(EventP.ResultCode.error.name()).setReMarks("cloudGameError-1 err:[10005]").setGuideKey(this.f71657o).buildScene();
            com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonReport, extBean2.toExt());
            DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_10, "消息提醒", "立即重启", "游戏数据异常，请重新进入", new Consumer() { // from class: com.join.mgps.hmcloud.h
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f71710b.y0((Boolean) obj);
                }
            });
        } else if (response.getErrorCode() == 10009) {
            P0();
            ExtBean extBean3 = new ExtBean();
            extBean3.setGameId(W().e0());
            extBean3.setParent(this.f71653k.f71687i);
            extBean3.setChatId(EventP.ChatId.cloudGameErrorPop.name()).setResultCode(EventP.ResultCode.error.name()).setReMarks("cloudGameError-4").setGuideKey(this.f71657o).buildScene();
            com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonReport, extBean3.toExt());
            DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_10, "消息提醒", "立即重启", "游戏火爆,排队人数过多，请稍后再来", new Consumer() { // from class: com.join.mgps.hmcloud.i
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f71711b.z0((Boolean) obj);
                }
            });
        } else if (response.getErrorCode() == 10003) {
            this.f71665w.postDelayed(new Runnable() { // from class: com.join.mgps.hmcloud.j
                @Override // java.lang.Runnable
                public final void run() {
                    this.f71712b.A0();
                }
            }, BaseCloudFileManager.ACK_TIMEOUT);
        } else if (response.getErrorCode() == 10011) {
            DialogUtils.INSTANCE.alterDialog(0, "温馨提示", "我知道了", response.getError(), new Consumer() { // from class: com.join.mgps.hmcloud.k
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f71713b.v0((Boolean) obj);
                }
            });
        } else {
            P0();
            ExtBean extBean4 = new ExtBean();
            extBean4.setGameId(W().e0());
            extBean4.setParent(this.f71653k.f71687i);
            extBean4.setChatId(EventP.ChatId.cloudGameErrorPop.name()).setResultCode(EventP.ResultCode.error.name()).setReMarks("cloudGameError-1 err:[" + response.getErrorCode() + "]").setGuideKey(this.f71657o).buildScene();
            com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonReport, extBean4.toExt());
            DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_10, "消息提醒", "立即重启", "云游戏启动失败,请重试", new Consumer() { // from class: com.join.mgps.hmcloud.l
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f71714b.w0((Boolean) obj);
                }
            });
        }
        if (W().n0()) {
            ExtBean extBean5 = new ExtBean();
            if (W().b0() != null) {
                extBean5.setParent(W().b0().f71687i);
            }
            extBean5.setGameId(W().e0());
            extBean5.setTypeCode(EventP.TypeCode.cloudGameLineUp.name()).setChatId(EventP.ChatId.cloudGameLoading.name()).setSopNo(W().i0().getServerLineNum()).setSopName(Html.fromHtml(W().i0().getServerName()).toString()).setResourceId(W().e0()).setGuideKey(W().c0()).setResultCode(EventP.ResultCode.fail.name()).setReMarks("err:" + response.getErrorCode()).buildScene();
            com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonReport, extBean5.toExt());
        }
    }

    private void k0(Intent intent) {
        if (intent.getIntExtra("_scene", 0) == 1) {
            a1(EventP.TypeCode.notify);
        } else if (intent.getIntExtra("_scene", 0) == 2 || t0()) {
            v0.c();
            S();
            this.f71644b = false;
            this.f71648f = false;
            MessageManager messageManager = MessageManager.INSTANCE;
            long j10 = this.f71653k.f71679a;
            String serverLineNum = this.f71655m.getServerLineNum();
            f fVar = this.f71653k;
            messageManager.enterGame(j10, serverLineNum, fVar.f71692n, fVar.f71697s);
        } else if (intent.getIntExtra("_scene", 0) == 3) {
            S();
            this.f71644b = false;
            this.f71648f = false;
            MessageManager messageManager2 = MessageManager.INSTANCE;
            long j11 = this.f71653k.f71679a;
            String serverLineNum2 = this.f71655m.getServerLineNum();
            f fVar2 = this.f71653k;
            messageManager2.enterGame(j11, serverLineNum2, fVar2.f71692n, fVar2.f71697s);
            a1(EventP.TypeCode.popup);
        }
        this.f71645c = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l1(GAME_UI_STATE state, int progress) {
        t tVar = this.f71654l;
        if (tVar != null) {
            tVar.onUpdateProgress(state, progress);
        }
    }

    private void p0() {
        if (this.f71650h == null) {
            this.f71650h = new q0(this.f71651i);
        }
        this.f71650h.u(new q0.d() { // from class: com.join.mgps.hmcloud.b
            @Override // com.join.mgps.Util.q0.d
            public final void a() {
                this.f71704a.B0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u0(Boolean bool) {
        U();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v0(Boolean bool) {
        V();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w0(Boolean bool) {
        N0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x0(Boolean bool) {
        N0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y0(Boolean bool) {
        N0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z0(Boolean bool) {
        N0();
    }

    public void H0(Activity activity) {
        if ((activity instanceof HMCloudMainActivity) || (activity instanceof ModLoadingActivity) || (activity instanceof MiniGameLoadingActivity) || (activity instanceof EmuBaseActivity) || (activity instanceof LoginInputPassActivity) || (activity instanceof LoginMainActivity) || (activity instanceof SimulatorExitPlayActivity) || (activity instanceof HandShankPSPActivity) || (activity instanceof EmuActivity_psp)) {
            return;
        }
        this.f71658p = new WeakReference<>(activity);
        if (this.f71653k == null || !this.f71645c) {
            return;
        }
        g1();
    }

    public void I0(Activity activity, Intent intent) {
        k0(intent);
    }

    public void J0(boolean isFirst) {
        P0();
        if (isFirst) {
            j0.a().c(new v(FullShareWebActivity.EVENT_NAME));
        }
    }

    public void K(long switchGameId) {
        MessageManager messageManager = MessageManager.INSTANCE;
        if (messageManager.isMessageAlive()) {
            f fVar = this.f71653k;
            if (fVar == null) {
                ToastManager.show("游戏切换失败");
            } else {
                messageManager.changeGame(fVar.f71679a, this.f71655m.getServerLineNum(), switchGameId);
            }
        }
        U();
    }

    public void K0() {
        O();
    }

    public void L(MessageCloudGamingServerListResponse.LineList lineList) {
    }

    public void L0(Intent intent) {
        k0(intent);
    }

    public void M(GAME_UI_STATE state) {
        N(state, null);
    }

    public void M0() {
        this.f71645c = false;
        O();
    }

    public void N(GAME_UI_STATE state, Bundle extra) {
        t tVar = this.f71654l;
        if (tVar != null) {
            tVar.onChangeUiState(state, extra);
        }
    }

    public void N0() {
        O0();
        l0();
        t tVar = this.f71654l;
        if (tVar != null) {
            tVar.onRestUI();
            this.f71654l.onReload();
        }
    }

    public boolean Q0(MessageCloudGamingServerListResponse.LineList lineList) {
        if (lineList == null || this.f71655m == null) {
            return false;
        }
        return lineList.getServerLineNum().equals(this.f71655m.getServerLineNum());
    }

    public void R() {
        if (this.f71645c) {
            return;
        }
        this.f71653k = null;
        this.f71646d = false;
        MessageManager.INSTANCE.logout();
        O0();
        l();
        this.f71665w.removeCallbacksAndMessages(null);
        this.f71666x.removeCallbacksAndMessages(null);
        b1(null);
        HmcpManager.getInstance().releaseRequestManager();
    }

    public void R0(EventP.ResultCode resultCode, String reason) {
        ExtBean extBean = new ExtBean();
        f fVar = this.f71653k;
        if (fVar != null) {
            extBean.setParent(fVar.f71687i);
        }
        if (resultCode != null) {
            extBean.setResultCode(resultCode.name());
        }
        if (t2.i(reason)) {
            extBean.setReMarks(reason);
        }
        extBean.setGameId(W().e0());
        extBean.setChatId(EventP.ChatId.cloudGameErrorPop.name()).setResourceId(e0()).setGuideKey(W().c0()).buildScene();
        com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonReport, extBean.toExt());
    }

    public void S() {
        com.kongzue.dialogx.dialogs.l lVar = this.f71667y;
        if (lVar != null && lVar.m0()) {
            this.f71667y.e2();
        }
        this.f71667y = null;
        P0();
    }

    public void S0() {
        ExtBean extBean = new ExtBean();
        extBean.setGameId(W().e0());
        extBean.setTypeCode(EventP.TypeCode.btnBuy.name()).setChatId(EventP.ChatId.cloudGameLoading.name()).setSopNo(W().i0().getServerLineNum()).setSopName(Html.fromHtml(this.f71655m.getServerName()).toString()).setResourceId(e0()).setGuideKey(W().c0()).setScenesCode("开通会员").buildScene();
        if (W().i0() != null) {
            extBean.setSopNo(W().i0().getServerLineNum());
        }
        com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonClick, extBean.toExt());
    }

    public void T() {
        if (this.f71644b) {
            f fVar = this.f71653k;
            if (fVar != null && t2.i(fVar.f71692n)) {
                MessageManager.INSTANCE.quitQueue(this.f71653k.f71679a, this.f71655m.getServerLineNum(), this.f71653k.f71692n);
            }
            ExtBean extBean = new ExtBean();
            f fVar2 = this.f71653k;
            if (fVar2 != null) {
                extBean.setParent(fVar2.f71687i);
            }
            extBean.setGameId(W().e0());
            extBean.setTypeCode(EventP.TypeCode.cloudGameLineUp.name()).setChatId(EventP.ChatId.cloudGameLoading.name()).setSopNo(W().i0().getServerLineNum()).setSopName(Html.fromHtml(this.f71655m.getServerName()).toString()).setResourceId(e0()).setGuideKey(W().c0()).setResultCode(EventP.ResultCode.cancel.name()).setReMarks("主动取消排队").buildScene();
            com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonReport, extBean.toExt());
        }
    }

    public void T0(EventP.TypeCode typeCode) {
        ExtBean extBean = new ExtBean();
        extBean.setGameId(W().e0());
        extBean.setTypeCode(typeCode.name()).setChatId(EventP.ChatId.cloudGameLineupChange.name()).setResourceId(e0()).setTypeCode(typeCode.name()).setGuideKey(W().c0()).buildScene();
        com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonClick, extBean.toExt());
    }

    public void U() {
        V();
        R();
    }

    public void U0() {
        ExtBean extBean = new ExtBean();
        extBean.setGameId(W().e0());
        extBean.setTypeCode(EventP.TypeCode.btnBuy.name()).setChatId(EventP.ChatId.cloudGameLoading.name()).setSopName(Html.fromHtml(this.f71655m.getServerName()).toString()).setResourceId(e0()).setGuideKey(W().c0()).setParent(this.f71653k.f71687i).setScenesCode("补充时长").buildScene();
        com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonClick, extBean.toExt());
    }

    public void V() {
        this.f71644b = false;
        this.f71645c = false;
        this.f71646d = false;
        this.f71663u = false;
        t tVar = this.f71654l;
        if (tVar != null) {
            tVar.onFinishGame();
        }
        O0();
    }

    public void V0(int queueIndex) {
        ExtBean extBean = new ExtBean();
        f fVar = this.f71653k;
        if (fVar != null) {
            extBean.setParent(fVar.f71687i);
        }
        extBean.setGameId(W().e0());
        extBean.setTypeCode(EventP.TypeCode.cloudGameLineUp.name()).setChatId(EventP.ChatId.cloudGameLoading.name()).setSopNo(W().i0().getServerLineNum()).setSopName(Html.fromHtml(this.f71655m.getServerName()).toString()).setResourceId(e0()).setGuideKey(W().c0()).setResultCode(EventP.ResultCode.start.name()).setMemberCount(queueIndex + "").buildScene();
        com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonReport, extBean.toExt());
    }

    public void W0(MessageCloudGamingServerListResponse.LineList lineList) {
        ExtBean extBean = new ExtBean();
        extBean.setGameId(W().e0());
        extBean.setTypeCode(EventP.TypeCode.btnChoose.name()).setChatId(EventP.ChatId.cloudGameChooseServ.name()).setSopNo(lineList.getServerLineNum()).setSopName(Html.fromHtml(lineList.getServerName()).toString()).setResourceId(e0()).setGuideKey(W().c0()).buildScene();
        com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonClick, extBean.toExt());
    }

    public String X() {
        return this.f71653k.f71695q;
    }

    public void X0(MessageCloudGamingServerListResponse.LineList lineList, EventP.ResultCode resultCode, String reason) {
        ExtBean extBean = new ExtBean();
        if (resultCode != null) {
            extBean.setResultCode(resultCode.name());
        }
        if (t2.i(reason)) {
            extBean.setReMarks(reason);
        }
        extBean.setGameId(W().e0());
        extBean.setTypeCode(EventP.TypeCode.cloudGameServChange.name()).setChatId(EventP.ChatId.cloudGameLoading.name()).setSopNo(lineList.getServerLineNum()).setSopName(Html.fromHtml(lineList.getServerName()).toString()).setResourceId(e0()).setGuideKey(W().c0()).buildScene();
        com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonClick, extBean.toExt());
    }

    public String Y() {
        return this.f71653k.f71694p;
    }

    public void Y0(EventP.ResultCode resultCode, String reason) {
        ExtBean extBean = new ExtBean();
        f fVar = this.f71653k;
        if (fVar != null) {
            extBean.setParent(fVar.f71687i);
        }
        if (resultCode != null) {
            extBean.setResultCode(resultCode.name());
        }
        if (t2.i(reason)) {
            extBean.setReMarks(reason);
        }
        extBean.setGameId(W().e0());
        extBean.setTypeCode(EventP.TypeCode.cloudGameConnServ.name()).setChatId(EventP.ChatId.cloudGameLoading.name()).setSopNo(W().i0().getServerLineNum()).setSopName(Html.fromHtml(this.f71655m.getServerName()).toString()).setResourceId(e0()).setGuideKey(W().c0()).buildScene();
        com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonReport, extBean.toExt());
    }

    public String Z() {
        return this.f71653k.f71696r;
    }

    public ConfigInfo a0() {
        String str = this.f71653k.f71679a + "";
        String accountStr = AccountUtil_.getInstance_(this.f71651i).getAccountStr();
        f fVar = this.f71653k;
        ArchiveData archiveData = fVar.f71685g;
        ModGameArchivePathData modGameArchivePathData = fVar.f71686h;
        int i10 = (this.f71653k.f71686h == null || TextUtils.isEmpty(modGameArchivePathData.getMainArchiveLocalPath())) ? (archiveData == null || TextUtils.isEmpty(archiveData.getArchiveLocalPath())) ? 0 : 1 : 1;
        f fVar2 = this.f71653k;
        fVar2.f71683e = i10;
        int i11 = fVar2.f71684f;
        int iD0 = d0();
        f fVar3 = this.f71653k;
        return new ConfigInfo(str, i11, iD0, fVar3.f71681c, fVar3.f71682d, i10, accountStr, archiveData, modGameArchivePathData);
    }

    public void a1(EventP.TypeCode typeCode) {
        ExtBean extBean = new ExtBean();
        extBean.setGameId(W().e0());
        extBean.setTypeCode(typeCode.name()).setChatId(EventP.ChatId.cloudGameLineupMini.name()).setResourceId(e0()).setGuideKey(W().c0()).buildScene();
        com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonClick, extBean.toExt());
    }

    public f b0() {
        return this.f71653k;
    }

    public void b1(t proxy) {
        this.f71654l = proxy;
    }

    @Override // com.join.mgps.hmcloud.s
    public void c(@NonNull MessageProto.Response response) {
        super.c(response);
        if (response.getStatusCode() != MessageProto.Response.StatusCode.RESULT_SUCCESS) {
            j0(response);
            return;
        }
        MessageProto.QueueInfo queueInfo = response.getQueueInfo();
        queueInfo.getPosition();
        this.f71659q = queueInfo.getWaitPosition();
        String bid = queueInfo.getBid();
        String accessKey = queueInfo.getAccessKey();
        String appChannel = queueInfo.getAppChannel();
        this.f71653k.f71691m = queueInfo.getUnusedQueueCards();
        this.f71653k.f71698t = queueInfo.getQuitGameTime();
        try {
            this.f71653k.f71694p = com.join.mgps.Util.a.b(bid);
            this.f71653k.f71695q = com.join.mgps.Util.a.b(accessKey);
            this.f71653k.f71696r = com.join.mgps.Util.a.b(appChannel);
            if (!t2.h(this.f71653k.f71695q)) {
                r0();
            } else {
                ToastManager.show("服务配置错误，请更换线路重试");
                U();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String c0() {
        return this.f71657o;
    }

    public void c1(boolean state) {
        this.f71645c = state;
        if (state) {
            this.f71649g = false;
            g1();
            ExtBean extBean = new ExtBean();
            f fVar = this.f71653k;
            if (fVar != null) {
                extBean.setParent(fVar.f71687i);
            }
            extBean.setGameId(W().e0());
            extBean.setTypeCode(EventP.TypeCode.btnHide.name()).setChatId(EventP.ChatId.cloudGameLoading.name()).setSopNo(W().i0().getServerLineNum()).setSopName(Html.fromHtml(this.f71655m.getServerName()).toString()).setResourceId(e0()).setGuideKey(W().c0()).buildScene();
            com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonClick, extBean.toExt());
        }
    }

    @Override // com.join.mgps.hmcloud.s
    public void d(@NonNull MessageProto.Response response) {
        t tVar;
        super.d(response);
        if (response.getStatusCode() == MessageProto.Response.StatusCode.RESULT_SUCCESS) {
            if (this.f71646d && (tVar = this.f71654l) != null) {
                tVar.onReload();
            }
        } else if (this.f71646d) {
            DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_10, "消息提醒", "立即重启", "游戏数据异常，请退出重进", new Consumer() { // from class: com.join.mgps.hmcloud.e
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f71707b.D0((Boolean) obj);
                }
            });
        }
        this.f71646d = false;
    }

    public int d0() {
        f fVar = this.f71653k;
        return (fVar != null && fVar.f71680b) ? 7 : 6;
    }

    public void d1(boolean playGame) {
        this.f71647e = playGame;
    }

    @Override // com.join.mgps.hmcloud.s
    public void e(@NonNull MessageProto.Response response) {
        super.e(response);
        if (response.getStatusCode() != MessageProto.Response.StatusCode.RESULT_SUCCESS) {
            j0(response);
            return;
        }
        MessageProto.QueueInfo queueInfo = response.getQueueInfo();
        queueInfo.getPosition();
        this.f71659q = queueInfo.getWaitPosition();
        this.f71653k.f71691m = queueInfo.getUnusedQueueCards();
        this.f71648f = false;
        this.f71663u = true;
        if (this.f71659q > 0 || queueInfo.getIsQueue()) {
            this.f71644b = true;
            Bundle bundle = new Bundle();
            bundle.putString("serverName", Html.fromHtml(this.f71655m.getServerName()).toString());
            bundle.putInt("queueIndex", this.f71659q);
            N(GAME_UI_STATE.QUEUE, bundle);
            Q(H, B);
            Z0(F, 500L);
            V0(this.f71659q);
        }
        Z0(I, 5000L);
    }

    public String e0() {
        if (this.f71653k == null) {
            return "";
        }
        return this.f71653k.f71679a + "";
    }

    public void e1() {
        com.kongzue.dialogx.dialogs.l lVar = this.f71667y;
        if (lVar == null || !lVar.m0()) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f71667y.j2(), "translationX", 0.0f, 30.0f, -30.0f, 30.0f, 0.0f);
        objectAnimatorOfFloat.setDuration(400L);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.setStartDelay(100L);
        objectAnimatorOfFloat.setRepeatCount(2);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.start();
    }

    @Override // com.join.mgps.hmcloud.s
    public void f(@NonNull MessageProto.Response response) {
        t tVar;
        super.f(response);
        if (response.getStatusCode() == MessageProto.Response.StatusCode.RESULT_SUCCESS) {
            this.f71664v = 0;
            if (this.f71653k == null && (tVar = this.f71654l) != null) {
                tVar.onFinishGame();
                return;
            }
            MessageManager messageManager = MessageManager.INSTANCE;
            if (!messageManager.isLogin() || !this.f71663u) {
                messageManager.joinQueue(this.f71653k.f71679a, this.f71655m.getServerLineNum());
            }
            this.f71666x.removeMessages(J);
            messageManager.setLoginState(true);
            return;
        }
        if (response.getLogicErrorCode() == MessageProto.Response.LogicErrorCode.LOGIN_FAIL) {
            System.out.println(f71643z + response.getError());
            if (this.f71664v < 3) {
                this.f71665w.sendEmptyMessageDelayed(H, BaseCloudFileManager.ACK_TIMEOUT);
            } else {
                DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_10, OauthResult.RESULT_MSG_NETWORK_EXCEPTION, "退出游戏", "游戏启动失败，请退出重试", new Consumer() { // from class: com.join.mgps.hmcloud.f
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        this.f71708b.E0((Boolean) obj);
                    }
                });
                ExtBean extBean = new ExtBean();
                f fVar = this.f71653k;
                if (fVar != null) {
                    extBean.setParent(fVar.f71687i);
                }
                extBean.setGameId(W().e0());
                extBean.setChatId(EventP.ChatId.cloudGameErrorPop.name()).setResourceId(e0()).setGuideKey(W().c0()).setResultCode(EventP.ResultCode.error.name()).setReMarks("cloudGameError-1 err:[登录重试超限]").buildScene();
                com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonReport, extBean.toExt());
            }
        }
        if (MessageManager.INSTANCE.isLogin()) {
            return;
        }
        j0(response);
    }

    public long f0() {
        f fVar = this.f71653k;
        if (fVar == null) {
            return 0L;
        }
        return fVar.f71699u;
    }

    @Override // com.join.mgps.hmcloud.s
    public void g(boolean state) {
        super.g(state);
        if (state) {
            return;
        }
        this.f71666x.removeMessages(J);
        this.f71666x.sendEmptyMessageDelayed(J, 2000L);
    }

    public int g0() {
        return this.f71659q;
    }

    public void g1() {
        this.f71665w.removeMessages(E);
        this.f71665w.sendEmptyMessageDelayed(E, 1200L);
    }

    @Override // com.join.mgps.hmcloud.s
    public void h(@NonNull MessageProto.Response response) {
        super.h(response);
        if (response.getStatusCode() != MessageProto.Response.StatusCode.RESULT_SUCCESS) {
            j0(response);
            return;
        }
        MessageProto.QueueInfo queueInfo = response.getQueueInfo();
        queueInfo.getPosition();
        this.f71659q = queueInfo.getWaitPosition();
        f fVar = this.f71653k;
        if (fVar == null || fVar.f71679a != queueInfo.getGameId()) {
            return;
        }
        this.f71653k.f71692n = queueInfo.getJobId();
        this.f71653k.f71697s = queueInfo.getResourceId();
        this.f71653k.f71691m = queueInfo.getUnusedQueueCards();
        P0();
        if (this.f71645c) {
            j0.a().c(new v("CloudGameSwitch"));
            this.f71648f = true;
            v0.c();
            l0();
            Z0(D, 1000L);
            return;
        }
        MessageManager messageManager = MessageManager.INSTANCE;
        long j10 = this.f71653k.f71679a;
        String serverLineNum = this.f71655m.getServerLineNum();
        f fVar2 = this.f71653k;
        messageManager.enterGame(j10, serverLineNum, fVar2.f71692n, fVar2.f71697s);
    }

    public String h0() {
        return this.f71653k.f71697s;
    }

    public void h1(String iconUrl, int time) {
        if (this.f71667y == null) {
            com.kongzue.dialogx.dialogs.l lVarY1 = com.kongzue.dialogx.dialogs.l.Y1();
            this.f71667y = lVarY1;
            lVarY1.h3(new e(R.layout.layout_notify_cloud_game_join_success, iconUrl, time));
            this.f71667y.V1(60000L).v3(10, 10, 10, 10).M0();
        }
        if (this.f71667y.m0()) {
            ((TextView) this.f71667y.j2().findViewById(R.id.tv_text_2)).setText(Html.fromHtml("<font color='#FF0000'>" + time + "秒</font>后将自动放弃，再次进入需重新排队"));
        }
    }

    @Override // com.join.mgps.hmcloud.s
    public void i(@NonNull MessageProto.Response response) {
        super.i(response);
        if (response.getStatusCode() != MessageProto.Response.StatusCode.RESULT_SUCCESS) {
            j0(response);
            return;
        }
        MessageProto.QueueInfo queueInfo = response.getQueueInfo();
        queueInfo.getPosition();
        this.f71659q = queueInfo.getWaitPosition();
        f fVar = this.f71653k;
        if (fVar != null) {
            fVar.f71692n = queueInfo.getJobId();
            this.f71653k.f71691m = queueInfo.getUnusedQueueCards();
        }
        Bundle bundle = new Bundle();
        bundle.putString("serverName", Html.fromHtml(this.f71655m.getServerName()).toString());
        bundle.putInt("queueIndex", this.f71659q);
        N(GAME_UI_STATE.QUEUE, bundle);
        this.f71644b = true;
        Z0(I, 5000L);
        Z0(F, 500L);
    }

    public MessageCloudGamingServerListResponse.LineList i0() {
        return this.f71655m;
    }

    public void i1() {
        DialogUtils.INSTANCE.alterDialog(R.drawable.ic_cloud_game_10, "消息提醒", "立即重启", "排队失败，请重新进入", new Consumer() { // from class: com.join.mgps.hmcloud.c
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                this.f71705b.G0((Boolean) obj);
            }
        });
    }

    @Override // com.join.mgps.hmcloud.s
    public void j(@NonNull MessageProto.Response response) {
        super.j(response);
        if (response.getStatusCode() != MessageProto.Response.StatusCode.RESULT_SUCCESS) {
            j0(response);
            return;
        }
        MessageProto.QueueInfo queueInfo = response.getQueueInfo();
        queueInfo.getPosition();
        queueInfo.getWaitPosition();
        queueInfo.getSwitchoverWaitPosition();
        this.f71653k.f71691m = queueInfo.getUnusedQueueCards();
    }

    public void j1() {
        q0 q0Var;
        View viewJ;
        if (!this.f71645c || (q0Var = this.f71650h) == null || (viewJ = q0Var.j()) == null) {
            return;
        }
        ((TextView) viewJ.findViewById(R.id.tv_text_1)).setText("" + this.f71659q);
    }

    public void k1(long time) {
        f fVar = this.f71653k;
        if (fVar != null) {
            fVar.f71699u = time;
        }
    }

    public void l0() {
        q0 q0Var = this.f71650h;
        if (q0Var != null) {
            this.f71649g = true;
            q0Var.m();
        }
    }

    public boolean m0() {
        return this.f71653k != null;
    }

    public void m1() {
        this.f71665w.postDelayed(new d(), 800L);
    }

    public boolean n0() {
        return this.f71644b;
    }

    public void o0(MessageCloudGamingServerListResponse.LineList lineList) {
        String uid = AccountUtil_.getInstance_(MApplication.f3182z).getUid();
        MessageManager messageManager = MessageManager.INSTANCE;
        if (messageManager.getCurrentUid() != null && !TextUtils.equals(messageManager.getCurrentUid(), uid)) {
            messageManager.logout();
        }
        this.f71655m = lineList;
        this.f71665w.sendEmptyMessageDelayed(G, 1000L);
    }

    public void q0(f params) {
        View viewJ;
        if (this.f71653k == null) {
            this.f71653k = params;
            DownloadTask downloadTaskL = q5.f.M().L(params.f71679a + "");
            this.f71652j = downloadTaskL;
            if (downloadTaskL != null) {
                this.f71653k.f71693o = downloadTaskL.getPackageName();
            }
            WeakReference<Activity> weakReference = this.f71658p;
            if (weakReference != null && weakReference.get() != null) {
                new PrefDef_(this.f71658p.get()).lastLaunchCloudGameId().g(params.f71679a + "");
            }
            p0();
            q0 q0Var = this.f71650h;
            if (q0Var != null && (viewJ = q0Var.j()) != null) {
                com.join.android.app.common.utils.l.m(this.f71651i, this.f71652j.getPortraitURL(), new b((RoundedImageView) viewJ.findViewById(R.id.riv_view)));
            }
            UserInfo accountData = AccountUtil_.getInstance_(this.f71651i).getAccountData();
            this.f71656n = accountData;
            if (accountData != null) {
                this.f71657o = i1.d((((long) this.f71656n.getUid()) + System.currentTimeMillis()) + "");
                this.f71653k.f71688j = this.f71656n.getUid();
                this.f71653k.f71689k = com.join.mgps.Util.b.pivc(this.f71656n);
            }
            k();
            P0();
            M(GAME_UI_STATE.INIT);
            Z0(B, 200L);
        }
    }

    public void r0() {
        if (this.f71653k != null) {
            HmcpManager hmcpManager = HmcpManager.getInstance();
            Bundle bundle = new Bundle();
            bundle.putString(HmcpManager.ACCESS_KEY_ID, this.f71653k.f71694p);
            bundle.putString(HmcpManager.CHANNEL_ID, this.f71653k.f71696r);
            hmcpManager.init(bundle, this.f71651i, new c());
            ExtBean extBean = new ExtBean();
            f fVar = this.f71653k;
            if (fVar != null) {
                extBean.setParent(fVar.f71687i);
            }
            extBean.setGameId(W().e0());
            extBean.setTypeCode(EventP.TypeCode.cloudGamePlug.name()).setChatId(EventP.ChatId.cloudGameLoading.name()).setSopNo(W().i0().getServerLineNum()).setSopName(Html.fromHtml(this.f71655m.getServerName()).toString()).setResourceId(e0()).setGuideKey(W().c0()).setResultCode(EventP.ResultCode.init.name()).buildScene();
            com.papa.sim.statistic.t.l(this.f71651i).R1(Event.commonReport, extBean.toExt());
        }
    }

    public boolean s0() {
        return this.f71647e;
    }

    public boolean t0() {
        return this.f71648f;
    }
}
