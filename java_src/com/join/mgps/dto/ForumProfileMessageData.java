package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumProfileMessageData {
    private List<ForumProfileMessageBean> message_list;
    private int un_read_praise_count;

    public List<ForumProfileMessageBean> getMessage_list() {
        return this.message_list;
    }

    public int getUn_read_praise_count() {
        return this.un_read_praise_count;
    }

    public void setMessage_list(List<ForumProfileMessageBean> message_list) {
        this.message_list = message_list;
    }

    public void setUn_read_praise_count(int un_read_praise_count) {
        this.un_read_praise_count = un_read_praise_count;
    }
}
