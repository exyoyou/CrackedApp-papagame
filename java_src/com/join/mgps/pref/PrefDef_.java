package com.join.mgps.pref;

import android.content.Context;
import android.content.SharedPreferences;
import com.czhj.sdk.common.Constants;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.windmill.sdk.WMConstants;
import org.androidannotations.api.sharedpreferences.i;
import org.androidannotations.api.sharedpreferences.j;
import org.androidannotations.api.sharedpreferences.k;
import org.androidannotations.api.sharedpreferences.n;
import org.androidannotations.api.sharedpreferences.o;
import org.androidannotations.api.sharedpreferences.p;

/* JADX INFO: loaded from: classes3.dex */
public final class PrefDef_ extends n {

    public static final class a extends org.androidannotations.api.sharedpreferences.e<a> {
        a(SharedPreferences sharedPreferences) {
            super(sharedPreferences);
        }

        public o<a> A() {
            return i("adIdDownloadSpeedUp");
        }

        public org.androidannotations.api.sharedpreferences.c<a> A0() {
            return b("forumFirstClickUsericon");
        }

        public org.androidannotations.api.sharedpreferences.c<a> A1() {
            return b("isFirstRemeShowPopw");
        }

        public o<a> A2() {
            return i("lastShowSplashImage");
        }

        public org.androidannotations.api.sharedpreferences.h<a> A3() {
            return g("runRomFirst");
        }

        public j<a> A4() {
            return h("userLastStartGame");
        }

        public o<a> B() {
            return i("adIdPsp");
        }

        public o<a> B0() {
            return i("found_game_tab");
        }

        public org.androidannotations.api.sharedpreferences.c<a> B1() {
            return b("isFirstRun");
        }

        public o<a> B2() {
            return i("lastShowTOUTIAOAd");
        }

        public org.androidannotations.api.sharedpreferences.c<a> B3() {
            return b("sch_feed_back_switch");
        }

        public org.androidannotations.api.sharedpreferences.h<a> B4() {
            return g("versionCode");
        }

        public o<a> C() {
            return i("addedShortcutGames");
        }

        public o<a> C0() {
            return i("gameHasFeedBack");
        }

        public org.androidannotations.api.sharedpreferences.c<a> C1() {
            return b("isFirstRunApkBackup");
        }

        public o<a> C2() {
            return i("lastStartSimulatorCore");
        }

        public o<a> C3() {
            return i("sdcardData");
        }

        public o<a> C4() {
            return i("video_init_cfg");
        }

        public o<a> D() {
            return i("androidIdNullsKey");
        }

        public o<a> D0() {
            return i("gameTimeLvCfg");
        }

        public j<a> D1() {
            return h("isFirstRunApkBackupLong");
        }

        public o<a> D2() {
            return i("lastTopTip");
        }

        public org.androidannotations.api.sharedpreferences.c<a> D3() {
            return b("sdcardisFirst");
        }

        public org.androidannotations.api.sharedpreferences.h<a> D4() {
            return g("virtualDeviceState");
        }

        public org.androidannotations.api.sharedpreferences.c<a> E() {
            return b("annonunceWhenDownload");
        }

        public o<a> E0() {
            return i("gameTopAd");
        }

        public j<a> E1() {
            return h("isFirstRunGameCarefullyLong");
        }

        public j<a> E2() {
            return h("last_update_time");
        }

        public org.androidannotations.api.sharedpreferences.c<a> E3() {
            return b("sdkInit");
        }

        public org.androidannotations.api.sharedpreferences.c<a> E4() {
            return b("w_channel_info_switch");
        }

        public org.androidannotations.api.sharedpreferences.c<a> F() {
            return b("anti_addiction_switch");
        }

        public o<a> F0() {
            return i("gameTypeList");
        }

        public org.androidannotations.api.sharedpreferences.c<a> F1() {
            return b("isFirstRunRecomeWifi");
        }

        public o<a> F2() {
            return i("launchGameIdCheckVaExtInstall");
        }

        public org.androidannotations.api.sharedpreferences.c<a> F3() {
            return b("sdkInitReady");
        }

        public o<a> F4() {
            return i("web_disk_cfg");
        }

        public org.androidannotations.api.sharedpreferences.h<a> G() {
            return g("apName");
        }

        public o<a> G0() {
            return i("gameWorldActive");
        }

        public org.androidannotations.api.sharedpreferences.c<a> G1() {
            return b("isFirstbuyShowPopw");
        }

        public o<a> G2() {
            return i("launchGameUnsupportedTipIds");
        }

        public o<a> G3() {
            return i("searchHintCache");
        }

        public o<a> G4() {
            return i("web_disk_position");
        }

        public o<a> H() {
            return i("arcadeGameAdCfg");
        }

        public o<a> H0() {
            return i("gameWorldGradeList");
        }

        public org.androidannotations.api.sharedpreferences.c<a> H1() {
            return b("isHideAdBlock");
        }

        public org.androidannotations.api.sharedpreferences.c<a> H2() {
            return b("launchPluginTip");
        }

        public o<a> H3() {
            return i("searchguesslikeData");
        }

        public org.androidannotations.api.sharedpreferences.h<a> H4() {
            return g("web_disk_switch");
        }

        public o<a> I() {
            return i("arenaDialogAdData");
        }

        public o<a> I0() {
            return i("gameWorldWorshipTop");
        }

        public org.androidannotations.api.sharedpreferences.c<a> I1() {
            return b("isHomepagePlayVideo");
        }

        public org.androidannotations.api.sharedpreferences.c<a> I2() {
            return b("launch_game_switch");
        }

        public org.androidannotations.api.sharedpreferences.c<a> I3() {
            return b("shareTipClosed");
        }

        public o<a> I4() {
            return i("wf_app_about");
        }

        public org.androidannotations.api.sharedpreferences.c<a> J() {
            return b("autoLogin");
        }

        public o<a> J0() {
            return i("game_section_id");
        }

        public org.androidannotations.api.sharedpreferences.c<a> J1() {
            return b("isLogin");
        }

        public o<a> J2() {
            return i("liveSubtitle");
        }

        public org.androidannotations.api.sharedpreferences.c<a> J3() {
            return b("showAnBattle");
        }

        public org.androidannotations.api.sharedpreferences.h<a> J4() {
            return g("wifiDownNumber");
        }

        public o<a> K() {
            return i("availableLoginMethod");
        }

        public org.androidannotations.api.sharedpreferences.h<a> K0() {
            return g("getArchiveCoinPref");
        }

        public org.androidannotations.api.sharedpreferences.c<a> K1() {
            return b("isNewFinishedGame");
        }

        public o<a> K2() {
            return i("liveTitle");
        }

        public org.androidannotations.api.sharedpreferences.c<a> K3() {
            return b("showGuideCreateEndGame");
        }

        public org.androidannotations.api.sharedpreferences.c<a> K4() {
            return b("wifiIsOpen");
        }

        public o<a> L() {
            return i("battleWelcomeIn");
        }

        public o<a> L0() {
            return i("getLastPayType");
        }

        public o<a> L1() {
            return i("isNoShowAddShortcut");
        }

        public o<a> L2() {
            return i("localUserIcon");
        }

        public org.androidannotations.api.sharedpreferences.c<a> L3() {
            return b("showHistroyHint");
        }

        public o<a> L4() {
            return i("worldStart");
        }

        public o<a> M() {
            return i("changeNickNameNotice");
        }

        public org.androidannotations.api.sharedpreferences.c<a> M0() {
            return b("gprsIsOpen");
        }

        public org.androidannotations.api.sharedpreferences.c<a> M1() {
            return b("isOnlyWifiReconnect");
        }

        public o<a> M2() {
            return i("location");
        }

        public o<a> M3() {
            return i("showIndex");
        }

        public o<a> M4() {
            return i("worshipMarqueeHistory");
        }

        public org.androidannotations.api.sharedpreferences.c<a> N() {
            return b("classFyFirstOpen");
        }

        public org.androidannotations.api.sharedpreferences.h<a> N0() {
            return g("gprsNoticeInfo");
        }

