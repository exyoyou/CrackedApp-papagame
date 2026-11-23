package com.join.mgps.Util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.MApplication;
import com.byazt.bv.BaseConstants;
import com.join.mgps.dto.APKVersionRequestargs;
import com.join.mgps.dto.AllAppId;
import com.join.mgps.dto.AppDataBackupBean;
import com.join.mgps.dto.ArchiveBuyArgs;
import com.join.mgps.dto.ArchiveColudArgs;
import com.join.mgps.dto.ArchiveevaluateArgs;
import com.join.mgps.dto.ArchiveshopArgs;
import com.join.mgps.dto.BootPageRequestArgs;
import com.join.mgps.dto.ClassifyGameBean;
import com.join.mgps.dto.CollectionCommentRequest;
import com.join.mgps.dto.CommentCreateArgs;
import com.join.mgps.dto.CommentModifyArgs;
import com.join.mgps.dto.CommentPraiseRequestBean;
import com.join.mgps.dto.CommentRequest;
import com.join.mgps.dto.CommentRequestPageBean;
import com.join.mgps.dto.CommentSelfRequestBean;
import com.join.mgps.dto.CommentSendMessageRequestBean;
import com.join.mgps.dto.CommitRequestBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.CommonRequestMessage;
import com.join.mgps.dto.DeleteCommentArgs;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameInformationCommentRequest;
import com.join.mgps.dto.GamePariseRequest;
import com.join.mgps.dto.GameSortRequestBean;
import com.join.mgps.dto.GameTopicRequestBean;
import com.join.mgps.dto.GameVerByBgRequestargs;
import com.join.mgps.dto.GamedetialCommentRequest;
import com.join.mgps.dto.GiftPackageArgs;
import com.join.mgps.dto.GiftPackageInfoArgs;
import com.join.mgps.dto.GiftPackageOperationArgs;
import com.join.mgps.dto.HaveGameListArgs;
import com.join.mgps.dto.HomeGameCarefullyRequestArgs;
import com.join.mgps.dto.HomeGameCarefullyRequestArgs2;
import com.join.mgps.dto.IgnoreNoticeRequestArgs;
import com.join.mgps.dto.InformationRequestBean;
import com.join.mgps.dto.InformationSendRequestBean;
import com.join.mgps.dto.PariseRequest;
import com.join.mgps.dto.RecomRequestAdIdArgs;
import com.join.mgps.dto.RecomRequestArgs;
import com.join.mgps.dto.RecomRequestBannerAndTableBean;
import com.join.mgps.dto.RecomRequestBannerAndTableMessage;
import com.join.mgps.dto.RecomRequestBean;
import com.join.mgps.dto.RecomRequestMessage;
import com.join.mgps.dto.RegisterRequestBean;
import com.join.mgps.dto.RequestAppDetialArgs;
import com.join.mgps.dto.RequestArenaRoomListArgs;
import com.join.mgps.dto.RequestBattlehallArgs;
import com.join.mgps.dto.RequestClassifyArgs;
import com.join.mgps.dto.RequestCollectionArgs;
import com.join.mgps.dto.RequestCommentAllListArgs;
import com.join.mgps.dto.RequestCommentDetailArgs;
import com.join.mgps.dto.RequestCommentpraiseArgs;
import com.join.mgps.dto.RequestCommitArgs;
import com.join.mgps.dto.RequestCommitReplyArgs;
import com.join.mgps.dto.RequestCompanyIdPnArgs;
import com.join.mgps.dto.RequestCompanyNameArgs;
import com.join.mgps.dto.RequestDownloadCenterArgs;
import com.join.mgps.dto.RequestGameArgs;
import com.join.mgps.dto.RequestGameCommentArgs;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestGoogleRankArgs;
import com.join.mgps.dto.RequestHandShankAdListArgs;
import com.join.mgps.dto.RequestInfoIdArgs;
import com.join.mgps.dto.RequestKeywordArgs;
import com.join.mgps.dto.RequestModuleArgs;
import com.join.mgps.dto.RequestMsgStateArge;
import com.join.mgps.dto.RequestPnAndPcAndUidArgs;
import com.join.mgps.dto.RequestPnAndPcArgs;
import com.join.mgps.dto.RequestPnArgs;
import com.join.mgps.dto.RequestPraiseArgs;
import com.join.mgps.dto.RequestSNKGameArgs;
import com.join.mgps.dto.RequestScreenshortListArgs;
import com.join.mgps.dto.RequestSearchPageArgs;
import com.join.mgps.dto.RequestSiliencebean;
import com.join.mgps.dto.RequestSimulatorArgs;
import com.join.mgps.dto.RequestStatsArgs;
import com.join.mgps.dto.RequestTypePn;
import com.join.mgps.dto.RequestUserCenterArgs;
import com.join.mgps.dto.RequestWarArgs;
import com.join.mgps.dto.RequestWarIndexArgs;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
import com.join.mgps.dto.SendAppinfoMainbean;
import com.join.mgps.dto.SimulatorAreaRequest;
import com.join.mgps.pref.PrefDef_;
import com.switfpass.pay.MainApplication;
import com.tencent.stat.DeviceInfo;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class RequestBeanUtil {
    private static String androidId = null;
    private static String androidIdx = null;
    private static String channel_num = null;
    private static String end = null;
    private static String imei = null;
    private static String ip_address = null;
    private static String mac = null;
    private static String mobile_phone_model = null;
    private static RequestBeanUtil ourInstance = null;
    private static int targetvVersion = 0;
    private static String versionAndVersionName = "1_1.0";

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private String f49391ad;

    private RequestBeanUtil(Context context) {
        if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74779c) != 0) {
            PrefDef_ prefDef_ = new PrefDef_(context);
            if (!e0.z(prefDef_.lastApplyReadPhonePermission().d().longValue())) {
                UtilsMy.e3(context, com.kuaishou.weapon.p0.g.f74779c);
                prefDef_.lastApplyReadPhonePermission().g(Long.valueOf(System.currentTimeMillis()));
            }
        } else {
            com.papa.sim.statistic.pref.b.k(context).F(true);
        }
        this.f49391ad = com.papa.sim.statistic.m.a(context);
        targetvVersion = p1.b(context);
        androidIdx = !TextUtils.isEmpty(MApplication.K) ? MApplication.K : Settings.System.getString(context.getContentResolver(), "android_id");
        String str = androidIdx + "gzRN53VWRF9BYUXomg2014";
        end = i1.d(str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("imei   shi ");
        sb2.append(imei);
        sb2.append("  md5String=  ");
        sb2.append(str);
        sb2.append("   end=");
        sb2.append(end);
        channel_num = com.papa.sim.statistic.m.a(context);
        mobile_phone_model = "";
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            versionAndVersionName = packageInfo.versionCode + "_" + packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
        }
    }

    public static String getAndroidId() {
        return androidIdx;
    }

    public static String getChannel_num() {
        return channel_num;
    }

    public static String getEnd() {
        return end;
    }

    public static String getImei() {
        return imei;
    }

    public static RequestBeanUtil getInstance(Context context) {
        if (ourInstance == null) {
            ourInstance = new RequestBeanUtil(context);
        }
        try {
            if (t2.i(androidIdx)) {
                end = i1.d(androidIdx + "gzRN53VWRF9BYUXomg2014");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return ourInstance;
    }

    public static String getIp_address() {
        return ip_address;
    }

    public static String getMac() {
        return mac;
    }

    public static String getMobile_phone_model() {
        return mobile_phone_model;
    }

    public static int getTargetvVersion() {
        return targetvVersion;
    }

    public static String getVersionAndVersionName() {
        return versionAndVersionName;
    }

    private void setCommentCommonFields(CommentRequest bean, @Nullable String uid, @Nullable String token) {
        bean.setVersion(versionAndVersionName);
        bean.setDevice_id("");
        bean.setMac("");
        bean.setIp_address("");
        bean.setChannel_num(channel_num);
        bean.setSort("");
        bean.setMobile_phone_model("");
        bean.setUid(uid);
        bean.setToken(token);
    }

    public static void setImei(String imei2) {
        imei = imei2;
    }

    public static void setMobile_phone_model(String mobile_phone_model2) {
        mobile_phone_model = mobile_phone_model2;
    }

    public String getAd() {
        return this.f49391ad;
    }

    public CommonRequestBean getAllMygameVersion(String[] strings, int uid, String token) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadGameVer", new AllAppId(strings, uid, token)));
    }

    public CommonRequestBean getApkVersion(int type, int plugin, int tag_id) {
        try {
            if (targetvVersion == 0) {
                targetvVersion = p1.b(MainApplication.getContext());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return new CommonRequestBean(versionAndVersionName, imei, androidId, DeviceInfo.TAG_VERSION, channel_num, end, new CommonRequestMessage("chkAppVerV2", new APKVersionRequestargs(type, plugin, tag_id, targetvVersion)), targetvVersion);
    }

    public CommonRequestBean getAppDataBackRequest(String[] data) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new AppDataBackupBean(data, 1)));
    }

    public RecomRequestBean<RequestAppDetialArgs> getAppDetialBean(String appid, int uid, ExtBean extBean) {
        if (extBean == null) {
            extBean = new ExtBean();
        }
        return new RecomRequestBean<>(versionAndVersionName, imei, "load", channel_num, end, new RecomRequestMessage("getGameInfo", new RequestAppDetialArgs(appid, uid), extBean));
    }

    public ArchiveBuyArgs getArchiveBuy(String uid, String token, String gameId, int pn) {
        return new ArchiveBuyArgs(uid, token, gameId, pn);
    }

    public ArchiveColudArgs getArchiveColud(String uid, String token, String gameId) {
        return new ArchiveColudArgs(uid, token, gameId);
    }

    public ArchiveevaluateArgs getArchiveEvaluate(String uid, String token, String id2, int commentType) {
        return new ArchiveevaluateArgs(uid, token, id2, commentType);
    }

    public ArchiveColudArgs getArchiveNum(String uid, String token, String gameId) {
        return new ArchiveColudArgs(uid, token, gameId);
    }

    public ArchiveshopArgs getArchiveshop(String uid, String token, String gameId, int sortType, int pn) {
        return new ArchiveshopArgs(uid, token, gameId, sortType, pn);
    }

    public CommonRequestBean getBaiduAd() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestPnArgs()));
    }

    public CommonRequestBean getBattlehall(int collection_type, int pn, int pc2) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestBattlehallArgs(collection_type, pn, pc2)));
    }

    public CommonRequestBean getBootPageData(BootPageRequestArgs args) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(args));
    }

    public CommonRequestBean getCategoryRequestBean() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getGameTypeList", new ArrayList()));
    }

    public CommonRequestBean getClassifyAndroidRequestBean(int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadAndroidModuleTitle", new RequestPnArgs(pn)));
    }

    public CommonRequestBean getClassifyFCRequestBean(int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadFcModuleTitle", new RequestPnArgs(pn)));
    }

    public CommonRequestBean getClassifyGBARequestBean(int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadGbaModuleTitle", new RequestPnArgs(pn)));
    }

    public CommonRequestBean getClassifyGameBean(int type, int type_id) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("", new ClassifyGameBean(type, type_id)));
    }

    public CommonRequestBean getClassifyJGRequestBean(int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadArcadeModuleTitle", new RequestPnArgs(pn)));
    }

    public CommonRequestBean getClassifyMdRequestBean(int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadMdModuleTitle", new RequestPnArgs(pn)));
    }

    public CommonRequestBean getClassifyPSPRequestBean(int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadPspModuleTitle", new RequestPnArgs(pn)));
    }

    public CommonRequestBean getClassifySFCRequestBean(int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadSfcModuleTitle", new RequestPnArgs(pn)));
    }

    public CommonRequestBean getCollectionRequestBean(String collectionId, int pn, int pc2, String game_type, String belong_to_tag, ExtBean extBean) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getCollectionGameList", new RequestCollectionArgs(collectionId, pn, pc2, game_type, belong_to_tag), extBean));
    }

    public RequestCommentDetailArgs getCommentDetailList(String sort, String comment_id, String gameId, int uid, int pn, int pc2, String mobile_phone_model2, String user_token) {
        return new RequestCommentDetailArgs(sort, comment_id, gameId, uid, pn, pc2, mobile_phone_model2, mac, ip_address, user_token, versionAndVersionName, imei, channel_num);
    }

    public CommonRequestBean<CommentRequestPageBean> getCommentListBean(String appid, int pn, int pc2) {
        return new CommonRequestBean<>(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getCommentList", new CommentRequestPageBean(appid, pn, pc2)));
    }

    public CommentPraiseRequestBean getCommentPraiseRequestBean(String uid, String token, String user_token, int commentId, String gameId, int type) {
        CommentPraiseRequestBean commentPraiseRequestBean = new CommentPraiseRequestBean();
        setCommentCommonFields(commentPraiseRequestBean, uid, token);
        commentPraiseRequestBean.setComment_id(commentId + "");
        commentPraiseRequestBean.setGame_id(gameId + "");
        commentPraiseRequestBean.setType(type);
        commentPraiseRequestBean.setUser_token(user_token);
        return commentPraiseRequestBean;
    }

    public CommonRequestBean getCommentRequestData(CommonRequestMessage message) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, message);
    }

    public CommonRequestBean getCommuityRequestBean(int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getCommunityBanner", new RequestPnArgs(pn)));
    }

    public CommonRequestBean getCommuityZoneRequestBean(int fid) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("area_id", new RequestPnArgs(fid)));
    }

    public CommonRequestBean getCompanyGameListData(int pn, String companyName) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestCompanyNameArgs(pn, companyName)));
    }

    public CommonRequestBean getCrackRequestBean() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getCrackModuleTitle", new ArrayList()));
    }

    public CommentCreateArgs getCreateCommentBean(String gameId, float score, String content, String token, String mobile_phone_model2, int position, String details_comment_id, String user_name, String head_portrait, String user_token, int uid, int pn, int m_p_m_status) {
        return new CommentCreateArgs(gameId, score, content, token, mobile_phone_model2, position, details_comment_id, user_name, head_portrait, user_token, uid, ip_address, mac, 0, "0", "", "0", versionAndVersionName, imei, channel_num, pn, m_p_m_status);
    }

    public CommonRequestBean getDefalutRequestBean(Object object) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadSimulatorAloneTopIndex", object));
    }

    public DeleteCommentArgs getDeleteComment(String gameId, String token, String mobile_phone_model2, String comment_id, String user_token, int uid, int pn) {
        return new DeleteCommentArgs(token, versionAndVersionName, imei, mac, ip_address, channel_num, mobile_phone_model2, comment_id, gameId, uid, user_token, pn);
    }

    public CommonRequestBean getDetialFollowAnd(RequestdetialFolowAndBeSpeak quest) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(quest));
    }

    public CommonRequestBean getDetialImfMore(String gameId, int pn, int tag_id, int uid) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestGameIdArgs(gameId, pn, tag_id, uid)));
    }

    public CommonRequestBean getDetialmoreServer(String gameId) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestGameIdArgs(gameId, 1, 0, 0)));
    }

    public RecomRequestBean<RequestAppDetialArgs> getDownDeductCoin(String appid, String token, int uid, ExtBean extBean) {
        if (extBean == null) {
            extBean = new ExtBean();
        }
        return new RecomRequestBean<>(versionAndVersionName, imei, "load", channel_num, end, new RecomRequestMessage("getGameInfo", new RequestAppDetialArgs(appid, token, uid), extBean));
    }

    public CommonRequestBean getDownloadCenterRequestBean() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, end, new CommonRequestMessage(new RequestDownloadCenterArgs()));
    }

    public CommonRequestBean getEverdayNew(int pn, ExtBean extBean) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadEveryDayNewGame", new RequestSimulatorArgs(pn), extBean));
    }

    public CommonRequestBean<RequestSimulatorArgs> getEverdayNewGame(int pn, int pc2, ExtBean extBean) {
        return new CommonRequestBean<>(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadEveryDayNewGame", new RequestSimulatorArgs(pn, pc2), extBean));
    }

    public CommonRequestBean getExclusiveTagBean() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getExclusiveTag", new ArrayList()));
    }

    public CommonRequestBean getExitRequest() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadAppOut", new RequestSimulatorArgs()));
    }

    public CommonRequestBean getFloatadRequestBean() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage(new ArrayList()));
    }

    public CommonRequestBean getGRedPointNum(int uid) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, end, new CommonRequestMessage(new HomeGameCarefullyRequestArgs2(uid)));
    }

    public CommonRequestBean getGameCommentListRequestBean(int pn, int pc2, int uid, String gameId, int[] comment_type) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getGameCommentList", new RequestCommitArgs(comment_type, pn, pc2, gameId, uid)));
    }

    public CommonRequestBean getGameDetailParis(GamePariseRequest request) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(request));
    }

    public CommonRequestBean getGameDiscoverRequestBean(int pn, int pc2, ExtBean extBean) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getGameDiscover", new RequestPnAndPcArgs(pn, pc2), extBean));
    }

    public CommonRequestBean getGameInformationComment(GameInformationCommentRequest request) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(request));
    }

    public CommonRequestBean getGameInformationParis(PariseRequest request) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(request));
    }

    public CommonRequestBean getGameListRequestBean(int pn, String type, int sort, String platform_type, String belong_to_tag) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getGameList", new RequestGameArgs(pn, type, sort, platform_type, belong_to_tag, new int[]{1, 2, 3, 4, 5, 6, 7})));
    }

    public CommonRequestBean getGameMainData(String gameId, int uid) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestGameIdArgs(gameId, 1, 1, uid)));
    }

    public CommonRequestBean getGameOLGiftRequest(int pn, int pc2, int uid) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage(new RequestPnAndPcAndUidArgs(pn, pc2, uid)));
    }

    public CommonRequestBean getGameOLRequest(int pn, int pc2) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage(new RequestPnAndPcArgs(pn, pc2)));
    }

    public CommonRequestBean getGameReplyMessageRequestBean(int pn, int uid, String token) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, end, new CommonRequestMessage(new HomeGameCarefullyRequestArgs2(pn, uid, token)));
    }

    public CommonRequestBean getGameSortRequestBean(String version, String deviceid) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("", new GameSortRequestBean(version, deviceid)));
    }

    public CommonRequestBean getGameTopicRequestBean(int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("", new GameTopicRequestBean(pn)));
    }

    public RecomRequestBean<GameVerByBgRequestargs> getGameVerByBgArgs(String pkg, int versionCode, String versionName) {
        return new RecomRequestBean<>(versionAndVersionName, imei, "load", channel_num, end, new RecomRequestMessage("getGameInfo", new GameVerByBgRequestargs(pkg, versionCode, versionName), new ExtBean()));
    }

    public CommonRequestBean getGame_tag_game_list(int pn, int tagID, String tagType, String tagName) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestGameIdArgs(pn, tagID + "", tagName, tagType)));
    }

    public GamedetialCommentRequest getGamedetialCommentRequest(String gameId, String token, String uid) {
        GamedetialCommentRequest gamedetialCommentRequest = new GamedetialCommentRequest();
        gamedetialCommentRequest.setChannel_num(channel_num);
        gamedetialCommentRequest.setDevice_id(imei);
        gamedetialCommentRequest.setGame_id(gameId);
        gamedetialCommentRequest.setIp_address(ip_address);
        gamedetialCommentRequest.setMac(mac);
        gamedetialCommentRequest.setMobile_phone_model(mobile_phone_model);
        gamedetialCommentRequest.setPc("1");
        gamedetialCommentRequest.setPn("1");
        gamedetialCommentRequest.setSort("desc");
        gamedetialCommentRequest.setToken(token);
        gamedetialCommentRequest.setUid(uid);
        gamedetialCommentRequest.setVersion(versionAndVersionName);
        return gamedetialCommentRequest;
    }

    public CommonRequestBean getGamedetialModleFourData(String gameId, int uid) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestGameIdArgs(gameId, 1, 1, uid)));
    }

    public CommonRequestBean getGiftPackageInfoRequestBean(int uid, int gift_package_id) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("", new GiftPackageInfoArgs(uid, gift_package_id)));
    }

    public CommonRequestBean getGiftPackageOperationRequestBean(int uid, int gift_package_id, String game_id) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("", new GiftPackageOperationArgs(uid, gift_package_id, game_id)));
    }

    public CommonRequestBean getGiftPackageRequestBean(int uid, int pn, int pc2, String game_id) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("", new GiftPackageArgs(uid, pn, pc2, game_id)));
    }

    public CommonRequestBean getHandShankAdList() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestHandShankAdListArgs(1, 1, "test")));
    }

    public RecomRequestBean<HaveGameListArgs> getHaveGameListArgs(String uid, String token, String gameId) {
        return new RecomRequestBean<>(versionAndVersionName, imei, "load", channel_num, end, new RecomRequestMessage("getHaveGameListArgs", new HaveGameListArgs(uid, token, gameId), new ExtBean()));
    }

    public CommonRequestBean getHomeGameCarefullyRequestBean(int pn, int first, String gameId) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("game_carefully", new HomeGameCarefullyRequestArgs(pn, first, gameId), new ExtBean()));
    }

    public CommonRequestBean getHomePopupAd(boolean is_vip, int uid) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestPnAndPcAndUidArgs(is_vip, uid)));
    }

    public CommonRequestBean getHotGame(int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("popularList", new RequestSimulatorArgs(pn)));
    }

    public CommonRequestBean getIgnoreMessageRequest(int uid, int messageId, String messageType) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new IgnoreNoticeRequestArgs(uid, messageId, messageType)));
    }

    public CommonRequestBean getInformationComment(String information_id, int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getInformationCommentList", new InformationRequestBean(information_id, pn, new Integer[]{1, 2})));
    }

    public CommonRequestBean getInformationIndexRequestBean(int pn, ExtBean extBean) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getInformationIndex", new RequestPnArgs(pn), extBean));
    }

    public CommonRequestBean getLargeModuleRequestBean() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getLargeModuleTitle", new ArrayList()));
    }

    public CommonRequestBean getLodingImage() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadAppStart", new RequestSimulatorArgs()));
    }

    public CommonRequestBean getLookOther(int pn, ExtBean extBean) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadRecentlyGameOther", new RequestSimulatorArgs(pn), extBean));
    }

    public CommentModifyArgs getModifyCommentBean(String token, String mobile_phone_model2, String gameId, int uid, String comment_id, String user_token, String content, float score, int m_p_m_status) {
        return new CommentModifyArgs(token, versionAndVersionName, imei, mac, ip_address, channel_num, mobile_phone_model2, gameId, uid, comment_id, user_token, content, score, 1, 0, m_p_m_status);
    }

    public CommonRequestBean getModuleListRequestBean(int jump_type, int pn, int pc2) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getModuleList", new RequestModuleArgs(jump_type, pn, pc2)));
    }

    public CommonRequestBean getMustplay(int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("load", new RecomRequestArgs(pn)));
    }

    public CommonRequestBean getMyGameTopAd(int uid) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestPnAndPcAndUidArgs(1, 1, uid)));
    }

    public CommonRequestBean getNowWufun(int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getGameDiscover", new RequestPnAndPcArgs(pn, 10)));
    }

    public CommonRequestBean getOnLineNumber(String[] strings) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getGameUv", new AllAppId(strings)));
    }

    public CommonRequestBean getPAPAHomeMain(int pn, int is_anonymous, int uid, String aid, String m10) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage(new RecomRequestAdIdArgs(pn, is_anonymous, uid, aid, m10)));
    }

    public CommonRequestBean getPabiIntentBean() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, null);
    }

    public CommonRequestBean getPraiceMessPra(int pn, int uid, String token) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, end, new CommonRequestMessage(new HomeGameCarefullyRequestArgs2(pn, uid, token)));
    }

    public RequestCommentpraiseArgs getPraiseComment(String gameId, String token, String mobile_phone_model2, String comment_id, String user_token, int uid, int type, int pn) {
        return new RequestCommentpraiseArgs(token, mac, ip_address, mobile_phone_model2, gameId, uid, comment_id, user_token, versionAndVersionName, imei, channel_num, type, pn);
    }

    public CommonRequestBean getPreloadingADRequestBean() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, end, null);
    }

    public CommonRequestBean getRankingV3(RequestTypePn quest) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(quest));
    }

    public RecomRequestBannerAndTableBean getRecomRequestBannerAndTableBean() {
        return new RecomRequestBannerAndTableBean(versionAndVersionName, imei, "load", end, new RecomRequestBannerAndTableMessage("loadTopIndex", new ArrayList()));
    }

    public RecomRequestBean<RecomRequestArgs> getRecomRequestBean(int listpage) {
        return new RecomRequestBean<>("1.0", imei, "load", channel_num, end, new RecomRequestMessage("loadSimulatorAloneRecList", new RecomRequestArgs(listpage)));
    }

    public CommonRequestBean getRecomRequestFirstData() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadSimulatorAloneTopIndex", new RecomRequestArgs(1)));
    }

    public CommonRequestBean<RequestPnAndPcArgs> getRecomeAppwifi(int pn, int pc2) {
        return new CommonRequestBean<>(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestPnAndPcArgs(pn, pc2)));
    }

    public CommentCreateArgs getReplyCreateCommentBean(String gameId, float score, String content, String token, String mobile_phone_model2, int position, String details_comment_id, String user_name, String head_portrait, String user_token, int uid, String reply_comment_user_id, String reply_comment_user_name, String reply_comment_id, int pn) {
        return new CommentCreateArgs(gameId, score, content, token, mobile_phone_model2, position, details_comment_id, user_name, head_portrait, user_token, uid, ip_address, mac, 0, reply_comment_user_id, reply_comment_user_name, reply_comment_id, versionAndVersionName, imei, channel_num, pn, 3);
    }

    public CommonRequestBean getRequestArenaRoomListArgs(String id2, int type) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestArenaRoomListArgs(id2, type)));
    }

    public RequestCommentAllListArgs getRequestCommentAllList(int pn, int pc2, String gameId, int uid, String token) {
        return new RequestCommentAllListArgs(pn, pc2, gameId, uid, mobile_phone_model, token, mac, ip_address, versionAndVersionName, imei, channel_num);
    }

    public CommonRequestBean getRequestGameFactoryList(int factory_id, int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestCompanyIdPnArgs(factory_id, pn)));
    }

    public CommonRequestBean getRequestMsgState(int uid, String content, int tag_id) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestMsgStateArge(uid, content, tag_id)));
    }

    public CommonRequestBean getRequestPnAndPc(int pn, int pc2) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestPnAndPcArgs(pn, pc2)));
    }

    public CommonRequestBean getRequestPnAndPcByAreaAndRank(int pn, int pc2, int area, int ranking_type) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestGoogleRankArgs(area, ranking_type, pn, pc2)));
    }

    public CommonRequestBean getSNKGameCheckRequestBean(String key_word) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, end, new CommonRequestMessage(new RequestSNKGameArgs(key_word)));
    }

    public CommonRequestBean getScreenShortListRequest(String gameId, int pn, int typeId) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestScreenshortListArgs(typeId, gameId, pn)));
    }

    public CommonRequestBean getSearchAutoRequestBean(String searchTag, String keyword, int pn, int pc2, int plugNumber, int lang_id) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, BaseConstants.MARKET_URI_AUTHORITY_SEARCH, channel_num, end, new CommonRequestMessage(searchTag, new RequestKeywordArgs(keyword, pn, pc2, plugNumber, lang_id)));
    }

    public CommonRequestBean getSearchIntegratedRequestBean(String keyword, int pn, int pc2) {
        return getSearchIntegratedRequestBean(keyword, pn, pc2, 0, 0, "0");
    }

    public CommonRequestBean getSearchPageRequestBean(int uid, String token) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, BaseConstants.MARKET_URI_AUTHORITY_SEARCH, channel_num, end, new CommonRequestMessage(BaseConstants.MARKET_URI_AUTHORITY_SEARCH, new RequestSearchPageArgs(uid, token)));
    }

    public CommonRequestBean getSearchRecommendBean(int type) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadRandomGame", null));
    }

    public CommonRequestBean getSearchRecommendRequestBean() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("recommendgame", new ArrayList()));
    }

    public CommonRequestBean getShowViewDatas() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getStrategyInfo", null));
    }

    public CommonRequestBean getSilenceSwitch(String gameId, int uid, int silenceSwitch) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestSiliencebean(uid, silenceSwitch, gameId)));
    }

    public RecomRequestBean getSimulatorIndexRequestBean(String m10, int pn) {
        return new RecomRequestBean(versionAndVersionName, imei, "load", channel_num, end, new RecomRequestMessage("", new SimulatorAreaRequest(m10, pn), null));
    }

    public CommonRequestBean getSimulatorListRequestBean(int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadSimulatorList", new RequestSimulatorArgs(pn)));
    }

    public CommonRequestBean<RequestGameIdArgs> getSimulatorRequest(String token, String gameId, int uid) {
        return new CommonRequestBean<>(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestGameIdArgs(gameId, token, uid)));
    }

    public CommonRequestBean getSimulatorRequestBean() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadSimulatorTopIndex", new ArrayList()));
    }

    public CommonRequestBean getStandAloneOne() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, end, null);
    }

    public CommonRequestBean getStandAloneTwo(int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, end, new CommonRequestMessage("StandAlone", new RequestPnArgs(pn)));
    }

    public CommonRequestBean getStats(RequestStatsArgs requestStatsArgs) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "add", channel_num, end, new CommonRequestMessage("commitStatistics", requestStatsArgs));
    }

    public CommonRequestBean getTagGameListData(int pn, int tagID) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestGameIdArgs("123456", pn, tagID, 0)));
    }

    public CommentRequest getTokenRequestBean(String uid, String token) {
        CommentRequest commentRequest = new CommentRequest();
        setCommentCommonFields(commentRequest, uid, token);
        return commentRequest;
    }

    public CommonRequestBean getUserCenterViewConfigs(int uid, String token, int isVip) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestUserCenterArgs(uid, token, isVip)));
    }

    public CommonRequestBean getWarListRequestBean(int pn, int type) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadWarModuleList", new RequestWarArgs(pn, type)));
    }

    public CommonRequestBean getgameInformation(String info_id, ExtBean extBean) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getInformation", new RequestInfoIdArgs(info_id), extBean));
    }

    public CommonRequestBean loadWarIndexRequestBean(int pn) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("loadWarIndex", new RequestWarIndexArgs(pn)));
    }

    public CommonRequestBean personalCenter() {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestPnArgs()));
    }

    public CommonRequestBean postGameComment(CommitRequestBean commitRequestBean) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "add", channel_num, end, new CommonRequestMessage("postGameComment", commitRequestBean));
    }

    public CommonRequestBean postGameCommentRelpyRequestBean(int uid, String game_id, String head_portrait, String user_name, String mobile_phone_model2, String ip_address2, int random_num, String content, String reply_comment_id, String reply_comment_user_name, int reply_comment_user_id) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("postGameComment", new RequestCommitReplyArgs(uid, game_id, head_portrait, user_name, mobile_phone_model2, ip_address2, random_num, content, reply_comment_id, reply_comment_user_name, reply_comment_user_id)));
    }

    public CommonRequestBean postGameCommentRequestBean(String game_id, int uid, String head_portrait, String user_name, String mobile_phone_model2, String ip_address2, int random_num, String content) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("postpraise", new RequestGameCommentArgs(game_id, uid, head_portrait, user_name, mobile_phone_model2, ip_address2, random_num, content)));
    }

    public CommonRequestBean postPraisedRequestBean(String commentId, int uid, String gameId) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("postpraise", new RequestPraiseArgs(commentId, uid, gameId)));
    }

    public CommentSelfRequestBean selfComment(int uid, String token, int pn, int pc2, int vuid) {
        CommentSelfRequestBean commentSelfRequestBean = new CommentSelfRequestBean();
        setCommentCommonFields(commentSelfRequestBean, uid + "", token);
        commentSelfRequestBean.setUid(uid + "");
        commentSelfRequestBean.setGame_id("");
        commentSelfRequestBean.setPn(pn);
        commentSelfRequestBean.setPc(pc2);
        commentSelfRequestBean.setVuid(vuid);
        return commentSelfRequestBean;
    }

    public CommonRequestBean sendAllAppinPhone(SendAppinfoMainbean sendAppInfoBeans) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "add", channel_num, end, new CommonRequestMessage("collectAppInfo", sendAppInfoBeans));
    }

    public CommonRequestBean sendInformationComment(InformationSendRequestBean sendRequestBean) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "add", channel_num, end, new CommonRequestMessage("postInformationComment", sendRequestBean));
    }

    public CommonRequestBean sendMessageComment(CommentSendMessageRequestBean requestBean) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "add", channel_num, end, new CommonRequestMessage("commitComment", requestBean));
    }

    public CommonRequestBean sendRegisterId(RegisterRequestBean registerRequestBean) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "add", channel_num, end, new CommonRequestMessage("regPushDevice", registerRequestBean));
    }

    public CommonRequestBean vipMessage(int uid) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(new RequestPnAndPcAndUidArgs(1, 1, uid)));
    }

    public CommonRequestBean getGameInformationComment(CollectionCommentRequest request) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, channel_num, end, new CommonRequestMessage(request));
    }

    public CommonRequestBean getGameListRequestBean(int pn, int pc2, String type, String rom_type, int ranking_type, String sort_type) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, "load", channel_num, end, new CommonRequestMessage("getGameList", new RequestClassifyArgs(pn, pc2, new int[]{1, 2, 3, 4, 5, 6, 7}, type, rom_type, ranking_type, sort_type)));
    }

    public CommonRequestBean getSearchIntegratedRequestBean(String keyword, int pn, int pc2, int plugin_num, int lang_id, String game_id) {
        RequestKeywordArgs requestKeywordArgs = new RequestKeywordArgs(keyword, pn, pc2, plugin_num, lang_id);
        requestKeywordArgs.setGame_id(game_id);
        return new CommonRequestBean(versionAndVersionName, imei, androidId, BaseConstants.MARKET_URI_AUTHORITY_SEARCH, channel_num, end, new CommonRequestMessage("", requestKeywordArgs));
    }

    public CommonRequestBean getSearchPageRequestBean(int uid, String token, String gameId) {
        return new CommonRequestBean(versionAndVersionName, imei, androidId, BaseConstants.MARKET_URI_AUTHORITY_SEARCH, channel_num, end, new CommonRequestMessage(BaseConstants.MARKET_URI_AUTHORITY_SEARCH, new RequestSearchPageArgs(uid, token, gameId)));
    }

    public CommonRequestBean getApkVersion(int type, int plugin, int tag_id, int uid) {
        try {
            if (targetvVersion == 0) {
                targetvVersion = p1.b(MainApplication.getContext());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return new CommonRequestBean(versionAndVersionName, imei, androidId, DeviceInfo.TAG_VERSION, channel_num, end, new CommonRequestMessage("chkAppVerV2", new APKVersionRequestargs(type, plugin, tag_id, targetvVersion, uid)), targetvVersion);
    }
}
