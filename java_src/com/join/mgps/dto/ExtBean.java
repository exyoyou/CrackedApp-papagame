package com.join.mgps.dto;

import android.text.TextUtils;
import com.join.kotlin.base.impl.Downloadable;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.w0;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import java.io.Serializable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class ExtBean implements Serializable, Cloneable {
    private static final String STAT_FORMAT_1 = "firstModule$##$secondModule$##$keyWord$##$chatId$##$fromTabId$##$from$##$sopNo$##$sopName$##$resourceId";
    private int _from_type;
    private String actType;
    private String chatId;
    private String collectId;
    private String dataFlag;
    private String firstModule;
    private String from;
    private String fromTabId;
    private String from_id;
    private int gameFlag;
    private String gameId;
    private String guideKey;
    private String isJoin;
    private boolean isOnlineGame;
    private String isResultPage;
    private String keyword;
    private String location;
    private String memberCount;
    private String nodeId;
    private String orginFrom;
    private String papaPage;
    private ExtBean parent;
    private String position;
    private String qkPosition;
    private String reMarks;
    private String recPosition;
    private String recScene;
    private String resourceId;
    private String resultCode;
    private String sceneFormat;
    private String scenesCode;
    private String secondModule;
    private String sopName;
    private String sopNo;
    private String testAbNumber;
    private String typeCode;
    private String volcanoOther;
    private String where;
    private int down_from = 0;
    private boolean keepOrginFrom = false;
    private String tag_ids = "";
    private boolean hasExplore = false;
    private HashMap<String, String> keyMaps = new HashMap<>();

    public ExtBean() {
    }

    private StringBuilder buildParentScene(ExtBean bean) {
        StringBuilder sbBuildParentScene;
        if (bean == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        ExtBean extBean = bean.parent;
        if (extBean != null && (sbBuildParentScene = buildParentScene(extBean)) != null && t2.i(sbBuildParentScene.toString())) {
            if (sb2.length() <= 0) {
                sb2.append((CharSequence) sbBuildParentScene);
            } else {
                sb2.append(t.f77357l);
                sb2.append((CharSequence) sbBuildParentScene);
            }
        }
        ensureRecSceneIfMissing(bean);
        if (t2.i(bean.recScene)) {
            if (sb2.length() <= 0) {
                sb2.append(bean.recScene);
            } else {
                sb2.append(t.f77357l);
                sb2.append(bean.recScene);
            }
        }
        return sb2;
    }

    private static void ensureRecSceneIfMissing(ExtBean bean) {
        if (bean == null || t2.i(bean.recScene)) {
            return;
        }
        bean.buildScene(t2.i(bean.sceneFormat) ? bean.sceneFormat : STAT_FORMAT_1);
    }

    public static ExtBean game(Downloadable gInfo) {
        ExtBean extBean = new ExtBean();
        if (gInfo.hasGInfo()) {
            if (w0.p(gInfo.getGInfo().getTagInfo())) {
                extBean.setTypeCode(EventP.TypeCode.cloudGame.name());
            } else if (gInfo.isH5Game()) {
                extBean.setTypeCode(EventP.TypeCode.h5Game.name());
            } else if (gInfo.isGame()) {
                extBean.setTypeCode(EventP.TypeCode.game.name());
            }
            if (gInfo.isModGameVm()) {
                extBean.setResourceId(gInfo.getGInfo().getModGameId());
                extBean.setGameId(gInfo.getGInfo().getModGameId());
            } else {
                extBean.setResourceId(gInfo.getGInfo().getGameId());
                extBean.setGameId(gInfo.getGInfo().getGameId());
            }
        }
        return extBean;
    }

    private void scanFieldMap() {
        ExtBean extBean;
        this.keyMaps.clear();
        ExtBean extBean2 = this.parent;
        if (extBean2 == null || t2.h(extBean2.getFirstModule())) {
            this.keyMaps.put("firstModule", this.firstModule);
        }
        ExtBean extBean3 = this.parent;
        if (extBean3 == null || t2.h(extBean3.getSecondModule())) {
            this.keyMaps.put("secondModule", this.secondModule);
        }
        this.keyMaps.put("chatId", this.chatId);
        if (t2.i(this.from) && !"platform".equals(this.from) && !"0".equals(this.from) && ((extBean = this.parent) == null || t2.h(extBean.getFrom()))) {
            this.keyMaps.put("from", this.from);
        }
        this.keyMaps.put("keyWord", this.keyword);
        this.keyMaps.put("fromTabId", this.fromTabId);
        this.keyMaps.put("sopNo", this.sopNo);
        this.keyMaps.put("sopName", this.sopName);
        this.keyMaps.put("resourceId", this.resourceId);
        this.keyMaps.put("gameId", this.gameId);
        this.keyMaps.put("scenesCode", this.scenesCode);
        this.keyMaps.put("collectId", this.collectId);
        this.keyMaps.put("typeCode", this.typeCode);
        this.keyMaps.put("papaPage", this.papaPage);
        this.keyMaps.put("resultCode", this.resultCode);
    }

    public ExtBean buildScene() {
        buildScene(STAT_FORMAT_1);
        return this;
    }

    public ExtBean cloneScene() {
        ExtBean extBean = new ExtBean();
        extBean.setRecScene(this.recScene);
        extBean.setSceneFormat(this.sceneFormat);
        return extBean;
    }

    public ExtBean copy() {
        ExtBean extBean = new ExtBean();
        extBean.setParent(this.parent);
        extBean.setPapaPage(this.papaPage);
        extBean.setFirstModule(this.firstModule);
        extBean.setSecondModule(this.secondModule);
        extBean.setSopNo(this.sopNo);
        extBean.setSopName(this.sopName);
        extBean.setGameId(this.gameId);
        extBean.setResourceId(this.resourceId);
        extBean.setResultCode(this.resultCode);
        extBean.setTypeCode(this.typeCode);
        extBean.setChatId(this.chatId);
        extBean.setFromTabId(this.fromTabId);
        extBean.setTag_ids(this.tag_ids);
        extBean.setDataFlag(this.dataFlag);
        extBean.setGameFlag(this.gameFlag);
        extBean.setRecPosition(this.recPosition);
        extBean.setLocation(this.location);
        extBean.setFrom(this.from);
        extBean.setPosition(this.position);
        extBean.setNodeId(this.nodeId);
        extBean.setWhere(this.where);
        extBean.setKeyword(this.keyword);
        extBean.setTestAbNumber(this.testAbNumber);
        extBean.setIsJoin(this.isJoin);
        extBean.setIsResultPage(this.isResultPage);
        extBean.setActType(this.actType);
        extBean.setRecScene(this.recScene);
        extBean.setSceneFormat(this.sceneFormat);
        extBean.setReMarks(this.reMarks);
        extBean.setQkPosition(this.qkPosition);
        extBean.setCollectId(this.collectId);
        extBean.setScenesCode(this.scenesCode);
        return extBean;
    }

    public String getActType() {
        return this.actType;
    }

    public String getChatId() {
        return this.chatId;
    }

    public String getCollectId() {
        return this.collectId;
    }

    public String getDataFlag() {
        return this.dataFlag;
    }

    public int getDown_from() {
        return this.down_from;
    }

    public String getFirstModule() {
        return this.firstModule;
    }

    public String getFrom() {
        return this.from;
    }

    public String getFromTabId() {
        return this.fromTabId;
    }

    public String getFrom_id() {
        return this.from_id;
    }

    public int getGameFlag() {
        return this.gameFlag;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getGuideKey() {
        return this.guideKey;
    }

    public String getIsJoin() {
        return this.isJoin;
    }

    public String getIsResultPage() {
        return this.isResultPage;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public String getLocation() {
        return this.location;
    }

    public String getMemberCount() {
        return this.memberCount;
    }

    public String getNodeId() {
        return this.nodeId;
    }

    public String getOrginFrom() {
        return this.orginFrom;
    }

    public String getPapaPage() {
        return this.papaPage;
    }

    public ExtBean getParent() {
        return this.parent;
    }

    public String getPosition() {
        return this.position;
    }

    public String getQkPosition() {
        return this.qkPosition;
    }

    public String getReMarks() {
        return this.reMarks;
    }

    public String getRecPosition() {
        return this.recPosition;
    }

    public String getRecScene() {
        return this.recScene;
    }

    public String getResourceId() {
        return this.resourceId;
    }

    public String getResultCode() {
        return this.resultCode;
    }

    public String getSceneFormat() {
        return this.sceneFormat;
    }

    public String getScenesCode() {
        return this.scenesCode;
    }

    public String getSecondModule() {
        return this.secondModule;
    }

    public String getSopName() {
        return this.sopName;
    }

    public String getSopNo() {
        return this.sopNo;
    }

    public String getTag_ids() {
        return this.tag_ids;
    }

    public String getTestAbNumber() {
        return this.testAbNumber;
    }

    public String getTypeCode() {
        return this.typeCode;
    }

    public String getVolcanoOther() {
        return this.volcanoOther;
    }

    public String getWhere() {
        return this.where;
    }

    public int get_from_type() {
        return this._from_type;
    }

    public boolean hasExplore() {
        return this.hasExplore;
    }

    public boolean isKeepOrginFrom() {
        return this.keepOrginFrom;
    }

    public boolean isOnlineGame() {
        return this.isOnlineGame;
    }

    public ExtBean itemWithParent(ExtBean parent) {
        setParent(parent);
        return this;
    }

    public void setActType(String actType) {
        this.actType = actType;
    }

    public ExtBean setChatId(String chatId) {
        this.chatId = chatId;
        return this;
    }

    public ExtBean setCollectId(String collectId) {
        this.collectId = collectId;
        return this;
    }

    public ExtBean setDataFlag(String dataFlag) {
        this.dataFlag = dataFlag;
        return this;
    }

    public void setDown_from(int down_from) {
        this.down_from = down_from;
    }

    public ExtBean setFirstModule(String firstModule) {
        this.firstModule = firstModule;
        return this;
    }

    public ExtBean setFrom(String from) {
        this.from = from;
        return this;
    }

    public ExtBean setFromTabId(String fromTabId) {
        this.fromTabId = fromTabId;
        return this;
    }

    public void setFrom_id(String from_id) {
        this.from_id = from_id;
    }

    public void setGameFlag(int gameFlag) {
        this.gameFlag = gameFlag;
    }

    public ExtBean setGameId(String gameId) {
        this.gameId = gameId;
        return this;
    }

    public ExtBean setGuideKey(String guideKey) {
        this.guideKey = guideKey;
        return this;
    }

    public void setHasExplore(boolean hasExplore) {
        this.hasExplore = hasExplore;
    }

    public void setIsJoin(String isJoin) {
        this.isJoin = isJoin;
    }

    public void setIsResultPage(String isResultPage) {
        this.isResultPage = isResultPage;
    }

    public void setKeepOrginFrom(boolean keepOrginFrom) {
        this.keepOrginFrom = keepOrginFrom;
    }

    public ExtBean setKeyword(String keyword) {
        this.keyword = keyword;
        return this;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public ExtBean setMemberCount(String memberCount) {
        this.memberCount = memberCount;
        return this;
    }

    public ExtBean setNodeId(String nodeId) {
        this.nodeId = nodeId;
        return this;
    }

    public ExtBean setOnlineGame(boolean onlineGame) {
        this.isOnlineGame = onlineGame;
        return this;
    }

    public void setOrginFrom(String orginFrom) {
        this.orginFrom = orginFrom;
    }

    public ExtBean setPapaPage(String papaPage) {
        this.papaPage = papaPage;
        return this;
    }

    public ExtBean setParent(ExtBean parent) {
        this.parent = parent;
        if (parent != null) {
            if (t2.h(this.firstModule) && t2.i(parent.getFirstModule())) {
                setFirstModule(parent.getFirstModule());
            }
            if (t2.h(this.secondModule) && t2.i(parent.getSecondModule())) {
                setSecondModule(parent.getSecondModule());
            }
            if (t2.h(this.chatId) && t2.i(parent.getChatId())) {
                setChatId(parent.getChatId());
            }
            if (t2.h(this.from) && t2.i(parent.getFrom())) {
                setFrom(parent.getFrom());
            }
        }
        return this;
    }

    public ExtBean setPosition(String position) {
        this.position = position;
        return this;
    }

    public ExtBean setQkPosition(String qkPosition) {
        this.qkPosition = qkPosition;
        return this;
    }

    public ExtBean setReMarks(String reMarks) {
        this.reMarks = reMarks;
        return this;
    }

    public ExtBean setRecPosition(String recPosition) {
        this.recPosition = recPosition;
        return this;
    }

    public ExtBean setRecScene(String recScene) {
        this.recScene = recScene;
        return this;
    }

    public ExtBean setResourceId(String resourceId) {
        this.resourceId = resourceId;
        return this;
    }

    public ExtBean setResultCode(String resultCode) {
        this.resultCode = resultCode;
        return this;
    }

    public ExtBean setSceneFormat(String sceneFormat) {
        this.sceneFormat = sceneFormat;
        return this;
    }

    public ExtBean setScenesCode(String scenesCode) {
        this.scenesCode = scenesCode;
        return this;
    }

    public ExtBean setSecondModule(String secondModule) {
        this.secondModule = secondModule;
        return this;
    }

    public ExtBean setSopName(String sopName) {
        this.sopName = sopName;
        return this;
    }

    public ExtBean setSopNo(String sopNo) {
        this.sopNo = sopNo;
        return this;
    }

    public void setTag_ids(String tag_ids) {
        this.tag_ids = tag_ids;
    }

    public void setTestAbNumber(String testAbNumber) {
        this.testAbNumber = testAbNumber;
    }

    public ExtBean setTypeCode(String typeCode) {
        this.typeCode = typeCode;
        return this;
    }

    public ExtBean setVolcanoOther(String volcanoOther) {
        this.volcanoOther = volcanoOther;
        return this;
    }

    public ExtBean setWhere(String where) {
        this.where = where;
        return this;
    }

    public ExtBean set_from_type(int _from_type) {
        this._from_type = _from_type;
        return this;
    }

    public Ext toExt() {
        Ext ext = new Ext();
        ext.setPapaPage(this.papaPage);
        ext.setFirstModule(this.firstModule);
        ext.setSecondModule(this.secondModule);
        ext.setSopNo(this.sopNo);
        ext.setSopName(this.sopName);
        ext.setGameId(this.gameId);
        ext.setResourceId(this.resourceId);
        ext.setResultCode(this.resultCode);
        ext.setTypeCode(this.typeCode);
        ext.setChatId(this.chatId);
        ext.setFromTabId(this.fromTabId);
        ext.setTag_ids(this.tag_ids);
        ext.setDataFlag(this.dataFlag);
        ext.setGameFlag(this.gameFlag);
        ext.setRecPosition(this.recPosition);
        ext.setLocation(this.location);
        ext.setFrom(this.from);
        ext.setPosition(this.position);
        ext.setNodeId(this.nodeId);
        ext.setWhere(this.where);
        ext.setKeyWord(this.keyword);
        ext.setTestAbNumber(this.testAbNumber);
        ext.setIsJoin(this.isJoin);
        ext.setIsResultPage(this.isResultPage);
        ext.setActType(this.actType);
        ext.setMemberCount(this.memberCount);
        String str = this.recScene;
        try {
            ExtBean extBean = this.parent;
            if (extBean != null) {
                StringBuilder sbBuildParentScene = buildParentScene(extBean);
                String string = sbBuildParentScene != null ? sbBuildParentScene.toString() : "";
                if (t2.i(string) && t2.i(this.recScene)) {
                    str = string + t.f77357l + this.recScene;
                } else {
                    str = t2.i(string) ? string : this.recScene;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        ext.setRecScene(str);
        ext.setReMarks(this.reMarks);
        ext.setQkPosition(this.qkPosition);
        ext.setCollectId(this.collectId);
        ext.setScenesCode(this.scenesCode);
        ext.setGuideKey(this.guideKey);
        return ext;
    }

    public ExtBean buildScene(String format) {
        if (TextUtils.isEmpty(format)) {
            format = STAT_FORMAT_1;
        }
        this.sceneFormat = format;
        scanFieldMap();
        if (!TextUtils.isEmpty(format)) {
            try {
                String[] strArrSplit = format.split("\\$##\\$");
                StringBuffer stringBuffer = new StringBuffer();
                for (String str : strArrSplit) {
                    String str2 = this.keyMaps.get(str);
                    if (!TextUtils.isEmpty(str2) && !TextUtils.equals("0", str2)) {
                        if (stringBuffer.length() > 0) {
                            stringBuffer.append(t.f77357l);
                        }
                        stringBuffer.append(str2);
                    }
                }
                this.recScene = stringBuffer.toString();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return this;
    }

    public ExtBean(int _from_type) {
        this._from_type = _from_type;
    }

    public ExtBean(String from, String position) {
        this.from = from;
        this.position = position;
    }

    public ExtBean(String from, String from_id, String position) {
        this.from = from;
        this.from_id = from_id;
        this.position = position;
    }
}