        public org.androidannotations.api.sharedpreferences.c<a> N1() {
            return b("isQuarkEnable");
        }

        public o<a> N2() {
            return i("lodingImageMD5");
        }

        public o<a> N3() {
            return i("showName");
        }

        public o<a> N4() {
            return i("wx_open_appid");
        }

        public j<a> O() {
            return h("clickFloatViewTime");
        }

        public o<a> O0() {
            return i("hasShowAdInfo");
        }

        public org.androidannotations.api.sharedpreferences.c<a> O1() {
            return b("isQuarkSilentDownload");
        }

        public org.androidannotations.api.sharedpreferences.c<a> O2() {
            return b("loginPermissHasallow");
        }

        public org.androidannotations.api.sharedpreferences.c<a> O3() {
            return b("show_unknown_source");
        }

        public o<a> P() {
            return i("cloudGameConfig");
        }

        public org.androidannotations.api.sharedpreferences.c<a> P0() {
            return b("hasShowEndGameBadge");
        }

        public org.androidannotations.api.sharedpreferences.c<a> P1() {
            return b("isReloadClassify");
        }

        public o<a> P2() {
            return i("md5FileTag");
        }

        public org.androidannotations.api.sharedpreferences.c<a> P3() {
            return b("simulatorLaunchAchievementTabRedPointShown");
        }

        public o<a> Q() {
            return i("cloudVipLink");
        }

        public org.androidannotations.api.sharedpreferences.c<a> Q0() {
            return b("hasShowMiniGameBadge");
        }

        public org.androidannotations.api.sharedpreferences.c<a> Q1() {
            return b("isShowEditorRecoomand");
        }

        public o<a> Q2() {
            return i("mod_enhance_ad_cfg");
        }

        public o<a> Q3() {
            return i("simulator_exit_double_cfg");
        }

        public o<a> R() {
            return i("cloud_gaming_section_id");
        }

        public o<a> R0() {
            return i("hasShowModInstallGames");
        }

        public org.androidannotations.api.sharedpreferences.c<a> R1() {
            return b("isShowLuckyEggBadge");
        }

        public o<a> R2() {
            return i("mod_normal_ad_cfg");
        }

        public o<a> R3() {
            return i("simulator_exit_information_cfg");
        }

        public o<a> S() {
            return i("commentToken");
        }

        public org.androidannotations.api.sharedpreferences.c<a> S0() {
            return b("hasTipCloudBall");
        }

        public org.androidannotations.api.sharedpreferences.c<a> S1() {
            return b("isShowSplash");
        }

        public o<a> S2() {
            return i("myGameAllTabSort");
        }

        public o<a> S3() {
            return i("simulator_exit_lottery_cfg");
        }

        public j<a> T() {
            return h("commentnoticeTime");
        }

        public org.androidannotations.api.sharedpreferences.c<a> T0() {
            return b("has_launch_quark");
        }

        public org.androidannotations.api.sharedpreferences.c<a> T1() {
            return b("isShowVideo");
        }

        public o<a> T2() {
            return i("myGameTabAdShowIndex");
        }

        public o<a> T3() {
            return i("simulator_exit_open_cfg");
        }

        public o<a> U() {
            return i("community_entrance_title");
        }

        public org.androidannotations.api.sharedpreferences.c<a> U0() {
            return b("hideGameTopAd");
        }

        public org.androidannotations.api.sharedpreferences.c<a> U1() {
            return b("isWifiConnectedBefore");
        }

        public org.androidannotations.api.sharedpreferences.c<a> U2() {
            return b("needShowPermissdialog");
        }

        public o<a> U3() {
            return i("simulator_fc_cfg");
        }

        public org.androidannotations.api.sharedpreferences.c<a> V() {
            return b("continueOnWifi");
        }

        public o<a> V0() {
            return i("hide_app_pwd");
        }

        public j<a> V1() {
            return h("lastApplyReadPhonePermission");
        }

        public org.androidannotations.api.sharedpreferences.c<a> V2() {
            return b("needsendRigeister");
        }

        public o<a> V3() {
            return i("simulator_gba_cfg");
        }

        public o<a> W() {
            return i("defaultSearchKeyword");
        }

        public org.androidannotations.api.sharedpreferences.h<a> W0() {
            return g("hide_app_switch");
        }

        public j<a> W1() {
            return h("lastApplyReadPhonePermissionOnRecom");
        }

        public org.androidannotations.api.sharedpreferences.h<a> W2() {
            return g("net_game_count_down");
        }

        public o<a> W3() {
            return i("simulator_gold_finger_cfg");
        }

        public o<a> X() {
            return i("downloadPath");
        }

        public o<a> X0() {
            return i("homeAllData");
        }

        public j<a> X1() {
            return h("lastCheckInTime");
        }

        public org.androidannotations.api.sharedpreferences.c<a> X2() {
            return b("noFavoriteTips");
        }

        public o<a> X3() {
            return i("simulator_jj_cfg");
        }

        public org.androidannotations.api.sharedpreferences.h<a> Y() {
            return g("downloadSpeedUpCount");
        }

        public o<a> Y0() {
            return i("homeAllDataV3");
        }

        public j<a> Y1() {
            return h("lastCheckTokenTick");
        }

        public org.androidannotations.api.sharedpreferences.c<a> Y2() {
            return b("noPromptDownload");
        }

        public org.androidannotations.api.sharedpreferences.h<a> Y3() {
            return g("simulator_last_ad_position");
        }

        public org.androidannotations.api.sharedpreferences.h<a> Z() {
            return g("downloadSpeedUpCountAD");
        }

        public o<a> Z0() {
            return i("homeAllDataV4");
        }

        public o<a> Z1() {
            return i("lastClickPageAD");
        }

        public org.androidannotations.api.sharedpreferences.c<a> Z2() {
            return b("non_online_user_switch");
        }

        public o<a> Z3() {
            return i("simulator_path_cfg");
        }

        public org.androidannotations.api.sharedpreferences.h<a> a0() {
            return g("downloadSpeedUpCountCurrent");
        }

        public j<a> a1() {
            return h("homeCloudActiveTime");
        }

        public j<a> a2() {
            return h("lastGameShowOnlineCouponTime");
        }

        public org.androidannotations.api.sharedpreferences.h<a> a3() {
            return g("normalDownloadCount");
        }

        public o<a> a4() {
            return i("simulator_play_records");
        }

        public org.androidannotations.api.sharedpreferences.h<a> b0() {
            return g("downloadSpeedUpCountCurrentAD");
        }

        public o<a> b1() {
            return i("homeFastThe_new");
        }

        public j<a> b2() {
            return h("lastGameShowOnlineCouponTimeGuest");
        }

        public o<a> b3() {
            return i("offlineId");
        }

        public o<a> b4() {
            return i("simulator_psp_cfg");
        }

        public org.androidannotations.api.sharedpreferences.h<a> c0() {
            return g("downloadSpeedUpGameSize");
        }

        public o<a> c1() {
            return i("homeFastTopic");
        }

        public o<a> c2() {
            return i("lastGameTimePeriod");
        }

        public o<a> c3() {
            return i("packageName");
        }

        public o<a> c4() {
            return i("singleGameAdCfg");
        }

        public o<a> d0() {
            return i("downloadSpeedUpGames");
        }

        public o<a> d1() {
            return i("homeFastWillpay");
        }

        public o<a> d2() {
            return i("lastGameTimePeriodGuest");
        }

        public o<a> d3() {
            return i("packageType");
        }

        public o<a> d4() {
            return i("singleGameShowDialog");
        }

        public j<a> e0() {
            return h("downloadSpeedUpLastTime");
        }

        public org.androidannotations.api.sharedpreferences.c<a> e1() {
            return b("homeLegendGameTabClicked");
        }

        public o<a> e2() {
            return i("lastHomeDataMd5");
        }

        public org.androidannotations.api.sharedpreferences.h<a> e3() {
            return g("pageVersion");
        }

        public org.androidannotations.api.sharedpreferences.c<a> e4() {
            return b("soundnowIsNoSound");
        }

