package com.join.mgps.activity.gamedetail;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.MApplication;
import com.danikula.videocache.i;
import com.facebook.drawee.drawable.s;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.g;
import com.join.android.app.common.utils.l;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.extention.MobclickAgentKt;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.h0;
import com.join.mgps.Util.j0;
import com.join.mgps.Util.t2;
import com.join.mgps.customview.DownloadProgressBar;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.r;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.e;
import com.join.mgps.rpc.impl.d;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.Where;
import com.papa.sim.statistic.t;
import com.sigmob.sdk.base.mta.PointType;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import q5.f;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.gamedetail_video_fragment)
public class GameDetailVideoFragment extends BaseGameDetailFragment {
    UserInfo accountBean;

    @ViewById
    ProgressBar butnProgressBar;

    @ViewById
    ImageView butn_showdownload;

    @ViewById
    TextView content;
    GamedetailVideoMainActivity context;
    MediaController controller;

    @ViewById
    SimpleDraweeView cover;

    @ViewById
    SimpleDraweeView coverback;
    private DownloadTask downloadTask;
    ExtBean extBean;
    String gameId;

    @ViewById
    TextView gameName;

    @ViewById
    SimpleDraweeView icon;

    @ViewById
    TextView instalButtomButn;

    @ViewById
    RelativeLayout instalbutnLayout;
    GamedetialModleFourBean modleFourBeanShow;
    MediaPlayer mpx;
    boolean nowIsNoSound = true;

    @ViewById
    TextView percent;

    @ViewById
    View playIcon;
    private String playUrl;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    RelativeLayout progressbarLayout;
    private i proxy;
    private String proxyUrl;
    e rpcClient;

    @ViewById
    ImageView sound;

    @ViewById
    View statuHVIew;
    private int statubarH;

    @ViewById
    FulllScreenVideoView videoView;

