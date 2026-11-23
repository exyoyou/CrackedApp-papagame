package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class CloudRecord implements Serializable {
    private String file;
    private long game_id;

    public String getFile() {
        return this.file;
    }

    public long getGame_id() {
        return this.game_id;
    }

    public void setFile(String file) {
        this.file = file;
    }

    public void setGame_id(long game_id) {
        this.game_id = game_id;
    }
}