        public o<a> f0() {
            return i("downloadSpeedupCfg");
        }

        public org.androidannotations.api.sharedpreferences.c<a> f1() {
            return b("homeNetGameTabClicked");
        }

        public o<a> f2() {
            return i("lastInstallApp");
        }

        public o<a> f3() {
            return i("pd_ad_config");
        }

        public o<a> f4() {
            return i("ssidBefore");
        }

        public org.androidannotations.api.sharedpreferences.c<a> g0() {
            return b("download_game_switch");
        }

        public org.androidannotations.api.sharedpreferences.h<a> g1() {
            return g("homePopupAdCount");
        }

        public o<a> g2() {
            return i("lastInstallAppFinish");
        }

        public o<a> g3() {
            return i("platform");
        }

        public o<a> g4() {
            return i("ssp_cfg");
        }

        public o<a> h0() {
            return i("emuApkTableList");
        }

        public o<a> h1() {
            return i("homePopupAdLast");
        }

        public j<a> h2() {
            return h("lastLaunchAppTime");
        }

        public org.androidannotations.api.sharedpreferences.c<a> h3() {
            return b("plugHasUpdate");
        }

        public org.androidannotations.api.sharedpreferences.h<a> h4() {
            return g("startGameShowLoginNumber");
        }

        public o<a> i0() {
            return i("emulatorCheckpointUrl");
        }

        public j<a> i1() {
            return h("homePopupAdLastTime");
        }

        public o<a> i2() {
            return i("lastLaunchCloudGameId");
        }

        public o<a> i3() {
            return i("privateDomainFeedbackInfo");
        }

        public org.androidannotations.api.sharedpreferences.h<a> i4() {
            return g("startgameLogintimes_open_login");
        }

        public o<a> j0() {
            return i("emulatorGoldenFingerUrl");
        }

        public o<a> j1() {
            return i("homeTopTypeEntrance");
        }

        public j<a> j2() {
            return h("lastLaunchCloudGameTipTime");
        }

        public org.androidannotations.api.sharedpreferences.h<a> j3() {
            return g("pspAdShowTime");
        }

        public org.androidannotations.api.sharedpreferences.h<a> j4() {
            return g("startgametimes_open_certify");
        }

        public org.androidannotations.api.sharedpreferences.c<a> k() {
            return b("DownloadRecoderNotice");
        }

        public o<a> k0() {
            return i("emulatorOneSkillUrl");
        }

        public org.androidannotations.api.sharedpreferences.h<a> k1() {
            return g("home_common_quark_ad_times");
        }

        public o<a> k2() {
            return i("lastLaunchModGameId");
        }

        public org.androidannotations.api.sharedpreferences.h<a> k3() {
            return g("pspAdShowTimeSwitch");
        }

        public o<a> k4() {
            return i("statisticVisit");
        }

        public org.androidannotations.api.sharedpreferences.c<a> l() {
            return b("DownloadRecoderNoticeMarcket");
        }

        public org.androidannotations.api.sharedpreferences.h<a> l0() {
            return g("emulatorStartAdCount");
        }

        public org.androidannotations.api.sharedpreferences.h<a> l1() {
            return g("insatllAppFirst");
        }

        public o<a> l2() {
            return i("lastLoginAccount");
        }

        public o<a> l3() {
            return i("pspGameAdCfg");
        }

        public o<a> l4() {
            return i("thAdSwitchCfg");
        }

        public org.androidannotations.api.sharedpreferences.c<a> m() {
            return b("FirstShowMYgameTopTip");
        }

        public o<a> m0() {
            return i("endGameConfig");
        }

        public o<a> m1() {
            return i("insatllAppFirstData");
        }

        public j<a> m2() {
            return h("lastMainShowOnlineCouponTime");
        }

        public o<a> m3() {
            return i("quarkGameDownload");
        }

        public org.androidannotations.api.sharedpreferences.h<a> m4() {
            return g("todayShowRealNameCount");
        }

        public org.androidannotations.api.sharedpreferences.h<a> n() {
            return g("Member_id");
        }

        public o<a> n0() {
            return i("exclude_simulator_type");
        }

        public j<a> n1() {
            return h("installApplastNoticeTime");
        }

        public j<a> n2() {
            return h("lastMainShowOnlineCouponTimeGuest");
        }

        public org.androidannotations.api.sharedpreferences.h<a> n3() {
            return g("quark_click_count");
        }

        public o<a> n4() {
            return i(Constants.TOKEN);
        }

        public o<a> o() {
            return i("Member_name");
        }

        public org.androidannotations.api.sharedpreferences.h<a> o0() {
            return g("fastEntryGuide");
        }

        public org.androidannotations.api.sharedpreferences.c<a> o1() {
            return b("isAcActived");
        }

        public o<a> o2() {
            return i("lastMainTimePeriod");
        }

        public org.androidannotations.api.sharedpreferences.h<a> o3() {
            return g("quark_display_count");
        }

        public j<a> o4() {
            return h("touriseTUID");
        }

        public o<a> p() {
            return i("PaBiData");
        }

        public o<a> p0() {
            return i("fightWifiInputIP");
        }

        public org.androidannotations.api.sharedpreferences.c<a> p1() {
            return b("isAutoWifiDownUpdate");
        }

        public o<a> p2() {
            return i("lastMainTimePeriodGuest");
        }

        public org.androidannotations.api.sharedpreferences.h<a> p3() {
            return g("quark_display_mode");
        }

        public org.androidannotations.api.sharedpreferences.c<a> p4() {
            return b("uncompleteDownload");
        }

        public o<a> q() {
            return i("abAccountData");
        }

        public org.androidannotations.api.sharedpreferences.c<a> q0() {
            return b("firstArena");
        }

        public org.androidannotations.api.sharedpreferences.h<a> q1() {
            return g("isBsideInt");
        }

        public j<a> q2() {
            return h("lastQuitShowOnlineCouponTime");
        }

        public org.androidannotations.api.sharedpreferences.h<a> q3() {
            return g("quark_feed_back_not_ask");
        }

        public o<a> q4() {
            return i("upLoadConfig");
        }

        public org.androidannotations.api.sharedpreferences.h<a> r() {
            return g("ab_side");
        }

        public org.androidannotations.api.sharedpreferences.c<a> r0() {
            return b("firstArenaFilterVisit");
        }

        public org.androidannotations.api.sharedpreferences.c<a> r1() {
            return b("isCanShowAddShortcut");
        }

        public j<a> r2() {
            return h("lastQuitShowOnlineCouponTimeGuset");
        }

        public j<a> r3() {
            return h("quark_first_launch_time");
        }

        public o<a> r4() {
            return i("upLoadFileName");
        }

        public o<a> s() {
            return i("accountData");
        }

        public org.androidannotations.api.sharedpreferences.c<a> s0() {
            return b("firstClickShoubing");
        }

        public org.androidannotations.api.sharedpreferences.c<a> s1() {
            return b("isFcActived");
        }

        public j<a> s2() {
            return h("lastRealNameCheckTime");
        }

        public o<a> s3() {
            return i("quark_last_down_game_info");
        }

        public o<a> s4() {
            return i("upLoadGame");
        }

        public o<a> t() {
            return i("accountDataV2");
        }

        public org.androidannotations.api.sharedpreferences.c<a> t0() {
            return b("firstClickUsericon");
        }

        public org.androidannotations.api.sharedpreferences.c<a> t1() {
            return b("isFightActivity");
        }

        public j<a> t2() {
            return h("lastSendAppTime");
        }

        public org.androidannotations.api.sharedpreferences.h<a> t3() {
            return g("quark_launch_app_times");
        }

        public org.androidannotations.api.sharedpreferences.h<a> t4() {
            return g("upLoadState");
        }

        public o<a> u() {
            return i("accountDataV3");
        }

        public org.androidannotations.api.sharedpreferences.c<a> u0() {
            return b("firstInstallAppCompanyDialog");
        }

        public org.androidannotations.api.sharedpreferences.c<a> u1() {
            return b("isFirst35");
        }

