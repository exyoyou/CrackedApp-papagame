package com.join.mgps.dto;

import com.join.mgps.Util.UtilsMy;
import com.join.mgps.enums.ConstantIntEnum;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class GInfoBean implements Serializable {
    private String app_size;
    private int arm64;
    private int bespeak_switch = 0;
    private int comment_score_switch;
    private int down_count;
    private Integer down_state;
    private int download_close;
    private int game_book;
    private String game_info_tpl_type;
    private List<String> gf_tag;
    private String gif_ico;
    private int gift_package_switch;
    private String ico;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68057id;
    private String info;
    private String mod_id;
    private String mod_package_name;
    private String name;
    private String package_name;
    private PayTagInfo pay_tag_info;
    private List<String> pic_info;
    private Integer pic_position;
    private String plugin_num;
    private VolcanoOther position_path;
    private Double score;
    private TipNew sp_tag_info;
    private int sp_tpl_two_position;
    private String sync_memory;
    private List<Integer> tag_id;
    private List<TipBean> tag_info;
    private String tag_name;
    private String ver;
    private String ver_name;

    public String getApp_size() {
        return this.app_size;
    }

    public int getArm64() {
        return this.arm64;
    }

    public int getBespeak_switch() {
        return this.bespeak_switch;
    }

    public int getComment_score_switch() {
        return this.comment_score_switch;
    }

    public int getDown_count() {
        return this.down_count;
    }

    public Integer getDown_state() {
        if (this.down_state.intValue() != 2 || this.bespeak_switch != 1) {
            return this.down_state;
        }
        this.down_state = 6;
        return 6;
    }

    public int getDownload_close() {
        return this.download_close;
    }

    public int getGame_book() {
        return this.game_book;
    }

    public String getGame_info_tpl_type() {
        return this.game_info_tpl_type;
    }

    public List<String> getGf_tag() {
        return this.gf_tag;
    }

    public String getGif_ico() {
        return this.gif_ico;
    }

    public int getGift_package_switch() {
        return this.gift_package_switch;
    }

    public String getIco() {
        return this.ico;
    }

    public String getId() {
        return this.f68057id;
    }

    public String getInfo() {
        return this.info;
    }

    public String getMod_id() {
        return this.mod_id;
    }

    public String getMod_package_name() {
        return this.mod_package_name;
    }

    public String getName() {
        return this.name;
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public PayTagInfo getPay_tag_info() {
        return this.pay_tag_info;
    }

    public List<String> getPic_info() {
        return this.pic_info;
    }

    public Integer getPic_position() {
        return this.pic_position;
    }

    public String getPlugin_num() {
        return this.plugin_num;
    }

    public VolcanoOther getPosition_path() {
        return this.position_path;
    }

    public Double getScore() {
        return this.score;
    }

    public TipNew getSp_tag_info() {
        return this.sp_tag_info;
    }

    public int getSp_tpl_two_position() {
        return this.sp_tpl_two_position;
    }

    public String getSync_memory() {
        return this.sync_memory;
    }

    public List<Integer> getTag_id() {
        return this.tag_id;
    }

    public List<TipBean> getTag_info() {
        return this.tag_info;
    }

    public String getTag_name() {
        return this.tag_name;
    }

    public String getVer() {
        return this.ver;
    }

    public String getVer_name() {
        return this.ver_name;
    }

    public boolean isBtGame() {
        TipNew tipNew = this.sp_tag_info;
        return (tipNew == null || tipNew.getBt_game() == null) ? false : true;
    }

    public boolean isCpsGame() {
        return this.download_close == 0;
    }

    public boolean isH5Game() {
        return Objects.equals(this.plugin_num, ConstantIntEnum.H5.value() + "");
    }

    public boolean isH5VmGame() {
        Iterator<TipBean> it2 = this.tag_info.iterator();
        while (it2.hasNext()) {
            if ("268".equals(it2.next().getId())) {
                return true;
            }
        }
        return false;
    }

    public boolean isHmCloud() {
        List<TipBean> list = this.tag_info;
        if (list == null || list.isEmpty()) {
            return false;
        }
        for (TipBean tipBean : this.tag_info) {
            if ("269".equals(tipBean.getId()) || "271".equals(tipBean.getId()) || "272".equals(tipBean.getId())) {
                return true;
            }
        }
        return false;
    }

    public boolean isMiniGame() {
        TipNew tipNew = this.sp_tag_info;
        return (tipNew == null || tipNew.getMini_game() == null) ? false : true;
    }

    public boolean isModGameVm() {
        TipNew tipNew = this.sp_tag_info;
        return (tipNew == null || tipNew.getMod_game_vm() == null) ? false : true;
    }

    public boolean isNetGame() {
        return UtilsMy.t2(this.tag_info);
    }

    public boolean isNetGameVm() {
        TipNew tipNew = this.sp_tag_info;
        return (tipNew == null || tipNew.getNet_game_vm() == null) ? false : true;
    }

    public boolean isSingleGameVm() {
        TipNew tipNew = this.sp_tag_info;
        return (tipNew == null || tipNew.getSingle_game_vm() == null) ? false : true;
    }

    public void setApp_size(String app_size) {
        this.app_size = app_size;
    }

    public void setArm64(int arm64) {
        this.arm64 = arm64;
    }

    public void setBespeak_switch(int bespeak_switch) {
        this.bespeak_switch = bespeak_switch;
    }

    public void setComment_score_switch(int comment_score_switch) {
        this.comment_score_switch = comment_score_switch;
    }

    public void setDown_count(int down_count) {
        this.down_count = down_count;
    }

    public void setDown_state(Integer down_state) {
        this.down_state = down_state;
    }

    public void setDownload_close(int download_close) {
        this.download_close = download_close;
    }

    public void setGame_book(int game_book) {
        this.game_book = game_book;
    }

    public void setGame_info_tpl_type(String game_info_tpl_type) {
        this.game_info_tpl_type = game_info_tpl_type;
    }

    public void setGf_tag(List<String> gf_tag) {
        this.gf_tag = gf_tag;
    }

    public void setGif_ico(String gif_ico) {
        this.gif_ico = gif_ico;
    }

    public void setGift_package_switch(int gift_package_switch) {
        this.gift_package_switch = gift_package_switch;
    }

    public void setIco(String ico) {
        this.ico = ico;
    }

    public void setId(String id2) {
        this.f68057id = id2;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public void setMod_id(String mod_id) {
        this.mod_id = mod_id;
    }

    public void setMod_package_name(String mod_package_name) {
        this.mod_package_name = mod_package_name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPackage_name(String package_name) {
        this.package_name = package_name;
    }

    public void setPay_tag_info(PayTagInfo pay_tag_info) {
        this.pay_tag_info = pay_tag_info;
    }

    public void setPic_info(List<String> pic_info) {
        this.pic_info = pic_info;
    }

    public void setPic_position(Integer pic_position) {
        this.pic_position = pic_position;
    }

    public void setPlugin_num(String plugin_num) {
        this.plugin_num = plugin_num;
    }

    public void setPosition_path(VolcanoOther position_path) {
        this.position_path = position_path;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    public void setSp_tag_info(TipNew sp_tag_info) {
        this.sp_tag_info = sp_tag_info;
    }

    public void setSp_tpl_two_position(int sp_tpl_two_position) {
        this.sp_tpl_two_position = sp_tpl_two_position;
    }

    public void setSync_memory(String sync_memory) {
        this.sync_memory = sync_memory;
    }

    public void setTag_id(List<Integer> tag_id) {
        this.tag_id = tag_id;
    }

    public void setTag_info(List<TipBean> tag_info) {
        this.tag_info = tag_info;
    }

    public void setTag_name(String tag_name) {
        this.tag_name = tag_name;
    }

    public void setVer(String ver) {
        this.ver = ver;
    }

    public void setVer_name(String ver_name) {
        this.ver_name = ver_name;
    }

    public boolean showGfTag() {
        List<String> list = this.gf_tag;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public boolean showScore() {
        return this.comment_score_switch == 1;
    }
}
