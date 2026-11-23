package com.join.mgps.dto;

import androidx.annotation.Nullable;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.kotlin.base.impl.BaseDownloadable;
import com.join.kotlin.base.impl.GInfo;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t2;
import com.join.mgps.enums.ConstantIntEnum;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DownloadPointBase extends BaseDownloadable implements GInfo, Serializable {
    private String ext;
    private String ext1;
    private String ext2;
    private String ext3;
    private String ext4;
    private boolean isFromRecomDown;
    private String keyword;
    private String nodeId;
    private VolcanoOther position_path;
    private String where;
    private int _from = 0;
    private int _from_type = 0;
    private String recPosition = "";
    private String reMarks = "";

    @Nullable
    public DownloadTask buildDownloadTask() {
        return null;
    }

    @Nullable
    public DownloadGameArgsBean getDownArgs() {
        if (!isGame()) {
            return null;
        }
        DownloadGameArgsBean downloadGameArgsBean = new DownloadGameArgsBean();
        downloadGameArgsBean.setFrom(get_from());
        downloadGameArgsBean.setFromType(get_from_type());
        downloadGameArgsBean.setKeyWord(getKeyword());
        downloadGameArgsBean.setRemarks(getReMarks());
        downloadGameArgsBean.setRecPosition(getRecPosition());
        downloadGameArgsBean.setNodeId(getNodeId());
        downloadGameArgsBean.setRecPosition(getVolcanoOtherJsonStr());
        downloadGameArgsBean.setFromRecommend(isFromRecomDown());
        if (t2.h(getExt())) {
            downloadGameArgsBean.setExt(JsonMapper.toJsonString(getExtBean().buildScene().toExt()));
        } else {
            downloadGameArgsBean.setExt(getExt());
        }
        downloadGameArgsBean.setExt1(getExt1());
        return downloadGameArgsBean;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public String getExt() {
        return this.ext;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public String getExt1() {
        return this.ext1;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public String getExt2() {
        return this.ext2;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public String getExt3() {
        return this.ext3;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public String getExt4() {
        return this.ext4;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    @JsonIgnore
    public GInfo getGInfo() {
        return this;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public String getNodeId() {
        return this.nodeId;
    }

    public VolcanoOther getPosition_path() {
        return this.position_path;
    }

    public String getReMarks() {
        return this.reMarks;
    }

    public String getRecPosition() {
        return this.recPosition;
    }

    @Nullable
    public TipNew getSpTagInfo() {
        return null;
    }

    @Nullable
    public List<TipBean> getTagInfo() {
        return new ArrayList();
    }

    public String getVolcanoOtherJsonStr() {
        return this.position_path != null ? JsonMapper.getInstance().toJson(this.position_path) : "";
    }

    public String getWhere() {
        return this.where;
    }

    public int get_from() {
        return this._from;
    }

    public int get_from_type() {
        return this._from_type;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    @JsonIgnore
    public boolean hasGInfo() {
        return true;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isAndroidGame() {
        if (getTagInfo() != null) {
            return UtilsMy.p0(getTagInfo());
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isBtGame() {
        return (getSpTagInfo() == null || getSpTagInfo().getBt_game() == null) ? false : true;
    }

    public boolean isFromRecomDown() {
        return this.isFromRecomDown;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isGame() {
        return true;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isGameVm() {
        return isModGameVm() || isSingleGameVm() || isNetGameVm() || isH5VmGame();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isH5Game() {
        return Objects.equals(getPluginNum(), ConstantIntEnum.H5.value() + "");
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isH5VmGame() {
        if (getTagInfo() == null) {
            return false;
        }
        Iterator<TipBean> it2 = getTagInfo().iterator();
        while (it2.hasNext()) {
            if ("268".equals(it2.next().getId())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isHmCloud() {
        if (getTagInfo() == null || getTagInfo().isEmpty()) {
            return false;
        }
        for (TipBean tipBean : getTagInfo()) {
            if ("269".equals(tipBean.getId()) || "271".equals(tipBean.getId()) || "272".equals(tipBean.getId())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isMiniGame() {
        return (getSpTagInfo() == null || getSpTagInfo().getMini_game() == null) ? false : true;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isModGameVm() {
        return (getSpTagInfo() == null || getSpTagInfo().getMod_game_vm() == null) ? false : true;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType, com.join.kotlin.base.impl.GInfo
    public boolean isNetGame() {
        return UtilsMy.t2(getTagInfo());
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isNetGameVm() {
        return (getSpTagInfo() == null || getSpTagInfo().getNet_game_vm() == null) ? false : true;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isSingleGameVm() {
        return (getSpTagInfo() == null || getSpTagInfo().getSingle_game_vm() == null) ? false : true;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public void setExt(String ext) {
        this.ext = ext;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public void setExt1(String ext1) {
        this.ext1 = ext1;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public void setExt2(String ext2) {
        this.ext2 = ext2;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public void setExt3(String ext3) {
        this.ext3 = ext3;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public void setExt4(String ext4) {
        this.ext4 = ext4;
    }

    public void setFromRecomDown(boolean fromRecomDown) {
        this.isFromRecomDown = fromRecomDown;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public void setNodeId(String nodeId) {
        this.nodeId = nodeId;
    }

    public void setPosition_path(VolcanoOther position_path) {
        this.position_path = position_path;
    }

    public void setReMarks(String reMarks) {
        this.reMarks = reMarks;
    }

    public void setRecPosition(String recPosition) {
        this.recPosition = recPosition;
    }

    public void setWhere(String where) {
        this.where = where;
    }

    public void set_from(int _from) {
        this._from = _from;
    }

    public void set_from_type(int _from_type) {
        this._from_type = _from_type;
    }
}