        public j<a> u2() {
            return h("lastShowBespeakTipTime");
        }

        public org.androidannotations.api.sharedpreferences.h<a> u3() {
            return g("quark_launch_service_times");
        }

        public org.androidannotations.api.sharedpreferences.c<a> u4() {
            return b("uploadRecoderNotice");
        }

        public o<a> v() {
            return i("accountLoginToken");
        }

        public org.androidannotations.api.sharedpreferences.c<a> v0() {
            return b("firstIntentgamedetialVideo");
        }

        public org.androidannotations.api.sharedpreferences.c<a> v1() {
            return b("isFirstClickClassify");
        }

        public j<a> v2() {
            return h("lastShowCloudGameSignTipTime");
        }

        public org.androidannotations.api.sharedpreferences.c<a> v3() {
            return b("rankNotify");
        }

        public o<a> v4() {
            return i("uploadType2");
        }

        public org.androidannotations.api.sharedpreferences.h<a> w() {
            return g("accountLoginUID");
        }

        public org.androidannotations.api.sharedpreferences.c<a> w0() {
            return b("firstNewSplash");
        }

        public org.androidannotations.api.sharedpreferences.c<a> w1() {
            return b("isFirstCommendVersion");
        }

        public j<a> w2() {
            return h("lastShowLoginGuiedTime");
        }

        public o<a> w3() {
            return i("rankingMenu");
        }

        public o<a> w4() {
            return i("userCenterViewConfigs");
        }

        public o<a> x() {
            return i("adIdArc");
        }

        public org.androidannotations.api.sharedpreferences.c<a> x0() {
            return b("firstNewSplashV2");
        }

        public org.androidannotations.api.sharedpreferences.c<a> x1() {
            return b("isFirstCouldShowPopw");
        }

        public j<a> x2() {
            return h("lastShowNotInstallTime");
        }

        public o<a> x3() {
            return i("rankingMenu2");
        }

        public o<a> x4() {
            return i("userCenterViewConfigsv2");
        }

        public o<a> y() {
            return i("adIdCommonH");
        }

        public org.androidannotations.api.sharedpreferences.c<a> y0() {
            return b("firstShowUserPermiss");
        }

        public org.androidannotations.api.sharedpreferences.c<a> y1() {
            return b("isFirstCustomApk");
        }

        public j<a> y2() {
            return h("lastShowNotOpenTime");
        }

        public o<a> y3() {
            return i("recomDataJson");
        }

        public o<a> y4() {
            return i("userId");
        }

        public o<a> z() {
            return i("adIdCommonV");
        }

        public org.androidannotations.api.sharedpreferences.c<a> z0() {
            return b("firstUninstallTipShow");
        }

        public org.androidannotations.api.sharedpreferences.c<a> z1() {
            return b("isFirstLocalShowPopw");
        }

        public j<a> z2() {
            return h("lastShowRealNameTime");
        }

        public o<a> z3() {
            return i("rpcUserId");
        }

        public j<a> z4() {
            return h("userLastStartAPP");
        }
    }

    public PrefDef_(Context context) {
        super(context.getSharedPreferences("PrefDef", 0));
    }

    public org.androidannotations.api.sharedpreferences.d DownloadRecoderNotice() {
        return booleanField("DownloadRecoderNotice", true);
    }

    public org.androidannotations.api.sharedpreferences.d DownloadRecoderNoticeMarcket() {
        return booleanField("DownloadRecoderNoticeMarcket", true);
    }

    public org.androidannotations.api.sharedpreferences.d FirstShowMYgameTopTip() {
        return booleanField("FirstShowMYgameTopTip", true);
    }

    public i Member_id() {
        return intField("Member_id", 1);
    }

    public p Member_name() {
        return stringField("Member_name", "");
    }

    public p PaBiData() {
        return stringField("PaBiData", "");
    }

    public p abAccountData() {
        return stringField("abAccountData", "");
    }

    public i ab_side() {
        return intField("ab_side", 0);
    }

    public p accountData() {
        return stringField("accountData", "");
    }

    public p accountDataV2() {
        return stringField("accountDataV2", "");
    }

    public p accountDataV3() {
        return stringField("accountDataV3", "");
    }

    public p accountLoginToken() {
        return stringField("accountLoginToken", "");
    }

    public i accountLoginUID() {
        return intField("accountLoginUID", -1);
    }

    public p adIdArc() {
        return stringField("adIdArc", "");
    }

    public p adIdCommonH() {
        return stringField("adIdCommonH", "919681372");
    }

    public p adIdCommonV() {
        return stringField("adIdCommonV", "919681774");
    }

    public p adIdDownloadSpeedUp() {
        return stringField("adIdDownloadSpeedUp", "919681084");
    }

    public p adIdPsp() {
        return stringField("adIdPsp", "919681132");
    }

    public p addedShortcutGames() {
        return stringField("addedShortcutGames", "");
    }

    public p androidIdNullsKey() {
        return stringField("androidIdNullsKey", "");
    }

    public org.androidannotations.api.sharedpreferences.d annonunceWhenDownload() {
        return booleanField("annonunceWhenDownload", true);
    }

    public org.androidannotations.api.sharedpreferences.d anti_addiction_switch() {
        return booleanField("anti_addiction_switch", false);
    }

    public i apName() {
        return intField("apName", 0);
    }

    public p arcadeGameAdCfg() {
        return stringField("arcadeGameAdCfg", "");
    }

    public p arenaDialogAdData() {
        return stringField("arenaDialogAdData", "");
    }

    public org.androidannotations.api.sharedpreferences.d autoLogin() {
        return booleanField("autoLogin", true);
    }

    public p availableLoginMethod() {
        return stringField("availableLoginMethod", "");
    }

    public p battleWelcomeIn() {
        return stringField("battleWelcomeIn", "");
    }

    public p changeNickNameNotice() {
        return stringField("changeNickNameNotice", "消耗铜板更改昵称");
    }

    public org.androidannotations.api.sharedpreferences.d classFyFirstOpen() {
        return booleanField("classFyFirstOpen", true);
    }

    public k clickFloatViewTime() {
        return longField("clickFloatViewTime", 0L);
    }

    public p cloudGameConfig() {
        return stringField("cloudGameConfig", "");
    }

    public p cloudVipLink() {
        return stringField("cloudVipLink", "http://anv3btapi.5fun.com/user/activity/cloud_archive");
    }

    public p cloud_gaming_section_id() {
        return stringField("cloud_gaming_section_id", "");
    }

    public p commentToken() {
        return stringField("commentToken", "");
    }

    public k commentnoticeTime() {
        return longField("commentnoticeTime", 0L);
    }

    public p community_entrance_title() {
        return stringField("community_entrance_title", "去社区看看");
    }

    public org.androidannotations.api.sharedpreferences.d continueOnWifi() {
        return booleanField("continueOnWifi", true);
    }

    public p defaultSearchKeyword() {
        return stringField("defaultSearchKeyword", "");
    }

    public p downloadPath() {
        return stringField("downloadPath", "");
    }

    public i downloadSpeedUpCount() {
        return intField("downloadSpeedUpCount", 0);
    }

    public i downloadSpeedUpCountAD() {
        return intField("downloadSpeedUpCountAD", 0);
    }

    public i downloadSpeedUpCountCurrent() {
        return intField("downloadSpeedUpCountCurrent", 0);
    }

    public i downloadSpeedUpCountCurrentAD() {
        return intField("downloadSpeedUpCountCurrentAD", 0);
    }

    public i downloadSpeedUpGameSize() {
        return intField("downloadSpeedUpGameSize", 0);
    }

    public p downloadSpeedUpGames() {
        return stringField("downloadSpeedUpGames", "");
    }

    public k downloadSpeedUpLastTime() {
        return longField("downloadSpeedUpLastTime", 0L);
    }

    public p downloadSpeedupCfg() {
        return stringField("downloadSpeedupCfg", "");
    }

    public org.androidannotations.api.sharedpreferences.d download_game_switch() {
        return booleanField("download_game_switch", true);
    }

