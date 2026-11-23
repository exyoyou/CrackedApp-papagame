package com.join.mgps.dto;

import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ModGameDetailBean implements Serializable {
    private RecomDatabean ad_info;
    private ArrayList<CommonGameInfoBean> cg_ad_info;
    private CloudArchiveCfg cloud_archive_cfg;
    private ModGameArchivePathData cloud_archive_local_path;
    private boolean cloud_archive_model;
    private boolean cloud_mod_model;
    private GeneralCfgBean general_cfg;
    private List<GoldFingerBean> gold_finger;
    private GamedetialModleFourBean main_game_info;
    private GamedetialModleFourBean mod_game_info;
    private boolean mod_model;
    private DomainInfoBean pd_info;

    public RecomDatabean getAd_info() {
        return this.ad_info;
    }

    public ArrayList<CommonGameInfoBean> getCg_ad_info() {
        return this.cg_ad_info;
    }

    public CloudArchiveCfg getCloud_archive_cfg() {
        return this.cloud_archive_cfg;
    }

    public ModGameArchivePathData getCloud_archive_local_path() {
        return this.cloud_archive_local_path;
    }

    public GeneralCfgBean getGeneral_cfg() {
        return this.general_cfg;
    }

    public List<GoldFingerBean> getGold_finger() {
        return this.gold_finger;
    }

    public GamedetialModleFourBean getMain_game_info() {
        return this.main_game_info;
    }

    public GamedetialModleFourBean getMod_game_info() {
        return this.mod_game_info;
    }

    public DomainInfoBean getPd_info() {
        return this.pd_info;
    }

    public boolean isCloud_archive_model() {
        return this.cloud_archive_model;
    }

    public boolean isCloud_mod_model() {
        return this.cloud_mod_model;
    }

    public boolean isMod_model() {
        return this.mod_model;
    }

    public void setAd_info(RecomDatabean ad_info) {
        this.ad_info = ad_info;
    }

    public void setCg_ad_info(ArrayList<CommonGameInfoBean> cg_ad_info) {
        this.cg_ad_info = cg_ad_info;
    }

    public void setCloud_archive_cfg(CloudArchiveCfg cloud_archive_cfg) {
        this.cloud_archive_cfg = cloud_archive_cfg;
    }

    public void setCloud_archive_local_path(ModGameArchivePathData cloud_archive_local_path) {
        this.cloud_archive_local_path = cloud_archive_local_path;
    }

    public void setCloud_archive_model(boolean cloud_archive_model) {
        this.cloud_archive_model = cloud_archive_model;
    }

    public void setCloud_mod_model(boolean cloud_mod_model) {
        this.cloud_mod_model = cloud_mod_model;
    }

    public void setGeneral_cfg(GeneralCfgBean general_cfg) {
        this.general_cfg = general_cfg;
    }

    public void setGold_finger(List<GoldFingerBean> gold_finger) {
        this.gold_finger = gold_finger;
    }

    public void setMain_game_info(GamedetialModleFourBean main_game_info) {
        this.main_game_info = main_game_info;
    }

    public void setMod_game_info(GamedetialModleFourBean mod_game_info) {
        this.mod_game_info = mod_game_info;
    }

    public void setMod_model(boolean mod_model) {
        this.mod_model = mod_model;
    }

    public void setPd_info(DomainInfoBean pd_info) {
        this.pd_info = pd_info;
    }
}
