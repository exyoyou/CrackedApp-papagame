package com.join.mgps.dto;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class GameTagsBean implements Serializable {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68069id;
    private String name;
    private Integer tagType;
    private Integer voteFlag;
    private boolean checked = false;
    private boolean showDelete = false;

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        GameTagsBean gameTagsBean = (GameTagsBean) o10;
        return this.f68069id.equals(gameTagsBean.f68069id) && this.name.equals(gameTagsBean.name) && this.tagType.equals(gameTagsBean.tagType);
    }

    public String getId() {
        return this.f68069id;
    }

    public String getName() {
        return this.name;
    }

    public Integer getTagType() {
        return this.tagType;
    }

    public Integer getVoteFlag() {
        return this.voteFlag;
    }

    public int hashCode() {
        return Objects.hash(this.f68069id, this.name, this.tagType);
    }

    public boolean isChecked() {
        return this.checked;
    }

    public boolean isShowDelete() {
        return this.showDelete;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }

    public void setId(String id2) {
        this.f68069id = id2;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setShowDelete(boolean showDelete) {
        this.showDelete = showDelete;
    }

    public void setTagType(Integer tagType) {
        this.tagType = tagType;
    }

    public void setVoteFlag(Integer voteFlag) {
        this.voteFlag = voteFlag;
    }
}