    public a edit() {
        return new a(getSharedPreferences());
    }

    public p emuApkTableList() {
        return stringField("emuApkTableList", "");
    }

    public p emulatorCheckpointUrl() {
        return stringField("emulatorCheckpointUrl", "");
    }

    public p emulatorGoldenFingerUrl() {
        return stringField("emulatorGoldenFingerUrl", "");
    }

    public p emulatorOneSkillUrl() {
        return stringField("emulatorOneSkillUrl", "");
    }

    public i emulatorStartAdCount() {
        return intField("emulatorStartAdCount", 0);
    }

    public p endGameConfig() {
        return stringField("endGameConfig", "");
    }

    public p exclude_simulator_type() {
        return stringField("exclude_simulator_type", "");
    }

    public i fastEntryGuide() {
        return intField("fastEntryGuide", 0);
    }

    public p fightWifiInputIP() {
        return stringField("fightWifiInputIP", "");
    }

    public org.androidannotations.api.sharedpreferences.d firstArena() {
        return booleanField("firstArena", true);
    }

    public org.androidannotations.api.sharedpreferences.d firstArenaFilterVisit() {
        return booleanField("firstArenaFilterVisit", true);
    }

    public org.androidannotations.api.sharedpreferences.d firstClickShoubing() {
        return booleanField("firstClickShoubing", true);
    }

    public org.androidannotations.api.sharedpreferences.d firstClickUsericon() {
        return booleanField("firstClickUsericon", true);
    }

    public org.androidannotations.api.sharedpreferences.d firstInstallAppCompanyDialog() {
        return booleanField("firstInstallAppCompanyDialog", true);
    }

    public org.androidannotations.api.sharedpreferences.d firstIntentgamedetialVideo() {
        return booleanField("firstIntentgamedetialVideo", true);
    }

    public org.androidannotations.api.sharedpreferences.d firstNewSplash() {
        return booleanField("firstNewSplash", true);
    }

    public org.androidannotations.api.sharedpreferences.d firstNewSplashV2() {
        return booleanField("firstNewSplashV2", true);
    }

    public org.androidannotations.api.sharedpreferences.d firstShowUserPermiss() {
        return booleanField("firstShowUserPermiss", true);
    }

    public org.androidannotations.api.sharedpreferences.d firstUninstallTipShow() {
        return booleanField("firstUninstallTipShow", false);
    }

    public org.androidannotations.api.sharedpreferences.d forumFirstClickUsericon() {
        return booleanField("forumFirstClickUsericon", true);
    }

    public p found_game_tab() {
        return stringField("found_game_tab", "{\"tips_info\":{\"title\":\"闪玩\",\"display_switch\":true},\"title_info\":[{\"index\":4,\"title\":\"闪玩\",\"display_index\":1,\"selected\":false},{\"index\":0,\"title\":\"精选\",\"display_index\":2,\"selected\":true},{\"index\":1,\"title\":\"排行\",\"display_index\":3,\"selected\":false},{\"index\":2,\"title\":\"分类\",\"display_index\":4,\"selected\":false},{\"index\":3,\"title\":\"游戏单\",\"display_index\":5,\"selected\":false}]}");
    }

    public p gameHasFeedBack() {
        return stringField("gameHasFeedBack", "");
    }

    public p gameTimeLvCfg() {
        return stringField("gameTimeLvCfg", "");
    }

    public p gameTopAd() {
        return stringField("gameTopAd", "");
    }

    public p gameTypeList() {
        return stringField("gameTypeList", "");
    }

    public p gameWorldActive() {
        return stringField("gameWorldActive", "");
    }

    public p gameWorldGradeList() {
        return stringField("gameWorldGradeList", "");
    }

    public p gameWorldWorshipTop() {
        return stringField("gameWorldWorshipTop", "");
    }

    public p game_section_id() {
        return stringField("game_section_id", "");
    }

    public i getArchiveCoinPref() {
        return intField("getArchiveCoinPref", 20);
    }

    public p getLastPayType() {
        return stringField("getLastPayType", PayCenterOrderRequest.ACTION_ALI_PAY);
    }

    public org.androidannotations.api.sharedpreferences.d gprsIsOpen() {
        return booleanField("gprsIsOpen", true);
    }

    public i gprsNoticeInfo() {
        return intField("gprsNoticeInfo", 4);
    }

    public p hasShowAdInfo() {
        return stringField("hasShowAdInfo", "");
    }

    public org.androidannotations.api.sharedpreferences.d hasShowEndGameBadge() {
        return booleanField("hasShowEndGameBadge", false);
    }

    public org.androidannotations.api.sharedpreferences.d hasShowMiniGameBadge() {
        return booleanField("hasShowMiniGameBadge", false);
    }

    public p hasShowModInstallGames() {
        return stringField("hasShowModInstallGames", "");
    }

    public org.androidannotations.api.sharedpreferences.d hasTipCloudBall() {
        return booleanField("hasTipCloudBall", false);
    }

    public org.androidannotations.api.sharedpreferences.d has_launch_quark() {
        return booleanField("has_launch_quark", false);
    }

    public org.androidannotations.api.sharedpreferences.d hideGameTopAd() {
        return booleanField("hideGameTopAd", false);
    }

    public p hide_app_pwd() {
        return stringField("hide_app_pwd", "");
    }

    public i hide_app_switch() {
        return intField("hide_app_switch", 0);
    }

    public p homeAllData() {
        return stringField("homeAllData", "");
    }

    public p homeAllDataV3() {
        return stringField("homeAllDataV3", "");
    }

    public p homeAllDataV4() {
        return stringField("homeAllDataV4", "");
    }

    public k homeCloudActiveTime() {
        return longField("homeCloudActiveTime", 0L);
    }

    public p homeFastThe_new() {
        return stringField("homeFastThe_new", "");
    }

    public p homeFastTopic() {
        return stringField("homeFastTopic", "");
    }

    public p homeFastWillpay() {
        return stringField("homeFastWillpay", "");
    }

    public org.androidannotations.api.sharedpreferences.d homeLegendGameTabClicked() {
        return booleanField("homeLegendGameTabClicked", false);
    }

    public org.androidannotations.api.sharedpreferences.d homeNetGameTabClicked() {
        return booleanField("homeNetGameTabClicked", false);
    }

    public i homePopupAdCount() {
        return intField("homePopupAdCount", 0);
    }

    public p homePopupAdLast() {
        return stringField("homePopupAdLast", "");
    }

    public k homePopupAdLastTime() {
        return longField("homePopupAdLastTime", 0L);
    }

    public p homeTopTypeEntrance() {
        return stringField("homeTopTypeEntrance", "");
    }

    public i home_common_quark_ad_times() {
        return intField("home_common_quark_ad_times", 0);
    }

    public i insatllAppFirst() {
        return intField("insatllAppFirst", -8);
    }

    public p insatllAppFirstData() {
        return stringField("insatllAppFirstData", "");
    }

    public k installApplastNoticeTime() {
        return longField("installApplastNoticeTime", 0L);
    }

    public org.androidannotations.api.sharedpreferences.d isAcActived() {
        return booleanField("isAcActived", false);
    }

    public org.androidannotations.api.sharedpreferences.d isAutoWifiDownUpdate() {
        return booleanField("isAutoWifiDownUpdate", true);
    }

    public i isBsideInt() {
        return intField("isBsideInt", 0);
    }

    public org.androidannotations.api.sharedpreferences.d isCanShowAddShortcut() {
        return booleanField("isCanShowAddShortcut", true);
    }

    public org.androidannotations.api.sharedpreferences.d isFcActived() {
        return booleanField("isFcActived", false);
    }

    public org.androidannotations.api.sharedpreferences.d isFightActivity() {
        return booleanField("isFightActivity", false);
    }

    public org.androidannotations.api.sharedpreferences.d isFirst35() {
        return booleanField("isFirst35", true);
    }

    public org.androidannotations.api.sharedpreferences.d isFirstClickClassify() {
        return booleanField("isFirstClickClassify", true);
    }

