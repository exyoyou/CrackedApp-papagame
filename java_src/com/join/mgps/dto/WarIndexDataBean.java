package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class WarIndexDataBean implements Serializable {
    private List<FightDataBean> hotgame;
    private List<FightDataBean> pkgame;
    private List<FightDataBean> pklocal;
    private List<FightDataBean> pkmatching;
    private List<FightDataBean> pkpass;
    private List<FightDataBean> pkroom;
    private List<FightDataBean> warad;

    public WarIndexDataBean() {
    }

    public List<FightDataBean> getHotgame() {
        return this.hotgame;
    }

    public List<FightDataBean> getPkgame() {
        return this.pkgame;
    }

    public List<FightDataBean> getPklocal() {
        return this.pklocal;
    }

    public List<FightDataBean> getPkmatching() {
        return this.pkmatching;
    }

    public List<FightDataBean> getPkpass() {
        return this.pkpass;
    }

    public List<FightDataBean> getPkroom() {
        return this.pkroom;
    }

    public List<FightDataBean> getWarad() {
        return this.warad;
    }

    public void setHotgame(List<FightDataBean> hotgame) {
        this.hotgame = hotgame;
    }

    public void setPkgame(List<FightDataBean> pkgame) {
        this.pkgame = pkgame;
    }

    public void setPklocal(List<FightDataBean> pklocal) {
        this.pklocal = pklocal;
    }

    public void setPkmatching(List<FightDataBean> pkmatching) {
        this.pkmatching = pkmatching;
    }

    public void setPkpass(List<FightDataBean> pkpass) {
        this.pkpass = pkpass;
    }

    public void setPkroom(List<FightDataBean> pkroom) {
        this.pkroom = pkroom;
    }

    public void setWarad(List<FightDataBean> warad) {
        this.warad = warad;
    }

    public WarIndexDataBean(List<FightDataBean> warad, List<FightDataBean> hotgame, List<FightDataBean> pkgame, List<FightDataBean> pkpass, List<FightDataBean> pkmatching, List<FightDataBean> pklocal, List<FightDataBean> pkroom) {
        this.warad = warad;
        this.hotgame = hotgame;
        this.pkgame = pkgame;
        this.pkpass = pkpass;
        this.pkmatching = pkmatching;
        this.pklocal = pklocal;
        this.pkroom = pkroom;
    }
}
