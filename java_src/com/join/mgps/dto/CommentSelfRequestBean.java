package com.join.mgps.dto;

import com.kuaishou.weapon.p0.t;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class CommentSelfRequestBean extends CommentRequest {
    private String game_id;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68040pc;
    private int pn;

    public String getGame_id() {
        return this.game_id;
    }

    @Override // com.join.mgps.dto.CommentRequest
    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> params = super.getParams();
        params.add("game_id", this.game_id + "");
        params.add("pn", this.pn + "");
        params.add(t.f74899x, this.f68040pc + "");
        return params;
    }

    public int getPc() {
        return this.f68040pc;
    }

    public int getPn() {
        return this.pn;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setPc(int pc2) {
        this.f68040pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    @Override // com.join.mgps.dto.CommentRequest
    public String toString() {
        return "CommentSelfRequestBean{game_id='" + this.game_id + "', pn=" + this.pn + ", pc=" + this.f68040pc + '}';
    }
}