    public org.androidannotations.api.sharedpreferences.d isFirstCommendVersion() {
        return booleanField("isFirstCommendVersion", true);
    }

    public org.androidannotations.api.sharedpreferences.d isFirstCouldShowPopw() {
        return booleanField("isFirstCouldShowPopw", true);
    }

    public org.androidannotations.api.sharedpreferences.d isFirstCustomApk() {
        return booleanField("isFirstCustomApk", true);
    }

    public org.androidannotations.api.sharedpreferences.d isFirstLocalShowPopw() {
        return booleanField("isFirstLocalShowPopw", true);
    }

    public org.androidannotations.api.sharedpreferences.d isFirstRemeShowPopw() {
        return booleanField("isFirstRemeShowPopw", true);
    }

    public org.androidannotations.api.sharedpreferences.d isFirstRun() {
        return booleanField("isFirstRun", true);
    }

    public org.androidannotations.api.sharedpreferences.d isFirstRunApkBackup() {
        return booleanField("isFirstRunApkBackup", true);
    }

    public k isFirstRunApkBackupLong() {
        return longField("isFirstRunApkBackupLong", 0L);
    }

    public k isFirstRunGameCarefullyLong() {
        return longField("isFirstRunGameCarefullyLong", 0L);
    }

    public org.androidannotations.api.sharedpreferences.d isFirstRunRecomeWifi() {
        return booleanField("isFirstRunRecomeWifi", true);
    }

    public org.androidannotations.api.sharedpreferences.d isFirstbuyShowPopw() {
        return booleanField("isFirstbuyShowPopw", true);
    }

    public org.androidannotations.api.sharedpreferences.d isHideAdBlock() {
        return booleanField("isHideAdBlock", false);
    }

    public org.androidannotations.api.sharedpreferences.d isHomepagePlayVideo() {
        return booleanField("isHomepagePlayVideo", true);
    }

    public org.androidannotations.api.sharedpreferences.d isLogin() {
        return booleanField("isLogin", false);
    }

    public org.androidannotations.api.sharedpreferences.d isNewFinishedGame() {
        return booleanField("isNewFinishedGame", false);
    }

    public p isNoShowAddShortcut() {
        return stringField("isNoShowAddShortcut", "");
    }

    public org.androidannotations.api.sharedpreferences.d isOnlyWifiReconnect() {
        return booleanField("isOnlyWifiReconnect", true);
    }

    public org.androidannotations.api.sharedpreferences.d isQuarkEnable() {
        return booleanField("isQuarkEnable", true);
    }

    public org.androidannotations.api.sharedpreferences.d isQuarkSilentDownload() {
        return booleanField("isQuarkSilentDownload", true);
    }

    public org.androidannotations.api.sharedpreferences.d isReloadClassify() {
        return booleanField("isReloadClassify", true);
    }

    public org.androidannotations.api.sharedpreferences.d isShowEditorRecoomand() {
        return booleanField("isShowEditorRecoomand", true);
    }

    public org.androidannotations.api.sharedpreferences.d isShowLuckyEggBadge() {
        return booleanField("isShowLuckyEggBadge", true);
    }

    public org.androidannotations.api.sharedpreferences.d isShowSplash() {
        return booleanField("isShowSplash", false);
    }

    public org.androidannotations.api.sharedpreferences.d isShowVideo() {
        return booleanField("isShowVideo", false);
    }

    public org.androidannotations.api.sharedpreferences.d isWifiConnectedBefore() {
        return booleanField("isWifiConnectedBefore", false);
    }

    public k lastApplyReadPhonePermission() {
        return longField("lastApplyReadPhonePermission", 0L);
    }

    public k lastApplyReadPhonePermissionOnRecom() {
        return longField("lastApplyReadPhonePermissionOnRecom", 0L);
    }

    public k lastCheckInTime() {
        return longField("lastCheckInTime", 0L);
    }

    public k lastCheckTokenTick() {
        return longField("lastCheckTokenTick", 0L);
    }

    public p lastClickPageAD() {
        return stringField("lastClickPageAD", "12345");
    }

    public k lastGameShowOnlineCouponTime() {
        return longField("lastGameShowOnlineCouponTime", 0L);
    }

    public k lastGameShowOnlineCouponTimeGuest() {
        return longField("lastGameShowOnlineCouponTimeGuest", 0L);
    }

    public p lastGameTimePeriod() {
        return stringField("lastGameTimePeriod", "");
    }

    public p lastGameTimePeriodGuest() {
        return stringField("lastGameTimePeriodGuest", "");
    }

    public p lastHomeDataMd5() {
        return stringField("lastHomeDataMd5", "");
    }

    public p lastInstallApp() {
        return stringField("lastInstallApp", "");
    }

    public p lastInstallAppFinish() {
        return stringField("lastInstallAppFinish", "");
    }

    public k lastLaunchAppTime() {
        return longField("lastLaunchAppTime", 0L);
    }

    public p lastLaunchCloudGameId() {
        return stringField("lastLaunchCloudGameId", "");
    }

    public k lastLaunchCloudGameTipTime() {
        return longField("lastLaunchCloudGameTipTime", 0L);
    }

    public p lastLaunchModGameId() {
        return stringField("lastLaunchModGameId", "");
    }

    public p lastLoginAccount() {
        return stringField("lastLoginAccount", "");
    }

    public k lastMainShowOnlineCouponTime() {
        return longField("lastMainShowOnlineCouponTime", 0L);
    }

    public k lastMainShowOnlineCouponTimeGuest() {
        return longField("lastMainShowOnlineCouponTimeGuest", 0L);
    }

    public p lastMainTimePeriod() {
        return stringField("lastMainTimePeriod", "");
    }

    public p lastMainTimePeriodGuest() {
        return stringField("lastMainTimePeriodGuest", "");
    }

    public k lastQuitShowOnlineCouponTime() {
        return longField("lastQuitShowOnlineCouponTime", 0L);
    }

    public k lastQuitShowOnlineCouponTimeGuset() {
        return longField("lastQuitShowOnlineCouponTimeGuset", 0L);
    }

    public k lastRealNameCheckTime() {
        return longField("lastRealNameCheckTime", 0L);
    }

    public k lastSendAppTime() {
        return longField("lastSendAppTime", 0L);
    }

    public k lastShowBespeakTipTime() {
        return longField("lastShowBespeakTipTime", 0L);
    }

    public k lastShowCloudGameSignTipTime() {
        return longField("lastShowCloudGameSignTipTime", 0L);
    }

    public k lastShowLoginGuiedTime() {
        return longField("lastShowLoginGuiedTime", 0L);
    }

    public k lastShowNotInstallTime() {
        return longField("lastShowNotInstallTime", 0L);
    }

    public k lastShowNotOpenTime() {
        return longField("lastShowNotOpenTime", 0L);
    }

    public k lastShowRealNameTime() {
        return longField("lastShowRealNameTime", 0L);
    }

    public p lastShowSplashImage() {
        return stringField("lastShowSplashImage", "");
    }

    public p lastShowTOUTIAOAd() {
        return stringField("lastShowTOUTIAOAd", "");
    }

    public p lastStartSimulatorCore() {
        return stringField("lastStartSimulatorCore", "");
    }

    public p lastTopTip() {
        return stringField("lastTopTip", "");
    }

    public k last_update_time() {
        return longField("last_update_time", 0L);
    }

    public p launchGameIdCheckVaExtInstall() {
        return stringField("launchGameIdCheckVaExtInstall", "");
    }

    public p launchGameUnsupportedTipIds() {
        return stringField("launchGameUnsupportedTipIds", "");
    }

    public org.androidannotations.api.sharedpreferences.d launchPluginTip() {
        return booleanField("launchPluginTip", false);
    }

    public org.androidannotations.api.sharedpreferences.d launch_game_switch() {
        return booleanField("launch_game_switch", true);
    }

    public p liveSubtitle() {
        return stringField("liveSubtitle", "直播火热内侧中");
    }

    public p liveTitle() {
        return stringField("liveTitle", "啪友直播");
    }

