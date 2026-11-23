package com.papa91.arcapp;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build;
import android.preference.PreferenceManager;
import android.view.Display;
import android.view.InputDevice;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.arc.util.StoreUtils;
import com.papa91.common.BaseAppConfig;
import com.windmill.sdk.WMConstants;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class AppConfig_fba extends BaseAppConfig {
    private static final char[] HEX_DIGITS;
    public static String PATH = "/papa91/arc/";
    public static String[] deviceDescrip;
    public static int[] deviceID;
    public static String[] deviceName;
    public static String[] strPgmGame;

    static {
        BaseAppConfig.EMU_NAME = "arc";
        initPath(null);
        strPgmGame = new String[]{"BurnDrvCps1941", "BurnDrvCps1941r1", "BurnDrvCps1941u", "BurnDrvCps1941j", "BurnDrvCps3wonders", "BurnDrvCps3wondersr1", "BurnDrvCps3wondersu", "BurnDrvCpsWonder3", "BurnDrvCps3wondersh", "BurnDrvCps3wondersb", "BurnDrvCpsCaptcomm", "BurnDrvCpsCaptcommr1", "BurnDrvCpsCaptcommu", "BurnDrvCpsCaptcommj", "BurnDrvCpsCaptcommjr1", "BurnDrvCpsCaptcommb", "BurnDrvCpsCaptcommb2", "BurnDrvCpsCawing", "BurnDrvCpsCawingr1", "BurnDrvCpsCawingu", "BurnDrvCpsCawingj", "BurnDrvCpsCawingbl", "BurnDrvCpsCawingb2", "BurnDrvCpsCps1demo", "BurnDrvCpsCworld2j", "BurnDrvCpsDino", "BurnDrvCpsDinoz", "BurnDrvCpsDinoxa", "BurnDrvCpsDinoxb", "BurnDrvCpsDinoxc", "BurnDrvCpsDinoxd", "BurnDrvCpsDinoxe", "BurnDrvCpsDinoj", "BurnDrvCpsDinou", "BurnDrvCpsDinopic", "BurnDrvCpsDinopic2", "BurnDrvCpsDinopic3", "BurnDrvCpsDinoh", "BurnDrvCpsDinot", "BurnDrvCpsDinotpic", "BurnDrvCpsDinohunt", "BurnDrvCpsDinoeh", "BurnDrvCpsDinohc", "BurnDrvCpsDynwar", "BurnDrvCpsDynwara", "BurnDrvCpsDynwarj", "BurnDrvCpsDynwarjr", "BurnDrvCpsFfight", "BurnDrvCpsFfighta", "BurnDrvCpsFfightu", "BurnDrvCpsFfightu1", "BurnDrvCpsFfightua", "BurnDrvCpsFfightub", "BurnDrvCpsFfightj", "BurnDrvCpsFfightj1", "BurnDrvCpsFfightj2", "BurnDrvCpsFfightj3", "BurnDrvCpsFfightjh", "BurnDrvCpsFfightbl", "BurnDrvCpsFfightbl2", "BurnDrvCpsFcrash", "BurnDrvCpsForgottn", "BurnDrvCpsForgottnu", "BurnDrvCpsForgottnu1", "BurnDrvCpsForgottnua", "BurnDrvCpsForgottnuaa", "BurnDrvCpsLostwrld", "BurnDrvCpsLostwrldo", "BurnDrvCpsGanbare", "BurnDrvCpsGhouls", "BurnDrvCpsGhoulsu", "BurnDrvCpsDaimakai", "BurnDrvCpsDaimakair", "BurnDrvCpsDaimakaib", "BurnDrvCpsKnights", "BurnDrvCpsKnightsboos", "BurnDrvCpsKnightsu", "BurnDrvCpsKnightsj", "BurnDrvCpsKnightsja", "BurnDrvCpsKnightsb", "BurnDrvCpsKnightsb2", "BurnDrvCpsKnightsb3", "BurnDrvCpsKnightsb4", "BurnDrvCpsKnightsh", "BurnDrvCpsKnightsh2", "BurnDrvCpsKod", "BurnDrvCpsKodr1", "BurnDrvCpsKodu", "BurnDrvCpsKodj", "BurnDrvCpsKodja", "BurnDrvCpsKodb", "BurnDrvCpsKodh", "BurnDrvCpsKodda", "BurnDrvCpsMegaman", "BurnDrvCpsMegamana", "BurnDrvCpsRockmanj", "BurnDrvCpsMercs", "BurnDrvCpsMercsu", "BurnDrvCpsMercsur1", "BurnDrvCpsMercsj", "BurnDrvCpsMsword", "BurnDrvCpsMswordr1", "BurnDrvCpsMswordj", "BurnDrvCpsMswordu", "BurnDrvCpsMtwins", "BurnDrvCpsChikij", "BurnDrvCpsNemo", "BurnDrvCpsNemor1", "BurnDrvCpsNemoj", "BurnDrvCpsPang3", "BurnDrvCpsPang3r1", "BurnDrvCpsPang3r1a", "BurnDrvCpsPang3b", "BurnDrvCpsPang3b2", "BurnDrvCpsPang3b3", "BurnDrvCpsPang3j", "BurnDrvCpsPnickj", "BurnDrvCpsPunisher", "BurnDrvCpsPunisheru", "BurnDrvCpsPunisherj", "BurnDrvCpsPunisherh", "BurnDrvCpsPunipic", "BurnDrvCpsPunipic2", "BurnDrvCpsPunipic3", "BurnDrvCpsPunisherbz", "BurnDrvCpsQad", "BurnDrvCpsQadjr", "BurnDrvCpsQtono2j", "BurnDrvCpsSf2", "BurnDrvCpsSf2eb", "BurnDrvCpsSf2ed", "BurnDrvCpsSf2ee", "BurnDrvCpsSf2ebbl", "BurnDrvCpsSf2ebbl2", "BurnDrvCpsSf2stt", "BurnDrvCpsSf2ua", "BurnDrvCpsSf2ub", "BurnDrvCpsSf2uc", "BurnDrvCpsSf2ud", "BurnDrvCpsSf2ue", "BurnDrvCpsSf2uf", "BurnDrvCpsSf2ug", "BurnDrvCpsSf2ui", "BurnDrvCpsSf2uk", "BurnDrvCpsSf2j", "BurnDrvCpsSf2ja", "BurnDrvCpsSf2jc", "BurnDrvCpsSf2jf", "BurnDrvCpsSf2jh", "BurnDrvCpsSf2jl", "BurnDrvCpsSf2qp1", "BurnDrvCpsSf2thndr", "BurnDrvCpsSf2b", "BurnDrvCpsSf2b2", "BurnDrvCpsSf2ce", "BurnDrvCpsSf2ceea", "BurnDrvCpsSf2ceja", "BurnDrvCpsSf2cejb", "BurnDrvCpsSf2cejc", "BurnDrvCpsSf2ceua", "BurnDrvCpsSf2ceub", "BurnDrvCpsSf2ceuc", "BurnDrvCpsSf2acc", "BurnDrvCpsSf2acca", "BurnDrvCpsSf2accp2", "BurnDrvCpsSf2dkot2", "BurnDrvCpsSf2rb", "BurnDrvCpsSf2rb2", "BurnDrvCpsSf2rb3", "BurnDrvCpsSf2rb4", "BurnDrvCpsSf2rb5", "BurnDrvCpsSf2rb6", "BurnDrvCpsSf2red", "BurnDrvCpsSf2red2", "BurnDrvCpsSf2v004", "BurnDrvCpsSf2v0042", "BurnDrvCpsSf2v0043", "BurnDrvCpsSf2dongb", "BurnDrvCpsSf2bhh", "BurnDrvCpsSf2hf", "BurnDrvCpsSf2hfu", "BurnDrvCpsSf2hfj", "BurnDrvCpsSf2hfjb", "BurnDrvCpsSf2hfjb2", "BurnDrvCpsSf2yyc", "BurnDrvCpsSf2yyc2", "BurnDrvCpsSf2koryu", "BurnDrvCpsSf2koryu2", "BurnDrvCpsSf2koryu3", "BurnDrvCpsSf2amf", "BurnDrvCpsSf2amf2", "BurnDrvCpsSf2amf3", "BurnDrvCpsSf2amf4", "BurnDrvCpsSf2amf5", "BurnDrvCpsSf2amf6", "BurnDrvCpsSf2amf7", "BurnDrvCpsSf2amf8", "BurnDrvCpsSf2mega", "BurnDrvCpsSf2mega2", "BurnDrvCpsSf2md", "BurnDrvCpsSf2mdt", "BurnDrvCpsSf2mdta", "BurnDrvCpsSf2mdtb", "BurnDrvCpsSf2ceeabl", "BurnDrvCpsSf2ceeab2", "BurnDrvCpsSf2cejabl", "BurnDrvCpsSf2cejab2", "BurnDrvCpsSf2ceuabl", "BurnDrvCpsSf2ceuab2", "BurnDrvCpsSf2ceuab3", "BurnDrvCpsSf2ceuab4", "BurnDrvCpsSf2ceuab5", "BurnDrvCpsSf2ceuab6", "BurnDrvCpsSf2ceuab7", "BurnDrvCpsSf2ceucbl", "BurnDrvCpsSf2tlona", "BurnDrvCpsSf2tlonb", "BurnDrvCpsSf2tlonc", "BurnDrvCpsSf2sl73a", "BurnDrvCpsSfzch", "BurnDrvCpsSlammast", "BurnDrvCpsSlammastu", "BurnDrvCpsMbomberj", "BurnDrvCpsMbombrd", "BurnDrvCpsMbombrdj", "BurnDrvCpsSlampic", "BurnDrvCpsStrider", "BurnDrvCpsStriderua", "BurnDrvCpsStriderjr", "BurnDrvCpsStriderj", "BurnDrvCpsUnsquad", "BurnDrvCpsArea88", "BurnDrvCpsArea88r", "BurnDrvCpsVarth", "BurnDrvCpsVarthr1", "BurnDrvCpsVarthj", "BurnDrvCpsVarthu", "BurnDrvCpsWillow", "BurnDrvCpsWillowo", "BurnDrvCpsWillowj", "BurnDrvCpsWof", "BurnDrvCpsWofr1", "BurnDrvCpsWofu", "BurnDrvCpsWofj", "BurnDrvCpsWofjz", "BurnDrvCpsWofab", "BurnDrvCpsWofjxa", "BurnDrvCpsWofjxb", "BurnDrvCpsWofjxc", "BurnDrvCpsWofjxd", "BurnDrvCpsWofjxe", "BurnDrvCpsWofa", "BurnDrvCpsWofch", "BurnDrvCpsWofhfh", "BurnDrvCpsWofh", "BurnDrvCpsWofha", "BurnDrvCpsSgyxz", "BurnDrvCpsWof3js", "BurnDrvCpsWof3jsa", "BurnDrvCpsWof3sj", "BurnDrvCpsWof3sja", "BurnDrvCpsWofsj", "BurnDrvCpsWofsja", "BurnDrvCpsWofsjb", "BurnDrvCpsWofb", "BurnDrvCpsWofjh", "BurnDrvCpsWofah", "BurnDrvCpsWofaha", "BurnDrvCpsWofahb", "BurnDrvCpsCps1frog", "BurnDrvCps19xx", "BurnDrvCps19xxa", "BurnDrvCps19xxb", "BurnDrvCps19xxh", "BurnDrvCps19xxj", "BurnDrvCps19xxjr1", "BurnDrvCps19xxjr2", "BurnDrvCps1944", "BurnDrvCps1944j", "BurnDrvCpsArmwar", "BurnDrvCpsArmwarr1", "BurnDrvCpsArmwaru", "BurnDrvCpsArmwaru1", "BurnDrvCpsPgear", "BurnDrvCpsPgearr1", "BurnDrvCpsArmwara", "BurnDrvCpsArmwarar1", "BurnDrvCpsAvsp", "BurnDrvCpsAvspa", "BurnDrvCpsAvsph", "BurnDrvCpsAvspj", "BurnDrvCpsAvspu", "BurnDrvCpsBatcir", "BurnDrvCpsBatcira", "BurnDrvCpsBatcirj", "BurnDrvCpsChoko", "BurnDrvCpsCsclub", "BurnDrvCpsCsclub1", "BurnDrvCpsCscluba", "BurnDrvCpsCsclubh", "BurnDrvCpsCsclubj", "BurnDrvCpsCsclubjr", "BurnDrvCpsCybots", "BurnDrvCpsCybotsj", "BurnDrvCpsCybotsu", "BurnDrvCpsDdsom", "BurnDrvCpsDdsomr1", "BurnDrvCpsDdsomr2", "BurnDrvCpsDdsomr3", "BurnDrvCpsDdsoma", "BurnDrvCpsDdsomb", "BurnDrvCpsDdsomh", "BurnDrvCpsDdsomj", "BurnDrvCpsDdsomchs", "BurnDrvCpsDdsomjr1", "BurnDrvCpsDdsomu", "BurnDrvCpsDdsomur1", "BurnDrvCpsDdtod", "BurnDrvCpsDdtodr1", "BurnDrvCpsDdtoda", "BurnDrvCpsDdtodar1", "BurnDrvCpsDdtodh", "BurnDrvCpsDdtodhr1", "BurnDrvCpsDdtodhr2", "BurnDrvCpsDdtodj", "BurnDrvCpsDdtodjr1", "BurnDrvCpsDdtodjr2", "BurnDrvCpsDdtodu", "BurnDrvCpsDdtodur1", "BurnDrvCpsDimahoo", "BurnDrvCpsGreatMahouDaiJ", "BurnDrvCpsDimahoou", "BurnDrvCpsDstlk", "BurnDrvCpsDstlka", "BurnDrvCpsDstlkh", "BurnDrvCpsDstlku", "BurnDrvCpsDstlkur1", "BurnDrvCpsVampj", "BurnDrvCpsVampja", "BurnDrvCpsVampjr1", "BurnDrvCpsEcofghtr", "BurnDrvCpsEcofghtra", "BurnDrvCpsEcofghtrh", "BurnDrvCpsEcofghtru", "BurnDrvCpsEcofghtru1", "BurnDrvCpsUecology", "BurnDrvCpsGigawing", "BurnDrvCpsGigawinga", "BurnDrvCpsGigawingb", "BurnDrvCpsGigawingh", "BurnDrvCpsGigawingj", "BurnDrvCpsHsf2", "BurnDrvCpsHsf2a", "BurnDrvCpsHsf2j", "BurnDrvCpsJyangoku", "BurnDrvCpsMegaman2", "BurnDrvCpsMegaman2a", "BurnDrvCpsMegaman2h", "BurnDrvCpsRockman2j", "BurnDrvCpsMmancp2u", "BurnDrvCpsRmancp2j", "BurnDrvCpsMarsMatrix", "BurnDrvCpsMarsMatrixJ", "BurnDrvCpsMPang", "BurnDrvCpsMPangr1", "BurnDrvCpsMPangu", "BurnDrvCpsMPangj", "BurnDrvCpsMsh", "BurnDrvCpsMsha", "BurnDrvCpsMshb", "BurnDrvCpsMshh", "BurnDrvCpsMshj", "BurnDrvCpsMshjr1", "BurnDrvCpsMshu", "BurnDrvCpsMshvsf", "BurnDrvCpsMshvsfa", "BurnDrvCpsMshvsfa1", "BurnDrvCpsMshvsfb", "BurnDrvCpsMshvsfb1", "BurnDrvCpsMshvsfh", "BurnDrvCpsMshvsfj", "BurnDrvCpsMshvsfj1", "BurnDrvCpsMshvsfj2", "BurnDrvCpsMshvsfu", "BurnDrvCpsMshvsfu1", "BurnDrvCpsMvsc", "BurnDrvCpsMvscr1", "BurnDrvCpsMvsca", "BurnDrvCpsMvscar1", "BurnDrvCpsMvscb", "BurnDrvCpsMvsch", "BurnDrvCpsMvscj", "BurnDrvCpsMvscjr1", "BurnDrvCpsMvscu", "BurnDrvCpsMvscur1", "BurnDrvCpsMvscjsing", "BurnDrvCpsNwarr", "BurnDrvCpsNwarra", "BurnDrvCpsNwarrb", "BurnDrvCpsNwarrh", "BurnDrvCpsNwarru", "BurnDrvCpsVhuntj", "BurnDrvCpsVhuntjr1s", "BurnDrvCpsVhuntjr1", "BurnDrvCpsVhuntjr2", "BurnDrvCpsProgear", "BurnDrvCpsProgeara", "BurnDrvCpsProgearj", "BurnDrvCpsPzloop2", "BurnDrvCpsPzloop2j", "BurnDrvCpsPzloop2jr1", "BurnDrvCpsQndream", "BurnDrvCpsRingdest", "BurnDrvCpsSmbomb", "BurnDrvCpsSmbombr1", "BurnDrvCpsRingdesta", "BurnDrvCpsSfa", "BurnDrvCpsSfar1", "BurnDrvCpsSfar2", "BurnDrvCpsSfar3", "BurnDrvCpsSfau", "BurnDrvCpsSfza", "BurnDrvCpsSfzar1", "BurnDrvCpsSfzb", "BurnDrvCpsSfzbr1", "BurnDrvCpsSfzh", "BurnDrvCpsSfzhr1", "BurnDrvCpsSfzj", "BurnDrvCpsSfzjr1", "BurnDrvCpsSfzjr2", "BurnDrvCpsSfa2", "BurnDrvCpsSfa2u", "BurnDrvCpsSfa2ur1", "BurnDrvCpsSfz2a", "BurnDrvCpsSfz2b", "BurnDrvCpsSfz2br1", "BurnDrvCpsSfz2h", "BurnDrvCpsSfz2j", "BurnDrvCpsSfz2jr1", "BurnDrvCpsSfz2n", "BurnDrvCpsSfz2al", "BurnDrvCpsSfz2alb", "BurnDrvCpsSfz2alh", "BurnDrvCpsSfz2alj", "BurnDrvCpsSfa3", "BurnDrvCpsSfa3b", "BurnDrvCpsSfa3h", "BurnDrvCpsSfa3hr1", "BurnDrvCpsSfa3u", "BurnDrvCpsSfa3ur1", "BurnDrvCpsSfz3a", "BurnDrvCpsSfz3ar1", "BurnDrvCpsSfz3j", "BurnDrvCpsSfz3jr1", "BurnDrvCpsSfz3jr2", "BurnDrvCpsSgemf", "BurnDrvCpsPfghtj", "BurnDrvCpsSgemfa", "BurnDrvCpsSgemfh", "BurnDrvCpsSpf2t", "BurnDrvCpsSpf2xj", "BurnDrvCpsSpf2ta", "BurnDrvCpsSpf2th", "BurnDrvCpsSsf2", "BurnDrvCpsSsf2a", "BurnDrvCpsSsf2ar1", "BurnDrvCpsSsf2h", "BurnDrvCpsSsf2j", "BurnDrvCpsSsf2jr1", "BurnDrvCpsSsf2jr2", "BurnDrvCpsSsf2u", "BurnDrvCpsSsf2tb", "BurnDrvCpsSsf2tbr1", "BurnDrvCpsSsf2tbj", "BurnDrvCpsSsf2tbh", "BurnDrvCpsSsf2t", "BurnDrvCpsSsf2ta", "BurnDrvCpsSsf2tu", "BurnDrvCpsSsf2tur1", "BurnDrvCpsSsf2xj", "BurnDrvCpsSsf2xjr", "BurnDrvCpsVhunt2", "BurnDrvCpsVhunt2r1", "BurnDrvCpsVsav", "BurnDrvCpsVsava", "BurnDrvCpsVsavh", "BurnDrvCpsVsavj", "BurnDrvCpsVsavu", "BurnDrvCpsVsav2", "BurnDrvCpsXmcota", "BurnDrvCpsXmcotar1", "BurnDrvCpsXmcotaa", "BurnDrvCpsXmcotaar1", "BurnDrvCpsXmcotah", "BurnDrvCpsXmcotahr1", "BurnDrvCpsXmcotaj", "BurnDrvCpsXmcotaj1", "BurnDrvCpsXmcotaj2", "BurnDrvCpsXmcotaj3", "BurnDrvCpsXmcotajr", "BurnDrvCpsXmcotau", "BurnDrvCpsXmvsf", "BurnDrvCpsXmvsfr1", "BurnDrvCpsXmvsfa", "BurnDrvCpsXmvsfar1", "BurnDrvCpsXmvsfar2", "BurnDrvCpsXmvsfar3", "BurnDrvCpsXmvsfb", "BurnDrvCpsXmvsfh", "BurnDrvCpsXmvsfj", "BurnDrvCpsXmvsfjr1", "BurnDrvCpsXmvsfjr2", "BurnDrvCpsXmvsfu", "BurnDrvCpsXmvsfur1", "BurnDrvCps19xxd", "BurnDrvCps1944d", "BurnDrvCps1944ad", "BurnDrvCpsArmwar1d", "BurnDrvCpsAvspd", "BurnDrvCpsBatcird", "BurnDrvCpsCsclub1d", "BurnDrvCpsCybotsud", "BurnDrvCpsCybotsjd", "BurnDrvCpsDdsomud", "BurnDrvCpsDdtodd", "BurnDrvCpsDimahoud", "BurnDrvCpsDstlku1d", "BurnDrvCpsEcofghtrd", "BurnDrvCpsGigawingd", "BurnDrvCpsGigawingjd", "BurnDrvCpsHsf2d", "BurnDrvCpsHsf2da", "BurnDrvCpsMegamn2d", "BurnDrvCpsMarsMatrixd", "BurnDrvCpsMPangjd", "BurnDrvCpsMshud", "BurnDrvCpsMshvsfu1d", "BurnDrvCpsMvscud", "BurnDrvCpsNwarrud", "BurnDrvCpsProgearud", "BurnDrvCpsProgearjd", "BurnDrvCpsRingdstd", "BurnDrvCpsSfad", "BurnDrvCpsSfaud", "BurnDrvCpsSfz2ad", "BurnDrvCpsSfz2jd", "BurnDrvCpsSfz2ald", "BurnDrvCpsSfa3ud", "BurnDrvCpsSfz3jr2d", "BurnDrvCpsSgemfd", "BurnDrvCpsSpf2td", "BurnDrvCpsSpf2xjd", "BurnDrvCpsSsf2d", "BurnDrvCpsSsf2ud", "BurnDrvCpsSsf2tbd", "BurnDrvCpsSsf2td", "BurnDrvCpsSsf2tad", "BurnDrvCpsSsf2xjd", "BurnDrvCpsVsavd", "BurnDrvCpsVhunt2d", "BurnDrvCpsVsav2d", "BurnDrvCpsXmcotar1d", "BurnDrvCpsXmvsfu1d", "BurnDrvCpsProgearjbl", "BurnDrvCpsGigaman2", "BurnDrvNeoGeo", "BurnDrvNeoGeoMVS", "BurnDrvneocdz", "BurnDrvNam1975", "BurnDrvBstars", "BurnDrvBstarsh", "BurnDrvTpgolf", "BurnDrvMahretsu", "BurnDrvRidhero", "BurnDrvRidheroh", "BurnDrvAlpham2", "BurnDrvAlpham2p", "BurnDrvCyberlip", "BurnDrvSuperspy", "BurnDrvMutnat", "BurnDrvKotm", "BurnDrvKotmh", "BurnDrvSengoku", "BurnDrvSengokuh", "BurnDrvBurningf", "BurnDrvBurningfh", "BurnDrvBurningfp", "BurnDrvLbowling", "BurnDrvGpilots", "BurnDrvGpilotsh", "BurnDrvJoyjoy", "BurnDrvQuizdais", "BurnDrvQuizdaisk", "BurnDrvLresort", "BurnDrvEightman", "BurnDrvLegendos", "BurnDrvbb2020", "BurnDrvbba2020", "BurnDrvbbh2020", "BurnDrvSocbrawl", "BurnDrvSocbrawlh", "BurnDrvFatFury1", "BurnDrvRoboarmy", "BurnDrvFbfrenzy", "BurnDrvKotm2", "BurnDrvKotm2p", "BurnDrvSengoku2", "BurnDrvBstars2", "BurnDrvQuizdai2", "BurnDrv3Countb", "BurnDrvAof", "BurnDrvSamSho", "BurnDrvSamShoh", "BurnDrvtophntr", "BurnDrvtophntrh", "BurnDrvFatfury2", "BurnDrvSsideki", "BurnDrvKof94", "BurnDrvAof2", "BurnDrvAof2a", "BurnDrvFatfursp", "BurnDrvFatfurspa", "BurnDrvSavagere", "BurnDrvSsideki2", "BurnDrvSamSho2", "BurnDrvsamsho2k", "BurnDrvFatfury3", "BurnDrvSsideki3", "BurnDrvKof95", "BurnDrvKof95a", "BurnDrvKof95h", "BurnDrvSamSho3", "BurnDrvSamSho3h", "BurnDrvfswords", "BurnDrvrbff1", "BurnDrvrbff1a", "BurnDrvAof3", "BurnDrvAof3k", "BurnDrvKof96", "BurnDrvKof96h", "BurnDrvSsideki4", "BurnDrvKizuna", "BurnDrvSamSho4", "BurnDrvSamSho4k", "BurnDrvrbffspec", "BurnDrvrbffspeck", "BurnDrvKof97", "BurnDrvkof973v", "BurnDrvKof97ts", "BurnDrvKof97h", "BurnDrvKof97k", "BurnDrvKof97pls", "BurnDrvKog", "BurnDrvKogplus", "BurnDrvlastblad", "BurnDrvlastblada", "BurnDrvlastbladh", "BurnDrvlastsold", "BurnDrvIrrmaze", "BurnDrvrbff2", "BurnDrvrbff2h", "BurnDrvrbff2k", "BurnDrvMSlug2", "BurnDrvKof98", "BurnDrvKof98a", "BurnDrvKof98k", "BurnDrvKof98ka", "BurnDrvKof98h", "BurnDrvlastbld2", "BurnDrvNeocup98", "BurnDrvMSlugX", "BurnDrvMSlugXh", "BurnDrvkof99", "BurnDrvkof99h", "BurnDrvkof99e", "BurnDrvkof99k", "BurnDrvkof99p", "BurnDrvGarou", "BurnDrvgarouh", "BurnDrvGaroup", "BurnDrvgaroubl", "BurnDrvmslug3", "BurnDrvmslug3h", "BurnDrvmslug3b6", "BurnDrvkof2000", "BurnDrvkof2000n", "BurnDrvZupapa", "BurnDrvSengoku3", "BurnDrvkof2001", "BurnDrvkof2001h", "BurnDrvcthd2003", "BurnDrvct2k3sp", "BurnDrvct2k3sa", "BurnDrvkof2002", "BurnDrvkof2002b", "BurnDrvkf2k2pls", "BurnDrvkf2k2pla", "BurnDrvkf2k2mp", "BurnDrvkf2k2mp2", "BurnDrvkf2k2mp3", "BurnDrvkf2k2mp4", "BurnDrvkf2k2mp5", "BurnDrvkof10th", "BurnDrvkf10thep", "BurnDrvkf2k5uni", "BurnDrvkof2k4se", "BurnDrvmslug5", "BurnDrvmslug5h", "BurnDrvms5pcb", "BurnDrvms5plus", "BurnDrvsvcpcb", "BurnDrvsvcpcba", "BurnDrvsvc", "BurnDrvsvcboot", "BurnDrvsvcplus", "BurnDrvsvcplusa", "BurnDrvsvcsplus", "BurnDrvsamsho5", "BurnDrvsamsho5h", "BurnDrvsamsho5b", "BurnDrvkf2k3pcb", "BurnDrvkof2003", "BurnDrvkof2003h", "BurnDrvkf2k3bl", "BurnDrvkf2k3pl", "BurnDrvkf2k3upl", "BurnDrvsamsh5sp", "BurnDrvsamsh5sph", "BurnDrvsamsh5spho", "BurnDrvmaglord", "BurnDrvmaglordh", "BurnDrvncombat", "BurnDrvncombath", "BurnDrvbjourney", "BurnDrvcrsword", "BurnDrvtrally", "BurnDrvncommand", "BurnDrvwh1", "BurnDrvwh1h", "BurnDrvwh1ha", "BurnDrvwh2", "BurnDrvwh2j", "BurnDrvaodk", "BurnDrvwhp", "BurnDrvmosyougi", "BurnDrvovertop", "BurnDrvninjamas", "BurnDrvtwinspri", "BurnDrvzintrckb", "BurnDrvviewpoin", "BurnDrvjanshin", "BurnDrvpulstar", "BurnDrvblazstar", "BurnDrvpreisle2", "BurnDrvspinmast", "BurnDrvwjammers", "BurnDrvkarnovr", "BurnDrvstrhoop", "BurnDrvghostlop", "BurnDrvmagdrop2", "BurnDrvmagdrop3", "BurnDrvnitd", "BurnDrvnitdbl", "BurnDrvgururin", "BurnDrvmiexchng", "BurnDrvpanicbom", "BurnDrvkabukikl", "BurnDrvneobombe", "BurnDrvminasan", "BurnDrvbakatono", "BurnDrvturfmast", "BurnDrvmslug", "BurnDrvzedblade", "BurnDrvs1945p", "BurnDrvquizkof", "BurnDrvquizkofk", "BurnDrvstakwin", "BurnDrvragnagrd", "BurnDrvpgoal", "BurnDrvstakwin2", "BurnDrvshocktro", "BurnDrvshocktroa", "BurnDrvshocktr2", "BurnDrvlans2004", "BurnDrvgalaxyfg", "BurnDrvwakuwak7", "BurnDrvpbobblen", "BurnDrvpbobblenb", "BurnDrvpbobbl2n", "BurnDrvpnyaa", "BurnDrvmarukodq", "BurnDrvdoubledr", "BurnDrvgowcaizr", "BurnDrvsdodgeb", "BurnDrvtws96", "BurnDrvfightfev", "BurnDrvfightfeva", "BurnDrvpspikes2", "BurnDrvsonicwi2", "BurnDrvsonicwi3", "BurnDrvpopbounc", "BurnDrvandrodun", "BurnDrvpuzzledp", "BurnDrvneomrdo", "BurnDrvgoalx3", "BurnDrvneodrift", "BurnDrvbreakers", "BurnDrvpuzzldpr", "BurnDrvbreakrev", "BurnDrvflipshot", "BurnDrvctomaday", "BurnDrvganryu", "BurnDrvbangbead", "BurnDrvmslug4", "BurnDrvmslug4c", "BurnDrvmslug4h", "BurnDrvms4plus", "BurnDrvrotd", "BurnDrvmatrim", "BurnDrvmatrimbl", "BurnDrvjockeygp", "BurnDrvjockeygpa", "BurnDrvvliner", "BurnDrvvlinero", "BurnDrvdiggerma", "BurnDrvbangbedp", "BurnDrvcthd2k3a", "BurnDrvfr2ch", "BurnDrvironclad", "BurnDrvironclado", "BurnDrvb2buster", "BurnDrvtotcarib", "BurnDrvkf2k1pla", "BurnDrvkf2k1pls", "BurnDrvkf2k2plb", "BurnDrvkf2k2tt", "BurnDrvkf2k2plc", "BurnDrvkf2k2ps2", "BurnDrvkf2k4pls", "BurnDrvkof96ae", "BurnDrvkof96ae20", "BurnDrvkof96cn", "BurnDrvkof96ep", "BurnDrvkof97cn", "BurnDrvkof97pla", "BurnDrvKof97oro", "BurnDrvkof97xt", "BurnDrvkof98ae", "BurnDrvkf98ae16", "BurnDrvlhcdb", "BurnDrvmslug5b", "BurnDrvsamsho2k2", "BurnDrvzintrkcd", "BurnDrv4play", "BurnDrvbeast", "BurnDrvcnbe", "BurnDrvcolumnsn", "BurnDrvltorb1", "BurnDrvneo2500", "BurnDrvneodemo", "BurnDrvneonopon", "BurnDrvneopong", "BurnDrvneoponga", "BurnDrvngem2k", "BurnDrvngfrog", "BurnDrvpoknight", "BurnDrvsyscheck", "BurnDrvcndi", "BurnDrvdwi", "BurnDrvdwia", "BurnDrvducki", "BurnDrvghostbi", "BurnDrvrobocopi", "BurnDrvspidermi", "BurnDrvtmnti", "BurnDrvtmntia", "BurnDrvneothndr", "BurnDrvngftdemo", "BurnDrvneocstlv", "BurnDrvneo3ddmo", "BurnDrvneoww2", "BurnDrvkof97y", "BurnDrvkof97yk", "BurnDrvkof99ae", "BurnDrvkof98c", "BurnDrvkof98m", "BurnDrvkof99evo", "BurnDrvPgm", "BurnDrvOrlegend", "BurnDrvOrlegend112e", "BurnDrvOrlegend112c", "BurnDrvOrlegend112ca", "BurnDrvOrlegend111c", "BurnDrvOrlegend105k", "BurnDrvDrgw2", "BurnDrvDrgw2c", "BurnDrvDrgw2j", "BurnDrvDrgw2x", "BurnDrvKillbld", "BurnDrvKillbld104", "BurnDrvOlds", "BurnDrvOlds100", "BurnDrvOlds100a", "BurnDrvOlds103t", "BurnDrvKov", "BurnDrvKov115", "BurnDrvKov100", "BurnDrvKovplus", "BurnDrvKovplusa", "BurnDrvKovsh", "BurnDrvKovsh102", "BurnDrvKovsh101", "BurnDrvKovsh100", "BurnDrvPhotoy2k", "BurnDrvPhotoy2k104", "BurnDrvphotoy2k102", "BurnDrvPuzlstar", "BurnDrvPuzzli2", "BurnDrvPuzzli2s", "BurnDrvMartmast", "BurnDrvmartmastc", "BurnDrvmartmastc102", "BurnDrvKov2", "BurnDrvKov2106", "BurnDrvKov2103", "BurnDrvKov2102", "BurnDrvKov2101", "BurnDrvKov2100", "BurnDrvKov2p", "BurnDrvKov2p204", "BurnDrvKov2p202", "BurnDrvDdp2", "BurnDrvDdp2101", "BurnDrvDdp2100", "BurnDrvDdp2hk", "BurnDrvDdp2101hk", "BurnDrvDdp2100hk", "BurnDrvDdp2k", "BurnDrvDdp2101k", "BurnDrvDdp2100k", "BurnDrvDdp2j", "BurnDrvDdp2101j", "BurnDrvDdp2100j", "BurnDrvDdp2t", "BurnDrvDdp2101t", "BurnDrvDdp2100t", "BurnDrvDdp2c", "BurnDrvDdp2101c", "BurnDrvDdp2100c", "BurnDrvDw2001", "BurnDrvdwpc", "BurnDrvDmnfrnt", "BurnDrvdmnfrntb", "BurnDrvdmnfrnta", "BurnDrvTheglad", "BurnDrvTheglad101", "BurnDrvtheglada", "BurnDrvhappy6", "BurnDrvhappy6101", "BurnDrvkovshp", "BurnDrvkovshpa", "BurnDrvkovytzy", "BurnDrvoldsplus", "BurnDrvKillbldp", "BurnDrvSvg", "BurnDrvDdp3", "BurnDrvDdp3a", "BurnDrvDdp3b", "BurnDrvDdp3blk", "BurnDrvDdp3blka", "BurnDrvKet", "BurnDrvKetalt", "BurnDrvKeta", "BurnDrvKetb", "BurnDrvketarr", "BurnDrvketarr15", "BurnDrvketarr151", "BurnDrvketstoicu", "BurnDrvEspgal", "BurnDrvThegladpcb", "BurnDrvDmnfrntpcb", "BurnDrvSvgpcb", "BurnDrvkovqhsgs", "BurnDrvkovqhsgsa", "BurnDrvkovshxas", "BurnDrvKovsgqyz", "BurnDrvKovsgqyza", "BurnDrvKovsgqyzb", "BurnDrvKovsgqyzc", "BurnDrvKovshb", "BurnDrvkovshpd", "BurnDrvkovshpd2", "BurnDrvkovshdf", "BurnDrvkovshyh", "BurnDrvkovshxs", "BurnDrvkovshzs", "BurnDrvkovplusqxlw", "BurnDrvkovpluszlfy", "BurnDrvkovplusqyz", "BurnDrvkovp2k7", 
        "BurnDrvkovp2k12", "BurnDrvkovp2k9", "BurnDrvkov2p205", "BurnDrvkovqm", "BurnDrvkovqy", "BurnDrvkovds", "BurnDrvkov2k2em", "BurnDrvkov2k2ws", "BurnDrvoldsp", "BurnDrvkovshh", "BurnDrvkovpluslssx", "BurnDrvkovplusblcx", "BurnDrvorlegndcbbws", "BurnDrvorlegndccngl", "BurnDrvorlegndcssfh", "BurnDrvorlegndcqylw", "BurnDrvorlegndcjhcs", "BurnDrvolds100afybh", "BurnDrvolds100awxnz", "BurnDrvolds100awxl", "BurnDrvolds100akof", "BurnDrvolds100ajb", "BurnDrvkovshwsgl", "BurnDrvkovshkof", "BurnDrvkovshlbt", "BurnDrvkovshwjdz", "BurnDrvkovshsjcs", "BurnDrvkov2plsqx", "BurnDrvkov2pplus", "BurnDrvkov2psblq", "BurnDrvkov2pqjn", "BurnDrvkov2pmmqf", "BurnDrvkovlsqh2", "BurnDrvkovlsqh3"};
        HEX_DIGITS = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        deviceName = new String[]{"?", "?", "?", "?"};
        deviceDescrip = new String[]{"?", "?", "?", "?"};
        deviceID = new int[]{0, 0, 0, 0};
    }

    public static boolean IsXperiaPlay() {
        String str = Build.MODEL;
        return str.equals("R800a") || str.equals("R800i") || str.equals("R800x") || str.equals("R800at") || str.equals("SO-01D") || str.equals("zeus");
    }

    public static void createAppDir(Context context) {
        createFolder(BaseAppConfig.APP_PATH);
        createFolder(BaseAppConfig.ROM_PATH);
        createFolder(BaseAppConfig.CONFIG_PATH);
        createFolder(BaseAppConfig.INFO_PATH);
        createFolder(BaseAppConfig.INFO_PATH + "icon/");
        createFolder(BaseAppConfig.IPS_PATH);
        createFolder(BaseAppConfig.TMP_PATH);
        createFolder(BaseAppConfig.ROMDATA_PATH);
        createFolder(BaseAppConfig.LOG_PATH);
    }

    static boolean createFolder(String str) {
        File file = new File(str);
        if (file.exists()) {
            return true;
        }
        if (file.mkdirs()) {
            logD("mkdir: ok" + str);
            return true;
        }
        logD("mkdir: failed" + str);
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x00a2 A[Catch: IOException -> 0x00da, TryCatch #0 {IOException -> 0x00da, blocks: (B:12:0x004c, B:14:0x0081, B:17:0x0098, B:18:0x009c, B:20:0x00a2, B:21:0x00a5, B:22:0x00c6, B:24:0x00cc, B:25:0x00d0), top: B:31:0x004c }] */
    /* JADX WARN: Code duplicated, block: B:24:0x00cc A[Catch: IOException -> 0x00da, LOOP:1: B:22:0x00c6->B:24:0x00cc, LOOP_END, TryCatch #0 {IOException -> 0x00da, blocks: (B:12:0x004c, B:14:0x0081, B:17:0x0098, B:18:0x009c, B:20:0x00a2, B:21:0x00a5, B:22:0x00c6, B:24:0x00cc, B:25:0x00d0), top: B:31:0x004c }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00d0 A[EDGE_INSN: B:37:0x00d0->B:25:0x00d0 BREAK  A[LOOP:1: B:22:0x00c6->B:24:0x00cc], SYNTHETIC] */
    static void createResFile(Context context, String str, String[] strArr, boolean z10) {
        InputStream inputStreamOpen;
        FileOutputStream fileOutputStream;
        byte[] bArr;
        int i10;
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(str + "bios");
        if (!file2.exists()) {
            file2.mkdir();
        }
        logE("dirName =" + str);
        AssetManager assets = context.getAssets();
        for (int i11 = 0; i11 < strArr.length; i11++) {
            if (z10) {
                if (!file.exists()) {
                    file.mkdirs();
                }
                inputStreamOpen = assets.open(strArr[i11], 3);
                fileOutputStream = new FileOutputStream(str + strArr[i11]);
                bArr = new byte[1024];
                while (true) {
                    i10 = inputStreamOpen.read(bArr);
                    if (i10 > 0) {
                        break;
                        break;
                    }
                    fileOutputStream.write(bArr, 0, i10);
                }
                fileOutputStream.flush();
                fileOutputStream.close();
                inputStreamOpen.close();
            } else {
                try {
                    File file3 = new File(str + strArr[i11]);
                    logE("file name =" + str + strArr[i11]);
                    if (file3.exists()) {
                        long length = file3.length();
                        InputStream inputStreamOpen2 = assets.open(strArr[i11]);
                        int iAvailable = inputStreamOpen2.available();
                        inputStreamOpen2.close();
                        if (length == iAvailable) {
                        }
                    }
                    file = file3.getParentFile();
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    inputStreamOpen = assets.open(strArr[i11], 3);
                    fileOutputStream = new FileOutputStream(str + strArr[i11]);
                    bArr = new byte[1024];
                    while (true) {
                        i10 = inputStreamOpen.read(bArr);
                        if (i10 > 0) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, i10);
                        }
                    }
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    inputStreamOpen.close();
                } catch (IOException e10) {
                    logE("cant install bios file");
                    e10.printStackTrace();
                }
            }
        }
    }

    public static String filePathToURL(String str) {
        return "file://" + str;
    }

    public static int getAnalogDZ(Context context) {
        return Integer.valueOf(getDefaultSharedPreferences(context).getString(BaseAppConfig.PREF_ANALOG_DZ, "1")).intValue();
    }

    public static int getAnalogEZ(Context context) {
        return Integer.valueOf(getDefaultSharedPreferences(context).getString(BaseAppConfig.PREF_ANALOG_EZ, "1")).intValue();
    }

    public static int getButtonEZ(Context context) {
        return Integer.valueOf(getDefaultSharedPreferences(context).getString(BaseAppConfig.PREF_BUTTON_EZ, "1")).intValue();
    }

    public static SharedPreferences getDefaultSharedPreferences(Context context) {
        String str = EmuBaseActivity.appPackName;
        if (context.getPackageName().equals(str)) {
            return PreferenceManager.getDefaultSharedPreferences(context);
        }
        return context.getSharedPreferences(str + "_preferences", 4);
    }

    static String getLastDir(Context context) {
        SharedPreferences defaultSharedPreferences = getDefaultSharedPreferences(context);
        String str = BaseAppConfig.ROM_PATH;
        return defaultSharedPreferences.getString(BaseAppConfig.KEY_LAST_DIR, str.substring(0, str.length() - 1));
    }

    public static String getLibpath(Context context) {
        return context.getCacheDir().getAbsolutePath().replace("cache", "lib");
    }

    public static String getNameNoExt(String str) {
        int iLastIndexOf = str.lastIndexOf(47);
        int iLastIndexOf2 = str.lastIndexOf(46);
        if (iLastIndexOf2 == -1) {
            iLastIndexOf2 = str.length();
        }
        if (iLastIndexOf == -1) {
            return str.substring(0, iLastIndexOf2);
        }
        return iLastIndexOf2 < iLastIndexOf ? str.substring(iLastIndexOf + 1, str.length()) : str.substring(iLastIndexOf + 1, iLastIndexOf2);
    }

    public static String getNameNoExtWithPath(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf == -1) {
            iLastIndexOf = str.length();
        }
        return str.substring(0, iLastIndexOf);
    }

    public static String getNameWithExt(String str) {
        return str.substring(str.lastIndexOf(47) + 1, str.length());
    }

    static int getNumCores() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new FileFilter() { // from class: com.papa91.arcapp.AppConfig_fba.1CpuFilter
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return Pattern.matches("cpu[0-9]", file.getName());
                }
            }).length;
        } catch (Exception unused) {
            return 1;
        }
    }

    public static String getRomPath(String str) {
        return str.substring(0, str.lastIndexOf(47));
    }

    public static String getStringPref(Context context, String str, String str2) {
        return getDefaultSharedPreferences(context).getString(str, str2);
    }

    public static int getTiltDZ(Context context) {
        return Integer.valueOf(getDefaultSharedPreferences(context).getString(BaseAppConfig.PREF_TILT_DZ, "1")).intValue();
    }

    public static int getTiltSensitivity(Context context) {
        return getDefaultSharedPreferences(context).getInt(BaseAppConfig.PREF_TILT_SENSITIVITY, 6);
    }

    public static int getVpadStyle(Context context) {
        return getDefaultSharedPreferences(context).getInt(BaseAppConfig.PREF_VPAD_STYLE, 0);
    }

    public static int getscrOrientation(Activity activity) {
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        int i10 = activity.getResources().getConfiguration().orientation;
        if (i10 != 0) {
            return i10;
        }
        int i11 = activity.getResources().getConfiguration().orientation;
        if (i11 != 0) {
            return i11;
        }
        if (defaultDisplay.getWidth() == defaultDisplay.getHeight()) {
            return 3;
        }
        return defaultDisplay.getWidth() < defaultDisplay.getHeight() ? 1 : 2;
    }

    public static boolean hideAds(Context context) {
        return getDefaultSharedPreferences(context).getBoolean(BaseAppConfig.PREF_HIDE_ADS, false);
    }

    public static void initPath(Context context) {
        String externalStorageDirectory = StoreUtils.getExternalStorageDirectory(context);
        BaseAppConfig.PRIVATE_PATH = externalStorageDirectory + PATH;
        String str = externalStorageDirectory + PATH;
        BaseAppConfig.APP_PATH = str;
        BaseAppConfig.ROM_PATH = str;
        BaseAppConfig.CONFIG_PATH = BaseAppConfig.PRIVATE_PATH + "config/";
        BaseAppConfig.INFO_PATH = BaseAppConfig.PRIVATE_PATH + "rominfo/";
        BaseAppConfig.IPS_PATH = BaseAppConfig.PRIVATE_PATH + "ips/";
        BaseAppConfig.TMP_PATH = BaseAppConfig.PRIVATE_PATH + "tmp/";
        BaseAppConfig.ROMDATA_PATH = BaseAppConfig.PRIVATE_PATH + "romdata/";
        BaseAppConfig.LOG_PATH = BaseAppConfig.PRIVATE_PATH + "log/";
    }

    public static void initialise(Context context) {
        initPath(context);
        boolean zIsFirstRun = isFirstRun(context);
        try {
            BaseAppConfig.versionCode = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
        }
        createAppDir(context);
        if (zIsFirstRun) {
            setDefaultConfig(context);
        }
        updateConfig(context);
        String[] strArr = {"listcn.txt", "drvrom.xml"};
        BaseAppConfig.copyGuide(context);
        if (zIsFirstRun) {
            createResFile(context, BaseAppConfig.INFO_PATH, strArr, true);
            setFirstRun(context, false);
        }
    }

    public static int inputDeviceToPlayer(InputDevice inputDevice) {
        if (inputDevice == null) {
            return -1;
        }
        for (int i10 = 0; i10 < 4; i10++) {
        }
        for (int i11 = 0; i11 < 4; i11++) {
            if (deviceName[i11].equals(inputDevice.getName())) {
                int[] iArr = deviceID;
                int i12 = iArr[i11];
                if (i12 != 0) {
                    if (i12 == inputDevice.getId()) {
                        return i11;
                    }
                } else if (i12 == 0) {
                    iArr[i11] = inputDevice.getId();
                    return i11;
                }
            }
        }
        return 0;
    }

    public static boolean isAnalogPretty(Context context) {
        return true;
    }

    static boolean isFirstRun(Context context) {
        SharedPreferences defaultSharedPreferences = getDefaultSharedPreferences(context);
        boolean z10 = true;
        boolean z11 = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_FIRST_RUN, true);
        try {
            int i10 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
            if (defaultSharedPreferences.getInt("version", 0) < i10) {
                SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
                editorEdit.putInt("version", i10);
                editorEdit.commit();
            } else {
                z10 = z11;
            }
            return z10;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return z11;
        }
    }

    static boolean isGameFile(String str) {
        return ((!str.endsWith(".fba") && !str.endsWith(".zip") && !str.endsWith(".iso")) || str.endsWith("pgm.zip") || str.endsWith("neogeo.zip")) ? false : true;
    }

    public static boolean isPgmGame(String str) {
        if (str != null && !str.equals("")) {
            int i10 = 0;
            while (true) {
                String[] strArr = strPgmGame;
                if (i10 >= strArr.length) {
                    break;
                }
                String str2 = strArr[i10];
                if (str2 != null && str2.toLowerCase().contains(str.toLowerCase())) {
                    return true;
                }
                i10++;
            }
        }
        return false;
    }

    public static boolean isTiltSensor(Context context) {
        return getDefaultSharedPreferences(context).getBoolean(BaseAppConfig.PREF_TILT_SENSOR, false);
    }

    public static void lockScreenOrientation(Context context, int i10) {
        Activity activity = (Activity) context;
        if (i10 == 1) {
            activity.setRequestedOrientation(0);
            return;
        }
        if (i10 == 2) {
            activity.setRequestedOrientation(1);
        } else if (i10 == 3) {
            activity.setRequestedOrientation(8);
        } else {
            if (i10 != 4) {
                return;
            }
            activity.setRequestedOrientation(9);
        }
    }

    public static void logD(String str) {
    }

    public static void logE(String str) {
    }

    public static String md5string(String str) {
        char[] charArray = str.toCharArray();
        byte[] bArr = new byte[charArray.length];
        for (int i10 = 0; i10 < charArray.length; i10++) {
            bArr[i10] = (byte) charArray[i10];
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr, 0, charArray.length);
            return toHexString(messageDigest.digest());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String md5sum(String str) {
        if (!new File(str).exists()) {
            return null;
        }
        byte[] bArr = new byte[1024];
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            while (true) {
                int i10 = fileInputStream.read(bArr);
                if (i10 <= 0) {
                    fileInputStream.close();
                    return toHexString(messageDigest.digest());
                }
                messageDigest.update(bArr, 0, i10);
            }
        } catch (Exception unused) {
            return null;
        }
    }

    public static void saveLastDir(Context context, String str) {
        SharedPreferences.Editor editorEdit = getDefaultSharedPreferences(context).edit();
        editorEdit.putString(BaseAppConfig.KEY_LAST_DIR, str);
        editorEdit.commit();
    }

    public static void saveStringPref(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = getDefaultSharedPreferences(context).edit();
        editorEdit.putString(str, str2);
        editorEdit.commit();
    }

    static boolean setDefaultConfig(Context context) {
        setVpadStyle(context, 0);
        SharedPreferences.Editor editorEdit = getDefaultSharedPreferences(context).edit();
        BaseAppConfig.enableAudio = true;
        BaseAppConfig.renderMode = 1;
        BaseAppConfig.renderQuality = true;
        BaseAppConfig.frameSkip = -1;
        BaseAppConfig.screenOrientation = 1;
        BaseAppConfig.screenMode = 0;
        BaseAppConfig.enablePad = true;
        BaseAppConfig.enableVibrator = false;
        BaseAppConfig.enablePhysicalKey = true;
        BaseAppConfig.cpuCores = 2;
        editorEdit.putBoolean(BaseAppConfig.PREF_ENABLE_AUDIO, true);
        if (BaseAppConfig.renderMode == 1) {
            editorEdit.putBoolean(BaseAppConfig.PREF_RENDER_MODE, true);
        } else {
            editorEdit.putBoolean(BaseAppConfig.PREF_RENDER_MODE, false);
        }
        editorEdit.putBoolean(BaseAppConfig.PREF_RENDER_QUALITY, BaseAppConfig.renderQuality);
        editorEdit.putString(BaseAppConfig.PREF_SCREENT_ORIENT, String.valueOf(BaseAppConfig.screenOrientation));
        editorEdit.putString(BaseAppConfig.PREF_FRAME_SKIP, String.valueOf(BaseAppConfig.frameSkip));
        editorEdit.putString(BaseAppConfig.PREF_SCREEN_MODE, String.valueOf(BaseAppConfig.screenMode));
        editorEdit.putBoolean(BaseAppConfig.PREF_ENABLE_VPAD, BaseAppConfig.enablePad);
        editorEdit.putBoolean(BaseAppConfig.PREF_ENABLE_VIBRATOR, BaseAppConfig.enableVibrator);
        editorEdit.putBoolean(BaseAppConfig.PREF_ENABLE_PHYSICAL_KEY, BaseAppConfig.enablePhysicalKey);
        editorEdit.putBoolean(BaseAppConfig.PREF_HIDE_ADS, false);
        editorEdit.putBoolean(BaseAppConfig.PREF_VPAD_PLAYER, true);
        editorEdit.putBoolean(BaseAppConfig.PREF_AUTO_THREADING, true);
        editorEdit.putBoolean(BaseAppConfig.PREF_ANALOG_PRETTY, false);
        editorEdit.putBoolean(BaseAppConfig.PREF_ENABLE_ONE_CONTROLLER, false);
        editorEdit.putString(BaseAppConfig.PREF_ANALOG_DZ, "1");
        editorEdit.putString(BaseAppConfig.PREF_ANALOG_EZ, "2");
        editorEdit.putString(BaseAppConfig.PREF_BUTTON_EZ, "2");
        editorEdit.commit();
        return true;
    }

    static void setFirstRun(Context context, boolean z10) {
        SharedPreferences.Editor editorEdit = getDefaultSharedPreferences(context).edit();
        editorEdit.putBoolean(BaseAppConfig.PREF_FIRST_RUN, z10);
        editorEdit.commit();
    }

    public static void setVpadStyle(Context context, int i10) {
        SharedPreferences.Editor editorEdit = getDefaultSharedPreferences(context).edit();
        editorEdit.putInt(BaseAppConfig.PREF_VPAD_STYLE, i10);
        editorEdit.commit();
    }

    public static boolean showPlayerButton(Context context) {
        return getDefaultSharedPreferences(context).getBoolean(BaseAppConfig.PREF_VPAD_PLAYER, true);
    }

    public static String toHexString(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (int i10 = 0; i10 < bArr.length; i10++) {
            char[] cArr = HEX_DIGITS;
            sb2.append(cArr[(bArr[i10] & 240) >>> 4]);
            sb2.append(cArr[bArr[i10] & 15]);
        }
        return sb2.toString();
    }

    public static void updateConfig(Context context) {
        if (context.getResources().getConfiguration().locale.getLanguage().equalsIgnoreCase("zh") || context.getResources().getConfiguration().locale.getCountry().equals("CN")) {
            BaseAppConfig.language = 1;
        } else {
            BaseAppConfig.language = 0;
        }
        SharedPreferences defaultSharedPreferences = getDefaultSharedPreferences(context);
        BaseAppConfig.enableAudio = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_ENABLE_AUDIO, true);
        BaseAppConfig.IsXperiaPlay = IsXperiaPlay();
        if (getNumCores() <= 1 || !defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_AUTO_THREADING, true)) {
            BaseAppConfig.cpuCores = 1;
        } else {
            BaseAppConfig.cpuCores = getNumCores();
        }
        if (defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_RENDER_MODE, true)) {
            BaseAppConfig.renderMode = 1;
        } else {
            BaseAppConfig.renderMode = 0;
        }
        BaseAppConfig.renderQuality = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_RENDER_QUALITY, true);
        BaseAppConfig.screenMode = Integer.parseInt(defaultSharedPreferences.getString(BaseAppConfig.PREF_SCREEN_MODE, "0"));
        BaseAppConfig.frameSkip = Integer.parseInt(defaultSharedPreferences.getString(BaseAppConfig.PREF_FRAME_SKIP, WMConstants.TIMER_STAGE_NONE));
        BaseAppConfig.turboSpeed = defaultSharedPreferences.getInt(BaseAppConfig.PREF_TURBO_SPEED, 8);
        BaseAppConfig.enableVibrator = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_ENABLE_VIBRATOR, true);
        BaseAppConfig.enablePad = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_ENABLE_VPAD, true);
        BaseAppConfig.bAutoLayoutBtn = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_VPAD_AUTOLAYOUT, true);
        BaseAppConfig.enablePhysicalKey = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_ENABLE_PHYSICAL_KEY, true);
        BaseAppConfig.oneController = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_ENABLE_ONE_CONTROLLER, true);
        logD(BaseAppConfig.autoSearchRom + " " + BaseAppConfig.enableAudio + " " + BaseAppConfig.enableVibrator + " " + BaseAppConfig.renderMode + " " + BaseAppConfig.screenMode + " " + BaseAppConfig.vkeypadLayout + " " + BaseAppConfig.controlScale + " " + BaseAppConfig.enablePhysicalKey);
    }

    public static void logD(String str, String str2) {
    }
}
