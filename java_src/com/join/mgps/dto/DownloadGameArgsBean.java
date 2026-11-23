package com.join.mgps.dto;

import com.join.android.app.common.utils.JsonMapper;
import com.join.kotlin.base.impl.Downloadable;
import com.join.mgps.Util.t2;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class DownloadGameArgsBean implements Serializable {
    int downType;
    String ext;
    String ext1;
    int from;
    boolean fromRecommend;
    int fromType;
    String gameId;
    String keyWord;
    int location;
    String nodeId;
    String packagePath;
    private DomainInfoBean pdInfo;
    String recPosition;
    String remarks;
    boolean showDownRecommend;
    String volcanoOther;

    public int getDownType() {
        return this.downType;
    }

    public String getExt() {
        return this.ext;
    }

    public String getExt1() {
        return this.ext1;
    }

    public int getFrom() {
        return this.from;
    }

    public int getFromType() {
        return this.fromType;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getKeyWord() {
        return this.keyWord;
    }

    public int getLocation() {
        return this.location;
    }

    public String getNodeId() {
        return this.nodeId;
    }

    public String getPackagePath() {
        return this.packagePath;
    }

    public DomainInfoBean getPdInfo() {
        return this.pdInfo;
    }

    public String getRecPosition() {
        return this.recPosition;
    }

    public String getRemarks() {
        return this.remarks;
    }

    public String getVolcanoOther() {
        return this.volcanoOther;
    }

    public boolean isFromRecommend() {
        return this.fromRecommend;
    }

    public boolean isShowDownRecommend() {
        return this.showDownRecommend;
    }

    public void setDownType(int downType) {
        this.downType = downType;
    }

    public void setExt(String ext) {
        this.ext = ext;
    }

    public void setExt1(String ext1) {
        this.ext1 = ext1;
    }

    public void setFrom(int from) {
        this.from = from;
    }

    public void setFromRecommend(boolean fromRecommend) {
        this.fromRecommend = fromRecommend;
    }

    public void setFromType(int fromType) {
        this.fromType = fromType;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }

    public void setLocation(int location) {
        this.location = location;
    }

    public void setNodeId(String nodeId) {
        this.nodeId = nodeId;
    }

    public void setPackagePath(String packagePath) {
        this.packagePath = packagePath;
    }

    public void setPdInfo(DomainInfoBean pdInfo) {
        this.pdInfo = pdInfo;
    }

    public void setRecPosition(String recPosition) {
        this.recPosition = recPosition;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public void setShowDownRecommend(boolean showDownRecommend) {
        this.showDownRecommend = showDownRecommend;
    }

    public void setVolcanoOther(String volcanoOther) {
        this.volcanoOther = volcanoOther;
    }

    public void syncValue(Downloadable downInfo) {
        if (downInfo == null || !downInfo.hasGInfo() || downInfo.getGInfo().getDownArgs() == null) {
            return;
        }
        setFrom(downInfo.getGInfo().getDownArgs().getFrom());
        setFromType(downInfo.getGInfo().getDownArgs().getFromType());
        setKeyWord(downInfo.getGInfo().getDownArgs().getKeyWord());
        setRemarks(downInfo.getGInfo().getDownArgs().getRemarks());
        setRecPosition(downInfo.getGInfo().getDownArgs().getRecPosition());
        setNodeId(downInfo.getGInfo().getDownArgs().getNodeId());
        setRecPosition(downInfo.getGInfo().getDownArgs().getVolcanoOther());
        setFromRecommend(downInfo.getGInfo().getDownArgs().isFromRecommend());
        if (!t2.h(downInfo.getGInfo().getDownArgs().getExt()) || downInfo.getExtBean() == null) {
            setExt(downInfo.getGInfo().getDownArgs().getExt());
        } else {
            setExt(JsonMapper.toJsonString(downInfo.getExtBean().buildScene().toExt()));
        }
        setExt1(downInfo.getGInfo().getDownArgs().getExt1());
    }
}