    public p localUserIcon() {
        return stringField("localUserIcon", "");
    }

    public p location() {
        return stringField("location", "");
    }

    public p lodingImageMD5() {
        return stringField("lodingImageMD5", "");
    }

    public org.androidannotations.api.sharedpreferences.d loginPermissHasallow() {
        return booleanField("loginPermissHasallow", false);
    }

    public p md5FileTag() {
        return stringField("md5FileTag", "");
    }

    public p mod_enhance_ad_cfg() {
        return stringField("mod_enhance_ad_cfg", "");
    }

    public p mod_normal_ad_cfg() {
        return stringField("mod_normal_ad_cfg", "");
    }

    public p myGameAllTabSort() {
        return stringField("myGameAllTabSort", "");
    }

    public p myGameTabAdShowIndex() {
        return stringField("myGameTabAdShowIndex", "");
    }

    public org.androidannotations.api.sharedpreferences.d needShowPermissdialog() {
        return booleanField("needShowPermissdialog", true);
    }

    public org.androidannotations.api.sharedpreferences.d needsendRigeister() {
        return booleanField("needsendRigeister", true);
    }

    public i net_game_count_down() {
        return intField("net_game_count_down", 5000);
    }

    public org.androidannotations.api.sharedpreferences.d noFavoriteTips() {
        return booleanField("noFavoriteTips", false);
    }

    public org.androidannotations.api.sharedpreferences.d noPromptDownload() {
        return booleanField("noPromptDownload", false);
    }

    public org.androidannotations.api.sharedpreferences.d non_online_user_switch() {
        return booleanField("non_online_user_switch", false);
    }

    public i normalDownloadCount() {
        return intField("normalDownloadCount", 0);
    }

    public p offlineId() {
        return stringField("offlineId", "");
    }

    public p packageName() {
        return stringField("packageName", "com.join.android.app.mgsim.wufun");
    }

    public p packageType() {
        return stringField("packageType", "wufunNormal");
    }

    public i pageVersion() {
        return intField("pageVersion", 0);
    }

    public p pd_ad_config() {
        return stringField("pd_ad_config", "");
    }

    public p platform() {
        return stringField("platform", "wufun");
    }

    public org.androidannotations.api.sharedpreferences.d plugHasUpdate() {
        return booleanField("plugHasUpdate", false);
    }

    public p privateDomainFeedbackInfo() {
        return stringField("privateDomainFeedbackInfo", "");
    }

    public i pspAdShowTime() {
        return intField("pspAdShowTime", 5);
    }

    public i pspAdShowTimeSwitch() {
        return intField("pspAdShowTimeSwitch", 1);
    }

    public p pspGameAdCfg() {
        return stringField("pspGameAdCfg", "");
    }

    public p quarkGameDownload() {
        return stringField("quarkGameDownload", "");
    }

    public i quark_click_count() {
        return intField("quark_click_count", 0);
    }

    public i quark_display_count() {
        return intField("quark_display_count", 0);
    }

    public i quark_display_mode() {
        return intField("quark_display_mode", 0);
    }

    public i quark_feed_back_not_ask() {
        return intField("quark_feed_back_not_ask", 0);
    }

    public k quark_first_launch_time() {
        return longField("quark_first_launch_time", 0L);
    }

    public p quark_last_down_game_info() {
        return stringField("quark_last_down_game_info", "");
    }

    public i quark_launch_app_times() {
        return intField("quark_launch_app_times", 0);
    }

    public i quark_launch_service_times() {
        return intField("quark_launch_service_times", 0);
    }

    public org.androidannotations.api.sharedpreferences.d rankNotify() {
        return booleanField("rankNotify", true);
    }

    public p rankingMenu() {
        return stringField("rankingMenu", "1|网游榜,2|单机榜,3|模拟器榜");
    }

    public p rankingMenu2() {
        return stringField("rankingMenu2", "[{\"id\":1,\"title\":\"网游榜\"},{\"id\":2,\"title\":\"单机榜\"},{\"id\":3,\"title\":\"模拟器榜\"}]");
    }

    public p recomDataJson() {
        return stringField("recomDataJson", "");
    }

    public p rpcUserId() {
        return stringField("rpcUserId", "");
    }

    public i runRomFirst() {
        return intField("runRomFirst", -8);
    }

    public org.androidannotations.api.sharedpreferences.d sch_feed_back_switch() {
        return booleanField("sch_feed_back_switch", false);
    }

    public p sdcardData() {
        return stringField("sdcardData", "");
    }

    public org.androidannotations.api.sharedpreferences.d sdcardisFirst() {
        return booleanField("sdcardisFirst", true);
    }

    public org.androidannotations.api.sharedpreferences.d sdkInit() {
        return booleanField("sdkInit", false);
    }

    public org.androidannotations.api.sharedpreferences.d sdkInitReady() {
        return booleanField("sdkInitReady", false);
    }

    public p searchHintCache() {
        return stringField("searchHintCache", "");
    }

    public p searchguesslikeData() {
        return stringField("searchguesslikeData", "");
    }

    public org.androidannotations.api.sharedpreferences.d shareTipClosed() {
        return booleanField("shareTipClosed", false);
    }

    public org.androidannotations.api.sharedpreferences.d showAnBattle() {
        return booleanField("showAnBattle", false);
    }

    public org.androidannotations.api.sharedpreferences.d showGuideCreateEndGame() {
        return booleanField("showGuideCreateEndGame", true);
    }

    public org.androidannotations.api.sharedpreferences.d showHistroyHint() {
        return booleanField("showHistroyHint", true);
    }

    public p showIndex() {
        return stringField("showIndex", "2");
    }

    public p showName() {
        return stringField("showName", "");
    }

    public org.androidannotations.api.sharedpreferences.d show_unknown_source() {
        return booleanField("show_unknown_source", false);
    }

    public org.androidannotations.api.sharedpreferences.d simulatorLaunchAchievementTabRedPointShown() {
        return booleanField("simulatorLaunchAchievementTabRedPointShown", true);
    }

    public p simulator_exit_double_cfg() {
        return stringField("simulator_exit_double_cfg", "");
    }

    public p simulator_exit_information_cfg() {
        return stringField("simulator_exit_information_cfg", "");
    }

    public p simulator_exit_lottery_cfg() {
        return stringField("simulator_exit_lottery_cfg", "");
    }

    public p simulator_exit_open_cfg() {
        return stringField("simulator_exit_open_cfg", "");
    }

    public p simulator_fc_cfg() {
        return stringField("simulator_fc_cfg", "");
    }

    public p simulator_gba_cfg() {
        return stringField("simulator_gba_cfg", "");
    }

    public p simulator_gold_finger_cfg() {
        return stringField("simulator_gold_finger_cfg", "");
    }

    public p simulator_jj_cfg() {
        return stringField("simulator_jj_cfg", "");
    }

    public i simulator_last_ad_position() {
        return intField("simulator_last_ad_position", 0);
    }

    public p simulator_path_cfg() {
        return stringField("simulator_path_cfg", "");
    }

    public p simulator_play_records() {
        return stringField("simulator_play_records", "");
    }

    public p simulator_psp_cfg() {
        return stringField("simulator_psp_cfg", "");
    }

    public p singleGameAdCfg() {
        return stringField("singleGameAdCfg", "");
    }

    public p singleGameShowDialog() {
        return stringField("singleGameShowDialog", "");
    }

    public org.androidannotations.api.sharedpreferences.d soundnowIsNoSound() {
        return booleanField("soundnowIsNoSound", true);
    }

    public p ssidBefore() {
        return stringField("ssidBefore", WMConstants.TIMER_STAGE_NONE);
    }

    public p ssp_cfg() {
        return stringField("ssp_cfg", "");
    }

    public i startGameShowLoginNumber() {
        return intField("startGameShowLoginNumber", -1);
    }

    public i startgameLogintimes_open_login() {
        return intField("startgameLogintimes_open_login", -1);
    }

    public i startgametimes_open_certify() {
        return intField("startgametimes_open_certify", -1);
    }

