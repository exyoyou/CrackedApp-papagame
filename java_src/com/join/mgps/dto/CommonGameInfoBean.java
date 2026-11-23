package com.join.mgps.dto;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentToDetialBean;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t2;
import j6.b;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class CommonGameInfoBean extends DownloadPointBase implements b {
    private int ad_switch;
    private String bg_color;
    private String bg_color_v2;
    private String big_pic;
    private String description;
    private String exp_position;
    private GInfoBean g_info;
    private String h_ad_pic;
    private String h_ad_video_url;
    private boolean isRecommend;
    private int is_rec;
    private JpInfoBean jp_info;
    private String label;
    private String main_title;
    private DomainInfoBean pd_info;
    private int position;
    private int quit_switch;
    private StatisticsBean statistics;
    private String sub_title;
    private String title;
    private int tpl_type;
    private String v_ad_pic;
    private String v_ad_video_url;
    private String v_url;
    protected int viewType;
    private int requestStatus = 0;
    private boolean isAdInfo = false;
    private boolean is_head = false;
    private boolean isPrivateDomain = false;

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.GInfo
    @Nullable
    public DownloadTask buildDownloadTask() {
        if (this.g_info == null) {
            return null;
        }
        DownloadTask downloadTask = new DownloadTask();
        if (getDownStatus() == 2 && getBespeakSwitch() == 1) {
            downloadTask.setDown_status(6);
        } else {
            downloadTask.setDown_status(getDownStatus());
        }
        downloadTask.setPackageName(getPackageName());
        downloadTask.setPortraitURL(getIcon());
        downloadTask.setShowName(getShowName());
        downloadTask.setTipBeans(getTagInfo());
        if (t2.i(getGameId())) {
            downloadTask.setCrc_link_type_val(getGameId());
        }
        downloadTask.setVer(this.g_info.getVer());
        downloadTask.setVer_name(this.g_info.getVer_name());
        downloadTask.setRomType(getPluginNum());
        downloadTask.setStatus(0);
        downloadTask.setDescribe(getDescription());
        downloadTask.setShowSize(this.g_info.getApp_size());
        downloadTask.setDownloadType(0);
        downloadTask.setPlugin_num(this.g_info.getPlugin_num());
        downloadTask.setSp_tag_info(this.g_info.getSp_tag_info());
        downloadTask.setScore(this.g_info.getScore() + "");
        if (this.g_info.getPay_tag_info() != null) {
            downloadTask.setPay_game_amount(this.g_info.getPay_tag_info().getPay_game_amount());
        }
        downloadTask.set_from(get_from());
        downloadTask.set_from_type(get_from_type());
        downloadTask.setSp_tag_info_s(JsonMapper.toJsonString(this.g_info.getSp_tag_info()));
        return downloadTask;
    }

    public Integer getAd_switch() {
        return Integer.valueOf(this.ad_switch);
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getBespeakSwitch() {
        GInfoBean gInfoBean = this.g_info;
        if (gInfoBean != null) {
            return gInfoBean.getBespeak_switch();
        }
        return 0;
    }

    public String getBg_color() {
        return this.bg_color;
    }

    public String getBg_color_v2() {
        return this.bg_color_v2;
    }

    public String getBig_pic() {
        return this.big_pic;
    }

    public String getCoverPicUrl() {
        GInfoBean g_info;
        if (isGame() && (g_info = getG_info()) != null && t2.h(getV_url())) {
            if (t2.i(getBig_pic())) {
                return getBig_pic();
            }
            List<String> pic_info = g_info.getPic_info();
            if (t2.h("") && pic_info != null && pic_info.size() > 0) {
                return pic_info.get(0);
            }
        }
        return getBig_pic();
    }

    public String getDescription() {
        return this.description;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.GInfo
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
        if (!t2.h(getExt()) || getExtBean() == null) {
            downloadGameArgsBean.setExt(getExt());
        } else {
            downloadGameArgsBean.setExt(JsonMapper.toJsonString(getExtBean().buildScene().toExt()));
        }
        downloadGameArgsBean.setExt1(getExt1());
        return downloadGameArgsBean;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getDownStatus() {
        GInfoBean gInfoBean = this.g_info;
        if (gInfoBean != null) {
            return gInfoBean.getDown_state().intValue();
        }
        return 0;
    }

    public String getExp_position() {
        return this.exp_position;
    }

    public GInfoBean getG_info() {
        return this.g_info;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getGameBook() {
        GInfoBean gInfoBean = this.g_info;
        if (gInfoBean != null) {
            return gInfoBean.getGame_book();
        }
        return 0;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getGameId() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null ? gInfoBean.getId() : "";
    }

    public String getH_ad_pic() {
        return this.h_ad_pic;
    }

    public String getH_ad_video_url() {
        return this.h_ad_video_url;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public String getIcon() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null ? gInfoBean.getIco() : "";
    }

    @Override // com.join.kotlin.base.impl.IIntent, com.join.kotlin.base.impl.GInfo
    public IntentDateBean getIntentDataBean() {
        ExtBean extBean;
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setExtBean(getExtBean());
        if (this.g_info != null) {
            IntentToDetialBean intentToDetialBean = new IntentToDetialBean();
            intentToDetialBean.setAppId(this.g_info.getId());
            intentToDetialBean.setAppName(this.g_info.getName());
            intentToDetialBean.setIconUrl(this.g_info.getIco());
            intentToDetialBean.setDetialType(0);
            intentDateBean.setObject(intentToDetialBean);
        }
        intentDateBean.setExt1(getExt1());
        intentDateBean.setExt2(getExt2());
        intentDateBean.setExt3(getExt3());
        intentDateBean.setExt4(getExt4());
        JpInfoBean jpInfoBean = this.jp_info;
        if (jpInfoBean != null) {
            intentDateBean.setJump_type(jpInfoBean.getJump_type().intValue());
            intentDateBean.setLink_type(this.jp_info.getLink_type().intValue());
            intentDateBean.setLink_type_val(this.jp_info.getLink_type_val());
            intentDateBean.setTpl_type(String.valueOf(this.jp_info.getTpl_type()));
            intentDateBean.setCrc_link_type_val(this.jp_info.getCrc_link_type_val());
        }
        String json = null;
        json = null;
        String str = "";
        if (intentDateBean.getExtBean() == null) {
            ExtBean reMarks = new ExtBean(get_from_type()).setRecPosition(getRecPosition()).setReMarks(getReMarks());
            GInfoBean gInfoBean = this.g_info;
            ExtBean volcanoOther = reMarks.setVolcanoOther((gInfoBean == null || gInfoBean.getPosition_path() == null) ? "" : JsonMapper.toJsonString(this.g_info.getPosition_path()));
            GInfoBean gInfoBean2 = this.g_info;
            ExtBean onlineGame = volcanoOther.setOnlineGame(UtilsMy.t2(gInfoBean2 != null ? gInfoBean2.getTag_info() : null));
            if (this.statistics != null) {
                str = this.statistics.getMin_game_search_source() + "";
            }
            intentDateBean.setExtBean(onlineGame.setDataFlag(str));
        } else {
            if (t2.i(getExtBean().getFrom())) {
                intentDateBean.getExtBean().setFrom(getExtBean().getFrom());
            } else {
                intentDateBean.getExtBean().setFrom(String.valueOf(get_from()));
            }
            intentDateBean.getExtBean().set_from_type(get_from_type());
            ExtBean extBean2 = intentDateBean.getExtBean();
            if (this.statistics != null) {
                str = this.statistics.getMin_game_search_source() + "";
            }
            extBean2.setDataFlag(str);
            ExtBean extBean3 = intentDateBean.getExtBean();
            GInfoBean gInfoBean3 = this.g_info;
            if (gInfoBean3 != null && gInfoBean3.getPosition_path() != null) {
                json = JsonMapper.getInstance().toJson(this.g_info.getPosition_path());
            }
            extBean3.setVolcanoOther(json);
        }
        if (TextUtils.isEmpty(intentDateBean.getExtBean().getDataFlag()) && getExt() != null && (extBean = (ExtBean) JsonMapper.getInstance().fromJson(getExt(), ExtBean.class)) != null && extBean.getDataFlag() != null) {
            intentDateBean.getExtBean().setDataFlag(extBean.getDataFlag());
        }
        return intentDateBean;
    }

    public int getIs_rec() {
        return this.is_rec;
    }

    @Override // j6.b
    public int getItemType() {
        return this.viewType;
    }

    public JpInfoBean getJp_info() {
        return this.jp_info;
    }

    public String getLabel() {
        return this.label;
    }

    public String getMain_title() {
        return this.main_title;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getModGameId() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null ? gInfoBean.getMod_id() : "";
    }

    public String getOnlineGAmeAdPic() {
        if (!TextUtils.isEmpty(this.v_ad_pic)) {
            return this.v_ad_pic;
        }
        if (!TextUtils.isEmpty(this.h_ad_pic)) {
            return this.h_ad_pic;
        }
        if (TextUtils.isEmpty(this.big_pic)) {
            return null;
        }
        return this.big_pic;
    }

    public String getOnlineGameAdVideoUrl() {
        if (!TextUtils.isEmpty(this.v_ad_video_url)) {
            return this.v_ad_video_url;
        }
        if (!TextUtils.isEmpty(this.h_ad_video_url)) {
            return this.h_ad_video_url;
        }
        if (TextUtils.isEmpty(this.v_url)) {
            return null;
        }
        return this.v_url;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getPackageName() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null ? gInfoBean.getPackage_name() : "";
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public PayTagInfo getPayTagInfo() {
        GInfoBean gInfoBean = this.g_info;
        if (gInfoBean != null) {
            return gInfoBean.getPay_tag_info();
        }
        return null;
    }

    public DomainInfoBean getPd_info() {
        return this.pd_info;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @NonNull
    public String getPluginNum() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null ? gInfoBean.getPlugin_num() : "0";
    }

    public int getPosition() {
        return this.position;
    }

    public Integer getQuit_switch() {
        return Integer.valueOf(this.quit_switch);
    }

    public int getRequestStatus() {
        return this.requestStatus;
    }

    public String getShowName() {
        GInfoBean g_info;
        return (isGame() && (g_info = getG_info()) != null && t2.i(g_info.getName())) ? g_info.getName() : getTitle();
    }

    public String getShowScore() {
        GInfoBean g_info;
        if (!isGame() || (g_info = getG_info()) == null) {
            return "5.0";
        }
        return g_info.getScore().doubleValue() == 0.0d ? "0" : String.valueOf(g_info.getScore());
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.GInfo
    @Nullable
    public TipNew getSpTagInfo() {
        GInfoBean gInfoBean = this.g_info;
        if (gInfoBean != null) {
            return gInfoBean.getSp_tag_info();
        }
        return null;
    }

    public StatisticsBean getStatistics() {
        return this.statistics;
    }

    public String getSub_title() {
        return this.sub_title;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.GInfo
    @Nullable
    public List<TipBean> getTagInfo() {
        GInfoBean gInfoBean = this.g_info;
        if (gInfoBean != null) {
            return gInfoBean.getTag_info();
        }
        return null;
    }

    public String getTitle() {
        return this.title;
    }

    public int getTpl_type() {
        return this.tpl_type;
    }

    public String getV_ad_pic() {
        return this.v_ad_pic;
    }

    public String getV_ad_video_url() {
        return this.v_ad_video_url;
    }

    public String getV_url() {
        return this.v_url;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getVersionCode() {
        GInfoBean gInfoBean = this.g_info;
        if (gInfoBean == null || !t2.i(gInfoBean.getVer())) {
            return 0;
        }
        try {
            return Integer.valueOf(this.g_info.getVer()).intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public int getViewType() {
        return this.viewType;
    }

    public boolean giftSwitch() {
        GInfoBean gInfoBean = this.g_info;
        return (gInfoBean == null || gInfoBean.getGift_package_switch() == 0 || this.g_info.getGift_package_switch() != 1) ? false : true;
    }

    public int hashCode() {
        Object[] objArr = new Object[5];
        objArr[0] = this.title;
        objArr[1] = this.sub_title;
        objArr[2] = this.big_pic;
        objArr[3] = this.v_url;
        GInfoBean gInfoBean = this.g_info;
        objArr[4] = gInfoBean == null ? "" : gInfoBean.getId();
        return Objects.hash(objArr);
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean is64Bit() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && gInfoBean.getArm64() == 1;
    }

    public boolean isAdInfo() {
        return this.isAdInfo;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isAndroidGame() {
        GInfoBean gInfoBean = this.g_info;
        if (gInfoBean != null) {
            return UtilsMy.p0(gInfoBean.getTag_info());
        }
        return false;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isBtGame() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && gInfoBean.isBtGame();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isCpsGame() {
        GInfoBean gInfoBean = this.g_info;
        if (gInfoBean != null) {
            return gInfoBean.isCpsGame();
        }
        return false;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isGame() {
        JpInfoBean jpInfoBean = this.jp_info;
        return jpInfoBean != null && jpInfoBean.isGame();
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isGameVm() {
        return isModGameVm() || isSingleGameVm() || isNetGameVm() || isH5VmGame();
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isH5Game() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && gInfoBean.isH5Game();
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isH5VmGame() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && gInfoBean.isH5VmGame();
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isHmCloud() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && gInfoBean.isHmCloud();
    }

    public boolean isIs_head() {
        return this.is_head;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isMiniGame() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && gInfoBean.isMiniGame();
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isModGameVm() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && gInfoBean.isModGameVm();
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType, com.join.kotlin.base.impl.GInfo
    public boolean isNetGame() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && gInfoBean.isNetGame();
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isNetGameVm() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && gInfoBean.isNetGameVm();
    }

    public boolean isPrivateDomain() {
        return this.isPrivateDomain;
    }

    public boolean isRecommend() {
        return this.isRecommend || this.is_rec == 1;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isSingleGameVm() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && gInfoBean.isSingleGameVm();
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public boolean needPurchase() {
        GInfoBean gInfoBean = this.g_info;
        return gInfoBean != null && UtilsMy.x0(gInfoBean.getPay_tag_info(), getGameId()) > 0;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public boolean needUpdate(int vCode) {
        return this.g_info != null && vCode < getVersionCode();
    }

    public void setAdInfo(boolean adInfo) {
        this.isAdInfo = adInfo;
    }

    public void setAd_switch(Integer ad_switch) {
        this.ad_switch = ad_switch.intValue();
    }

    public void setBg_color(String bg_color) {
        this.bg_color = bg_color;
    }

    public void setBg_color_v2(String bg_color_v2) {
        this.bg_color_v2 = bg_color_v2;
    }

    public void setBig_pic(String big_pic) {
        this.big_pic = big_pic;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setExp_position(String exp_position) {
        this.exp_position = exp_position;
    }

    public void setG_info(GInfoBean g_info) {
        this.g_info = g_info;
    }

    public void setH_ad_pic(String h_ad_pic) {
        this.h_ad_pic = h_ad_pic;
    }

    public void setH_ad_video_url(String h_ad_video_url) {
        this.h_ad_video_url = h_ad_video_url;
    }

    public void setIsPrivateDomain(boolean privateDomain) {
        this.isPrivateDomain = privateDomain;
    }

    public void setIs_head(boolean is_head) {
        this.is_head = is_head;
    }

    public void setIs_rec(int is_rec) {
        this.is_rec = is_rec;
    }

    public void setJp_info(JpInfoBean jp_info) {
        this.jp_info = jp_info;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public void setMain_title(String main_title) {
        this.main_title = main_title;
    }

    public void setPd_info(DomainInfoBean pd_info) {
        this.pd_info = pd_info;
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public void setQuit_switch(Integer quit_switch) {
        this.quit_switch = quit_switch.intValue();
    }

    public void setRecommend(boolean recommend) {
        this.isRecommend = recommend;
    }

    public void setRequestStatus(int requestStatus) {
        this.requestStatus = requestStatus;
    }

    public void setStatistics(StatisticsBean statistics) {
        this.statistics = statistics;
    }

    public void setSub_title(String sub_title) {
        this.sub_title = sub_title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTpl_type(int tpl_type) {
        this.tpl_type = tpl_type;
    }

    public void setV_ad_pic(String v_ad_pic) {
        this.v_ad_pic = v_ad_pic;
    }

    public void setV_ad_video_url(String v_ad_video_url) {
        this.v_ad_video_url = v_ad_video_url;
    }

    public void setV_url(String v_url) {
        this.v_url = v_url;
    }

    public void setViewType(int viewType) {
        this.viewType = viewType;
    }

    public boolean showRecTag() {
        return this.is_rec == 1;
    }

    public void setAd_switch(int ad_switch) {
        this.ad_switch = ad_switch;
    }

    public void setQuit_switch(int quit_switch) {
        this.quit_switch = quit_switch;
    }
}