    private int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private void uptateUi() {
        boolean z10;
        GamedetialModleFourBean gamedetialModleFourBean = this.modleFourBeanShow;
        if (gamedetialModleFourBean != null) {
            List<DownloadTask> listH = gamedetialModleFourBean.getMod_info() != null ? f.M().H(this.modleFourBeanShow.getMod_info().getMain_game_id(), this.modleFourBeanShow.getMod_info().getMod_game_id()) : f.M().I(this.modleFourBeanShow.getPackageName());
            if (listH != null && listH.size() > 0) {
                boolean z11 = false;
                loop0: while (true) {
                    z10 = false;
                    for (DownloadTask downloadTask : listH) {
                        if (Dtype.MOD.name().equals(downloadTask.getFileType())) {
                            z11 = com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName()) && downloadTask.getStatus() == 5;
                        } else if (g.t0(getContext()).e(getContext(), downloadTask.getPackageName()) && downloadTask.getStatus() == 5) {
                            z10 = true;
                        }
                    }
                    break loop0;
                }
                if (z11 && z10) {
                    this.downloadTask = f.M().G(this.gameId);
                } else if (z11) {
                    if (this.modleFourBeanShow.getMod_info() != null) {
                        this.downloadTask = f.M().G(this.modleFourBeanShow.getMod_info().getMod_game_id());
                    }
                } else if (z10) {
                    this.downloadTask = f.M().G(this.gameId);
                } else {
                    if (this.modleFourBeanShow.getMod_info() != null) {
                        this.downloadTask = f.M().G(this.modleFourBeanShow.getMod_info().getMod_game_id());
                    }
                    if (this.downloadTask == null) {
                        this.downloadTask = f.M().G(this.gameId);
                    }
                }
            }
        }
        DownloadTask downloadTask2 = this.downloadTask;
        if (downloadTask2 == null) {
            DownloadTask downloadtaskDown = this.modleFourBeanShow.getDownloadtaskDown();
            this.downloadTask = downloadtaskDown;
            downloadtaskDown.set_from(10101);
            if (!UtilsMy.p0(this.modleFourBeanShow.getTag_info())) {
                this.downloadTask.setStatus(0);
            } else if (this.downloadTask.getMod_info() == null) {
                this.downloadTask.setFileType(Dtype.android.name());
                if (g.t0(this.context).e(this.context, this.modleFourBeanShow.getPackageName())) {
                    APKUtils.a aVarN = g.t0(this.context).n(this.context, this.modleFourBeanShow.getPackageName());
                    if (!t2.i(this.modleFourBeanShow.getVer()) || aVarN.d() >= Integer.parseInt(this.modleFourBeanShow.getVer())) {
                        this.downloadTask.setStatus(5);
                    } else {
                        this.downloadTask.setStatus(9);
                    }
                } else {
                    this.downloadTask.setStatus(0);
                }
            }
        } else {
            downloadTask2.setDownloadType(0);
            this.downloadTask.setTask_down_type(0);
            this.downloadTask.setScreenshot_pic(this.modleFourBeanShow.getScreenshot_pic());
        }
        updateButn();
    }

    void addFrom(DownloadTask downloadTask) {
        ExtBean extBean = this.extBean;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || downloadTask == null) {
            return;
        }
        if (!"112".equals(this.extBean.getFrom())) {
            downloadTask.setExt(JsonMapper.getInstance().toJson(this.extBean));
            return;
        }
        ExtBean extBean2 = new ExtBean();
        extBean2.setFrom(PointType.ANTI_SPAM);
        extBean2.setPosition("112");
        extBean2.setLocation(this.extBean.getLocation());
        extBean2.setNodeId("1");
        downloadTask.setExt(JsonMapper.getInstance().toJson(extBean2));
    }

    @AfterViews
    void afterView() {
        GamedetailViewbean gamedetailViewbean;
        Bundle arguments = getArguments();
        this.context = (GamedetailVideoMainActivity) getActivity();
        this.rpcClient = d.O1();
        j0.a().d(this);
        if (arguments != null && (gamedetailViewbean = (GamedetailViewbean) arguments.getSerializable("videoDatas")) != null) {
            if (!m.k(this.context)) {
                a3.b(this.context).d("当前为非Wi-Fi环境，请注意流量消耗");
            }
            boolean zBooleanValue = this.prefDef.soundnowIsNoSound().d().booleanValue();
            this.nowIsNoSound = zBooleanValue;
            if (zBooleanValue) {
                this.sound.setImageResource(R.drawable.gamedetail_video_nosound);
            } else {
                this.sound.setImageResource(R.drawable.gamedetail_video_opensound);
            }
            Uri.parse(gamedetailViewbean.getVideo_url());
            this.playUrl = gamedetailViewbean.getVideo_url();
            this.modleFourBeanShow = ((GamedetailVideoMainActivity) getActivity()).getModleFourBeanShow();
            this.gameId = arguments.getString("gameId");
            ExtBean extBean = (ExtBean) arguments.getSerializable("extBean");
            this.extBean = extBean;
            if (extBean == null) {
                this.extBean = new ExtBean();
            }
            GamedetialModleFourBean gamedetialModleFourBean = this.modleFourBeanShow;
            if (gamedetialModleFourBean == null) {
                return;
            }
            this.gameId = gamedetialModleFourBean.getCrc_sign_id();
            l.j(this.icon, this.modleFourBeanShow.getIco_remote(), l.F(this.context, getResources().getDimensionPixelOffset(R.dimen.wdp25)));
            this.content.setText(gamedetailViewbean.getSub_title());
            this.gameName.setText(this.modleFourBeanShow.getGame_name());
            MediaController mediaController = new MediaController(getActivity());
            this.controller = mediaController;
            mediaController.setVisibility(4);
            i iVarQ = MApplication.q(getActivity().getApplicationContext());
            this.proxy = iVarQ;
            String strJ = iVarQ.j(gamedetailViewbean.getVideo_url());
            this.proxyUrl = strJ;
            this.videoView.setUp(strJ, true, "");
            l.i(this.videoView.thumbImageView, gamedetailViewbean.getVideoCover(), s.c.f27292i);
            this.videoView.setMute(this.nowIsNoSound);
            int currentState = this.videoView.getCurrentState();
            if (currentState == 0 || currentState == 7) {
                this.videoView.startPlayLogic();
                g1.d("xxxxxxxx", "detailVIdeo PlayVideo");
            }
            showVideo();
        }
        this.statubarH = getStatusBarHeight(getActivity());
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.statuHVIew.getLayoutParams();
        layoutParams.height = this.statubarH;
        this.statuHVIew.setLayoutParams(layoutParams);
        uptateUi();
        updateButn();
    }

    @Background
    void changeGameFollow(int type) {
        String str;
        ResultMainBean resultMainBeanJ1;
        if (this.modleFourBeanShow != null && m.j(this.context)) {
            UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
            this.accountBean = accountData;
            int uid = accountData != null ? accountData.getUid() : 0;
            try {
                PackageInfo packageInfo = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0);
                str = packageInfo.versionCode + "_" + packageInfo.versionName;
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
                str = "";
            }
            RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
            requestdetialFolowAndBeSpeak.setApp_ver(str);
            requestdetialFolowAndBeSpeak.setGame_id(this.modleFourBeanShow.getCrc_sign_id());
            requestdetialFolowAndBeSpeak.setUid(uid);
            requestdetialFolowAndBeSpeak.setMobile(this.accountBean.getMobile());
            CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this.context).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
            if (type == 1) {
                resultMainBeanJ1 = this.rpcClient.j1(detialFollowAnd);
            } else if (type == 2) {
                resultMainBeanJ1 = this.rpcClient.n(detialFollowAnd);
            } else if (type != 3) {
                resultMainBeanJ1 = type != 4 ? null : this.rpcClient.M0(detialFollowAnd);
            } else {
                resultMainBeanJ1 = this.rpcClient.g(detialFollowAnd);
            }
            if (resultMainBeanJ1 != null) {
                updateTitleButn(resultMainBeanJ1, type);
            }
        }
    }

    public void clearVideo() {
        g1.d("sssssssscc", "clearVideo");
        FulllScreenVideoView fulllScreenVideoView = this.videoView;
        if (fulllScreenVideoView != null) {
            fulllScreenVideoView.release();
        }
        MediaController mediaController = this.controller;
        if (mediaController != null) {
            mediaController.removeAllViews();
        }
    }

    @Click
    void coverText() {
        this.videoView.clickPlay();
    }

    @UiThread(delay = 1000)
    void delayCheckplay() {
        int currentState = this.videoView.getCurrentState();
        if (currentState == 0 || currentState == 7) {
            this.videoView.startPlayLogic();
        }
    }

    @Click
    void gameInfoLayout() {
        try {
            GamedetailVideoMainActivity gamedetailVideoMainActivity = this.context;
            if (GamedetailVideoMainActivity.hasInAnim) {
                return;
            }
            gamedetailVideoMainActivity.viewPager.setCurrentItem(1);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void instalButtomButn() {
        boolean z10;
        int game_book = this.modleFourBeanShow.getGame_book();
        if (this.modleFourBeanShow.getBespeak_switch() == 1 && game_book != 1 && this.modleFourBeanShow.getDown_status() == 2) {
            if (IntentUtil.getInstance().goLoginNetGame(this.context) || this.modleFourBeanShow.getGame_book() == 1) {
                return;
            }
            changeGameFollow(4);
            return;
        }
        if (("" + this.modleFourBeanShow.getPlugin_num()).equals("" + ConstantIntEnum.H5.value())) {
            IntentUtil.getInstance().goShareWebActivity(this.context, this.modleFourBeanShow.getDown_url_remote());
            UtilsMy.j3(this.downloadTask, this.context);
        }
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (this.downloadTask != null && UtilsMy.x0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id()) > 0) {
            status = 43;
        }
        GamedetialModleFourBean gamedetialModleFourBean = this.modleFourBeanShow;
        if (gamedetialModleFourBean != null && gamedetialModleFourBean.getMod_info() != null) {
            List<DownloadTask> listH = this.modleFourBeanShow.getMod_info() != null ? f.M().H(this.modleFourBeanShow.getMod_info().getMain_game_id(), this.modleFourBeanShow.getMod_info().getMod_game_id()) : f.M().I(this.modleFourBeanShow.getPackageName());
            if (listH == null || listH.size() <= 0) {
                this.downloadTask = null;
            } else {
                boolean z11 = false;
                loop0: while (true) {
                    z10 = false;
                    for (DownloadTask downloadTask2 : listH) {
                        if (Dtype.MOD.name().equals(downloadTask2.getFileType())) {
                            z11 = com.join.mgps.va.overmind.i.q().K(downloadTask2.getPackageName()) && downloadTask2.getStatus() == 5;
                        } else if (g.t0(getContext()).e(getContext(), downloadTask2.getPackageName()) && downloadTask2.getStatus() == 5) {
                            z10 = true;
                        }
                    }
                    break loop0;
                }
                if (z11 && z10) {
                    this.downloadTask = f.M().G(this.gameId);
                } else if (z11) {
                    if (this.modleFourBeanShow.getMod_info() != null) {
                        this.downloadTask = f.M().G(this.modleFourBeanShow.getMod_info().getMod_game_id());
                    }
                } else if (z10) {
                    this.downloadTask = f.M().G(this.gameId);
                } else {
                    if (this.modleFourBeanShow.getMod_info() != null) {
                        this.downloadTask = f.M().G(this.modleFourBeanShow.getMod_info().getMod_game_id());
                    }
                    if (this.downloadTask == null) {
                        this.downloadTask = f.M().G(this.gameId);
                    }
                }
            }
        }
        DownloadTask downloadTask3 = this.downloadTask;
        if (downloadTask3 == null) {
            this.extBean.setFrom(PointType.ANTI_SPAM);
            GamedetialModleFourBean gamedetialModleFourBean2 = this.modleFourBeanShow;
            if (gamedetialModleFourBean2 != null) {
                gamedetialModleFourBean2.setExt(JsonMapper.getInstance().toJson(this.extBean));
            }
            UtilsMy.d1(this.context, this.modleFourBeanShow);
            return;
        }
        if (downloadTask3 != null && (status == 2 || status == 10)) {
            com.php25.PDownload.d.i(downloadTask3);
        } else {
            if (status == 12 || status == 27) {
                return;
            }
            if (status == 13) {
                com.php25.PDownload.d.l(this.context, downloadTask3);
                return;
            }
            if (status == 5) {
                UtilsMy.p4(this.context, downloadTask3, "2");
            } else if (status == 42) {
                downloadTask3.setVer(this.modleFourBeanShow.getVer());
                this.downloadTask.setVer_name(this.modleFourBeanShow.getVer_name());
                this.downloadTask.setUrl(this.modleFourBeanShow.getDown_url_remote());
                this.downloadTask.setCfg_ver(this.modleFourBeanShow.getCfg_ver());
                this.downloadTask.setCfg_ver_name(this.modleFourBeanShow.getCfg_ver_name());
                this.downloadTask.setCfg_down_url(this.modleFourBeanShow.getCfg_down_url());
                this.downloadTask.setPay_game_amount(this.modleFourBeanShow.getPay_tag_info() != null ? this.modleFourBeanShow.getPay_tag_info().getPay_game_amount() : 0);
                DownloadTask downloadTask4 = this.downloadTask;
                Where where = Where.detail;
                downloadTask4.setKeyword(where.name());
                this.downloadTask.setKeyword(where.name());
                DownloadTask downloadTask5 = this.downloadTask;
                UtilsMy.W4(downloadTask5, downloadTask5.getCrc_link_type_val());
                UtilsMy.O4(this.context, this.downloadTask);
            } else if (status == 9) {
                if (this.modleFourBeanShow.getMod_info() == null) {
                    if (!m.j(this.context)) {
                        a3.b(this.context).d("无网络连接");
                        return;
                    }
                    if (this.modleFourBeanShow.getGame_detailed() != null && t2.i(this.modleFourBeanShow.getGame_detailed().getTpl_two_qq())) {
                        h0.h0(this.context).d0(this.context, this.modleFourBeanShow.getGame_detailed().getTpl_two_qq_key(), this.modleFourBeanShow.getGame_detailed().getAd_pic_qq(), this.modleFourBeanShow.getGame_detailed().getTpl_two_qq());
                    }
                    int downloadType = this.downloadTask.getDownloadType();
                    if (downloadType == 0 || downloadType == 1) {
                        if (this.downloadTask.getCrc_link_type_val() == null || this.downloadTask.getCrc_link_type_val().equals("")) {
                            return;
                        }
                        addFrom(this.downloadTask);
                        if (UtilsMy.o1(this.context, this.downloadTask)) {
                            return;
                        }
                        if (this.modleFourBeanShow.getDown_status() == 5) {
                            UtilsMy.l1(this.context, this.downloadTask);
                            return;
                        }
                        com.php25.PDownload.d.b(this.downloadTask);
                        this.downloadTask.setVer(this.modleFourBeanShow.getVer());
                        this.downloadTask.setVer_name(this.modleFourBeanShow.getVer_name());
                        this.downloadTask.setUrl(this.modleFourBeanShow.getDown_url_remote());
                        this.downloadTask.setCfg_ver(this.modleFourBeanShow.getCfg_ver());
                        this.downloadTask.setCfg_ver_name(this.modleFourBeanShow.getCfg_ver_name());
                        this.downloadTask.setCfg_down_url(this.modleFourBeanShow.getCfg_down_url());
                        this.downloadTask.setPay_game_amount(this.modleFourBeanShow.getPay_tag_info() != null ? this.modleFourBeanShow.getPay_tag_info().getPay_game_amount() : 0);
                        this.downloadTask.setKeyword(Where.detail.name());
                        DownloadTask downloadTask6 = this.downloadTask;
                        UtilsMy.W4(downloadTask6, downloadTask6.getCrc_link_type_val());
                        if (UtilsMy.z0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id()) > 0) {
                            ExtBean extBean = this.extBean;
                            if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
                                if (!UtilsMy.o1(this.context, this.downloadTask)) {
                                    if (this.modleFourBeanShow.getDown_status() == 5) {
                                        UtilsMy.l1(this.context, this.downloadTask);
                                    } else {
                                        UtilsMy.z4(this.context, this.gameId);
                                    }
                                }
                                onDetailDownload();
                            } else {
                                UtilsMy.A4(this.context, this.gameId, this.extBean.getFrom_id());
                            }
                        } else {
                            UtilsMy.D1(this.downloadTask, this.modleFourBeanShow);
                            if (!UtilsMy.o1(this.context, this.downloadTask)) {
                                if (this.modleFourBeanShow.getDown_status() == 5) {
                                    UtilsMy.l1(this.context, this.downloadTask);
                                } else {
                                    UtilsMy.U0(this.context, this.downloadTask, this.modleFourBeanShow.getTp_down_url(), this.modleFourBeanShow.getOther_down_switch(), this.modleFourBeanShow.getCdn_down_switch());
                                }
                            }
                            onDetailDownload();
                        }
                    } else if (downloadType == 2) {
                        UtilsMy.R4(this.downloadTask);
                    }
                }
            } else if (11 == status) {
                UtilsMy.w4(downloadTask3, this.context);
            } else if (43 == status) {
                downloadTask3.setKeyword(Where.detail.name());
                if (this.modleFourBeanShow != null) {
                    addFrom(this.downloadTask);
                    if (this.modleFourBeanShow.getGame_detailed() != null && t2.i(this.modleFourBeanShow.getGame_detailed().getTpl_two_qq())) {
                        h0.h0(this.context).d0(this.context, this.modleFourBeanShow.getGame_detailed().getTpl_two_qq_key(), this.modleFourBeanShow.getGame_detailed().getAd_pic_qq(), this.modleFourBeanShow.getGame_detailed().getTpl_two_qq());
                    }
                    if (UtilsMy.z0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id()) > 0) {
                        ExtBean extBean2 = this.extBean;
                        if (extBean2 == null || !"checkgame".equals(extBean2.getFrom())) {
                            if (!UtilsMy.o1(this.context, this.downloadTask)) {
                                if (this.modleFourBeanShow.getDown_status() == 5) {
                                    UtilsMy.l1(this.context, this.downloadTask);
                                } else {
                                    UtilsMy.z4(this.context, this.gameId);
                                }
                            }
                            onDetailDownload();
                        } else {
                            UtilsMy.A4(this.context, this.gameId, this.extBean.getFrom_id());
                        }
                    } else {
                        UtilsMy.D1(this.downloadTask, this.modleFourBeanShow);
                        if (!UtilsMy.o1(this.context, this.downloadTask)) {
                            if (this.modleFourBeanShow.getDown_status() == 5) {
                                UtilsMy.l1(this.context, this.downloadTask);
                            } else {
                                UtilsMy.U0(this.context, this.downloadTask, this.modleFourBeanShow.getTp_down_url(), this.modleFourBeanShow.getOther_down_switch(), this.modleFourBeanShow.getCdn_down_switch());
                            }
                        }
                    }
                }
            } else if (48 != status) {
                t.l(this.context).R1(Event.gamePageDownload_type, new Ext().setGameId(this.gameId).setPosition("1"));
                this.downloadTask.setKeyword(Where.detail.name());
                if (this.modleFourBeanShow != null) {
                    addFrom(this.downloadTask);
                    if (this.modleFourBeanShow.getGame_detailed() != null && t2.i(this.modleFourBeanShow.getGame_detailed().getTpl_two_qq())) {
                        h0.h0(this.context).d0(this.context, this.modleFourBeanShow.getGame_detailed().getTpl_two_qq_key(), this.modleFourBeanShow.getGame_detailed().getAd_pic_qq(), this.modleFourBeanShow.getGame_detailed().getTpl_two_qq());
                    }
                    if (UtilsMy.z0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id()) > 0) {
                        ExtBean extBean3 = this.extBean;
                        if (extBean3 == null || !"checkgame".equals(extBean3.getFrom())) {
                            if (!UtilsMy.o1(this.context, this.downloadTask)) {
                                if (this.modleFourBeanShow.getDown_status() == 5) {
                                    UtilsMy.l1(this.context, this.downloadTask);
                                } else {
                                    UtilsMy.z4(this.context, this.gameId);
                                }
                            }
                            onDetailDownload();
                        } else {
                            UtilsMy.A4(this.context, this.gameId, this.extBean.getFrom_id());
                        }
                    } else {
                        UtilsMy.D1(this.downloadTask, this.modleFourBeanShow);
                        if (!UtilsMy.o1(this.context, this.downloadTask)) {
                            if (this.modleFourBeanShow.getDown_status() == 5) {
                                UtilsMy.l1(this.context, this.downloadTask);
                            } else {
                                UtilsMy.U0(this.context, this.downloadTask, this.modleFourBeanShow.getTp_down_url(), this.modleFourBeanShow.getOther_down_switch(), this.modleFourBeanShow.getCdn_down_switch());
                            }
                        }
                    }
                }
            }
        }
        updateButn();
    }

    @Click
    void iv_back() {
        getActivity().finish();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        FulllScreenVideoView fulllScreenVideoView = this.videoView;
        if (fulllScreenVideoView != null) {
            fulllScreenVideoView.release();
        }
        g1.d("ssssssssx", "onDestroy");
        j0.a().e(this);
        MediaController mediaController = this.controller;
        if (mediaController != null) {
            mediaController.removeAllViews();
        }
        com.papa.gsyvideoplayer.d.j0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        g1.d("ssssssss", "onDestroyView");
        FulllScreenVideoView fulllScreenVideoView = this.videoView;
        if (fulllScreenVideoView != null) {
            fulllScreenVideoView.release();
        }
        super.onDestroyView();
    }

    void onDetailDownload() {
        ExtBean extBean = this.extBean;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || !this.extBean.getFrom().equals("downloadCenter")) {
            return;
        }
        MobclickAgentKt.onEvent(this.context, "detailDownload4.2.0.6");
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00bd  */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        if (downloadTaskA != null && this.downloadTask == null) {
            this.downloadTask = f.M().G(downloadTaskA.getCrc_link_type_val());
        }
        if (downloadTaskEvent.c() == 8) {
            DownloadTask downloadTask = this.downloadTask;
            if (downloadTask == null || downloadTask.getPath() == null) {
                return;
            }
            UtilsMy.U4(this.downloadTask);
            this.butnProgressBar.setProgress((int) this.downloadTask.getProgress());
            this.percent.setText(this.downloadTask.getProgress() + "%");
            return;
        }
        if (downloadTaskA != null && this.downloadTask != null && downloadTaskA.getCrc_link_type_val().equals(this.downloadTask.getCrc_link_type_val())) {
            this.downloadTask = downloadTaskA;
            int iC = downloadTaskEvent.c();
            if (iC == 5) {
                if (this.downloadTask != null && downloadTaskA.getCrc_link_type_val().equals(this.downloadTask.getCrc_link_type_val())) {
                    this.downloadTask = downloadTaskA;
                }
            } else {
                if (iC == 8) {
                    DownloadTask downloadTask2 = this.downloadTask;
                    if (downloadTask2 == null || downloadTask2.getPath() == null) {
                        return;
                    }
                    UtilsMy.U4(this.downloadTask);
                    this.butnProgressBar.setProgress((int) this.downloadTask.getProgress());
                    this.percent.setText(this.downloadTask.getProgress() + "%");
                    updateProgress(this.downloadTask);
                    return;
                }
                if (iC == 11 || iC == 48) {
                    if (this.downloadTask != null) {
                        this.downloadTask = downloadTaskA;
                    }
                }
            }
        }
        updateButn();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        pauseVideo();
        g1.d("xxxxxxxxxxxx", "onPause");
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        playVideo();
        g1.d("xxxxxxxxxxxx", "onResume");
        updatePlayImg();
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void pauseVideo() {
        try {
            int currentState = this.videoView.getCurrentState();
            if (currentState == 2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("currentState=");
                sb2.append(currentState);
                sb2.append(" -->performClick");
                this.videoView.onVideoPause();
            }
            updatePlayImg();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void playVideo() {
        int currentState;
        try {
            if (this.context.getViewpagerCurrentPage() == 0 && ((currentState = this.videoView.getCurrentState()) == 0 || currentState == 7 || currentState == 5)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("currentState=");
                sb2.append(currentState);
                sb2.append(" -->performClick");
                this.videoView.startPlayLogic();
            }
            updatePlayImg();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void progress_layout() {
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.getStatus() == 2) {
            updateButn();
            com.php25.PDownload.d.i(this.downloadTask);
        } else if (this.downloadTask.getStatus() == 3 || this.downloadTask.getStatus() == 6) {
            updateButn();
            com.php25.PDownload.d.c(this.downloadTask, this.context);
            onDetailDownload();
        }
    }

    @Override // com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void resumVideo() {
        int currentState;
        if (this.context.getViewpagerCurrentPage() == 0 && ((currentState = this.videoView.getCurrentState()) == 0 || currentState == 7 || currentState == 5)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("currentState=");
            sb2.append(currentState);
            sb2.append(" -->performClick");
            this.videoView.startPlayLogic();
        }
        updatePlayImg();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
    }

    @UiThread
    void showInstallButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.modleFourBeanShow;
        if (gamedetialModleFourBean == null || TextUtils.isEmpty(gamedetialModleFourBean.getCrc_sign_id())) {
            return;
        }
        this.progressbarLayout.setVisibility(8);
        this.instalbutnLayout.setVisibility(0);
        this.instalButtomButn.setVisibility(0);
    }

    @UiThread
    void showProgress() {
        this.instalbutnLayout.setVisibility(8);
        this.instalButtomButn.setVisibility(8);
        this.progressbarLayout.setVisibility(0);
    }

    void showVideo() {
        FulllScreenVideoView fulllScreenVideoView = this.videoView;
        if (fulllScreenVideoView == null) {
            return;
        }
        fulllScreenVideoView.setVisibility(0);
        playVideo();
    }

    @Click
    void sound() {
        if (this.nowIsNoSound) {
            this.sound.setImageResource(R.drawable.gamedetail_video_opensound);
            this.nowIsNoSound = false;
        } else {
            this.sound.setImageResource(R.drawable.gamedetail_video_nosound);
            this.nowIsNoSound = true;
        }
        this.videoView.setMute(this.nowIsNoSound);
        this.prefDef.soundnowIsNoSound().g(Boolean.valueOf(this.nowIsNoSound));
    }

    @UiThread
    void updateButn() {
        GamedetialModleFourBean gamedetialModleFourBean = this.modleFourBeanShow;
        if (gamedetialModleFourBean == null || this.downloadTask == null) {
            return;
        }
        if (gamedetialModleFourBean.getDel_tag() == 1 && !this.modleFourBeanShow.getCompany_name().equals("SNK")) {
            this.instalButtomButn.setEnabled(false);
            this.instalButtomButn.setBackgroundResource(R.drawable.detial_simple_grey_selecter);
            this.instalButtomButn.setText("已下架");
            return;
        }
        UtilsMy.A3(this.modleFourBeanShow.getSp_tag_info(), this.instalbutnLayout, this.downloadTask);
        if (this.modleFourBeanShow.getPlugin_num() != null) {
            if (this.modleFourBeanShow.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                this.instalButtomButn.setBackgroundResource(R.drawable.detial_video_install_selecter);
                this.instalButtomButn.setText("开始");
                showInstallButn();
                return;
            }
        }
        this.instalButtomButn.setBackgroundResource(R.drawable.detial_video_install_selecter);
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.x0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 9) {
            showInstallButn();
            this.instalButtomButn.setText("更新");
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
            this.butn_showdownload.setImageResource(R.drawable.detial_video_install_selecter);
            return;
        }
        if (status == 12) {
            showInstallButn();
            this.instalButtomButn.setText("解压中..");
            return;
        }
        if (status == 13) {
            showInstallButn();
            this.instalButtomButn.setText("解压");
            this.butn_showdownload.setImageResource(R.drawable.detial_video_install_selecter);
            return;
        }
        if (status == 11) {
            showInstallButn();
            this.instalButtomButn.setText("立即安装");
            this.instalButtomButn.setBackgroundResource(R.drawable.detial_simple_install_selecter);
            return;
        }
        if (status == 5 || status == 42) {
            showInstallButn();
            this.instalButtomButn.setBackgroundResource(R.drawable.detial_video_install_selecter);
            this.instalButtomButn.setText(this.context.getResources().getString(R.string.download_status_finished));
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 2) {
            showProgress();
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_pause);
            UtilsMy.U4(this.downloadTask);
            this.butnProgressBar.setProgress((int) this.downloadTask.getProgress());
            this.percent.setText(this.downloadTask.getProgress() + "%");
            return;
        }
        if (status == 3 || status == 6 || status == 27) {
            showProgress();
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
            UtilsMy.U4(this.downloadTask);
            this.butnProgressBar.setProgress((int) this.downloadTask.getProgress());
            this.percent.setText(this.downloadTask.getProgress() + "%");
            return;
        }
        if (status == 10) {
            showInstallButn();
            this.instalButtomButn.setText("等待\u3000" + this.modleFourBeanShow.getSize() + "M");
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
            return;
        }
        if (status == 1) {
            return;
        }
        if (status == 43) {
            showInstallButn();
            if (UtilsMy.x0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id()) > 0) {
                this.instalButtomButn.setText(this.context.getResources().getString(R.string.pay_game_amount, this.modleFourBeanShow.getPay_tag_info().getPayGameAmount()));
            } else {
                this.instalButtomButn.setText("立即获取");
            }
            this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
            GamedetialModleFourBean gamedetialModleFourBean2 = this.modleFourBeanShow;
            if (gamedetialModleFourBean2 != null) {
                if (gamedetialModleFourBean2.getBespeak_switch() != 1 || (this.modleFourBeanShow.getDown_status() != 2 && this.modleFourBeanShow.getDown_status() != 6)) {
                    UtilsMy.x0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id());
                    UtilsMy.F3(this.instalButtomButn, this.modleFourBeanShow);
                    return;
                } else {
                    if (this.modleFourBeanShow.getGame_book() != 1) {
                        this.instalButtomButn.setText("预约");
                        return;
                    }
                    this.instalButtomButn.setText("已预约");
                    UtilsMy.x0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id());
                    UtilsMy.F3(this.instalButtomButn, this.modleFourBeanShow);
                    return;
                }
            }
            return;
        }
        if (status == 48) {
            showInstallButn();
            this.instalButtomButn.setText(this.context.getResources().getString(R.string.download_status_installing));
            return;
        }
        showInstallButn();
        if (UtilsMy.x0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id()) > 0) {
            this.instalButtomButn.setText(this.context.getResources().getString(R.string.pay_game_amount, this.modleFourBeanShow.getPay_tag_info().getPayGameAmount()));
        } else {
            this.instalButtomButn.setText("立即获取");
        }
        this.butn_showdownload.setImageResource(R.drawable.detail_comment_download_continue);
        GamedetialModleFourBean gamedetialModleFourBean3 = this.modleFourBeanShow;
        if (gamedetialModleFourBean3 != null) {
            if (gamedetialModleFourBean3.getBespeak_switch() != 1 || this.modleFourBeanShow.getDown_status() != 2) {
                UtilsMy.x0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id());
                UtilsMy.F3(this.instalButtomButn, this.modleFourBeanShow);
            } else {
                if (this.modleFourBeanShow.getGame_book() != 1) {
                    this.instalButtomButn.setText("预约");
                    return;
                }
                this.instalButtomButn.setText("已预约");
                UtilsMy.x0(this.modleFourBeanShow.getPay_tag_info(), this.modleFourBeanShow.getCrc_sign_id());
                UtilsMy.F3(this.instalButtomButn, this.modleFourBeanShow);
            }
        }
    }

    @UiThread(delay = 300)
    void updatePlayImg() {
    }

    void updateProgress(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        ProgressBar progressBar = this.butnProgressBar;
        if (progressBar instanceof DownloadProgressBar) {
            ((DownloadProgressBar) progressBar).update(downloadTask.getCrc_link_type_val(), 1);
        }
    }

    @UiThread
    void updateTitleButn(ResultMainBean result, int type) {
        if (this.modleFourBeanShow != null && result.getFlag() == 1) {
            if (type == 1) {
                this.modleFourBeanShow.setGame_follow(0);
            } else if (type == 2) {
                this.modleFourBeanShow.setGame_follow(1);
                a3.b(this.context).d("收藏成功");
            } else if (type == 3) {
                this.modleFourBeanShow.setGame_book(0);
            } else if (type == 4) {
                this.modleFourBeanShow.setGame_book(1);
                Intent intent = new Intent("com.broadcast.bespeak.sussess");
                intent.putExtra("gameid", this.modleFourBeanShow.getCrc_sign_id());
                this.context.sendBroadcast(intent);
                h0.h0(this.context).O(this.context, 1, new com.join.mgps.callbacks.d() { // from class: com.join.mgps.activity.gamedetail.GameDetailVideoFragment.1
                    @Override // com.join.mgps.callbacks.d
                    public void onClickCancle() {
                    }

                    @Override // com.join.mgps.callbacks.d
                    public void onClickOk() {
                    }
                }).show();
            }
            updateButn();
        }
    }
}
