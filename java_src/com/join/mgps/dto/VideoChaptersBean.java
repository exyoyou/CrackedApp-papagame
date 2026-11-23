package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class VideoChaptersBean {
    private String content;
    private String createTime;
    private Integer duration;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private Integer f68127id;
    private boolean isChecked = false;
    private Integer page;
    private String pic;
    private Integer pid;
    private String title;

    public String getContent() {
        return this.content;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public Integer getDuration() {
        return this.duration;
    }

    public Integer getId() {
        return this.f68127id;
    }

    public Integer getPage() {
        return this.page;
    }

    public String getPic() {
        return this.pic;
    }

    public Integer getPid() {
        return this.pid;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    public void setChecked(boolean checked) {
        this.isChecked = checked;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public void setId(Integer id2) {
        this.f68127id = id2;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
