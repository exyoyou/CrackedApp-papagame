package com.join.mgps.Util;

import com.MApplication;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.join.mgps.dto.BaiduAdDataMain;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class StartGameMeta {
    private int RoomMode;
    private String activityName;
    private List<BaiduAdDataMain> adDatas;
    private int archiveSaveCount;
    private int archiveSaveTime;
    private String area;
    private String assetspath;
    private String bios;
    private String channelId;
    private int cheat;
    private String classname;
    private String clientIp;
    private String core;
    public String device_id;
    private String dnsJson;
    private String emuType;
    private int endGameId;
    private String endGameLevelRules;
    private int endGameTime;
    private String endId;
    private String fromCls;
    private String gameID;
    private int gamePlayers;
    private int groupId;
    private boolean isBside;
    private int netMode;
    private int netPlayers;
    private String netState;
    private int oldGame;
    private String p1Name;
    private String p2Name;
    private String packageName;
    private long plugin_area_val;
    private int porder;
    private int pspAdShowTime;
    private int pspAdShowTimeSwitch;
    private String ramCheck;
    private int rankAutoUpload;
    private String rankingID;
    private String rolesJson;
    private String romPath;
    private String roomID;
    private int sVipLevel;
    private int scoreBoard;
    private String serverIP;
    private String serverPort;
    private String sopath;
    private int sp;
    private int startMode;
    private String subTitle;
    private int tagId;
    private int tcptype;
    private String token;
    private boolean tourist;
    private int type;
    private String udpIP;
    private int udpport;
    private String userID;
    private String userIcon;
    private String userName;
    private String verCode;
    private int vipLevel;
    private boolean allowPeripheralJoin = true;
    private boolean allowPcJoin = true;
    private int intentFrom = 0;
    private int version = 15;
    private long vip_expire_time = 0;
    private String result_show_type = "";
    private String pa_package_name = "";
    private int roomSilent = 0;
    private String fastIP = "";
    private int gametype = 0;
    private int cheatEnable = 1;
    private int rankMiniTime = 0;

    @JsonIgnore
    private int apkOrSo = 1;

    public String getActivityName() {
        return this.activityName;
    }

    public List<BaiduAdDataMain> getAdDatas() {
        return this.adDatas;
    }

    public int getApkOrSo() {
        return this.apkOrSo;
    }

    public int getArchiveSaveCount() {
        return this.archiveSaveCount;
    }

    public int getArchiveSaveTime() {
        return this.archiveSaveTime;
    }

    public String getArea() {
        return this.area;
    }

    public String getAssetspath() {
        return this.assetspath;
    }

    public String getBios() {
        return this.bios;
    }

    public String getChannelId() {
        return this.channelId;
    }

    public int getCheat() {
        return this.cheat;
    }

    public int getCheatEnable() {
        return this.cheatEnable;
    }

    public String getClassname() {
        return this.classname;
    }

    public String getClientIp() {
        return this.clientIp;
    }

    public String getCore() {
        return this.core;
    }

    public String getDevice_id() {
        return com.papa.sim.statistic.u.f(MApplication.n()).b();
    }

    public String getDnsJson() {
        return this.dnsJson;
    }

    public String getEmuType() {
        return this.emuType;
    }

    public int getEndGameId() {
        return this.endGameId;
    }

    public String getEndGameLevelRules() {
        return this.endGameLevelRules;
    }

    public int getEndGameTime() {
        return this.endGameTime;
    }

    public String getEndId() {
        return this.endId;
    }

    public String getFastIP() {
        return this.fastIP;
    }

    public String getFromCls() {
        return this.fromCls;
    }

    public String getGameID() {
        return this.gameID;
    }

    public int getGamePlayers() {
        return this.gamePlayers;
    }

    public int getGametype() {
        return this.gametype;
    }

    public int getGroupId() {
        return this.groupId;
    }

    public int getIntentFrom() {
        return this.intentFrom;
    }

    public int getNetMode() {
        return this.netMode;
    }

    public int getNetPlayers() {
        return this.netPlayers;
    }

    public String getNetState() {
        return this.netState;
    }

    public int getOldGame() {
        return this.oldGame;
    }

    public String getP1Name() {
        return this.p1Name;
    }

    public String getP2Name() {
        return this.p2Name;
    }

    public String getPa_package_name() {
        return this.pa_package_name;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public long getPlugin_area_val() {
        return this.plugin_area_val;
    }

    public int getPorder() {
        return this.porder;
    }

    public int getPspAdShowTime() {
        return this.pspAdShowTime;
    }

    public int getPspAdShowTimeSwitch() {
        return this.pspAdShowTimeSwitch;
    }

    public String getRamCheck() {
        return this.ramCheck;
    }

    public int getRankAutoUpload() {
        return this.rankAutoUpload;
    }

    public int getRankMiniTime() {
        return this.rankMiniTime;
    }

    public String getRankingID() {
        return this.rankingID;
    }

    public String getResult_show_type() {
        return this.result_show_type;
    }

    public String getRolesJson() {
        return this.rolesJson;
    }

    public String getRomPath() {
        return this.romPath;
    }

    public String getRoomID() {
        return this.roomID;
    }

    public int getRoomMode() {
        return this.RoomMode;
    }

    public int getRoomSilent() {
        return this.roomSilent;
    }

    public int getScoreBoard() {
        return this.scoreBoard;
    }

    public String getServerIP() {
        return this.serverIP;
    }

    public String getServerPort() {
        return this.serverPort;
    }

    public String getSopath() {
        return this.sopath;
    }

    public int getSp() {
        return this.sp;
    }

    public int getStartMode() {
        return this.startMode;
    }

    public String getSubTitle() {
        return this.subTitle;
    }

    public int getTagId() {
        return this.tagId;
    }

    public int getTcptype() {
        return this.tcptype;
    }

    public String getToken() {
        return this.token;
    }

    public int getType() {
        return this.type;
    }

    public String getUdpIP() {
        return this.udpIP;
    }

    public int getUdpport() {
        return this.udpport;
    }

    public String getUserID() {
        return this.userID;
    }

    public String getUserIcon() {
        return this.userIcon;
    }

    public String getUserName() {
        return this.userName;
    }

    public String getVerCode() {
        return this.verCode;
    }

    public int getVersion() {
        return this.version;
    }

    public int getVipLevel() {
        return this.vipLevel;
    }

    public long getVip_expire_time() {
        return this.vip_expire_time;
    }

    public int getsVipLevel() {
        return this.sVipLevel;
    }

    public boolean isAllowPcJoin() {
        return this.allowPcJoin;
    }

    public boolean isAllowPeripheralJoin() {
        return this.allowPeripheralJoin;
    }

    public boolean isBside() {
        return this.isBside;
    }

    public boolean isTourist() {
        return this.tourist;
    }

    public void setActivityName(String activityName) {
        this.activityName = activityName;
    }

    public void setAdDatas(List<BaiduAdDataMain> adDatas) {
        this.adDatas = adDatas;
    }

    public void setAllowPcJoin(boolean allowPcJoin) {
        this.allowPcJoin = allowPcJoin;
    }

    public void setAllowPeripheralJoin(boolean allowPeripheralJoin) {
        this.allowPeripheralJoin = allowPeripheralJoin;
    }

    public void setApkOrSo(int apkOrSo) {
        this.apkOrSo = apkOrSo;
    }

    public void setArchiveSaveCount(int archiveSaveCount) {
        this.archiveSaveCount = archiveSaveCount;
    }

    public void setArchiveSaveTime(int archiveSaveTime) {
        this.archiveSaveTime = archiveSaveTime;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public void setAssetspath(String assetspath) {
        this.assetspath = assetspath;
    }

    public void setBios(String bios) {
        this.bios = bios;
    }

    public void setBside(boolean bside) {
        this.isBside = bside;
    }

    public void setChannelId(String channelId) {
        this.channelId = channelId;
    }

    public void setCheat(int cheat) {
        this.cheat = cheat;
    }

    public void setCheatEnable(int cheatEnable) {
        this.cheatEnable = cheatEnable;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public void setClientIp(String clientIp) {
        this.clientIp = clientIp;
    }

    public void setCore(String core) {
        this.core = core;
    }

    public void setDevice_id(String device_id) {
        this.device_id = device_id;
    }

    public void setDnsJson(String dnsJson) {
        this.dnsJson = dnsJson;
    }

    public void setEmuType(String emuType) {
        this.emuType = emuType;
    }

    public void setEndGameId(int endGameId) {
        this.endGameId = endGameId;
    }

    public void setEndGameLevelRules(String endGameLevelRules) {
        this.endGameLevelRules = endGameLevelRules;
    }

    public void setEndGameTime(int endGameTime) {
        this.endGameTime = endGameTime;
    }

    public void setEndId(String endId) {
        this.endId = endId;
    }

    public void setFastIP(String fastIP) {
        this.fastIP = fastIP;
    }

    public void setFromCls(String fromCls) {
        this.fromCls = fromCls;
    }

    public void setGameID(String gameID) {
        this.gameID = gameID;
    }

    public void setGamePlayers(int gamePlayers) {
        this.gamePlayers = gamePlayers;
    }

    public void setGametype(int gametype) {
        this.gametype = gametype;
    }

    public void setGroupId(int groupId) {
        this.groupId = groupId;
    }

    public void setIntentFrom(int intentFrom) {
        this.intentFrom = intentFrom;
    }

    public void setNetMode(int netMode) {
        this.netMode = netMode;
    }

    public void setNetPlayers(int netPlayers) {
        this.netPlayers = netPlayers;
    }

    public void setNetState(String netState) {
        this.netState = netState;
    }

    public void setOldGame(int oldGame) {
        this.oldGame = oldGame;
    }

    public void setP1Name(String p1Name) {
        this.p1Name = p1Name;
    }

    public void setP2Name(String p2Name) {
        this.p2Name = p2Name;
    }

    public void setPa_package_name(String pa_package_name) {
        this.pa_package_name = pa_package_name;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public void setPlugin_area_val(long plugin_area_val) {
        this.plugin_area_val = plugin_area_val;
    }

    public void setPorder(int porder) {
        this.porder = porder;
    }

    public void setPspAdShowTime(int pspAdShowTime) {
        this.pspAdShowTime = pspAdShowTime;
    }

    public void setPspAdShowTimeSwitch(int pspAdShowTimeSwitch) {
        this.pspAdShowTimeSwitch = pspAdShowTimeSwitch;
    }

    public void setRamCheck(String ramCheck) {
        this.ramCheck = ramCheck;
    }

    public void setRankAutoUpload(int rankAutoUpload) {
        this.rankAutoUpload = rankAutoUpload;
    }

    public void setRankMiniTime(int rankMiniTime) {
        this.rankMiniTime = rankMiniTime;
    }

    public void setRankingID(String rankingID) {
        this.rankingID = rankingID;
    }

    public void setResult_show_type(String result_show_type) {
        this.result_show_type = result_show_type;
    }

    public void setRolesJson(String rolesJson) {
        this.rolesJson = rolesJson;
    }

    public void setRomPath(String romPath) {
        this.romPath = romPath;
    }

    public void setRoomID(String roomID) {
        this.roomID = roomID;
    }

    public void setRoomMode(int roomMode) {
        this.RoomMode = roomMode;
    }

    public void setRoomSilent(int roomSilent) {
        this.roomSilent = roomSilent;
    }

    public void setScoreBoard(int scoreBoard) {
        this.scoreBoard = scoreBoard;
    }

    public void setServerIP(String serverIP) {
        this.serverIP = serverIP;
    }

    public void setServerPort(String serverPort) {
        this.serverPort = serverPort;
    }

    public void setSopath(String sopath) {
        this.sopath = sopath;
    }

    public void setSp(int sp) {
        this.sp = sp;
    }

    public void setStartMode(int startMode) {
        this.startMode = startMode;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle;
    }

    public void setTagId(int tagId) {
        this.tagId = tagId;
    }

    public void setTcptype(int tcptype) {
        this.tcptype = tcptype;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setTourist(boolean tourist) {
        this.tourist = tourist;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setUdpIP(String udpIP) {
        this.udpIP = udpIP;
    }

    public void setUdpport(int udpport) {
        this.udpport = udpport;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public void setUserIcon(String userIcon) {
        this.userIcon = userIcon;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setVerCode(String verCode) {
        this.verCode = verCode;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public void setVipLevel(int vipLevel) {
        this.vipLevel = vipLevel;
    }

    public void setVip_expire_time(long vip_expire_time) {
        this.vip_expire_time = vip_expire_time;
    }

    public void setsVipLevel(int sVipLevel) {
        this.sVipLevel = sVipLevel;
    }

    public String toString() {
        return "StartGameMeta{allowPeripheralJoin=" + this.allowPeripheralJoin + ", allowPcJoin=" + this.allowPcJoin + ", udpIP='" + this.udpIP + "', RoomMode=" + this.RoomMode + ", packageName='" + this.packageName + "', activityName='" + this.activityName + "', romPath='" + this.romPath + "', startMode=" + this.startMode + ", userID='" + this.userID + "', gameID='" + this.gameID + "', version=" + this.version + ", roomID='" + this.roomID + "', serverIP='" + this.serverIP + "', serverPort='" + this.serverPort + "', porder=" + this.porder + ", type=" + this.type + ", plugin_area_val=" + this.plugin_area_val + ", tourist=" + this.tourist + ", p1Name='" + this.p1Name + "', p2Name='" + this.p2Name + "', emuType='" + this.emuType + "', oldGame=" + this.oldGame + ", clientIp='" + this.clientIp + "', udpport=" + this.udpport + ", tcptype=" + this.tcptype + ", ramCheck='" + this.ramCheck + "', netState='" + this.netState + "', token='" + this.token + "', cheat=" + this.cheat + ", userName='" + this.userName + "', userIcon='" + this.userIcon + "', netMode=" + this.netMode + ", netPlayers=" + this.netPlayers + ", gamePlayers=" + this.gamePlayers + ", groupId=" + this.groupId + ", area='" + this.area + "', adDatas=" + this.adDatas + ", vipLevel=" + this.vipLevel + ", sVipLevel=" + this.sVipLevel + ", vip_expire_time=" + this.vip_expire_time + ", result_show_type='" + this.result_show_type + "', pa_package_name='" + this.pa_package_name + "', roomSilent=" + this.roomSilent + ", fastIP='" + this.fastIP + "', gametype=" + this.gametype + ", cheatEnable=" + this.cheatEnable + ", rankingID='" + this.rankingID + "', assetspath='" + this.assetspath + "', sopath='" + this.sopath + "', classname='" + this.classname + "', apkOrSo=" + this.apkOrSo + ", sp=" + this.sp + '}';
    }
}
