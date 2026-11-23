package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameDetialStrategyItem {
    private long add_time;
    private int commit;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f68060id;
    private String[] pic_list;
    private int praise;
    private String subject;
    private GameDetialBookTag tag_name;
    private int view;

    public long getAdd_time() {
        return this.add_time * 1000;
    }

    public int getCommit() {
        return this.commit;
    }

    public int getId() {
        return this.f68060id;
    }

    public String[] getPic_list() {
        return this.pic_list;
    }

    public int getPraise() {
        return this.praise;
    }

    public String getSubject() {
        return this.subject;
    }

    public GameDetialBookTag getTag_name() {
        return this.tag_name;
    }

    public int getView() {
        return this.view;
    }

    public void setAdd_time(long add_time) {
        this.add_time = add_time;
    }

    public void setCommit(int commit) {
        this.commit = commit;
    }

    public void setId(int id2) {
        this.f68060id = id2;
    }

    public void setPic_list(String[] pic_list) {
        this.pic_list = pic_list;
    }

    public void setPraise(int praise) {
        this.praise = praise;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public void setTag_name(GameDetialBookTag tag_name) {
        this.tag_name = tag_name;
    }

    public void setView(int view) {
        this.view = view;
    }
}
