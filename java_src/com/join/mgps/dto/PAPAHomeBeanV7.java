package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.t2;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class PAPAHomeBeanV7 implements Serializable {
    private List<HomeBeanDTO> eo_playing;
    private HomeBeanDTO f_video_ad;
    private List<HomeBeanDTO> fast_entry;
    private List<HomeBeanDTO> jys_like;
    private List<NgSelectionDTO> ng_selection;
    private RankingListDTO ranking_list;
    private List<RecommendListDTO> recommend_list;
    private SScrollingTxtDTO s_scrolling_txt;
    private SScrollingTxtDTOV2 s_scrolling_txt_v2;
    private HomeBeanDTO s_video_ad;
    private TopChannelDTO top_channel;

    public static class GInfoDTO implements Serializable {
        private String app_size;
        private int arm64;
        private Integer down_state;
        private String game_info_tpl_type;
        private int gift_package_switch;
        private String ico;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68082id;
        private String info;
        private String mod_id;
        private String mod_package_name;
        private String name;
        private String package_name;
        private PayTagInfo pay_tag_info;
        private List<String> pic_info;
        private Integer pic_position;
        private Integer plugin_num;
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

        public Integer getDown_state() {
            return this.down_state;
        }

        public String getGame_info_tpl_type() {
            return this.game_info_tpl_type;
        }

        public int getGift_package_switch() {
            return this.gift_package_switch;
        }

        public String getIco() {
            return this.ico;
        }

        public String getId() {
            return this.f68082id;
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

        public Integer getPlugin_num() {
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

        public boolean isMiniGame() {
            TipNew tipNew = this.sp_tag_info;
            return (tipNew == null || tipNew.getMini_game() == null) ? false : true;
        }

        public void setApp_size(String app_size) {
            this.app_size = app_size;
        }

        public void setArm64(int arm64) {
            this.arm64 = arm64;
        }

        public void setDown_state(Integer down_state) {
            this.down_state = down_state;
        }

        public void setGame_info_tpl_type(String game_info_tpl_type) {
            this.game_info_tpl_type = game_info_tpl_type;
        }

        public void setGift_package_switch(int gift_package_switch) {
            this.gift_package_switch = gift_package_switch;
        }

        public void setIco(String ico) {
            this.ico = ico;
        }

        public void setId(String id2) {
            this.f68082id = id2;
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

        public void setPlugin_num(Integer plugin_num) {
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
    }

    public static class HomeBeanDTO implements Serializable {
        private int _from;
        private int _from_type;
        private Integer ad_switch;
        private String big_pic;
        private DownloadTask downloadTask;
        private GInfoDTO g_info;
        private CollectionBeanSub gameBean;
        private boolean hasExposure;
        private boolean isRequesting;
        private JpInfoDTO jp_info;
        private String position;
        private Integer quit_switch;
        private String sub_title;
        private String title;
        private String v_url;

        public Integer getAd_switch() {
            return this.ad_switch;
        }

        public String getBig_pic() {
            return this.big_pic;
        }

        public DownloadTask getDownloadTask() {
            return this.downloadTask;
        }

        public GInfoDTO getG_info() {
            return this.g_info;
        }

        public CollectionBeanSub getGameBean() {
            return this.gameBean;
        }

        public IntentDateBean getIntentDataBean() {
            GInfoDTO gInfoDTO;
            IntentDateBean intentDateBean = new IntentDateBean();
            JpInfoDTO jpInfoDTO = this.jp_info;
            if (jpInfoDTO != null) {
                intentDateBean.setJump_type(jpInfoDTO.getJump_type().intValue());
                intentDateBean.setLink_type(this.jp_info.getLink_type().intValue());
                intentDateBean.setLink_type_val(this.jp_info.getLink_type_val());
                if (this.jp_info.getLink_type().intValue() != 1 || (gInfoDTO = this.g_info) == null) {
                    intentDateBean.setTpl_type(this.jp_info.getTpl_type());
                } else {
                    intentDateBean.setTpl_type(gInfoDTO.getGame_info_tpl_type());
                }
                intentDateBean.setCrc_link_type_val(this.jp_info.getCrc_link_type_val());
                if (t2.i(this.title)) {
                    intentDateBean.setObject(this.title);
                }
                if (t2.h(this.title) && t2.i(this.sub_title)) {
                    intentDateBean.setObject(this.sub_title);
                }
            }
            if (intentDateBean.getExtBean() == null) {
                intentDateBean.setExtBean(new ExtBean());
            }
            intentDateBean.getExtBean().setFrom(String.valueOf(this._from));
            intentDateBean.getExtBean().set_from_type(this._from_type);
            intentDateBean.getExtBean().setVolcanoOther(this.g_info == null ? null : JsonMapper.getInstance().toJson(this.g_info.getPosition_path()));
            intentDateBean.getExtBean().setRecPosition(getPosition());
            return intentDateBean;
        }

        public JpInfoDTO getJp_info() {
            return this.jp_info;
        }

        public String getPosition() {
            return this.position;
        }

        public Integer getQuit_switch() {
            return this.quit_switch;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public String getTitle() {
            return this.title;
        }

        public String getV_url() {
            return this.v_url;
        }

        public int get_from() {
            return this._from;
        }

        public int get_from_type() {
            return this._from_type;
        }

        public int hashCode() {
            Object[] objArr = new Object[5];
            objArr[0] = this.title;
            objArr[1] = this.sub_title;
            objArr[2] = this.big_pic;
            objArr[3] = this.v_url;
            GInfoDTO gInfoDTO = this.g_info;
            objArr[4] = gInfoDTO == null ? "" : gInfoDTO.getId();
            return Objects.hash(objArr);
        }

        public boolean isHasExposure() {
            return this.hasExposure;
        }

        public boolean isMiniGame() {
            GInfoDTO gInfoDTO = this.g_info;
            return gInfoDTO != null && gInfoDTO.isMiniGame();
        }

        public boolean isRequesting() {
            return this.isRequesting;
        }

        public void setAd_switch(Integer ad_switch) {
            this.ad_switch = ad_switch;
        }

        public void setBig_pic(String big_pic) {
            this.big_pic = big_pic;
        }

        public void setDownloadTask(DownloadTask downloadTask) {
            this.downloadTask = downloadTask;
        }

        public void setG_info(GInfoDTO g_info) {
            this.g_info = g_info;
        }

        public void setGameBean(CollectionBeanSub gameBean) {
            this.gameBean = gameBean;
        }

        public void setHasExposure(boolean hasExposure) {
            this.hasExposure = hasExposure;
        }

        public void setJp_info(JpInfoDTO jp_info) {
            this.jp_info = jp_info;
        }

        public void setPosition(String position) {
            this.position = position;
        }

        public void setQuit_switch(Integer quit_switch) {
            this.quit_switch = quit_switch;
        }

        public void setRequesting(boolean requesting) {
            this.isRequesting = requesting;
        }

        public void setSub_title(String sub_title) {
            this.sub_title = sub_title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public void setV_url(String v_url) {
            this.v_url = v_url;
        }

        public void set_from(int _from) {
            this._from = _from;
        }

        public void set_from_type(int _from_type) {
            this._from_type = _from_type;
        }
    }

    public static class JpInfoDTO implements Serializable {
        private String crc_link_type_val;
        private Integer is_more;
        private Integer jump_type;
        private Integer link_type;
        private String link_type_val;
        private String tpl_type;

        public String getCrc_link_type_val() {
            return this.crc_link_type_val;
        }

        public Integer getIs_more() {
            return this.is_more;
        }

        public Integer getJump_type() {
            return this.jump_type;
        }

        public Integer getLink_type() {
            return this.link_type;
        }

        public String getLink_type_val() {
            return this.link_type_val;
        }

        public String getTpl_type() {
            return this.tpl_type;
        }

        public void setCrc_link_type_val(String crc_link_type_val) {
            this.crc_link_type_val = crc_link_type_val;
        }

        public void setIs_more(Integer is_more) {
            this.is_more = is_more;
        }

        public void setJump_type(Integer jump_type) {
            this.jump_type = jump_type;
        }

        public void setLink_type(Integer link_type) {
            this.link_type = link_type;
        }

        public void setLink_type_val(String link_type_val) {
            this.link_type_val = link_type_val;
        }

        public void setTpl_type(String tpl_type) {
            this.tpl_type = tpl_type;
        }
    }

    public static class ListDTO implements Serializable {
        private String ico;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private Long f68083id;

        public String getIco() {
            return this.ico;
        }

        public Long getId() {
            return this.f68083id;
        }

        public void setIco(String ico) {
            this.ico = ico;
        }

        public void setId(Long id2) {
            this.f68083id = id2;
        }
    }

    public static class NgSelectionDTO implements Serializable {
        private int _from;
        private int _from_type;
        private String date;
        private int game_info_tpl_type;
        private boolean hasExposure;
        private String ico;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68084id;
        private String name;
        private String position;
        private String title;

        public String getDate() {
            return this.date;
        }

        public int getGame_info_tpl_type() {
            return this.game_info_tpl_type;
        }

        public String getIco() {
            return this.ico;
        }

        public String getId() {
            return this.f68084id;
        }

        public String getName() {
            return this.name;
        }

        public String getPosition() {
            return this.position;
        }

        public String getTitle() {
            return this.title;
        }

        public int get_from() {
            return this._from;
        }

        public int get_from_type() {
            return this._from_type;
        }

        public boolean isHasExposure() {
            return this.hasExposure;
        }

        public void setDate(String date) {
            this.date = date;
        }

        public void setGame_info_tpl_type(int game_info_tpl_type) {
            this.game_info_tpl_type = game_info_tpl_type;
        }

        public void setHasExposure(boolean hasExposure) {
            this.hasExposure = hasExposure;
        }

        public void setIco(String ico) {
            this.ico = ico;
        }

        public void setId(String id2) {
            this.f68084id = id2;
        }

        public void setName(String name) {
            this.name = name;
        }

        public void setPosition(String position) {
            this.position = position;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public void set_from(int _from) {
            this._from = _from;
        }

        public void set_from_type(int _from_type) {
            this._from_type = _from_type;
        }
    }

    public static class RankingListDTO implements Serializable {
        private List<List<HomeBeanDTO>> list;
        private String txt;

        public List<List<HomeBeanDTO>> getList() {
            return this.list;
        }

        public String getTxt() {
            return this.txt;
        }

        public void setList(List<List<HomeBeanDTO>> list) {
            this.list = list;
        }

        public void setTxt(String txt) {
            this.txt = txt;
        }
    }

    public static class RecommendListDTO implements Serializable {
        private List<HomeBeanDTO> list;
        private String sub_title;
        private String title;
        private Integer tpl_type;

        public List<HomeBeanDTO> getList() {
            return this.list;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public String getTitle() {
            return this.title;
        }

        public Integer getTpl_type() {
            return this.tpl_type;
        }

        public void setList(List<HomeBeanDTO> list) {
            this.list = list;
        }

        public void setSub_title(String sub_title) {
            this.sub_title = sub_title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public void setTpl_type(Integer tpl_type) {
            this.tpl_type = tpl_type;
        }
    }

    public static class SScrollingTxtDTO implements Serializable {
        private int interval;
        private List<String> text;

        public int getInterval() {
            return this.interval;
        }

        public List<String> getText() {
            return this.text;
        }

        public void setInterval(int interval) {
            this.interval = interval;
        }

        public void setText(List<String> text) {
            this.text = text;
        }
    }

    public static class TheNewDTO implements Serializable {
        private Integer count;
        private List<ListDTO> list;
        private Integer pv;

        public Integer getCount() {
            return this.count;
        }

        public List<ListDTO> getList() {
            return this.list;
        }

        public Integer getPv() {
            return this.pv;
        }

        public void setCount(Integer count) {
            this.count = count;
        }

        public void setList(List<ListDTO> list) {
            this.list = list;
        }

        public void setPv(Integer pv) {
            this.pv = pv;
        }
    }

    public static class TopChannelDTO implements Serializable {
        private String bg_color;
        private HomeBeanDTO broadcast;
        private HomeBeanDTO discover;
        private TheNewDTO theNew;

        public String getBg_color() {
            return this.bg_color;
        }

        public HomeBeanDTO getBroadcast() {
            return this.broadcast;
        }

        public HomeBeanDTO getDiscover() {
            return this.discover;
        }

        public TheNewDTO getTheNew() {
            return this.theNew;
        }

        public void setBg_color(String bg_color) {
            this.bg_color = bg_color;
        }

        public void setBroadcast(HomeBeanDTO broadcast) {
            this.broadcast = broadcast;
        }

        public void setDiscover(HomeBeanDTO discover) {
            this.discover = discover;
        }

        public void setTheNew(TheNewDTO theNew) {
            this.theNew = theNew;
        }
    }

    public List<HomeBeanDTO> getEo_playing() {
        return this.eo_playing;
    }

    public HomeBeanDTO getF_video_ad() {
        return this.f_video_ad;
    }

    public List<HomeBeanDTO> getFast_entry() {
        return this.fast_entry;
    }

    public List<HomeBeanDTO> getJys_like() {
        return this.jys_like;
    }

    public List<NgSelectionDTO> getNg_selection() {
        return this.ng_selection;
    }

    public RankingListDTO getRanking_list() {
        return this.ranking_list;
    }

    public List<RecommendListDTO> getRecommend_list() {
        return this.recommend_list;
    }

    public SScrollingTxtDTO getS_scrolling_txt() {
        return this.s_scrolling_txt;
    }

    public SScrollingTxtDTOV2 getS_scrolling_txt_v2() {
        return this.s_scrolling_txt_v2;
    }

    public HomeBeanDTO getS_video_ad() {
        return this.s_video_ad;
    }

    public TopChannelDTO getTop_channel() {
        return this.top_channel;
    }

    public boolean isEmpty() {
        return this.recommend_list == null && this.s_scrolling_txt == null && this.top_channel == null && this.fast_entry == null && this.eo_playing == null && this.f_video_ad == null && this.jys_like == null && this.ng_selection == null && this.s_video_ad == null && this.ranking_list == null;
    }

    public void setEo_playing(List<HomeBeanDTO> eo_playing) {
        this.eo_playing = eo_playing;
    }

    public void setF_video_ad(HomeBeanDTO f_video_ad) {
        this.f_video_ad = f_video_ad;
    }

    public void setFast_entry(List<HomeBeanDTO> fast_entry) {
        this.fast_entry = fast_entry;
    }

    public void setJys_like(List<HomeBeanDTO> jys_like) {
        this.jys_like = jys_like;
    }

    public void setNg_selection(List<NgSelectionDTO> ng_selection) {
        this.ng_selection = ng_selection;
    }

    public void setRanking_list(RankingListDTO ranking_list) {
        this.ranking_list = ranking_list;
    }

    public void setRecommend_list(List<RecommendListDTO> recommend_list) {
        this.recommend_list = recommend_list;
    }

    public void setS_scrolling_txt(SScrollingTxtDTO s_scrolling_txt) {
        this.s_scrolling_txt = s_scrolling_txt;
    }

    public void setS_scrolling_txt_v2(SScrollingTxtDTOV2 s_scrolling_txt_v2) {
        this.s_scrolling_txt_v2 = s_scrolling_txt_v2;
    }

    public void setS_video_ad(HomeBeanDTO s_video_ad) {
        this.s_video_ad = s_video_ad;
    }

    public void setTop_channel(TopChannelDTO top_channel) {
        this.top_channel = top_channel;
    }
}
