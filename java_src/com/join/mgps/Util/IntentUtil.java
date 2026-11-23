package com.join.mgps.Util;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.MApplication;
import com.bykv.vk.component.ttvideo.player.C;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.gson.Gson;
import com.haima.hmcp.Constants;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.EverdayNewGameActivity;
import com.join.kotlin.autocode.dailyfind.activity.DailyFindActivity;
import com.join.kotlin.base.dialog.DialogActivityManager;
import com.join.kotlin.base.dialog.callback.IDialogActivityCallback;
import com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity;
import com.join.kotlin.ui.findgame.CategoryDetailListActivity;
import com.join.kotlin.ui.gameexpress.GameExpressActivity;
import com.join.kotlin.ui.modleregin.BtReginActivity;
import com.join.kotlin.ui.modleregin.MustPalyReginActivity;
import com.join.kotlin.ui.nostalgia.NostalgiaGameActivity;
import com.join.kotlin.zone.CommonZoneActivity;
import com.join.mgps.activity.AccountCenterNewActivity_;
import com.join.mgps.activity.BuildQRCodeActivity_;
import com.join.mgps.activity.ClassifyAndRankActivity_;
import com.join.mgps.activity.CloudGameZoneActivity_;
import com.join.mgps.activity.CollectionCommentActivity_;
import com.join.mgps.activity.CollectionModuleFourActivity_;
import com.join.mgps.activity.CollectionModuleSevenActivity_;
import com.join.mgps.activity.CollectionModuleSixActivity_;
import com.join.mgps.activity.CollectionModuleThreeActivity_;
import com.join.mgps.activity.CollectionModuleTwoActivity_;
import com.join.mgps.activity.CommentDetailActivity_;
import com.join.mgps.activity.CommentSelfListActivityv2_;
import com.join.mgps.activity.DocumentManageActivity_;
import com.join.mgps.activity.DownloadSettingActivity_;
import com.join.mgps.activity.EndGameActivity_;
import com.join.mgps.activity.EndGameDetailActivity_;
import com.join.mgps.activity.FaceTransferHomePageActivity_;
import com.join.mgps.activity.ForumActivity_;
import com.join.mgps.activity.ForumGroupMemberActivity_;
import com.join.mgps.activity.ForumIndexActivity_;
import com.join.mgps.activity.ForumMyActivity_;
import com.join.mgps.activity.ForumMyPostsActivity_;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.join.mgps.activity.ForumProfileCommentActivity_;
import com.join.mgps.activity.ForumProfileFavoritesActivity_;
import com.join.mgps.activity.FragmentPageActivity_;
import com.join.mgps.activity.FullShareWebActivity_;
import com.join.mgps.activity.GameAndProfileActivity_;
import com.join.mgps.activity.GameDetailActivity_;
import com.join.mgps.activity.GameDiscoverActivity_;
import com.join.mgps.activity.GameInformationActivityV2_;
import com.join.mgps.activity.GameMainActivity3_;
import com.join.mgps.activity.GameMainActivity4_;
import com.join.mgps.activity.GamePaiWeiActivty_;
import com.join.mgps.activity.HandShankNoActivity_;
import com.join.mgps.activity.HandShankOverActivity_;
import com.join.mgps.activity.HandShankYesActivity_;
import com.join.mgps.activity.IntroductionActivity_;
import com.join.mgps.activity.LargeSingePlayerGameActivity_;
import com.join.mgps.activity.MGGameDetailActivity_;
import com.join.mgps.activity.MGInformationActivity_;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.activity.MGPapaAboutActivity_;
import com.join.mgps.activity.MYAccountDetialActivity_;
import com.join.mgps.activity.MyGameManagerActivity_;
import com.join.mgps.activity.NewArenaMainActivty_;
import com.join.mgps.activity.OnlineGameInstallCheckActivity_;
import com.join.mgps.activity.PAPayCenterActivity_;
import com.join.mgps.activity.PaPaStandAloneV2Activity_;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.join.mgps.activity.QuarkLoadingActivity_;
import com.join.mgps.activity.SearchHintActivity_;
import com.join.mgps.activity.SearchListActivity1_;
import com.join.mgps.activity.ShareWebActivity_;
import com.join.mgps.activity.SimulatorAreaActivity_;
import com.join.mgps.activity.SimulatorFastEntryActivity_;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.activity.VoucherCodesBoxActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity_;
import com.join.mgps.activity.hideapp.HideAppHomeActivity_;
import com.join.mgps.activity.label.MainLabelActivity_;
import com.join.mgps.activity.login.ChangeAccountNickNameActivity_;
import com.join.mgps.activity.login.LoginCfgsBean;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.activity.message.FeedBackMessageDetailActivity_;
import com.join.mgps.activity.message.MessageMainActivity_;
import com.join.mgps.activity.vipzone.VipCenterActivity_;
import com.join.mgps.activity.vipzone.VipSpecialZoneActivity_;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.adapter.FullScreenActivity_;
import com.join.mgps.db.tables.HandShankTable;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.IntroductionCommentDetailParamsBean;
import com.join.mgps.dto.LoginParams;
import com.join.mgps.dto.ReportIssueBean;
import com.join.mgps.dto.SScrollingTxtBeanV2;
import com.join.mgps.dto.WxMiniProgramBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.ext.ToastManager;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class IntentUtil {
    private static IntentUtil ourInstance;
    private DownloadTask downloadTask;
    private String gameid;
    private Intent intent2;
    private Activity splashActivity;

    private IntentUtil() {
    }

    private UserInfo accountBean(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void checkAndDownloadApk(Context context, DownloadTask downloadTask) {
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (status != 0) {
            if (status == 13) {
                com.php25.PDownload.d.l(context, downloadTask);
                return;
            }
            if (status != 2) {
                if (status != 3) {
                    if (status == 5) {
                        UtilsMy.k4(context, downloadTask);
                        return;
                    }
                    if (status != 6) {
                        if (status != 7) {
                            if (status == 42) {
                                if (com.join.android.app.common.utils.m.j(context)) {
                                    UtilsMy.O4(context, downloadTask);
                                    return;
                                } else {
                                    a3.b(context).d("无网络连接");
                                    return;
                                }
                            }
                            if (status != 43) {
                                switch (status) {
                                    case 9:
                                        if (!com.join.android.app.common.utils.m.j(context)) {
                                            a3.b(context).d("无网络连接");
                                        } else {
                                            UtilsMy.X2(context, downloadTask);
                                        }
                                        break;
                                    case 11:
                                        UtilsMy.w4(downloadTask, context);
                                        break;
                                }
                                return;
                            }
                        }
                    }
                }
                com.php25.PDownload.d.c(downloadTask, context);
                return;
            }
            if (com.join.android.app.common.utils.m.j(context)) {
                return;
            }
            a3.b(context).d("应用正在下载~");
            return;
        }
        UtilsMy.l1(context, downloadTask);
    }

    public static IntentUtil getInstance() {
        if (ourInstance == null) {
            ourInstance = new IntentUtil();
        }
        return ourInstance;
    }

    private void showUserNotLogin(Context ctx) {
        a3.b(ctx).d(ctx.getResources().getString(R.string.forum_user_not_login));
    }

    public void checkAndStartMain(Context context, IntentDateBean intentDateBean, int flags) {
        if (MGMainActivity.isCreated) {
            intentActivity(context, intentDateBean);
            return;
        }
        Intent intent = new Intent();
        intent.setClass(context, MGMainActivity_.class);
        intent.putExtra("intentActivityBean", intentDateBean);
        intent.setFlags(flags);
        context.startActivity(intent);
    }

    public void checkRealNameAndIntent(Context context, UserInfo accountBean, String from, String gameid) {
        if (!t2.i(gameid) || startGameCheckRealnameHasIntent(context, accountBean, from, gameid)) {
            return;
        }
        UtilsMy.p4(context, q5.f.M().G(gameid), "login");
    }

    public Activity getSplashActivity() {
        return this.splashActivity;
    }

    public void goAccountCenterActivity(Context context) {
        AccountCenterNewActivity_.intent(context).start();
    }

    public void goAccountUpgradeActivity(Context ctx) {
        goMyAccountLoginActivity(ctx);
    }

    public void goBrowser(Context context, String url) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(url));
        context.startActivity(intent);
    }

    public void goBuildQRCodeActivity(Context ctx) {
        BuildQRCodeActivity_.intent(ctx).start();
    }

    public void goChangeNickname(Context context) {
        ChangeAccountNickNameActivity_.intent(context).start();
    }

    public void goCheckIn(Context ctx) {
        if (goLoginInteractive(ctx)) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setObject("签到");
        intentDateBean.setLink_type_val(com.join.mgps.rpc.h.f72330d1);
        getInstance().intentActivity(ctx, intentDateBean);
    }

    public void goCodesBoxActivity(Context ctx) {
        UserInfo userInfoAccountBean = accountBean(ctx);
        if (goLoginNetGame(ctx)) {
            return;
        }
        VoucherCodesBoxActivity_.intent(ctx).b(0).a(userInfoAccountBean.getUid()).start();
    }

    public void goCollectionCommentActivity(Context context, String id2) {
        CollectionCommentActivity_.intent(context).b(id2).start();
    }

    public void goColloctionList(Context context, String tpl_type, String collection_id) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(2);
        intentDateBean.setTpl_type(tpl_type);
        intentDateBean.setCrc_link_type_val(collection_id);
        getInstance().intentActivity(context, intentDateBean);
    }

    public void goCommentDetailActivity(Context context, String commentId, String gameId, String commentScoreSwitch) {
        CommentDetailActivity_.intent(context).b(commentId).f("green").e(1).d(gameId).c(commentScoreSwitch).start();
    }

    public void goCommentSelfListActivity(Context context) {
        if (goLogin(context)) {
            return;
        }
        CommentSelfListActivityv2_.intent(context).start();
    }

    public void goDownloadCenterActivity(Context ctx) {
        getInstance().goMyGameManagerActivity(ctx);
    }

    public void goDownloadSettingActivity(Context ctx) {
        DownloadSettingActivity_.intent(ctx).start();
    }

    public void goFaceTransferHomePageActivity(Context ctx) {
        FaceTransferHomePageActivity_.intent(ctx).start();
    }

    public void goFeedback(Context ctx) {
        if (goLogin(ctx)) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setObject(ctx.getString(R.string.papa_feedback));
        intentDateBean.setLink_type_val(com.join.mgps.rpc.h.f72397x + "/papa_help");
        getInstance().intentActivity(ctx, intentDateBean);
    }

    public void goFormDetial(Context context, String formID) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(8);
        intentDateBean.setLink_type_val(formID);
        intentActivity(context, intentDateBean);
    }

    public void goForumAndPrfileActivity(int type, Context context) {
        if (goLogin(context)) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) GameAndProfileActivity_.class);
        intent.putExtra("type", type);
        context.startActivity(intent);
    }

    public void goForumFid(Context context, int fid) {
        try {
            ForumBean forumBean = new ForumBean();
            forumBean.setFid(fid);
            r0.r0(context, forumBean);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void goForumGroupActivity(Context context, int fid) {
        ((ForumActivity_.q) ForumActivity_.intent(context).a(fid).flags(67108864)).start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void goForumGroupMemberActivity(Context context, int gid) {
        ((ForumGroupMemberActivity_.i) ForumGroupMemberActivity_.intent(context).a(gid).flags(67108864)).start();
    }

    public void goForumMyDynamicActivity(Context ctx) {
        if (goLogin(ctx)) {
            return;
        }
        ForumMyActivity_.intent(ctx).start();
    }

    public void goForumMyPostsActivity(Context ctx) {
        if (goLoginInteractive(ctx)) {
            return;
        }
        ForumMyPostsActivity_.intent(ctx).start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void goForumPostsTagSelectActivity(Context context, int action, int pid, String selectedTags, int post_type) {
        ((ForumPostsTagSelectActivity_.h) ForumPostsTagSelectActivity_.intent(context).a(action).b(pid).extra("selectedTags", selectedTags)).c(post_type).startForResult(10001);
    }

    public void goForumProfileCommentActivity(Context ctx) {
        if (goLoginInteractive(ctx)) {
            return;
        }
        ForumProfileCommentActivity_.intent(ctx).start();
    }

    public void goForumProfileFavoritesActivity(Context ctx) {
        if (goLogin(ctx)) {
            return;
        }
        ForumProfileFavoritesActivity_.intent(ctx).start();
    }

    public void goForumProfileMessageActivity(Context ctx) {
        if (goLogin(ctx)) {
            return;
        }
        MessageMainActivity_.intent(ctx).start();
    }

    public void goFullScrVideoPlayer(Context context, String cover, String url) {
        FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
        videoInfo.H(url);
        FullScreenActivity_.intent(context).a(videoInfo).start();
    }

    public void goFullShareWebActivity(Context ctx, String url) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(url);
        goFullShareWebActivity(ctx, intentDateBean);
    }

    public void goGameDetialActivity(Context ctx, String gameID, String gameDetialType, int sp, int _from_type) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(gameID);
        intentDateBean.setTpl_type(gameDetialType);
        intentDateBean.setJump_type(sp);
        ExtBean extBean = new ExtBean();
        extBean.set_from_type(_from_type);
        intentDateBean.setExtBean(extBean);
        intentActivity(ctx, intentDateBean);
    }

    public void goGameDetialActivityBYDownloadTAsk(Context ctx, DownloadTask downloadTask) {
        ExtBean extBean;
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(downloadTask.getCrc_link_type_val());
        intentDateBean.setTpl_type(downloadTask.getGame_info_tpl_type());
        intentDateBean.setJump_type(downloadTask.getSp_tpl_two_position());
        ExtBean extBean2 = new ExtBean(downloadTask.get_from_type());
        if (downloadTask.getExt() != null && (extBean = (ExtBean) JsonMapper.getInstance().fromJson(downloadTask.getExt(), ExtBean.class)) != null) {
            extBean2 = extBean;
        }
        intentDateBean.setExtBean(extBean2);
        intentActivity(ctx, intentDateBean);
    }

    public void goGameDetialActivityBYDownloadTaskForFav(Context ctx, DownloadTask downloadTask) {
        ExtBean extBean;
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(downloadTask.getCrc_link_type_val());
        if (downloadTask.getModInfoBean() != null && downloadTask.getModInfoBean().getMain_game_id() != null) {
            intentDateBean.setCrc_link_type_val(downloadTask.getModInfoBean().getMain_game_id());
        }
        intentDateBean.setTpl_type(downloadTask.getGame_info_tpl_type());
        intentDateBean.setJump_type(downloadTask.getSp_tpl_two_position());
        ExtBean extBean2 = new ExtBean(downloadTask.get_from_type());
        if (downloadTask.getExt() != null && (extBean = (ExtBean) JsonMapper.getInstance().fromJson(downloadTask.getExt(), ExtBean.class)) != null) {
            extBean2 = extBean;
        }
        intentDateBean.setExtBean(extBean2);
        intentActivity(ctx, intentDateBean);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void goGameMainActivity(Context context, String gameId, String from) {
        if (new PrefDef_(context).pageVersion().d().intValue() == 2) {
            ((GameMainActivity4_.i0) GameMainActivity4_.intent(context).b(gameId).a(from).flags(67108864)).start();
        } else {
            ((GameMainActivity3_.g0) GameMainActivity3_.intent(context).b(gameId).a(from).flags(67108864)).start();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void goJoystickManager(Context ctx) {
        if (BluetoothAdapter.getDefaultAdapter() == null) {
            ((HandShankOverActivity_.b) HandShankOverActivity_.intent(ctx).flags(67108864)).start();
            return;
        }
        List<HandShankTable> listO = t6.x.p().o();
        if (listO == null || listO.size() == 0) {
            ((HandShankNoActivity_.f) HandShankNoActivity_.intent(ctx).flags(67108864)).start();
        } else {
            ((HandShankYesActivity_.g) HandShankYesActivity_.intent(ctx).flags(67108864)).start();
        }
    }

    public void goLabelGroupActivity(Context context, String fid) {
        getInstance().goShareWebActivity(context, com.join.mgps.rpc.h.f72353k + "/group/posts/forum_tags/tagSquare?fid=" + fid);
    }

    public boolean goLogin(Context context) {
        return goLogin(context, 1);
    }

    public boolean goLoginBattle(Context context) {
        return goLogin(context, 2);
    }

    public boolean goLoginInteractive(Context context) {
        return goLogin(context, 3);
    }

    public boolean goLoginNetGame(Context context) {
        return goLogin(context, 4);
    }

    public void goMGMainActivity2Front(Context context, @NonNull Integer pos, Integer classiFy, Integer classifyPrimaryIndex) {
        Intent intent = new Intent();
        intent.setClass(context, MGMainActivity_.class);
        intent.setFlags(131072);
        Bundle bundle = new Bundle();
        bundle.putInt("MainPos", pos.intValue());
        if (classiFy != null) {
            bundle.putInt("classiFy", classiFy.intValue());
        }
        if (classifyPrimaryIndex != null) {
            bundle.putInt("classifyPrimaryIndex", classifyPrimaryIndex.intValue());
        }
        intent.putExtras(bundle);
        context.startActivity(intent);
    }

    public void goMGSettingActivity(Context ctx) {
        MGPapaAboutActivity_.intent(ctx).start();
    }

    public void goMYAccountDetialActivity(Context ctx) {
        MYAccountDetialActivity_.intent(ctx).start();
    }

    public void goMainLabelActivity(Context context, int tagId) {
        goMainLabelActivity(context, tagId, "", 2);
    }

    public void goModUploadArchiveActivity(Context context, String gameId, String imgPath) {
        Intent intent = new Intent();
        intent.setClassName(context.getPackageName(), ModUploadArchiveActivity.class.getName());
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("uploadGameId", gameId);
        if (!TextUtils.isEmpty(imgPath)) {
            intent.putExtra("imagePath", imgPath);
        }
        context.startActivity(intent);
    }

    public void goMyAccountLoginActivity(Context ctx) {
        goMyAccountLoginActivity(ctx, 0, 2);
    }

    public void goMyAccountLoginActivityNewTask(Context ctx) {
        LoginSplashActivity_.intent(ctx).start();
    }

    public void goMyGameManagerActivity(Context context) {
        if (context instanceof MGMainActivity) {
            ((MGMainActivity) context).setTabSelect(2);
        } else {
            MyGameManagerActivity_.intent(context).start();
        }
    }

    public void goMyVoucherActivity(Context ctx) {
        UserInfo userInfoAccountBean = accountBean(ctx);
        if (goLoginNetGame(ctx)) {
            return;
        }
        VoucherCodesBoxActivity_.intent(ctx).a(userInfoAccountBean.getUid()).b(1).start();
    }

    public void goOnlineGameCheckPage(Context context, String gameId) {
        OnlineGameInstallCheckActivity_.intent(context).a(gameId).start();
    }

    public void goPAPayCenterActivity(Context ctx) {
        if (goLogin(ctx)) {
            return;
        }
        PAPayCenterActivity_.intent(ctx).start();
    }

    public void goQQChart(Context context, String qqNumber) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("mqqwpa://im/chat?chat_type=wpa&uin=" + qqNumber + "&version=1")));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void goQQGroup(Context context, String qqNumber) {
        try {
            joinQQGroup(context, qqNumber);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void goReportFeedbackDetail(Context context, String value) {
        FeedBackMessageDetailActivity_.intent(context).a(value).start();
    }

    public void goSearchHintActivity(Context ctx) {
        SearchHintActivity_.intent(ctx).start();
    }

    public void goSearchListActivity(Context context, String keyword, boolean isNeedRecommend) {
        SearchListActivity1_.intent(context).e(keyword).d(isNeedRecommend).start();
    }

    public void goShareWebActivity(Context ctx, String url) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(url);
        intentActivity(ctx, intentDateBean);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void goShareWebActivityNewTask(Context ctx, IntentDateBean intentDateBean) {
        if (ctx == null) {
            return;
        }
        try {
            if (ctx.getPackageName().equals("com.join.android.app.mgsim.wufun")) {
                ((ShareWebActivity_.g0) ShareWebActivity_.intent(ctx).flags(C.ENCODING_PCM_MU_LAW)).b(intentDateBean).start();
            } else {
                Intent intent = new Intent();
                intent.putExtra("intentdate", intentDateBean);
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                intent.setComponent(new ComponentName("com.join.android.app.mgsim.wufun", "com.join.mgps.activity.ShareWebActivity_"));
                ctx.startActivity(intent);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void goSmashGoldenEgg(Context ctx) {
        if (goLoginInteractive(ctx)) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setObject("砸金蛋");
        intentDateBean.setLink_type_val(com.join.mgps.rpc.h.f72333e1);
        getInstance().intentActivity(ctx, intentDateBean);
    }

    public void goSvip(Context context) {
        getInstance().goShareWebActivity(context, com.join.mgps.rpc.h.f72349j + "/member/vip_view/welcome?go=svip");
    }

    public void goTagGameListActivity(Context context, int id2, String name) {
        TagGameListActivity_.intent(context).b(0).e(id2).d(name).start();
    }

    public void goVip(Context context) {
        getInstance().goShareWebActivity(context, com.join.mgps.rpc.h.f72349j + "/member/vip_view/welcome?go=vip");
    }

    public void goVipCdk(Context context) {
        getInstance().goShareWebActivity(context, com.join.mgps.rpc.h.D + "/member/vip_view/welfare/cdk");
    }

    public void goVipForum(Context context) {
        getInstance().goShareWebActivity(context, com.join.mgps.rpc.h.D + "/member/vip_view/welfare/forum");
    }

    public void goVipMessage(Context context) {
        getInstance().goShareWebActivity(context, com.join.mgps.rpc.h.f72349j + "/member/vip_view/welfare/ad");
    }

    public void goWirelessSettings(Context context) {
        context.startActivity(new Intent("android.settings.SETTINGS"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void intentActivity(Context context, IntentDateBean intentDateBean) {
        String[] strArrSplit;
        String str;
        String str2;
        String str3;
        boolean zEquals;
        int i10;
        g1.h(PapayPayDetialActivity_.INFO_EXTRA, System.currentTimeMillis() + "  intentActivity");
        if (intentDateBean == null) {
        }
        String strValueOf = "";
        int i11 = 0;
        int i12 = 0;
        zBooleanValue = false;
        zBooleanValue = false;
        zBooleanValue = false;
        boolean zBooleanValue = false;
        int iIntValue = 0;
        boolean zBooleanValue2 = false;
        zBooleanValue = false;
        boolean zBooleanValue3 = false;
        switch (intentDateBean.getLink_type()) {
            case 1:
                try {
                    int i13 = t2.h(intentDateBean.getTpl_type()) ? 0 : Integer.parseInt(intentDateBean.getTpl_type());
                    try {
                        if (intentDateBean.getObject() instanceof Boolean) {
                            zBooleanValue2 = ((Boolean) intentDateBean.getObject()).booleanValue();
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    if (intentDateBean.getExtBean() == null) {
                        intentDateBean.setExtBean(new ExtBean());
                    }
                    if (i13 == 1) {
                        if (intentDateBean.getJump_type() != 0) {
                            GamedetailVideoMainActivity_.intent(context).gameId(intentDateBean.getCrc_link_type_val()).autodown(zBooleanValue2).extBean(intentDateBean.getExtBean()).start();
                        } else {
                            MGGameDetailActivity_.intent(context).b(intentDateBean).a(intentDateBean.getExtBean()).start();
                        }
                    } else if (i13 == 3) {
                        GamedetailVideoMainActivity_.intent(context).gameId(intentDateBean.getCrc_link_type_val()).autodown(zBooleanValue2).from(2).extBean(intentDateBean.getExtBean()).start();
                    } else {
                        GamedetailVideoMainActivity_.intent(context).gameId(intentDateBean.getCrc_link_type_val()).autodown(zBooleanValue2).extBean(intentDateBean.getExtBean()).start();
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return;
                }
                break;
            case 2:
                if (intentDateBean.getTpl_type() != null && intentDateBean.getTpl_type().length() > 0) {
                    int i14 = Integer.parseInt(intentDateBean.getTpl_type());
                    if (i14 == 2) {
                        CollectionModuleTwoActivity_.intent(context).a(intentDateBean.getCrc_link_type_val()).b(intentDateBean.getExtBean()).start();
                        break;
                    } else if (i14 == 3) {
                        CollectionModuleThreeActivity_.intent(context).a(intentDateBean.getCrc_link_type_val()).b(intentDateBean.getExtBean()).start();
                        break;
                    } else if (i14 == 4) {
                        CollectionModuleFourActivity_.intent(context).a(intentDateBean.getCrc_link_type_val()).b(intentDateBean.getExtBean()).start();
                        break;
                    } else if (i14 == 6) {
                        CollectionModuleSixActivity_.intent(context).a(intentDateBean.getCrc_link_type_val()).b(intentDateBean.getExtBean()).start();
                        break;
                    }
                }
                break;
            case 3:
                UtilsMy.i2(10);
                UtilsMy.j2(10);
                int jump_type = intentDateBean.getJump_type();
                if (jump_type != 1) {
                    if (jump_type != 2) {
                        if (jump_type != 3) {
                            if (jump_type != 4) {
                                if (jump_type != 6) {
                                    if (jump_type != 7) {
                                        if (jump_type != 8) {
                                            if (jump_type != 35) {
                                                if (jump_type != 84) {
                                                    switch (jump_type) {
                                                        case 10:
                                                            if (!goLogin(context)) {
                                                                PAPayCenterActivity_.intent(context).start();
                                                            }
                                                            break;
                                                        case 11:
                                                            UserInfo userInfoAccountBean = accountBean(context);
                                                            if (!goLoginNetGame(context)) {
                                                                VoucherCodesBoxActivity_.intent(context).b(1).a(userInfoAccountBean.getUid()).start();
                                                            }
                                                            break;
                                                        case 12:
                                                            if (!goLoginNetGame(context)) {
                                                                goCodesBoxActivity(context);
                                                            }
                                                            break;
                                                        case 13:
                                                            ClassifyAndRankActivity_.intent(context).b(3).start();
                                                            break;
                                                        case 14:
                                                            break;
                                                        case 15:
                                                            getInstance().goForumProfileMessageActivity(context);
                                                            break;
                                                        case 16:
                                                            getInstance().goForumMyDynamicActivity(context);
                                                            break;
                                                        case 17:
                                                            getInstance().goForumAndPrfileActivity(0, context);
                                                            break;
                                                        case 18:
                                                            AccountUtil_.getInstance_(context).getAccountData();
                                                            if (!goLogin(context)) {
                                                                getInstance().goPAPayCenterActivity(context);
                                                            }
                                                            break;
                                                        case 19:
                                                            if (!goLogin(context)) {
                                                                getInstance().goShareWebActivity(context, com.join.mgps.rpc.h.f72349j + "/static/vip2020/v2/index.html#/giftCenter");
                                                            }
                                                            break;
                                                        case 20:
                                                            UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
                                                            if (!goLogin(context)) {
                                                                VoucherCodesBoxActivity_.intent(context).b(1).a(accountData.getUid()).start();
                                                            }
                                                            break;
                                                        case 21:
                                                            getInstance().goFaceTransferHomePageActivity(context);
                                                            break;
                                                        case 22:
                                                            getInstance().goJoystickManager(context);
                                                            break;
                                                        case 23:
                                                            getInstance().goShareWebActivity(context, com.join.mgps.rpc.h.f72397x + "/Auxiliary_tool");
                                                            break;
                                                        case 24:
                                                            getInstance().goDownloadSettingActivity(context);
                                                            break;
                                                        case 25:
                                                            getInstance().goFeedback(context);
                                                            break;
                                                        default:
                                                            switch (jump_type) {
                                                                case 29:
                                                                    getInstance().goDownloadSettingActivity(context);
                                                                    break;
                                                                case 30:
                                                                    LargeSingePlayerGameActivity_.intent(context).a(1).start();
                                                                    break;
                                                                case 31:
                                                                    ClassifyAndRankActivity_.intent(context).b(2).d(intentDateBean.getExtBean()).start();
                                                                    break;
                                                                case 32:
                                                                    if (!goLogin(context)) {
                                                                        CommentSelfListActivityv2_.intent(context).start();
                                                                    }
                                                                    break;
                                                                case 33:
                                                                    GameDiscoverActivity_.intent(context).a(intentDateBean.getExtBean()).start();
                                                                    break;
                                                                default:
                                                                    switch (jump_type) {
                                                                        case 47:
                                                                            if (!goLogin(context)) {
                                                                                getInstance().goMYAccountDetialActivity(context);
                                                                            }
                                                                            break;
                                                                        case 48:
                                                                            IntentDateBean intentDateBean2 = new IntentDateBean();
                                                                            intentDateBean2.setLink_type(4);
                                                                            intentDateBean2.setLink_type_val(com.join.mgps.rpc.h.f72382s);
                                                                            ShareWebActivity_.intent(context).b(intentDateBean2).start();
                                                                            break;
                                                                        case 49:
                                                                            getInstance().goSvip(context);
                                                                            break;
                                                                        case 50:
                                                                            getInstance().goMGSettingActivity(context);
                                                                            break;
                                                                        case 51:
                                                                            w.i(context);
                                                                            break;
                                                                        case 52:
                                                                            VipSpecialZoneActivity_.intent(context).boardId(52).start();
                                                                            break;
                                                                        case 53:
                                                                            VipSpecialZoneActivity_.intent(context).boardId(53).start();
                                                                            break;
                                                                        case 54:
                                                                            VipSpecialZoneActivity_.intent(context).boardId(54).start();
                                                                            break;
                                                                        case 55:
                                                                            VipSpecialZoneActivity_.intent(context).boardId(55).start();
                                                                            break;
                                                                        case 56:
                                                                            VipCenterActivity_.intent(context).start();
                                                                            break;
                                                                        case 57:
                                                                            PaPaStandAloneV2Activity_.intent(context).a(intentDateBean.getExtBean()).start();
                                                                            break;
                                                                        case 58:
                                                                            SimulatorAreaActivity_.intent(context).b(UtilsMy.i2(10)).a(UtilsMy.j2(10)).start();
                                                                            break;
                                                                        case 59:
                                                                            SimulatorAreaActivity_.intent(context).b(UtilsMy.i2(11)).a(UtilsMy.j2(11)).start();
                                                                            break;
                                                                        case 60:
                                                                            SimulatorAreaActivity_.intent(context).b(UtilsMy.i2(12)).a(UtilsMy.j2(12)).start();
                                                                            break;
                                                                        case 61:
                                                                            SimulatorAreaActivity_.intent(context).b(UtilsMy.i2(14)).a(UtilsMy.j2(14)).start();
                                                                            break;
                                                                        case 62:
                                                                            Intent intent = new Intent(context, (Class<?>) MustPalyReginActivity.class);
                                                                            if (intentDateBean.getObject() != null) {
                                                                                intent.putExtra("title", (String) intentDateBean.getObject());
                                                                            }
                                                                            context.startActivity(intent);
                                                                            break;
                                                                        case 63:
                                                                            Intent intent2 = new Intent(context, (Class<?>) BtReginActivity.class);
                                                                            if (intentDateBean.getObject() != null) {
                                                                                intent2.putExtra("title", (String) intentDateBean.getObject());
                                                                            }
                                                                            context.startActivity(intent2);
                                                                            break;
                                                                        case 64:
                                                                            SimulatorFastEntryActivity_.intent(context).a(intentDateBean.getExtBean()).start();
                                                                            break;
                                                                        case 65:
                                                                            EndGameActivity_.intent(context).start();
                                                                            break;
                                                                        case 66:
                                                                            EndGameDetailActivity_.intent(context).a(intentDateBean.getLink_type_val()).b(intentDateBean.getCrc_link_type_val()).start();
                                                                            break;
                                                                        default:
                                                                            switch (jump_type) {
                                                                                case 70:
                                                                                    HideAppHomeActivity_.intent(context).start();
                                                                                    com.papa.sim.statistic.t.l(context).R1(Event.clickfakeAPP, new Ext());
                                                                                    break;
                                                                                case 71:
                                                                                    FragmentPageActivity_.intent(context).b(1).c("云玩").a(null).start();
                                                                                    break;
                                                                                case 72:
                                                                                    NostalgiaGameActivity.start(context, intentDateBean.getExtBean());
                                                                                    break;
                                                                                default:
                                                                                    Intent intent3 = new Intent();
                                                                                    intent3.setClass(context, MGMainActivity_.class);
                                                                                    intent3.setFlags(603979776);
                                                                                    Bundle bundle = new Bundle();
                                                                                    bundle.putInt("MainPos", 7);
                                                                                    intent3.putExtras(bundle);
                                                                                    context.startActivity(intent3);
                                                                                    break;
                                                                            }
                                                                            break;
                                                                    }
                                                                    break;
                                                            }
                                                            break;
                                                    }
                                                } else {
                                                    GameExpressActivity.start(context);
                                                    break;
                                                }
                                            } else {
                                                DocumentManageActivity_.intent(context).a(2).b(intentDateBean.getCrc_link_type_val()).start();
                                                com.papa.sim.statistic.t.l(context).X0(Event.startArchiveManagement, AccountUtil_.getInstance_(context).getUid(), intentDateBean.getCrc_link_type_val(), "2");
                                                break;
                                            }
                                        } else {
                                            MGInformationActivity_.intent(context).a(intentDateBean.getExtBean()).start();
                                            break;
                                        }
                                    } else {
                                        Intent intent4 = new Intent(context, (Class<?>) DailyFindActivity.class);
                                        intent4.putExtra("extBean", intentDateBean.getExtBean());
                                        context.startActivity(intent4);
                                        break;
                                    }
                                } else {
                                    Intent intent5 = new Intent();
                                    intent5.setClass(context, MGMainActivity_.class);
                                    intent5.setFlags(603979776);
                                    Bundle bundle2 = new Bundle();
                                    bundle2.putInt("MainPos", 2);
                                    String ext1 = intentDateBean.getExt1();
                                    if (!TextUtils.isEmpty(ext1)) {
                                        bundle2.putString("ext1", ext1);
                                    }
                                    intent5.putExtras(bundle2);
                                    context.startActivity(intent5);
                                    break;
                                }
                            } else {
                                ForumIndexActivity_.intent(context).start();
                                break;
                            }
                        } else {
                            NewArenaMainActivty_.intent(context).start();
                            break;
                        }
                    } else {
                        try {
                            i10 = t2.i(intentDateBean.getLink_type_val()) ? Integer.parseInt(intentDateBean.getLink_type_val()) : 1;
                        } catch (Exception e12) {
                            e12.printStackTrace();
                        }
                        if (i10 != 1) {
                            Intent intent6 = new Intent(context, (Class<?>) CategoryDetailListActivity.class);
                            intent6.putExtra("typeId", 1);
                            intent6.putExtra("tagId", UtilsMy.i2(i10));
                            intent6.putExtra("tagName", TextUtils.isEmpty(intentDateBean.getExt1()) ? UtilsMy.j2(i10) : intentDateBean.getExt1());
                            intent6.putExtra("parentExtBean", intentDateBean.getExtBean());
                            context.startActivity(intent6);
                        } else {
                            Intent intent7 = new Intent(context, (Class<?>) CategoryDetailListActivity.class);
                            intent7.putExtra("typeId", 0);
                            intent7.putExtra("tagId", "0");
                            intent7.putExtra("tagName", "全部游戏");
                            intent7.putExtra("parentExtBean", intentDateBean.getExtBean());
                            context.startActivity(intent7);
                        }
                        break;
                    }
                } else {
                    Intent intent8 = new Intent();
                    intent8.setClass(context, MGMainActivity_.class);
                    intent8.setFlags(603979776);
                    Bundle bundle3 = new Bundle();
                    bundle3.putInt("MainPos", 3);
                    intent8.putExtras(bundle3);
                    context.startActivity(intent8);
                    break;
                }
                break;
            case 4:
                String link_type_val = intentDateBean.getLink_type_val();
                if (t2.i(link_type_val) && ((link_type_val.contains(".taobao.com/") || link_type_val.contains(".tmall.com/")) && com.join.android.app.common.utils.g.t0(context).e(context, "com.taobao.taobao"))) {
                    Intent intent9 = new Intent();
                    intent9.setAction("android.intent.action.VIEW");
                    intent9.setData(Uri.parse(link_type_val));
                    intent9.setClassName("com.taobao.taobao", "com.taobao.tao.detail.activity.DetailActivity");
                    context.startActivity(intent9);
                } else {
                    ShareWebActivity_.intent(context).b(intentDateBean).c(intentDateBean.getExtBean()).start();
                }
                break;
            case 5:
                try {
                    Intent intent10 = new Intent();
                    intent10.setAction("android.intent.action.VIEW");
                    if (!intentDateBean.getLink_type_val().contains("://")) {
                        a3.b(context).d("网络连接错误");
                    } else {
                        intent10.setData(Uri.parse(intentDateBean.getLink_type_val()));
                        context.startActivity(intent10);
                    }
                } catch (Exception e13) {
                    e13.printStackTrace();
                    return;
                }
                break;
            case 6:
                if (intentDateBean.getObject() instanceof String) {
                    strValueOf = (String) intentDateBean.getObject();
                } else if (intentDateBean.getObject() != null && (intentDateBean.getObject() instanceof Boolean)) {
                    zBooleanValue = ((Boolean) intentDateBean.getObject()).booleanValue();
                }
                GameInformationActivityV2_.intent(context).c(intentDateBean.getLink_type_val()).d(strValueOf).a(zBooleanValue).b(intentDateBean.getExtBean()).start();
                break;
            case 7:
                try {
                    i11 = Integer.parseInt(intentDateBean.getLink_type_val());
                } catch (Exception e14) {
                    e14.printStackTrace();
                }
                try {
                    ForumBean forumBean = new ForumBean();
                    forumBean.setFid(i11);
                    r0.s0(context, forumBean, intentDateBean.getExtBean());
                } catch (Exception e15) {
                    e15.printStackTrace();
                    return;
                }
                break;
            case 8:
                try {
                    i12 = Integer.parseInt(intentDateBean.getLink_type_val());
                } catch (Exception e16) {
                    e16.printStackTrace();
                }
                ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                forumPostsBean.setPid(i12);
                r0.w0(context, forumPostsBean, intentDateBean.getExtBean());
                break;
            case 9:
                this.gameid = intentDateBean.getCrc_link_type_val();
                DownloadTask downloadTaskG = q5.f.M().G(this.gameid);
                this.downloadTask = downloadTaskG;
                if (downloadTaskG == null) {
                    Intent intent11 = new Intent();
                    this.intent2 = intent11;
                    intent11.setAction(p5.a.f96213p);
                    this.intent2.putExtra("gameId", this.gameid);
                    context.sendBroadcast(this.intent2);
                    a3.b(context).d("游戏未下载,请先下载游戏.");
                } else {
                    g1.h(PapayPayDetialActivity_.INFO_EXTRA, System.currentTimeMillis() + "  checkupdate");
                    UtilsMy.o0(context, this.downloadTask);
                }
                break;
            case 10:
                this.gameid = intentDateBean.getCrc_link_type_val();
                DownloadTask downloadTaskG2 = q5.f.M().G(this.gameid);
                this.downloadTask = downloadTaskG2;
                if (downloadTaskG2 == null) {
                    Intent intent12 = new Intent();
                    this.intent2 = intent12;
                    intent12.setAction(p5.a.f96213p);
                    this.intent2.putExtra("gameId", this.gameid);
                    context.sendBroadcast(this.intent2);
                    a3.b(context).d("游戏未下载,请先下载游戏.");
                } else {
                    UtilsMy.o0(context, downloadTaskG2);
                }
                break;
            case 11:
                this.gameid = intentDateBean.getCrc_link_type_val();
                DownloadTask downloadTaskG3 = q5.f.M().G(this.gameid);
                this.downloadTask = downloadTaskG3;
                if (downloadTaskG3 == null) {
                    Intent intent13 = new Intent();
                    this.intent2 = intent13;
                    intent13.setAction(p5.a.f96213p);
                    this.intent2.putExtra("gameId", this.gameid);
                    context.sendBroadcast(this.intent2);
                    a3.b(context).d("游戏未下载,请先下载游戏.");
                } else {
                    UtilsMy.o0(context, downloadTaskG3);
                }
                break;
            case 12:
                ForumBean.ForumTopicBean forumTopicBean = new ForumBean.ForumTopicBean();
                try {
                    forumTopicBean.setTid(Integer.parseInt(intentDateBean.getLink_type_val()));
                } catch (Exception e17) {
                    e17.printStackTrace();
                }
                r0.D0(context, forumTopicBean);
                break;
            case 15:
                GameInfoBean gameInfoBean = new GameInfoBean();
                if (intentDateBean.getObject() instanceof String) {
                    gameInfoBean.setGame_name((String) intentDateBean.getObject());
                }
                gameInfoBean.setGame_id(intentDateBean.getCrc_link_type_val());
                GameRoomListActivity_.intent(context).c(gameInfoBean).start();
                break;
            case 16:
                try {
                    String link_type_val2 = intentDateBean.getLink_type_val();
                    if (t2.i(link_type_val2) && (strArrSplit = link_type_val2.split(Constants.TIPS_SPECIAL_TAG)) != null && strArrSplit.length > 0) {
                        String str4 = strArrSplit[0];
                        strValueOf = strArrSplit.length > 1 ? strArrSplit[1] : "";
                        MainLabelActivity_.intent(context).a(t2.i(str4) ? Integer.parseInt(str4) : 0).b(1).d(t2.i(strValueOf) ? Integer.parseInt(strValueOf) : 0).start();
                        break;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            case 17:
            case 18:
                String link_type_val3 = intentDateBean.getLink_type_val();
                if (!TextUtils.isEmpty(link_type_val3)) {
                    String[] strArrSplit2 = link_type_val3.split(Constants.TIPS_SPECIAL_TAG);
                    if (strArrSplit2.length > 1) {
                        GamePaiWeiActivty_.o0(context).a(strArrSplit2[0]).b(Integer.parseInt(strArrSplit2[1])).start();
                    }
                }
                break;
            case 20:
                Intent intent14 = new Intent(context, (Class<?>) GameDetailActivity_.class);
                intent14.putExtra("fromid", intentDateBean.getCrc_link_type_val());
                intent14.putExtra("_from", 11105);
                intent14.putExtra("parentExtBean", intentDateBean.getExtBean());
                if (t2.i(intentDateBean.getLink_type_val())) {
                    try {
                        intent14.putExtra("groupuid", Integer.parseInt(intentDateBean.getLink_type_val()));
                    } catch (Exception e18) {
                        e18.printStackTrace();
                    }
                }
                context.startActivity(intent14);
                break;
            case 21:
                try {
                    if (intentDateBean.getObject() instanceof Boolean) {
                        zBooleanValue3 = ((Boolean) intentDateBean.getObject()).booleanValue();
                    }
                } catch (Exception e19) {
                    e19.printStackTrace();
                }
                GamedetailVideoMainActivity_.intent(context).gameId(intentDateBean.getCrc_link_type_val()).autodown(zBooleanValue3).from(2).extBean(intentDateBean.getExtBean()).start();
                break;
            case 24:
                try {
                    IntroductionCommentDetailParamsBean introductionCommentDetailParamsBean = t2.i(intentDateBean.getLink_type_val()) ? (IntroductionCommentDetailParamsBean) JsonMapper.getInstance().fromJson(intentDateBean.getLink_type_val(), IntroductionCommentDetailParamsBean.class) : null;
                    if (introductionCommentDetailParamsBean != null) {
                        strValueOf = String.valueOf(introductionCommentDetailParamsBean.getGame_id());
                        iIntValue = Integer.valueOf(introductionCommentDetailParamsBean.getPost_id()).intValue();
                    }
                    IntroductionActivity_.intent(context).e(100).a(strValueOf).c(introductionCommentDetailParamsBean).d(iIntValue).c(introductionCommentDetailParamsBean).start();
                } catch (Exception e20) {
                    e20.printStackTrace();
                    return;
                }
                break;
            case 25:
                try {
                    String strD = new PrefDef_(context).wx_open_appid().d();
                    if (t2.i(intentDateBean.getLink_type_val()) && !TextUtils.isEmpty(strD)) {
                        String strA = a.a(strD, null);
                        WxMiniProgramBean wxMiniProgramBean = (WxMiniProgramBean) JsonMapper.getInstance().fromJson(intentDateBean.getLink_type_val(), WxMiniProgramBean.class);
                        if (wxMiniProgramBean != null) {
                            UtilsMy.L4(context, strA, wxMiniProgramBean.getId(), wxMiniProgramBean.getPath());
                        }
                        break;
                    }
                } catch (Exception e21) {
                    e21.printStackTrace();
                    return;
                }
                break;
            case 26:
                getInstance().goReportFeedbackDetail(context, ((ReportIssueBean) new Gson().fromJson(intentDateBean.getLink_type_val(), ReportIssueBean.class)).getIssue_id());
                break;
            case 27:
                Intent intent15 = new Intent();
                intent15.setClass(context, MGMainActivity_.class);
                intent15.setFlags(603979776);
                Bundle bundle4 = new Bundle();
                bundle4.putInt("MainPos", 7);
                bundle4.putInt("currTabNumber", 1);
                bundle4.putString("currTabTagId", intentDateBean.getLink_type_val());
                intent15.putExtras(bundle4);
                context.startActivity(intent15);
                break;
            case 28:
                Intent intent16 = new Intent(context, (Class<?>) EverdayNewGameActivity.class);
                try {
                    intent16.putExtra("default_position", Integer.parseInt(intentDateBean.getLink_type_val()));
                    break;
                } catch (Exception unused2) {
                }
                context.startActivity(intent16);
                break;
            case 29:
                Intent intent17 = new Intent(context, (Class<?>) CommonZoneActivity.class);
                intent17.putExtra("extBean", intentDateBean.getExtBean());
                intent17.putExtra("zoneId", intentDateBean.getCrc_link_type_val());
                context.startActivity(intent17);
                break;
            case 30:
                try {
                    String link_type_val4 = intentDateBean.getLink_type_val();
                    if (t2.i(link_type_val4)) {
                        String[] strArrSplit3 = link_type_val4.split(Constants.TIPS_SPECIAL_TAG);
                        if (strArrSplit3 != null && strArrSplit3.length > 0) {
                            String str5 = strArrSplit3[0];
                            String str6 = strArrSplit3.length > 1 ? strArrSplit3[1] : "";
                            strValueOf = strArrSplit3.length > 2 ? strArrSplit3[2] : "";
                            if (strArrSplit3.length > 3) {
                                str = str5;
                                str3 = str6;
                                str2 = strValueOf;
                                zEquals = "0".equals(strArrSplit3[3]);
                            } else {
                                str = str5;
                                str3 = str6;
                                str2 = strValueOf;
                            }
                            com.papa.sim.statistic.t.l(context).R1(Event.clickSpeedDownUpQk, new Ext().setGameId(d2.f49546d).setQkPosition(com.kuaishou.weapon.p0.t.f74899x));
                            getInstance().startQuarkBrowser(context, zEquals, str2, str, str3);
                        } else {
                            str = "夸克";
                            str2 = "";
                            str3 = str2;
                        }
                        zEquals = false;
                        com.papa.sim.statistic.t.l(context).R1(Event.clickSpeedDownUpQk, new Ext().setGameId(d2.f49546d).setQkPosition(com.kuaishou.weapon.p0.t.f74899x));
                        getInstance().startQuarkBrowser(context, zEquals, str2, str, str3);
                    }
                } catch (Exception e22) {
                    e22.printStackTrace();
                    return;
                }
                break;
            case 32:
                String link_type_val5 = intentDateBean.getLink_type_val();
                if (t2.i(link_type_val5)) {
                    DownloadTask downloadTaskG4 = q5.f.M().G(link_type_val5);
                    if (downloadTaskG4 == null) {
                        ((CommonService_.n0) CommonService_.P2(context).extra("requestAndDownloadGameById", link_type_val5)).a();
                    } else {
                        checkAndDownloadApk(context, downloadTaskG4);
                    }
                }
                break;
            case 33:
                CollectionModuleSevenActivity_.intent(context).b(intentDateBean.getLink_type_val()).a(intentDateBean.getExtBean()).start();
                break;
            case 36:
                CloudGameZoneActivity_.intent(context).b(intentDateBean.getLink_type_val()).a(intentDateBean.getExtBean()).start();
                break;
            case 38:
                GameExpressActivity.start(context);
                break;
        }
    }

    public boolean isLogined(Context context) {
        UserInfo userInfoAccountBean = accountBean(context);
        return userInfoAccountBean != null && t2.i(userInfoAccountBean.getToken());
    }

    public boolean isNotLogin(Context context) {
        return !isLogined(context) || isTourist(context);
    }

    public boolean isTourist(Context ctx) {
        return AccountUtil_.getInstance_(ctx).isTourist();
    }

    public boolean joinQQGroup(Context context, String key) {
        Intent intent = new Intent();
        intent.setData(Uri.parse("mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D" + key));
        try {
            context.startActivity(intent);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public void setSplashActivity(Activity splashActivity) {
        this.splashActivity = splashActivity;
    }

    public void startActivity(Context context, Class targetClazz, Intent extra) {
        startActivityWithCallback(context, targetClazz, extra, null);
    }

    public void startActivityWithCallback(Context context, Class targetClazz, Intent extra, IDialogActivityCallback callback) {
        Intent intent = new Intent(context, (Class<?>) targetClazz);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        if (callback != null) {
            intent.putExtras(DialogActivityManager.get().registerCallback(targetClazz, callback));
        }
        if (extra != null) {
            intent.putExtras(extra);
        }
        context.startActivity(intent);
    }

    public boolean startGameCheckRealnameHasIntent(Context context, UserInfo accountBean, String from, String gameid) {
        LoginCfgsBean loginCfgsBean;
        boolean z10 = false;
        if (MApplication.V.getIs_open_certify() == 1) {
            PrefDef_ prefDef_ = new PrefDef_(context);
            if (!e0.z(prefDef_.lastShowRealNameTime().d().longValue()) && MApplication.V != null) {
                prefDef_.todayShowRealNameCount().g(Integer.valueOf(MApplication.V.getDaily_show_count()));
                prefDef_.startgametimes_open_certify().g(Integer.valueOf(MApplication.V.getTimes_open_certify()));
            }
            if (accountBean.getAccountType() == 2 || accountBean.getUid() == 0) {
                prefDef_.lastShowRealNameTime().g(Long.valueOf(System.currentTimeMillis()));
                int iIntValue = prefDef_.startgametimes_open_certify().d().intValue();
                if (iIntValue > 0) {
                    prefDef_.startgametimes_open_certify().g(Integer.valueOf(iIntValue - 1));
                    return false;
                }
                LoginSplashActivity_.intent(context).gameId(gameid).start();
                return true;
            }
            if (accountBean.getIsRealName() == 0 && (loginCfgsBean = MApplication.V) != null && loginCfgsBean.getIs_open_certify() == 1) {
                int iIntValue2 = prefDef_.startgametimes_open_certify().d().intValue();
                if (iIntValue2 > 0) {
                    prefDef_.startgametimes_open_certify().g(Integer.valueOf(iIntValue2 - 1));
                } else {
                    if (MApplication.V.getCertify_is_allow_skip() == 0) {
                        getInstance().goShareWebActivity(context, com.join.mgps.rpc.h.H + "/user/activity/real_name/index?from=" + from + "&gameId=" + gameid);
                    } else {
                        int iIntValue3 = prefDef_.todayShowRealNameCount().d().intValue();
                        if (iIntValue3 > 0) {
                            getInstance().goShareWebActivity(context, com.join.mgps.rpc.h.H + "/user/activity/real_name/index?from=" + from + "&gameId=" + gameid);
                            prefDef_.todayShowRealNameCount().g(Integer.valueOf(iIntValue3 - 1));
                        }
                    }
                    z10 = true;
                }
                prefDef_.lastShowRealNameTime().g(Long.valueOf(System.currentTimeMillis()));
                return z10;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void startQuarkBrowser(Context context, boolean isOm, String url, String downGameName, String downGameIconUrl) {
        if (context == null || t2.h(url)) {
            return;
        }
        try {
            if (com.join.android.app.common.utils.g.t0(context).e(context, d2.f49544b)) {
                if (MApplication.f3182z.p().quark_first_launch_time().d().longValue() == 0) {
                    MApplication.f3182z.p().quark_first_launch_time().g(Long.valueOf(System.currentTimeMillis()));
                }
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.setData(Uri.parse(url));
                intent.setPackage(d2.f49544b);
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                context.startActivity(intent);
                return;
            }
            if (isOm) {
                ((QuarkLoadingActivity_.d) QuarkLoadingActivity_.intent(context).flags(C.ENCODING_PCM_MU_LAW)).c(com.join.android.app.common.utils.g.t0(context).N(context)).a(downGameIconUrl).b(downGameName).d(url).e(d2.f49545c).start();
                return;
            }
            DownloadTask downloadTaskG = q5.f.M().G(d2.f49546d);
            if (downloadTaskG != null && downloadTaskG.getStatus() != 11) {
                ToastManager.show(context.getString(R.string.quark_downloading_tip));
            }
            MApplication.f3182z.p().isQuarkSilentDownload().g(Boolean.FALSE);
            ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(context).extra("action", "downloadQuark")).extra("isOm", false)).a();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean goLogin(final Context context, final int type) {
        if (isLogined(context) && !isTourist(context)) {
            return false;
        }
        ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(context).flags(C.ENCODING_PCM_MU_LAW)).start();
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void goForumGroupActivity(Context context, int fid, String from) {
        ((ForumActivity_.q) ForumActivity_.intent(context).a(fid).b(from).flags(67108864)).start();
    }

    public void goMainLabelActivity(Context context, int tagId, String tagName) {
        goMainLabelActivity(context, tagId, tagName, 2);
    }

    public void goMyAccountLoginActivity(Context ctx, int fromIndex, int intentFrom) {
        LoginSplashActivity_.intent(ctx).start();
    }

    public void goMyAccountLoginActivityNewTask(Context ctx, String hostPkg) {
        Intent intent = new Intent();
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        intent.setComponent(new ComponentName(hostPkg, "com.join.mgps.activity.login.LoginSplashActivity_"));
        ctx.startActivity(intent);
    }

    public void goSearchHintActivity(Context ctx, @Nullable String keyword) {
        SearchHintActivity_.intent(ctx).c(keyword).start();
    }

    public void goForumGroupActivity(Context context) {
        getInstance().goShareWebActivity(context, com.join.mgps.rpc.h.f72353k + "/static/group/group_square.html");
    }

    public void goMainLabelActivity(Context context, int tagId, String tagName, int fromType) {
        MainLabelActivity_.intent(context).d(tagId).e(tagName).b(fromType).start();
    }

    public void goSearchHintActivity(Context ctx, @Nullable ArrayList<SScrollingTxtBeanV2> keywords, int interval) {
        SearchHintActivity_.intent(ctx).d(keywords).b(interval).start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean goLogin(final Context context, LoginParams params) {
        if (isLogined(context) && !isTourist(context)) {
            return false;
        }
        ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(context).loginParams(params).flags(C.ENCODING_PCM_MU_LAW)).start();
        return true;
    }

    public void goMainLabelActivity(Context context, int tagId, int fid, String fname) {
        MainLabelActivity_.intent(context).d(tagId).b(2).a(fid).c(fname).start();
    }

    public void goFullShareWebActivity(Context ctx, IntentDateBean intentDateBean) {
        FullShareWebActivity_.intent(ctx).b(intentDateBean).start();
    }

    public void goShareWebActivity(Context ctx, String url, ExtBean extBean) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(url);
        intentDateBean.setExtBean(extBean);
        intentActivity(ctx, intentDateBean);
    }

    public void goColloctionList(Context context, String tpl_type, String collection_id, ExtBean extBean) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setExtBean(extBean);
        intentDateBean.setLink_type(2);
        intentDateBean.setTpl_type(tpl_type);
        intentDateBean.setCrc_link_type_val(collection_id);
        getInstance().intentActivity(context, intentDateBean);
    }

    public void goGameDetialActivity(Context ctx, String gameID, String gameDetialType, int sp, int _from_ype, String remarks, String where, String keyword, String dataFlag) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(gameID);
        intentDateBean.setTpl_type(gameDetialType);
        intentDateBean.setJump_type(sp);
        ExtBean extBean = new ExtBean();
        extBean.setReMarks(remarks);
        extBean.set_from_type(_from_ype != 147 ? 112 : 147);
        extBean.setWhere(where);
        extBean.setKeyword(keyword);
        extBean.setDataFlag(dataFlag);
        intentDateBean.setExtBean(extBean);
        intentActivity(ctx, intentDateBean);
    }

    public void goMGMainActivity2Front(Context context) {
        Intent intent = new Intent();
        intent.setClass(context, MGMainActivity_.class);
        intent.setFlags(131072);
        intent.putExtras(new Bundle());
        context.startActivity(intent);
    }

    public void goShareWebActivityNewTask(Context ctx, String hostPkg, IntentDateBean intentDateBean) {
        if (ctx == null) {
            return;
        }
        try {
            Intent intent = new Intent();
            intent.putExtra("intentdate", intentDateBean);
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            intent.setComponent(new ComponentName(hostPkg, "com.join.mgps.activity.ShareWebActivity_"));
            ctx.startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void goGameDetialActivity(Context ctx, String gameID, int _from_ype) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(gameID);
        ExtBean extBean = new ExtBean();
        extBean.set_from_type(_from_ype);
        intentDateBean.setExtBean(extBean);
        intentActivity(ctx, intentDateBean);
    }

    public void goGameDetialActivity(Context ctx, String gameID, ExtBean extBean) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setCrc_link_type_val(gameID);
        intentDateBean.setExtBean(extBean);
        intentActivity(ctx, intentDateBean);
    }
}
