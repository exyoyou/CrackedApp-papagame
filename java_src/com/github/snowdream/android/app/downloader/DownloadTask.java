package com.github.snowdream.android.app.downloader;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.o;
import com.join.kotlin.base.impl.Downloadable;
import com.join.kotlin.base.impl.GInfo;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.t2;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.DownloadGameArgsBean;
import com.join.mgps.dto.DownloadUrlBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PayTagInfo;
import com.join.mgps.dto.SingleGameModInfoBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@DatabaseTable(tableName = "downloadtask")
public class DownloadTask implements Serializable, Downloadable, GInfo {
    public static final int GAME_RUN_STATUS_CANT_RUN = 3;
    public static final int GAME_RUN_STATUS_ERROR = 2;
    public static final int GAME_RUN_STATUS_NONE = 0;
    public static final int GAME_RUN_STATUS_NOT_ASK = 4;
    public static final int GAME_RUN_STATUS_SUCCESS = 1;

    @DatabaseField
    private int _from;

    @DatabaseField
    private int _from_type;
    ModInfoBean _modInfoBean;
    SingleGameModInfoBean _singleGameModInfoBean;

    @DatabaseField
    private long actual_size;
    private CommonGameInfoBean ad_info;

    @DatabaseField
    private String ad_info_str;

    @DatabaseField
    private int ad_info_switch;

    @DatabaseField
    private String allow_start_up_ad;
    private String battle_upload_pic;

    @JsonIgnore
    private int cdn_down_switch;

    @DatabaseField
    private String cfg_down_url;

    @DatabaseField
    private String cfg_ver;

    @DatabaseField
    private String cfg_ver_name;
    private boolean checkRes;
    private String cloudArchiveTime;

    @DatabaseField
    private int cost_type;

    @DatabaseField
    private int cpu_type;

    @DatabaseField
    private String crc_link_type_val;

    @DatabaseField
    private long currentSize;

    @DatabaseField
    private String describe;
    private boolean disableShowSpeedUpPrompt;
    private int downLimit;
    private boolean downType;

    @DatabaseField
    private int down_count;

    @DatabaseField
    private int down_status;

    @DatabaseField
    private int down_type;
    private String down_url_remote;

    @DatabaseField
    private int downloadType;
    private String download_original_switch;
    private String download_outside_url;
    private String download_source_switch_v1;
    private String download_source_switch_v2;
    private String download_source_url;

    @DatabaseField
    private String dtype;

    @DatabaseField
    private long duration;
    private int event;

    @DatabaseField
    private String ext;

    @DatabaseField
    private String ext1;

    @DatabaseField
    private int feed_back_show_times;

    @DatabaseField
    private String fight_fun;

    @DatabaseField
    private String fight_screenshot_pic;

    @DatabaseField
    private int fight_type;

    @DatabaseField
    private String fileType;

    @DatabaseField
    private long finishTime;
    private boolean fromRecomDown;

    @DatabaseField
    private String gameZipPath;

    @DatabaseField
    private String game_info_top_pic;

    @DatabaseField
    private String game_info_tpl_type;

    @DatabaseField
    private int game_run_state;
    private int game_upgrade_state;

    @DatabaseField
    private int gift_package_switch;
    private boolean hasDeleteNotify;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(canBeNull = false, generatedId = true)
    private int f29275id;

    @DatabaseField
    private int install_type;

    @DatabaseField
    private int interrupt;

    @DatabaseField
    private boolean isFightOpen;
    private boolean isNotCheckAddShortcut;

    @DatabaseField
    private boolean isOpen;

    @DatabaseField
    private int is_boot_commented;

    @DatabaseField
    private int is_fight;

    @DatabaseField
    private int is_network;
    private int is_world;

    @DatabaseField
    private String keyword;
    private long lastCompleteSize;
    private long lastTime;

    @DatabaseField
    private int lock_sp;
    private int max_an_compatible_ver;

    @DatabaseField
    private String mimeType;
    private int min_an_compatible_ver;
    private int mobleNetNeedStop;

    @DatabaseField
    private String mod_info;

    @DatabaseField
    private String name;

    @DatabaseField
    private long openTime;

    @JsonIgnore
    private int other_down_switch;

    @DatabaseField
    private String packageName;

    @DatabaseField(canBeNull = false)
    private String path;

    @DatabaseField
    private int pay_game_amount;

    @DatabaseField
    private String permission_list;

    @DatabaseField
    private int plugin_area;

    @DatabaseField
    private long plugin_area_val;

    @DatabaseField
    private String plugin_num;

    @DatabaseField
    private int plugin_screenshot;

    @DatabaseField
    private String portraitURL;

    @DatabaseField
    private long progress;

    @DatabaseField
    private String ref_crc_sign_id;

    @DatabaseField
    private long res_actual_size;

    @DatabaseField
    private long res_currentSize;

    @DatabaseField
    private String resource_path;

    @DatabaseField
    private String resource_url_remote;

    @JsonIgnore
    private String rid;
    private int romArchivedNum;
    private long romArchivedSize;

    @DatabaseField
    private String romType;

    @JsonIgnore
    private AtomicInteger runtimeStatus;

    @DatabaseField
    private String score;

    @DatabaseField
    private String screenshot_pic;

    @DatabaseField
    private String showName;

    @DatabaseField
    private String showSize;

    @DatabaseField
    private int showType;

    @DatabaseField
    private String single_game_mod_info;

    @DatabaseField
    private long size;

    @DatabaseField
    private String source_down_path;

    @DatabaseField
    private String source_down_url;

    @DatabaseField
    private String source_ver;

    @DatabaseField
    private String source_ver_name;
    private TipNew sp_tag_info;

    @DatabaseField
    private String sp_tag_info_s;

    @DatabaseField
    private int sp_tpl_two_position;
    private String speed;

    @DatabaseField
    private String starNumber;

    @DatabaseField
    private long startDownloadTime;
    private boolean startGame;

    @DatabaseField
    private long startTime;

