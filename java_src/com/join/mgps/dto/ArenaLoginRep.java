package com.join.mgps.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaLoginRep implements Serializable {
    public static final int BEIJING = 1;
    public static final int CLOSE_NO_ROOT = 10100;
    public static final int FORBID = 9100;
    public static final int GUANGZHOU = 3;
    public static final int PING_TIP = 10000;
    public static final int S2C_BEGIN_GROUP_RES = 108;
    public static final int S2C_CANCEL_GROUP_RES = 105;
    public static final int S2C_CREATE_GROUP_RES = 102;
    public static final int S2C_ENTER_BATTLE = 107;
    public static final int S2C_GET_USER_COUNTRES = 111;
    public static final int S2C_GROUP_ENTERAREA_RES = 100;
    public static final int S2C_GROUP_SETOPTION_RES = 106;
    public static final int S2C_GROUP_USERSTATE = 103;
    public static final int S2C_KICKGROUPUSERRES = 110;
    public static final int S2C_LIST_GROUPSTATE_RES = 104;
    public static final int S2C_PLATFORM_NOTICEE = 113;
    public static final int S2C_REFRESH_GROUPSTATE_RES = 101;
    public static final int S2C_ROOM_IPPORT = 109;
    public static final int SHANGHAI = 2;
    public static final int TYPE_BAK_NETWORK = -1000;
    public static final int TYPE_MATCH_KICK_OFF = 112;
    public static final int TYPE_NO_ROOM = 1010;
    public static final int TYPE_OTHER_ERROR = 3100;
    public static final int VERSIONLOW = 6100;
    private static final long serialVersionUID = -5596318227694788734L;
    private int area;
    private long creator;
    private Object data;
    private String errContent;
    private String firstPassord;
    private long gameId;
    TreeSet<Long> gameidList = new TreeSet<>();
    private int groupid;
    private ArrayList<ArenaGroupStateBean> grouplist;
    private String ip;
    private boolean isReady;
    private byte isarchive;
    private byte isarchive_flg;
    private byte isvisit;
    private boolean judgeVisit;
    private long logid;
    private int maxperson;
    private int maxvisitor;

    /* JADX INFO: renamed from: me, reason: collision with root package name */
    private ArenaUserBean f68018me;
    private String passWord;
    private byte password;
    private int port;
    private byte refreshtype;
    private byte result;
    private long roomId;
    private byte roomtype;
    private int server_type;
    int showGroupId;
    private int startMode;
    private byte startbattle;
    private long starttime;
    private byte svip;
    private byte tcptype;
    private int type;
    private int udpport;
    private ArrayList<ArenaUserBean> userList;
    private long userid;
    private byte vip;
    private ArrayList<ArenaUserBean> visitorList;

    public int getArea() {
        return this.area;
    }

    public long getCreator() {
        return this.creator;
    }

    public Object getData() {
        return this.data;
    }

    public String getErrContent() {
        return this.errContent;
    }

    public String getFirstPassord() {
        return this.firstPassord;
    }

    public long getGameId() {
        return this.gameId;
    }

    public TreeSet getGameidList() {
        return this.gameidList;
    }

    public int getGroupid() {
        return this.groupid;
    }

    public ArrayList<ArenaGroupStateBean> getGrouplist() {
        return this.grouplist;
    }

    public String getIp() {
        return this.ip;
    }

    public byte getIsarchive() {
        return this.isarchive;
    }

    public byte getIsarchive_flg() {
        return this.isarchive_flg;
    }

    public byte getIsvisit() {
        return this.isvisit;
    }

    public long getLogid() {
        return this.logid;
    }

    public int getMaxperson() {
        return this.maxperson;
    }

    public int getMaxvisitor() {
        return this.maxvisitor;
    }

    public ArenaUserBean getMe() {
        return this.f68018me;
    }

    public String getPassWord() {
        return this.passWord;
    }

    public byte getPassword() {
        return this.password;
    }

    public int getPort() {
        return this.port;
    }

    public byte getRefreshtype() {
        return this.refreshtype;
    }

    public byte getResult() {
        return this.result;
    }

    public long getRoomId() {
        return this.roomId;
    }

    public byte getRoomtype() {
        return this.roomtype;
    }

    public int getServer_type() {
        return this.server_type;
    }

    public int getShowGroupId() {
        return this.showGroupId;
    }

    public int getStartMode() {
        return this.startMode;
    }

    public byte getStartbattle() {
        return this.startbattle;
    }

    public long getStarttime() {
        return this.starttime;
    }

    public byte getSvip() {
        return this.svip;
    }

    public byte getTcptype() {
        return this.tcptype;
    }

    public int getType() {
        return this.type;
    }

    public int getUdpport() {
        return this.udpport;
    }

    public ArrayList<ArenaUserBean> getUserList() {
        return this.userList;
    }

    public long getUserid() {
        return this.userid;
    }

    public byte getVip() {
        return this.vip;
    }

    public ArrayList<ArenaUserBean> getVisitorList() {
        return this.visitorList;
    }

    public boolean isJudgeVisit() {
        return this.judgeVisit;
    }

    public boolean isReady() {
        return this.isReady;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public void setCreator(long creator) {
        this.creator = creator;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public void setErrContent(String errContent) {
        this.errContent = errContent;
    }

    public void setFirstPassord(String firstPassord) {
        this.firstPassord = firstPassord;
    }

    public void setGameId(long gameId) {
        this.gameId = gameId;
    }

    public void setGameidList(TreeSet gameidList) {
        this.gameidList = gameidList;
    }

    public void setGroupid(int groupid) {
        this.groupid = groupid;
    }

    public void setGrouplist(ArrayList<ArenaGroupStateBean> grouplist) {
        this.grouplist = grouplist;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public void setIsarchive(byte isarchive) {
        this.isarchive = isarchive;
    }

    public void setIsarchive_flg(byte isarchive_flg) {
        this.isarchive_flg = isarchive_flg;
    }

    public void setIsvisit(byte isvisit) {
        this.isvisit = isvisit;
    }

    public void setJudgeVisit(boolean judgeVisit) {
        this.judgeVisit = judgeVisit;
    }

    public void setLogid(long logid) {
        this.logid = logid;
    }

    public void setMaxperson(int maxperson) {
        this.maxperson = maxperson;
    }

    public void setMaxvisitor(int maxvisitor) {
        this.maxvisitor = maxvisitor;
    }

    public void setMe(ArenaUserBean me2) {
        this.f68018me = me2;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public void setPassword(byte password) {
        this.password = password;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public void setReady(boolean ready) {
        this.isReady = ready;
    }

    public void setRefreshtype(byte refreshtype) {
        this.refreshtype = refreshtype;
    }

    public void setResult(byte result) {
        this.result = result;
    }

    public void setRoomId(long roomId) {
        this.roomId = roomId;
    }

    public void setRoomtype(byte roomtype) {
        this.roomtype = roomtype;
    }

    public void setServer_type(int server_type) {
        this.server_type = server_type;
    }

    public void setShowGroupId(int groupId) {
        this.showGroupId = groupId % 1000;
    }

    public void setStartMode(int startMode) {
        this.startMode = startMode;
    }

    public void setStartbattle(byte startbattle) {
        this.startbattle = startbattle;
    }

    public void setStarttime(long starttime) {
        this.starttime = starttime;
    }

    public void setSvip(byte svip) {
        this.svip = svip;
    }

    public void setTcptype(byte tcptype) {
        this.tcptype = tcptype;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setUdpport(int udpport) {
        this.udpport = udpport;
    }

    public void setUserList(ArrayList<ArenaUserBean> userList) {
        this.userList = userList;
    }

    public void setUserid(long userid) {
        this.userid = userid;
    }

    public void setVip(byte vip) {
        this.vip = vip;
    }

    public void setVisitorList(ArrayList<ArenaUserBean> visitorList) {
        this.visitorList = visitorList;
    }

    public String toString() {
        return "ArenaLoginRep{area=" + this.area + ", type=" + this.type + ", groupid=" + this.groupid + ", roomtype=" + ((int) this.roomtype) + ", creator=" + this.creator + ", isvisit=" + ((int) this.isvisit) + ", result=" + ((int) this.result) + ", refreshtype=" + ((int) this.refreshtype) + ", password=" + ((int) this.password) + ", userid=" + this.userid + ", startbattle=" + ((int) this.startbattle) + ", starttime=" + this.starttime + ", passWord='" + this.passWord + "', judgeVisit=" + this.judgeVisit + ", port=" + this.port + ", ip='" + this.ip + "', udpport=" + this.udpport + ", tcptype=" + ((int) this.tcptype) + ", logid=" + this.logid + ", roomId=" + this.roomId + ", gameId=" + this.gameId + ", server_type=" + this.server_type + ", errContent='" + this.errContent + "', maxperson=" + this.maxperson + ", maxvisitor=" + this.maxvisitor + ", isarchive=" + ((int) this.isarchive) + ", isarchive_flg=" + ((int) this.isarchive_flg) + ", data=" + this.data + ", me=" + this.f68018me + ", gameidList=" + this.gameidList + ", grouplist=" + this.grouplist + ", userList=" + this.userList + ", visitorList=" + this.visitorList + '}';
    }
}