    public p statisticVisit() {
        return stringField("statisticVisit", WMConstants.TIMER_STAGE_NONE);
    }

    public p thAdSwitchCfg() {
        return stringField("thAdSwitchCfg", "");
    }

    public i todayShowRealNameCount() {
        return intField("todayShowRealNameCount", -1);
    }

    public p token() {
        return stringField(Constants.TOKEN, "");
    }

    public k touriseTUID() {
        return longField("touriseTUID", 0L);
    }

    public org.androidannotations.api.sharedpreferences.d uncompleteDownload() {
        return booleanField("uncompleteDownload", true);
    }

    public p upLoadConfig() {
        return stringField("upLoadConfig", "");
    }

    public p upLoadFileName() {
        return stringField("upLoadFileName", "");
    }

    public p upLoadGame() {
        return stringField("upLoadGame", "");
    }

    public i upLoadState() {
        return intField("upLoadState", 0);
    }

    public org.androidannotations.api.sharedpreferences.d uploadRecoderNotice() {
        return booleanField("uploadRecoderNotice", true);
    }

    public p uploadType2() {
        return stringField("uploadType2", "");
    }

    public p userCenterViewConfigs() {
        return stringField("userCenterViewConfigs", "");
    }

    public p userCenterViewConfigsv2() {
        return stringField("userCenterViewConfigsv2", "");
    }

    public p userId() {
        return stringField("userId", "");
    }

    public k userLastStartAPP() {
        return longField("userLastStartAPP", 0L);
    }

    public k userLastStartGame() {
        return longField("userLastStartGame", 0L);
    }

    public i versionCode() {
        return intField("versionCode", 0);
    }

    public p video_init_cfg() {
        return stringField("video_init_cfg", "");
    }

    public i virtualDeviceState() {
        return intField("virtualDeviceState", -1);
    }

    public org.androidannotations.api.sharedpreferences.d w_channel_info_switch() {
        return booleanField("w_channel_info_switch", true);
    }

    public p web_disk_cfg() {
        return stringField("web_disk_cfg", "");
    }

    public p web_disk_position() {
        return stringField("web_disk_position", "{\"single_game\":{\"download_mode\":\"SIMPLE\",\"setup_mode\":\"VM\"},\"simulator_game\":{\"download_mode\":\"SIMPLE\",\"setup_mode\":\"VM\"},\"pc_game\":{\"download_mode\":\"PRIVATE_DOMAIN\",\"setup_mode\":\"NON_VM\"}}");
    }

    public i web_disk_switch() {
        return intField("web_disk_switch", 1);
    }

    public p wf_app_about() {
        return stringField("wf_app_about", "[{\"tpl_type\":0,\"bg_color\":\"\",\"title\":\"悟饭官网\",\"sub_title\":\"top_menu\",\"big_pic\":\"\",\"big_pic_h\":\"\",\"v_url\":\"\",\"label\":\"top_menu\",\"description\":\"www.5fun.com\",\"ad_switch\":1,\"quit_switch\":0,\"jp_info\":{\"link_type\":5,\"link_type_val\":\"http://www.5fun.com\",\"crc_link_type_val\":\"1287161774\",\"jump_type\":0,\"third_type\":0,\"is_more\":0,\"tpl_type\":0}},{\"tpl_type\":0,\"bg_color\":\"\",\"title\":\"悟饭公众号\",\"sub_title\":\"top_menu\",\"big_pic\":\"\",\"big_pic_h\":\"\",\"v_url\":\"\",\"label\":\"top_menu\",\"description\":\"wufangame\",\"ad_switch\":1,\"quit_switch\":0,\"jp_info\":{\"link_type\":5,\"link_type_val\":\"action_copy\",\"crc_link_type_val\":\"995819660\",\"jump_type\":0,\"third_type\":0,\"is_more\":0,\"tpl_type\":0}},{\"tpl_type\":0,\"bg_color\":\"\",\"title\":\"隐私政策\",\"sub_title\":\"top_menu\",\"big_pic\":\"\",\"big_pic_h\":\"\",\"v_url\":\"\",\"label\":\"top_menu\",\"description\":\"\",\"ad_switch\":1,\"quit_switch\":0,\"jp_info\":{\"link_type\":4,\"link_type_val\":\"http://anv3cjapi.wufan88.com/static/yszc.html?ver=10&type=0\",\"crc_link_type_val\":\"3126855503\",\"jump_type\":0,\"third_type\":0,\"is_more\":0,\"tpl_type\":0}},{\"tpl_type\":0,\"bg_color\":\"\",\"title\":\"用户协议\",\"sub_title\":\"top_menu\",\"big_pic\":\"\",\"big_pic_h\":\"\",\"v_url\":\"\",\"label\":\"top_menu\",\"description\":\"\",\"ad_switch\":1,\"quit_switch\":0,\"jp_info\":{\"link_type\":4,\"link_type_val\":\"http://anv3cjapi.wufan88.com/static/yhxkxy.html?ver=10&type=0\",\"crc_link_type_val\":\"3958127345\",\"jump_type\":0,\"third_type\":0,\"is_more\":0,\"tpl_type\":0}},{\"tpl_type\":0,\"bg_color\":\"\",\"title\":\"免责声明\",\"sub_title\":\"top_menu\",\"big_pic\":\"\",\"big_pic_h\":\"\",\"v_url\":\"\",\"label\":\"top_menu\",\"description\":\"\",\"ad_switch\":1,\"quit_switch\":0,\"jp_info\":{\"link_type\":4,\"link_type_val\":\"http://anv3cjapi.5fun.com/static/wf_mianze.html\",\"crc_link_type_val\":\"1302798286\",\"jump_type\":0,\"third_type\":0,\"is_more\":0,\"tpl_type\":0}},{\"tpl_type\":0,\"bg_color\":\"\",\"title\":\"版权所有：嘉兴微梦科技有限公司\",\"sub_title\":\"bottom\",\"big_pic\":\"\",\"big_pic_h\":\"\",\"v_url\":\"\",\"label\":\"bottom\",\"description\":\"\",\"ad_switch\":1,\"quit_switch\":0,\"jp_info\":{\"link_type\":5,\"link_type_val\":\"http://www.5fun.com\",\"crc_link_type_val\":\"1287161774\",\"jump_type\":0,\"third_type\":0,\"is_more\":0,\"tpl_type\":0}},{\"tpl_type\":0,\"bg_color\":\"\",\"title\":\"备案号：浙ICP备2021037593号-8A\",\"sub_title\":\"bottom\",\"big_pic\":\"\",\"big_pic_h\":\"\",\"v_url\":\"\",\"label\":\"bottom\",\"description\":\"\",\"ad_switch\":1,\"quit_switch\":0,\"jp_info\":{\"link_type\":5,\"link_type_val\":\"https://beian.miit.gov.cn\",\"crc_link_type_val\":\"2117562251\",\"jump_type\":0,\"third_type\":0,\"is_more\":0,\"tpl_type\":0}},{\"tpl_type\":0,\"bg_color\":\"\",\"title\":\"增值电信业务许可证：浙B2-20220692\",\"sub_title\":\"bottom\",\"big_pic\":\"\",\"big_pic_h\":\"\",\"v_url\":\"\",\"label\":\"bottom\",\"description\":\"\",\"ad_switch\":1,\"quit_switch\":0,\"jp_info\":{\"link_type\":5,\"link_type_val\":\"\\\"https://tsm.miit.gov.cn\\\"\",\"crc_link_type_val\":\"1271180405\",\"jump_type\":0,\"third_type\":0,\"is_more\":0,\"tpl_type\":0}}]");
    }

    public i wifiDownNumber() {
        return intField("wifiDownNumber", -1);
    }

    public org.androidannotations.api.sharedpreferences.d wifiIsOpen() {
        return booleanField("wifiIsOpen", true);
    }

    public p worldStart() {
        return stringField("worldStart", "");
    }

    public p worshipMarqueeHistory() {
        return stringField("worshipMarqueeHistory", "");
    }

    public p wx_open_appid() {
        return stringField("wx_open_appid", "");
    }
}