    @DatabaseField
    private int status;

    @DatabaseField
    private String sync_memory;

    @DatabaseField
    private int task_down_type;

    @JsonIgnore
    private List<TipBean> tipBeans;

    @DatabaseField
    private String tips;

    @JsonIgnore
    private List<DownloadUrlBean> tp_down_url;

    @DatabaseField
    private int type;
    private boolean uncheckSelfSupport;

    @DatabaseField
    private String unzip_size;

    @DatabaseField(canBeNull = false)
    private String url;

    @DatabaseField
    private String ver;

    @DatabaseField
    private String ver_name;

    @DatabaseField
    private int vm_device_switch;

    @DatabaseField
    private long zipCost;

    public DownloadTask() {
        this.event = 18;
        this.f29275id = 0;
        this.mimeType = "";
        this.name = "";
        this.path = "";
        this.size = 0L;
        this.showSize = "0";
        this.startTime = 0L;
        this.status = 14;
        this.finishTime = 0L;
        this.type = 0;
        this.url = "";
        this.showType = -1;
        this.fileType = Dtype.apk.name();
        this.plugin_num = "";
        this.ext1 = "";
        this.startDownloadTime = 0L;
        this.progress = 1L;
        this.speed = "0";
        this.runtimeStatus = new AtomicInteger(26);
        this._from = 0;
        this._from_type = 0;
        this.score = "";
        this.downType = true;
        this.downLimit = 300;
        this.mod_info = "";
        this.vm_device_switch = 1;
        this.cost_type = 1;
        this.feed_back_show_times = 0;
        this.permission_list = "";
        this.checkRes = true;
        this.hasDeleteNotify = false;
    }

    private String getSp_tag_info_s() {
        return this.sp_tag_info_s;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public DownloadTask buildDownloadTask() {
        return null;
    }

    @JsonIgnore
    public DownloadTask cloneOne() {
        DownloadTask downloadTask = new DownloadTask();
        downloadTask.setDown_status(this.down_status);
        downloadTask.setPackageName(getPackageName());
        downloadTask.setPortraitURL(getPortraitURL());
        downloadTask.setShowName(getShowName());
        downloadTask.setUrl(this.url);
        downloadTask.setTipBeans(getTipBeans());
        downloadTask.setCrc_link_type_val(getCrc_link_type_val());
        downloadTask.setVer(this.ver);
        downloadTask.setVer_name(this.ver_name);
        downloadTask.setRomType(this.plugin_num);
        downloadTask.setStatus(0);
        downloadTask.setDescribe(getDescribe());
        downloadTask.setShowSize(getShowSize());
        downloadTask.setCfg_ver(this.cfg_ver);
        downloadTask.setCfg_ver_name(this.cfg_ver_name);
        downloadTask.setCfg_down_url(this.cfg_down_url);
        downloadTask.setDownloadType(0);
        downloadTask.setScreenshot_pic(this.screenshot_pic);
        downloadTask.setPlugin_num(this.plugin_num);
        downloadTask.setIs_world(this.is_world);
        downloadTask.setIs_network(this.is_network);
        downloadTask.setSource_ver(this.source_ver);
        downloadTask.setSource_ver_name(this.source_ver_name);
        downloadTask.setSource_down_url(this.source_down_url);
        downloadTask.setPlugin_screenshot(this.plugin_screenshot);
        downloadTask.setPlugin_area(getPlugin_area());
        downloadTask.setPlugin_area_val(getPlugin_area_val());
        downloadTask.setWorld_shop(getIs_world());
        downloadTask.setIs_fight(this.is_fight);
        downloadTask.setFight_type(this.fight_type);
        downloadTask.setFight_fun(getFight_fun());
        downloadTask.setFight_screenshot_pic(this.fight_screenshot_pic);
        downloadTask.setGame_info_tpl_type(this.game_info_tpl_type);
        downloadTask.setLock_sp(this.lock_sp);
        downloadTask.setUnzip_size(this.unzip_size);
        downloadTask.setSync_memory(this.sync_memory);
        downloadTask.setGift_package_switch(this.gift_package_switch);
        downloadTask.setBattle_upload_pic(this.battle_upload_pic);
        downloadTask.setActual_size(this.actual_size);
        downloadTask.setGame_info_top_pic(this.game_info_top_pic);
        downloadTask.setSp_tpl_two_position(this.sp_tpl_two_position);
        downloadTask.setDown_count(this.down_count);
        downloadTask.setSp_tag_info(this.sp_tag_info);
        downloadTask.setScore(this.score);
        downloadTask.setPay_game_amount(getPay_game_amount());
        downloadTask.setDownload_source_url(this.download_source_url);
        downloadTask.setDownload_outside_url(this.download_outside_url);
        downloadTask.setDownload_original_switch(this.download_original_switch);
        downloadTask.setDownload_source_switch_v1(this.download_source_switch_v1);
        downloadTask.setDownload_source_switch_v2(this.download_source_switch_v2);
        downloadTask.setAllow_start_up_ad(this.allow_start_up_ad);
        downloadTask.setRes_actual_size(getRes_actual_size());
        downloadTask.setResource_url_remote(this.cfg_down_url);
        downloadTask.set_from(get_from());
        downloadTask.set_from_type(get_from_type());
        downloadTask.setMin_an_compatible_ver(this.min_an_compatible_ver);
        downloadTask.setMax_an_compatible_ver(this.max_an_compatible_ver);
        downloadTask.setActual_size(this.actual_size);
        downloadTask.setSp_tag_info_s(getSp_tag_info_s());
        downloadTask.setMod_info(this.mod_info);
        downloadTask.setResource_url_remote(getResource_url_remote());
        downloadTask.setSingle_game_mod_info(this.single_game_mod_info);
        downloadTask.setExt(this.ext);
        downloadTask.setVm_device_switch(this.vm_device_switch);
        downloadTask.setCost_type(this.cost_type);
        downloadTask.setPermission_list(this.permission_list);
        downloadTask.setCloudArchiveTime(this.cloudArchiveTime);
        return downloadTask;
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        DownloadTask downloadTask = (DownloadTask) o10;
        return this.f29275id == downloadTask.f29275id && this.crc_link_type_val.equals(downloadTask.crc_link_type_val);
    }

    public long getActual_size() {
        return this.actual_size;
    }

    public CommonGameInfoBean getAd_info() {
        if (t2.i(this.ad_info_str)) {
            this.ad_info = (CommonGameInfoBean) JsonMapper.getInstance().fromJson(this.ad_info_str, CommonGameInfoBean.class);
        }
        return this.ad_info;
    }

    public String getAd_info_str() {
        return this.ad_info_str;
    }

    public int getAd_info_switch() {
        return this.ad_info_switch;
    }

    public String getAllow_start_up_ad() {
        return this.allow_start_up_ad;
    }

    public String getBattle_upload_pic() {
        return this.battle_upload_pic;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getBespeakSwitch() {
        return 0;
    }

    public int getCdn_down_switch() {
        return this.cdn_down_switch;
    }

    public String getCfg_down_url() {
        return this.cfg_down_url;
    }

    public String getCfg_ver() {
        return this.cfg_ver;
    }

    public String getCfg_ver_name() {
        return this.cfg_ver_name;
    }

    public String getCloudArchiveTime() {
        return this.cloudArchiveTime;
    }

    public int getCost_type() {
        return this.cost_type;
    }

    public int getCpu_type() {
        return this.cpu_type;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public long getCurrentSize() {
        long j10 = this.currentSize;
        if (j10 < 0) {
            return 0L;
        }
        return j10;
    }

    public String getDescribe() {
        return this.describe;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public DownloadGameArgsBean getDownArgs() {
        if (!isGame()) {
            return null;
        }
        DownloadGameArgsBean downloadGameArgsBean = new DownloadGameArgsBean();
        downloadGameArgsBean.setFrom(get_from());
        downloadGameArgsBean.setFromType(get_from_type());
        downloadGameArgsBean.setKeyWord(getKeyword());
        downloadGameArgsBean.setFromRecommend(isFromRecomDown());
        if (!t2.h(getExt()) || getExtBean() == null) {
            downloadGameArgsBean.setExt(getExt());
        } else {
            downloadGameArgsBean.setExt(JsonMapper.toJsonString(getExtBean().buildScene().toExt()));
        }
        downloadGameArgsBean.setExt1(getExt1());
        return downloadGameArgsBean;
    }

    public int getDownLimit() {
        return this.downLimit;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getDownStatus() {
        return this.down_status;
    }

    public int getDown_count() {
        return this.down_count;
    }

    public int getDown_status() {
        return this.down_status;
    }

    public int getDown_type() {
        return o.l(this.plugin_num, this.down_type);
    }

    public String getDown_url_remote() {
        return this.down_url_remote;
    }

    @Override // com.join.kotlin.base.impl.Downloadable
    @JsonIgnore
    @Nullable
    public DownloadTask getDownloadTask() {
        return this;
    }

    public int getDownloadType() {
        return this.downloadType;
    }

    public String getDownload_original_switch() {
        return this.download_original_switch;
    }

    public String getDownload_outside_url() {
        return this.download_outside_url;
    }

    public String getDownload_source_switch_v1() {
        return this.download_source_switch_v1;
    }

    public String getDownload_source_switch_v2() {
        return this.download_source_switch_v2;
    }

    public String getDownload_source_url() {
        return this.download_source_url;
    }

    public String getDtype() {
        return this.dtype;
    }

    public long getDuration() {
        return this.duration;
    }

    public int getEvent() {
        return this.event;
    }

    @Override // com.join.kotlin.base.impl.IExposure
    public boolean getExposure() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public String getExt() {
        return this.ext;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public String getExt1() {
        return this.ext1;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getExt2() {
        return "";
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getExt3() {
        return "";
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getExt4() {
        return "";
    }

    @Override // com.join.kotlin.base.impl.IExposure
    @JsonIgnore
    @NotNull
    public ExtBean getExtBean() {
        return ExtBean.game(this);
    }

    public int getFeed_back_show_times() {
        return this.feed_back_show_times;
    }

    public String getFight_fun() {
        return this.fight_fun;
    }

    public String getFight_screenshot_pic() {
        return this.fight_screenshot_pic;
    }

    public int getFight_type() {
        return this.fight_type;
    }

    public String getFileType() {
        return this.fileType;
    }

    public long getFinishTime() {
        return this.finishTime;
    }

    @Override // com.join.kotlin.base.impl.Downloadable
    @JsonIgnore
    @Nullable
    public GInfo getGInfo() {
        return this;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getGameBook() {
        return 0;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getGameId() {
        return this.crc_link_type_val;
    }

    public String getGameZipPath() {
        return this.gameZipPath;
    }

    public String getGame_info_top_pic() {
        return this.game_info_top_pic;
    }

    public String getGame_info_tpl_type() {
        return this.game_info_tpl_type;
    }

    public int getGame_run_state() {
        return this.game_run_state;
    }

    public int getGame_upgrade_state() {
        return this.game_upgrade_state;
    }

    public int getGift_package_switch() {
        return this.gift_package_switch;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getIcon() {
        return getPortraitURL();
    }

    public int getId() {
        return this.f29275id;
    }

    public int getInstall_type() {
        return this.install_type;
    }

    @Override // com.join.kotlin.base.impl.IIntent, com.join.kotlin.base.impl.GInfo
    @Nullable
    public IntentDateBean getIntentDataBean() {
        return null;
    }

    public int getInterrupt() {
        return this.interrupt;
    }

    public int getIs_boot_commented() {
        return this.is_boot_commented;
    }

    public int getIs_fight() {
        return this.is_fight;
    }

    public int getIs_network() {
        return this.is_network;
    }

    public int getIs_world() {
        return this.is_world;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public long getLastCompleteSize() {
        return this.lastCompleteSize;
    }

    public long getLastTime() {
        return this.lastTime;
    }

    public int getLock_sp() {
        return this.lock_sp;
    }

    public int getMax_an_compatible_ver() {
        return this.max_an_compatible_ver;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public int getMin_an_compatible_ver() {
        return this.min_an_compatible_ver;
    }

    public int getMobleNetNeedStop() {
        return this.mobleNetNeedStop;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @JsonIgnore
    @Nullable
    public String getModGameId() {
        return getModInfoBean() != null ? this._modInfoBean.getMod_game_id() : this.crc_link_type_val;
    }

    public ModInfoBean getModInfoBean() {
        return getModInfoBean(true);
    }

    public String getMod_info() {
        return this.mod_info;
    }

    public String getName() {
        return this.name;
    }

    public long getOpenTime() {
        return this.openTime;
    }

    public int getOther_down_switch() {
        return this.other_down_switch;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public String getPackageName() {
        return this.packageName;
    }

    public String getPath() {
        return this.path;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public PayTagInfo getPayTagInfo() {
        return null;
    }

    public int getPay_game_amount() {
        return this.pay_game_amount;
    }

    public List<String> getPermissionList() {
        if (t2.i(this.permission_list)) {
            return (List) JsonMapper.getInstance().fromJson(this.permission_list, JsonMapper.getInstance().createCollectionType(List.class, String.class));
        }
        return null;
    }

    public String getPermission_list() {
        return this.permission_list;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @NotNull
    public String getPluginNum() {
        return this.plugin_num;
    }

    public int getPlugin_area() {
        return this.plugin_area;
    }

    public long getPlugin_area_val() {
        return this.plugin_area_val;
    }

    public String getPlugin_num() {
        String str = this.plugin_num;
        return (str == null || str.trim().equals("")) ? "0" : this.plugin_num;
    }

    public int getPlugin_screenshot() {
        return this.plugin_screenshot;
    }

    public String getPortraitURL() {
        return this.portraitURL;
    }

    public long getProgress() {
        return this.progress;
    }

    public String getRef_crc_sign_id() {
        return this.ref_crc_sign_id;
    }

    public long getRes_actual_size() {
        return this.res_actual_size;
    }

    public long getRes_currentSize() {
        return this.res_currentSize;
    }

    public String getResource_path() {
        String str = this.resource_path;
        return (str == null || str.equals("0")) ? "" : this.resource_path;
    }

    public String getResource_url_remote() {
        String str = this.resource_url_remote;
        return (str == null || str.equals("0")) ? "" : this.resource_url_remote;
    }

    public String getRid() {
        return this.rid;
    }

    public int getRomArchivedNum() {
        return this.romArchivedNum;
    }

    public long getRomArchivedSize() {
        return this.romArchivedSize;
    }

    public String getRomType() {
        return this.romType;
    }

    public AtomicInteger getRuntimeStatus() {
        return this.runtimeStatus;
    }

    public String getScore() {
        return this.score;
    }

    public String getScreenshot_pic() {
        return this.screenshot_pic;
    }

    public String getShowName() {
        return this.showName;
    }

    public String getShowSize() {
        return this.showSize;
    }

    public int getShowType() {
        return this.showType;
    }

    public SingleGameModInfoBean getSingleGameModInfoBean() {
        return getSingleGameModInfoBean(true);
    }

    public String getSingle_game_mod_info() {
        return this.single_game_mod_info;
    }

    public long getSize() {
        return this.size;
    }

    public String getSource_down_path() {
        return this.source_down_path;
    }

    public String getSource_down_url() {
        return this.source_down_url;
    }

    public String getSource_ver() {
        return this.source_ver;
    }

    public String getSource_ver_name() {
        return this.source_ver_name;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public TipNew getSpTagInfo() {
        return this.sp_tag_info;
    }

    public TipNew getSp_tag_info() {
        if (t2.i(this.sp_tag_info_s)) {
            try {
                return (TipNew) JsonMapper.getInstance().fromJson(this.sp_tag_info_s, TipNew.class);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public int getSp_tpl_two_position() {
        return this.sp_tpl_two_position;
    }

    public String getSpeed() {
        return this.speed;
    }

    public String getStarNumber() {
        return this.starNumber;
    }

    public long getStartDownloadTime() {
        return this.startDownloadTime;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public int getStatus() {
        return this.status;
    }

    public String getSync_memory() {
        String str = this.sync_memory;
        return str == null ? "" : str;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public List<TipBean> getTagInfo() {
        return getTipBeans();
    }

    public int getTask_down_type() {
        return this.task_down_type;
    }

    public List<TipBean> getTipBeans() {
        if (TextUtils.isEmpty(this.tips) || this.tips.equals("\"\"")) {
            return new ArrayList();
        }
        try {
            this.tipBeans = (List) JsonMapper.getInstance().fromJson(this.tips, JsonMapper.getInstance().createCollectionType(ArrayList.class, TipBean.class));
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("tips=");
            sb2.append(this.tips);
            e10.printStackTrace();
            this.tipBeans = new ArrayList();
        }
        return this.tipBeans;
    }

    public String getTips() {
        return this.tips;
    }

    public List<DownloadUrlBean> getTp_down_url() {
        return this.tp_down_url;
    }

    public int getType() {
        return this.type;
    }

    public String getUnzip_size() {
        String str = this.unzip_size;
        if (str == null || str.equals("") || !this.unzip_size.contains(o0.f49827a)) {
            return this.unzip_size;
        }
        String str2 = this.unzip_size;
        return str2.substring(0, str2.indexOf(o0.f49827a));
    }

    public String getUrl() {
        return this.url;
    }

    public String getVer() {
        return this.ver;
    }

    public int getVerCode() {
        String str = this.ver;
        if (str != null && !str.equals("")) {
            String[] strArrSplit = this.ver.split("_");
            if (strArrSplit.length > 0) {
                return Integer.parseInt(strArrSplit[0]);
            }
        }
        return 0;
    }

    public String getVer_name() {
        return this.ver_name;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getVersionCode() {
        if (!t2.i(getVer())) {
            return 0;
        }
        try {
            return Integer.valueOf(getVer()).intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public int getVm_device_switch() {
        return this.vm_device_switch;
    }

    public long getZipCost() {
        return this.zipCost;
    }

    public int get_from() {
        return this._from;
    }

    public int get_from_type() {
        return this._from_type;
    }

    @Override // com.join.kotlin.base.impl.Downloadable
    public boolean hasGInfo() {
        return true;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.f29275id), this.crc_link_type_val);
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean is64Bit() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isAndroidGame() {
        return UtilsMy.p0(getTagInfo());
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isBtGame() {
        TipNew tipNew = this.sp_tag_info;
        return (tipNew == null || tipNew.getBt_game() == null) ? false : true;
    }

    public boolean isCheckRes() {
        return this.checkRes;
    }

    public boolean isCloudGame() {
        for (TipBean tipBean : getTipBeans()) {
            if ("269".equals(tipBean.getId()) || "271".equals(tipBean.getId()) || "272".equals(tipBean.getId())) {
                return true;
            }
        }
        return false;
    }

    public boolean isCloudTask() {
        return this.crc_link_type_val.startsWith("cld_");
    }

    public boolean isComplete() {
        return (TextUtils.isEmpty(this.url) || TextUtils.isEmpty(this.name) || TextUtils.isEmpty(this.path)) ? false : true;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isCpsGame() {
        return false;
    }

    public boolean isDisableShowSpeedUpPrompt() {
        return this.disableShowSpeedUpPrompt;
    }

    public boolean isDownType() {
        return this.downType;
    }

    public boolean isFightFun() {
        char c10;
        char cCharAt;
        String fight_fun = getFight_fun();
        try {
            if (TextUtils.isEmpty(fight_fun) || fight_fun.length() < 2) {
                return false;
            }
            char cCharAt2 = fight_fun.charAt(1);
            if (fight_fun.length() >= 7) {
                cCharAt = fight_fun.charAt(6);
                c10 = fight_fun.charAt(5) == '1' ? '1' : '0';
            } else {
                c10 = '0';
                cCharAt = '0';
            }
            return '1' == cCharAt2 || '1' == cCharAt || ('0' == cCharAt2 && '0' == cCharAt && c10 == '1');
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean isFightOpen() {
        return this.isFightOpen;
    }

    public boolean isFromRecomDown() {
        return this.fromRecomDown;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isGame() {
        return getGInfo() != null;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isGameVm() {
        return isModGameVm() || isSingleGameVm() || isNetGameVm() || isH5VmGame();
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isH5Game() {
        return Objects.equals(this.plugin_num, ConstantIntEnum.H5.value() + "");
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isH5VmGame() {
        Iterator<TipBean> it2 = getTipBeans().iterator();
        while (it2.hasNext()) {
            if ("268".equals(it2.next().getId())) {
                return true;
            }
        }
        return false;
    }

    public boolean isHasDeleteNotify() {
        return this.hasDeleteNotify;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isHmCloud() {
        List<TipBean> list = this.tipBeans;
        if (list == null || list.isEmpty()) {
            return false;
        }
        for (TipBean tipBean : this.tipBeans) {
            if ("269".equals(tipBean.getId()) || "271".equals(tipBean.getId()) || "272".equals(tipBean.getId())) {
                return true;
            }
        }
        return false;
    }

    public int isIs_fight() {
        return this.is_fight;
    }

    public int isIs_network() {
        return this.is_network;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isMiniGame() {
        if (this.sp_tag_info == null) {
            this.sp_tag_info = getSp_tag_info();
        }
        TipNew tipNew = this.sp_tag_info;
        return !(tipNew == null || tipNew.getMini_game() == null) || isH5VmGame();
    }

    public boolean isMod() {
        return t2.i(getMod_info());
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isModGameVm() {
        TipNew tipNew = this.sp_tag_info;
        return (tipNew == null || tipNew.getMod_game_vm() == null) ? false : true;
    }

    @Override // com.join.kotlin.base.impl.GameType, com.join.kotlin.base.impl.GInfo
    public boolean isNetGame() {
        return UtilsMy.t2(getTagInfo());
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isNetGameVm() {
        TipNew tipNew = this.sp_tag_info;
        return (tipNew == null || tipNew.getNet_game_vm() == null) ? false : true;
    }

    public boolean isNotCheckAddShortcut() {
        return this.isNotCheckAddShortcut;
    }

    public boolean isOpen() {
        return this.isOpen;
    }

    public int isPlugin_area() {
        return this.plugin_area;
    }

    public int isPlugin_screenshot() {
        return this.plugin_screenshot;
    }

    public boolean isSingleGame() {
        if (this.sp_tag_info == null) {
            this.sp_tag_info = getSp_tag_info();
        }
        TipNew tipNew = this.sp_tag_info;
        return (tipNew == null || tipNew.getSingle_game_vm() == null) ? false : true;
    }

    @Override // com.join.kotlin.base.impl.GameType
    public boolean isSingleGameVm() {
        TipNew tipNew = this.sp_tag_info;
        return (tipNew == null || tipNew.getSingle_game_vm() == null) ? false : true;
    }

    public boolean isSo() {
        return Dtype.apk.name().equals(getFileType());
    }

    public boolean isStartGame() {
        return this.startGame;
    }

    public boolean isUncheckSelfSupport() {
        return this.uncheckSelfSupport;
    }

    public boolean isValid() {
        return URLUtil.isNetworkUrl(this.url);
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public boolean needPurchase() {
        return false;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public boolean needUpdate(int vCode) {
        return vCode < getVersionCode();
    }

    public void setActual_size(long actual_size) {
        this.actual_size = actual_size;
    }

    public void setAd_info(CommonGameInfoBean ad_info) {
        this.ad_info = ad_info;
    }

    public void setAd_info_str(String ad_info_str) {
        this.ad_info_str = ad_info_str;
    }

    public void setAd_info_switch(int ad_info_switch) {
        this.ad_info_switch = ad_info_switch;
    }

    public void setAllow_start_up_ad(String allow_start_up_ad) {
        this.allow_start_up_ad = allow_start_up_ad;
    }

    public void setBattle_upload_pic(String battle_upload_pic) {
        this.battle_upload_pic = battle_upload_pic;
    }

    public void setCdn_down_switch(int cdn_down_switch) {
        this.cdn_down_switch = cdn_down_switch;
    }

    public void setCfg_down_url(String cfg_down_url) {
        this.cfg_down_url = cfg_down_url;
    }

    public void setCfg_ver(String cfg_ver) {
        this.cfg_ver = cfg_ver;
    }

    public void setCfg_ver_name(String cfg_ver_name) {
        this.cfg_ver_name = cfg_ver_name;
    }

    public void setCheckRes(boolean checkRes) {
        this.checkRes = checkRes;
    }

    public void setCloudArchiveTime(String cloudArchiveTime) {
        this.cloudArchiveTime = cloudArchiveTime;
    }

    public void setCost_type(int cost_type) {
        this.cost_type = cost_type;
    }

    public void setCpu_type(int cpu_type) {
        this.cpu_type = cpu_type;
    }

    public void setCrc_link_type_val(String crc_link_type_val) {
        this.crc_link_type_val = crc_link_type_val;
    }

    public void setCurrentSize(long currentSize) {
        this.currentSize = currentSize;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public void setDisableShowSpeedUpPrompt(boolean disableShowSpeedUpPrompt) {
        this.disableShowSpeedUpPrompt = disableShowSpeedUpPrompt;
    }

    public void setDownLimit(int downLimit) {
        this.downLimit = downLimit;
    }

    public void setDownType(boolean downType) {
        this.downType = downType;
    }

    public void setDown_count(int down_count) {
        this.down_count = down_count;
    }

    public void setDown_status(int down_status) {
        this.down_status = down_status;
    }

    public void setDown_type(int down_type) {
        this.down_type = down_type;
    }

    public void setDown_url_remote(String down_url_remote) {
        this.down_url_remote = down_url_remote;
    }

    @Override // com.join.kotlin.base.impl.Downloadable
    public void setDownloadTask(DownloadTask task) {
        if (task == null) {
            return;
        }
        this.startTime = task.startTime;
        this.f29275id = task.f29275id;
        if (TextUtils.isEmpty(this.mimeType)) {
            this.mimeType = task.mimeType;
        }
        if (TextUtils.isEmpty(this.name)) {
            this.name = task.name;
        }
        if (TextUtils.isEmpty(this.path)) {
            this.path = task.path;
        }
        this.size = task.size;
        this.status = task.status;
        this.type = task.type;
        this.url = task.url;
    }

    public void setDownloadType(int downloadType) {
        this.downloadType = downloadType;
    }

    public void setDownload_original_switch(String download_original_switch) {
        this.download_original_switch = download_original_switch;
    }

    public void setDownload_outside_url(String download_outside_url) {
        this.download_outside_url = download_outside_url;
    }

    public void setDownload_source_switch_v1(String download_source_switch_v1) {
        this.download_source_switch_v1 = download_source_switch_v1;
    }

    public void setDownload_source_switch_v2(String download_source_switch_v2) {
        this.download_source_switch_v2 = download_source_switch_v2;
    }

    public void setDownload_source_url(String download_source_url) {
        this.download_source_url = download_source_url;
    }

    public void setDtype(String dtype) {
        this.dtype = dtype;
    }

    public void setDuration(long duration) {
        this.duration = duration;
    }

    public void setEvent(int event) {
        this.event = event;
    }

    @Override // com.join.kotlin.base.impl.IExposure
    public void setExposure(boolean b10) {
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public void setExt(String ext) {
        if (TextUtils.isEmpty(ext)) {
            return;
        }
        this.ext = ext;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public void setExt1(String ext1) {
        this.ext1 = ext1;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public void setExt2(@Nullable String str) {
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public void setExt3(@Nullable String str) {
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public void setExt4(@Nullable String str) {
    }

    public void setFeed_back_show_times(int feed_back_show_times) {
        this.feed_back_show_times = feed_back_show_times;
    }

    public void setFightOpen(boolean isFightOpen) {
        this.isFightOpen = isFightOpen;
    }

    public void setFight_fun(String fight_fun) {
        this.fight_fun = fight_fun;
    }

    public void setFight_screenshot_pic(String fight_screenshot_pic) {
        this.fight_screenshot_pic = fight_screenshot_pic;
    }

    public void setFight_type(int fight_type) {
        this.fight_type = fight_type;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public void setFinishTime(long finishTime) {
        this.finishTime = finishTime;
    }

    public void setFromRecomDown(boolean fromRecomDown) {
        this.fromRecomDown = fromRecomDown;
    }

    public void setGameZipPath(String gameZipPath) {
        this.gameZipPath = gameZipPath;
    }

    public void setGame_info_top_pic(String game_info_top_pic) {
        this.game_info_top_pic = game_info_top_pic;
    }

    public void setGame_info_tpl_type(String game_info_tpl_type) {
        this.game_info_tpl_type = game_info_tpl_type;
    }

    public void setGame_run_state(int game_run_state) {
        this.game_run_state = game_run_state;
    }

    public void setGame_upgrade_state(int game_upgrade_state) {
        this.game_upgrade_state = game_upgrade_state;
    }

    public void setGift_package_switch(int gift_package_switch) {
        this.gift_package_switch = gift_package_switch;
    }

    public void setHasDeleteNotify(boolean hasDeleteNotify) {
        this.hasDeleteNotify = hasDeleteNotify;
    }

    public void setId(int id2) {
        this.f29275id = id2;
    }

    public void setInstall_type(int install_type) {
        this.install_type = install_type;
    }

    public void setInterrupt(int interrupt) {
        this.interrupt = interrupt;
    }

    public void setIsFightOpen(boolean isFightOpen) {
        this.isFightOpen = isFightOpen;
    }

    public void setIsOpen(boolean isOpen) {
        this.isOpen = isOpen;
    }

    public void setIs_boot_commented(int is_boot_commented) {
        this.is_boot_commented = is_boot_commented;
    }

    public void setIs_fight(int is_fight) {
        this.is_fight = is_fight;
    }

    public void setIs_network(int is_network) {
        this.is_network = is_network;
    }

    public void setIs_world(int is_world) {
        this.is_world = is_world;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public void setLastCompleteSize(long lastCompleteSize) {
        this.lastCompleteSize = lastCompleteSize;
    }

    public void setLastTime(long lastTime) {
        this.lastTime = lastTime;
    }

    public void setLock_sp(int lock_sp) {
        this.lock_sp = lock_sp;
    }

    public void setMax_an_compatible_ver(int max_an_compatible_ver) {
        this.max_an_compatible_ver = max_an_compatible_ver;
    }

    public void setMimeType(String mimeType) {
        this.mimeType = mimeType;
    }

    public void setMin_an_compatible_ver(int min_an_compatible_ver) {
        this.min_an_compatible_ver = min_an_compatible_ver;
    }

    public void setMobleNetNeedStop(int mobleNetNeedStop) {
        this.mobleNetNeedStop = mobleNetNeedStop;
    }

    public void setMod_info(String mod_info) {
        this.mod_info = mod_info;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setNotCheckAddShortcut(boolean notCheckAddShortcut) {
        this.isNotCheckAddShortcut = notCheckAddShortcut;
    }

    public void setOpen(boolean isOpen) {
        this.isOpen = isOpen;
    }

    public void setOpenTime(long openTime) {
        this.openTime = openTime;
    }

    public void setOther_down_switch(int other_down_switch) {
        this.other_down_switch = other_down_switch;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public void setPay_game_amount(int pay_game_amount) {
        this.pay_game_amount = pay_game_amount;
    }

    public void setPermission_list(String permission_list) {
        this.permission_list = permission_list;
    }

    public void setPlugin_area(int plugin_area) {
        this.plugin_area = plugin_area;
    }

    public void setPlugin_area_val(long plugin_area_val) {
        this.plugin_area_val = plugin_area_val;
    }

    public void setPlugin_num(String plugin_num) {
        this.plugin_num = plugin_num;
    }

    public void setPlugin_screenshot(int plugin_screenshot) {
        this.plugin_screenshot = plugin_screenshot;
    }

    public void setPortraitURL(String portraitURL) {
        this.portraitURL = portraitURL;
    }

    public void setProgress(long progress) {
        this.progress = progress;
    }

    public void setRef_crc_sign_id(String ref_crc_sign_id) {
        this.ref_crc_sign_id = ref_crc_sign_id;
    }

    public void setRes_actual_size(long res_actual_size) {
        this.res_actual_size = res_actual_size;
    }

    public void setRes_currentSize(long res_currentSize) {
        this.res_currentSize = res_currentSize;
    }

    public void setResource_path(String resource_path) {
        this.resource_path = resource_path;
    }

    public void setResource_url_remote(String resource_url_remote) {
        this.resource_url_remote = resource_url_remote;
    }

    public void setRid(String rid) {
        this.rid = rid;
    }

    public void setRomArchivedNum(int romArchivedNum) {
        this.romArchivedNum = romArchivedNum;
    }

    public void setRomArchivedSize(long romArchivedSize) {
        this.romArchivedSize = romArchivedSize;
    }

    public void setRomType(String romType) {
        this.romType = romType;
    }

    public void setRuntimeStatus(AtomicInteger runtimeStatus) {
        this.runtimeStatus = runtimeStatus;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public void setScreenshot_pic(String screenshot_pic) {
        this.screenshot_pic = screenshot_pic;
    }

    public void setShowName(String showName) {
        this.showName = showName;
    }

    public void setShowSize(String showSize) {
        this.showSize = showSize;
    }

    public void setShowType(int showType) {
        this.showType = showType;
    }

    public void setSingle_game_mod_info(String single_game_mod_info2) {
        this.single_game_mod_info = single_game_mod_info2;
    }

    public void setSize(long size) {
        this.size = size;
    }

    public void setSource_down_path(String source_down_path) {
        this.source_down_path = source_down_path;
    }

    public void setSource_down_url(String source_down_url) {
        this.source_down_url = source_down_url;
    }

    public void setSource_ver(String source_ver) {
        this.source_ver = source_ver;
    }

    public void setSource_ver_name(String source_ver_name) {
        this.source_ver_name = source_ver_name;
    }

    public void setSp_tag_info(TipNew sp_tag_info) {
        if (sp_tag_info != null) {
            try {
                this.sp_tag_info_s = JsonMapper.getInstance().toJson(sp_tag_info);
            } catch (Exception unused) {
            }
        }
        this.sp_tag_info = sp_tag_info;
    }

    public void setSp_tag_info_s(String sp_tag_info_s) {
        this.sp_tag_info_s = sp_tag_info_s;
    }

    public void setSp_tpl_two_position(int sp_tpl_two_position) {
        this.sp_tpl_two_position = sp_tpl_two_position;
    }

    public void setSpeed(String speed) {
        this.speed = speed;
    }

    public void setStarNumber(String starNumber) {
        this.starNumber = starNumber;
    }

    public void setStartDownloadTime(long startDownloadTime) {
        this.startDownloadTime = startDownloadTime;
    }

    public void setStartGame(boolean startGame) {
        this.startGame = startGame;
    }

    public void setStartTime(long startTime) {
        this.startTime = startTime;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setSync_memory(String sync_memory) {
        this.sync_memory = sync_memory;
    }

    public void setTask_down_type(int task_down_type) {
        this.task_down_type = task_down_type;
    }

    public void setTipBeans(List<TipBean> tipBeans) {
        setTips(JsonMapper.getInstance().toJson(tipBeans));
        this.tipBeans = tipBeans;
    }

    public void setTips(String tips) {
        this.tips = tips;
    }

    public void setTp_down_url(List<DownloadUrlBean> tp_down_url) {
        this.tp_down_url = tp_down_url;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setUncheckSelfSupport(boolean uncheckSelfSupport) {
        this.uncheckSelfSupport = uncheckSelfSupport;
    }

    public void setUnzip_size(String unzip_size) {
        this.unzip_size = unzip_size;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setVer(String ver) {
        this.ver = ver;
    }

    public void setVer_name(String ver_name) {
        this.ver_name = ver_name;
    }

    public void setVm_device_switch(int vm_device_switch) {
        this.vm_device_switch = vm_device_switch;
    }

    public void setWorld_area(int world_area) {
    }

    public void setWorld_shop(int world_shop) {
    }

    public void setZipCost(long zipCost) {
        this.zipCost = zipCost;
    }

    public void set_from(int _from) {
        this._from = _from;
    }

    public void set_from_type(int _from_type) {
        this._from_type = _from_type;
    }

    @Override // com.join.kotlin.base.impl.Downloadable
    public void update(boolean notify) {
    }

    public ModInfoBean getModInfoBean(boolean reparse) {
        if (!isMod()) {
            return null;
        }
        if (reparse || this._modInfoBean == null) {
            this._modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(this.mod_info, ModInfoBean.class);
        }
        return this._modInfoBean;
    }

    public SingleGameModInfoBean getSingleGameModInfoBean(boolean reparse) {
        if (!t2.i(this.single_game_mod_info)) {
            return null;
        }
        if (reparse || this._singleGameModInfoBean == null) {
            this._singleGameModInfoBean = (SingleGameModInfoBean) JsonMapper.getInstance().fromJson(this.single_game_mod_info, SingleGameModInfoBean.class);
        }
        return this._singleGameModInfoBean;
    }

    public DownloadTask(Context context, long finishTime, int id2, String mimeType, String name, String path, long size, String showSize, long startTime, int status, int type, String url, String gameZipPath, String showName, String dtype, String packageName, String tips, String portraitURL, String crc_link_type_val, String ver, String ver_name, String starNumber, String romType, boolean isOpen, boolean isFightOpen, String describe, int showType, String fileType, String cfg_ver_name, String cfg_ver, String cfg_down_url, int downloadType, String screenshot_pic, String fight_screenshot_pic, long openTime, ArrayList<TipBean> tipBeans, long lastCompleteSize, long lastTime, String keyword, String plugin_num, int is_world, int is_network, String source_ver_name, String source_ver, String source_down_url, String source_down_path, int plugin_screenshot, int plugin_area, long plugin_area_val, int world_shop, int world_area, int is_fight, int fight_type, String fight_fun, boolean startGame, String rid, String recordPath, String game_info_tpl_type, String sync_memory, int gift_package_switch, String ad_info_str) {
        this.event = 18;
        this.f29275id = 0;
        this.mimeType = "";
        this.name = "";
        this.path = "";
        this.size = 0L;
        this.showSize = "0";
        this.startTime = 0L;
        this.status = 14;
        this.finishTime = 0L;
        this.type = 0;
        this.url = "";
        this.showType = -1;
        this.fileType = Dtype.apk.name();
        this.plugin_num = "";
        this.ext1 = "";
        this.startDownloadTime = 0L;
        this.progress = 1L;
        this.speed = "0";
        this.runtimeStatus = new AtomicInteger(26);
        this._from = 0;
        this._from_type = 0;
        this.score = "";
        this.downType = true;
        this.downLimit = 300;
        this.mod_info = "";
        this.vm_device_switch = 1;
        this.cost_type = 1;
        this.feed_back_show_times = 0;
        this.permission_list = "";
        this.checkRes = true;
        this.hasDeleteNotify = false;
        this.finishTime = finishTime;
        this.f29275id = id2;
        this.mimeType = mimeType;
        this.name = name;
        this.path = path;
        this.size = size;
        this.showSize = showSize;
        this.startTime = startTime;
        this.status = status;
        this.type = type;
        this.url = url;
        this.gameZipPath = gameZipPath;
        this.showName = showName;
        this.dtype = dtype;
        this.packageName = packageName;
        this.tips = tips;
        this.portraitURL = portraitURL;
        this.crc_link_type_val = crc_link_type_val;
        this.ver = ver;
        this.ver_name = ver_name;
        this.starNumber = starNumber;
        this.romType = romType;
        this.isOpen = isOpen;
        this.isFightOpen = isFightOpen;
        this.describe = describe;
        this.showType = showType;
        this.fileType = fileType;
        this.cfg_ver_name = cfg_ver_name;
        this.cfg_ver = cfg_ver;
        this.cfg_down_url = cfg_down_url;
        this.downloadType = downloadType;
        this.screenshot_pic = screenshot_pic;
        this.fight_screenshot_pic = fight_screenshot_pic;
        this.openTime = openTime;
        this.tipBeans = tipBeans;
        this.lastCompleteSize = lastCompleteSize;
        this.lastTime = lastTime;
        this.keyword = keyword;
        this.plugin_num = plugin_num;
        this.is_network = is_network;
        this.source_ver_name = source_ver_name;
        this.source_ver = source_ver;
        this.source_down_url = source_down_url;
        this.source_down_path = source_down_path;
        this.plugin_screenshot = plugin_screenshot;
        this.plugin_area = plugin_area;
        this.plugin_area_val = plugin_area_val;
        this.is_fight = is_fight;
        this.fight_type = fight_type;
        this.fight_fun = fight_fun;
        this.startGame = startGame;
        this.rid = rid;
        this.duration = this.duration;
        this.game_info_tpl_type = game_info_tpl_type;
        this.sync_memory = sync_memory;
        this.gift_package_switch = gift_package_switch;
        this.ad_info_str = ad_info_str;
    }
}
