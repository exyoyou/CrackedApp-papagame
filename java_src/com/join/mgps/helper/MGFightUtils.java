package com.join.mgps.helper;

import android.content.Context;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.dao.ForeignCollection;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.g;
import com.join.mgps.db.tables.DownloadUrlTable;
import com.join.mgps.db.tables.WarMatchAndLocalTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DownloadUrlBean;
import com.join.mgps.dto.FightSubGameInfoDataBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.va.overmind.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import q5.f;
import t6.l;

/* JADX INFO: loaded from: classes3.dex */
public class MGFightUtils {
    public static CollectionBeanSub collectionToTask(DownloadTask downloadTask) {
        CollectionBeanSub collectionBeanSub = new CollectionBeanSub();
        collectionBeanSub.setCfg_down_url(downloadTask.getCfg_down_url());
        collectionBeanSub.setCfg_ver_name(downloadTask.getCfg_ver_name());
        collectionBeanSub.setCfg_ver(downloadTask.getCfg_ver());
        collectionBeanSub.setGame_id(downloadTask.getCrc_link_type_val());
        collectionBeanSub.setGame_name(downloadTask.getShowName());
        collectionBeanSub.setVer(downloadTask.getVer());
        collectionBeanSub.setVer_name(downloadTask.getVer_name());
        collectionBeanSub.setIco_remote(downloadTask.getPortraitURL());
        collectionBeanSub.setPackage_name(downloadTask.getPackageName());
        collectionBeanSub.setScreenshot_pic(downloadTask.getScreenshot_pic());
        collectionBeanSub.setIs_fight(downloadTask.isIs_fight());
        collectionBeanSub.setFight_type(downloadTask.getFight_type());
        collectionBeanSub.setFight_screenshot_pic(downloadTask.getFight_screenshot_pic());
        collectionBeanSub.setPlugin_num(downloadTask.getPlugin_num());
        collectionBeanSub.setForum_switch(downloadTask.isPlugin_area());
        collectionBeanSub.setPlugin_num(downloadTask.getPlugin_num());
        collectionBeanSub.setForum_id(downloadTask.getPlugin_area_val());
        collectionBeanSub.setTag_info(downloadTask.getTipBeans());
        collectionBeanSub.setSize(downloadTask.getSize() + "");
        return collectionBeanSub;
    }

    public static void distinctItems(List<CollectionBeanSub> data, List<CollectionBeanSub> collectionItems) {
        try {
            for (CollectionBeanSub collectionBeanSub : data) {
                Iterator<CollectionBeanSub> it2 = collectionItems.iterator();
                while (it2.hasNext()) {
                    if (it2.next().getGame_id().equals(collectionBeanSub.getGame_id())) {
                        it2.remove();
                        break;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static List<CollectionBeanSub> getLoaclData(int type) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        List<DownloadTask> listS = f.M().S(null);
        if (listS != null && listS.size() > 0) {
            for (DownloadTask downloadTask : listS) {
                if (type == 4) {
                    if (downloadTask.isIs_fight() == 1) {
                        if (downloadTask.isOpen()) {
                            arrayList3.add(collectionToTask(downloadTask));
                        } else {
                            arrayList2.add(collectionToTask(downloadTask));
                        }
                    }
                } else if (type == downloadTask.getFight_type() && downloadTask.isIs_fight() == 1) {
                    if (downloadTask.isOpen()) {
                        arrayList3.add(collectionToTask(downloadTask));
                    } else {
                        arrayList2.add(collectionToTask(downloadTask));
                    }
                }
            }
        }
        arrayList.addAll(arrayList2);
        arrayList.addAll(arrayList3);
        return arrayList;
    }

    private List<CollectionBeanSub> removeLocalDbFromNetData(List<CollectionBeanSub> collectionBeanSubs, List<DownloadTask> downloadTasks) {
        Iterator<CollectionBeanSub> it2 = collectionBeanSubs.iterator();
        while (it2.hasNext()) {
            CollectionBeanSub next = it2.next();
            Iterator<DownloadTask> it3 = downloadTasks.iterator();
            while (it3.hasNext()) {
                if (next.getGame_id().equals(it3.next().getCrc_link_type_val())) {
                    it2.remove();
                    break;
                }
            }
        }
        return collectionBeanSubs;
    }

    public static FightSubGameInfoDataBean setMatchAndLocalData(WarMatchAndLocalTable warMatchAndLocalTable, DownloadTask downloadTask) {
        FightSubGameInfoDataBean fightSubGameInfoDataBean = new FightSubGameInfoDataBean();
        fightSubGameInfoDataBean.setCrc_sign_id(warMatchAndLocalTable.getCrc_link_type_val());
        fightSubGameInfoDataBean.setFight_screenshot_pic(warMatchAndLocalTable.getFight_screenshot_pic());
        fightSubGameInfoDataBean.setGame_name(warMatchAndLocalTable.getShowName());
        fightSubGameInfoDataBean.setPic_remote(warMatchAndLocalTable.getPic_remote());
        return fightSubGameInfoDataBean;
    }

    public static List<DownloadTask> updateFightStatus(List<DownloadTask> downloadTaskMatchAndLocal, List<DownloadTask> downloadTasks) {
        if (downloadTasks != null && downloadTasks.size() > 0) {
            for (DownloadTask downloadTask : downloadTasks) {
                for (DownloadTask downloadTask2 : downloadTaskMatchAndLocal) {
                    if (downloadTask.getCrc_link_type_val().equals(downloadTask2.getCrc_link_type_val())) {
                        updateFightTask(downloadTask2, downloadTask);
                        break;
                    }
                }
            }
        }
        return downloadTaskMatchAndLocal;
    }

    public static void updateFightTask(DownloadTask downloadTaskLocal, DownloadTask downloadTask) {
        downloadTaskLocal.setCrc_link_type_val(downloadTask.getCrc_link_type_val());
        downloadTaskLocal.setCfg_down_url(downloadTask.getCfg_down_url());
        downloadTaskLocal.setCfg_ver_name(downloadTask.getCfg_ver_name());
        downloadTaskLocal.setCfg_ver(downloadTask.getCfg_ver());
        downloadTaskLocal.setDownloadTask(downloadTask);
        downloadTaskLocal.setDownloadType(downloadTask.getDownloadType());
        downloadTaskLocal.setDtype(downloadTask.getDtype());
        downloadTaskLocal.setFinishTime(downloadTask.getFinishTime());
        downloadTaskLocal.setFight_type(downloadTask.getFight_type());
        downloadTaskLocal.setFight_screenshot_pic(downloadTask.getFight_screenshot_pic());
        downloadTaskLocal.setFileType(downloadTask.getFileType());
        downloadTaskLocal.setIs_fight(downloadTask.isIs_fight());
        downloadTaskLocal.setStatus(downloadTask.getStatus());
        downloadTaskLocal.setVer(downloadTask.getVer());
        downloadTaskLocal.setVer_name(downloadTask.getVer_name());
        downloadTaskLocal.setPortraitURL(downloadTask.getPortraitURL());
        downloadTaskLocal.setPackageName(downloadTask.getPackageName());
        downloadTaskLocal.setPlugin_area(downloadTask.isPlugin_area());
        downloadTaskLocal.setPlugin_num(downloadTask.getPlugin_num());
        downloadTaskLocal.setPlugin_area_val(downloadTask.getPlugin_area_val());
        downloadTaskLocal.setScreenshot_pic(downloadTask.getScreenshot_pic());
        downloadTaskLocal.setSource_down_path(downloadTask.getSource_down_path());
        downloadTaskLocal.setSource_ver(downloadTask.getSource_ver());
        downloadTaskLocal.setShowName(downloadTask.getShowName());
        downloadTaskLocal.setRomType(downloadTask.getRomType());
        downloadTaskLocal.setKeyword(downloadTask.getKeyword());
        downloadTaskLocal.setMimeType(downloadTask.getMimeType());
        downloadTaskLocal.setLastCompleteSize(downloadTask.getLastCompleteSize());
        downloadTaskLocal.setGameZipPath(downloadTask.getGameZipPath());
        if (downloadTask.isOpen()) {
            downloadTaskLocal.setOpen(true);
        } else {
            downloadTaskLocal.setOpen(false);
        }
        downloadTaskLocal.setTips(downloadTask.getTips());
        downloadTaskLocal.setSize(downloadTask.getSize());
        downloadTaskLocal.setLastTime(downloadTask.getLastTime());
    }

    public static void updateStatus(Context context, List<CollectionBeanSub> collectionBeanSubs, List<DownloadTask> downloadTasks, Map<String, DownloadTask> downloadTasksMap) {
        if (downloadTasks == null) {
            return;
        }
        for (CollectionBeanSub collectionBeanSub : collectionBeanSubs) {
            for (DownloadTask downloadTask : downloadTasks) {
                if (collectionBeanSub.getMod_info() == null) {
                    if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                        collectionBeanSub.setDownloadTask(downloadTask);
                        break;
                    }
                } else {
                    ModInfoBean mod_info = collectionBeanSub.getMod_info();
                    DownloadTask downloadTask2 = downloadTasksMap.get(mod_info.getMain_game_id());
                    boolean zK = false;
                    boolean zE = (downloadTask2 == null || downloadTask2.getStatus() != 5) ? false : g.t0(context).e(context, downloadTask2.getPackageName());
                    DownloadTask downloadTask3 = downloadTasksMap.get(mod_info.getMod_game_id());
                    if (downloadTask3 != null && downloadTask3.getStatus() == 5) {
                        zK = i.q().K(downloadTask3.getPackageName());
                    }
                    if (!zK || !zE) {
                        if (zK) {
                            if (collectionBeanSub.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getMod_info().getMod_game_id())) {
                                collectionBeanSub.setDownloadTask(downloadTask);
                                break;
                            }
                        } else if (zE) {
                            if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                                collectionBeanSub.setDownloadTask(downloadTask);
                                break;
                            }
                        } else {
                            DownloadTask downloadTaskG = collectionBeanSub.getMod_info() != null ? f.M().G(collectionBeanSub.getMod_info().getMod_game_id()) : null;
                            if (downloadTaskG == null) {
                                downloadTaskG = f.M().G(collectionBeanSub.getCrc_sign_id());
                            }
                            if (downloadTaskG != null && downloadTask.getCrc_link_type_val().equals(downloadTaskG.getCrc_link_type_val())) {
                                collectionBeanSub.setDownloadTask(downloadTask);
                                break;
                            }
                        }
                    } else if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                        collectionBeanSub.setDownloadTask(downloadTask);
                        break;
                    }
                }
            }
        }
    }

    public static WarMatchAndLocalTable warDataToTable(FightSubGameInfoDataBean infoDataBean) {
        WarMatchAndLocalTable warMatchAndLocalTable = new WarMatchAndLocalTable();
        warMatchAndLocalTable.setAppSize(infoDataBean.getAppSize());
        warMatchAndLocalTable.setCfg_down_url(infoDataBean.getCfg_down_url());
        warMatchAndLocalTable.setCfg_ver(infoDataBean.getCfg_ver());
        warMatchAndLocalTable.setCfg_ver_name(infoDataBean.getCfg_ver_name());
        warMatchAndLocalTable.setCrc_link_type_val(infoDataBean.getCrc_sign_id());
        warMatchAndLocalTable.setCdn_down_switch(infoDataBean.getCdn_down_switch());
        warMatchAndLocalTable.setDown_url_remote(infoDataBean.getDown_url_remote());
        warMatchAndLocalTable.setForum_switch(infoDataBean.getForum_switch());
        warMatchAndLocalTable.setFight_screenshot_pic(infoDataBean.getFight_screenshot_pic());
        warMatchAndLocalTable.setFight_fun(infoDataBean.getFight_funv2());
        warMatchAndLocalTable.setFight_type(infoDataBean.getFight_type());
        warMatchAndLocalTable.setForum_id(infoDataBean.getForum_id());
        warMatchAndLocalTable.setGame_info_tpl_type(infoDataBean.getGame_info_tpl_type());
        warMatchAndLocalTable.setGame_name(infoDataBean.getGame_name());
        warMatchAndLocalTable.setIco_remote(infoDataBean.getIco_remote());
        warMatchAndLocalTable.setInfo(infoDataBean.getInfo());
        warMatchAndLocalTable.setIs_fight(1);
        warMatchAndLocalTable.setIs_network(infoDataBean.getIs_network());
        warMatchAndLocalTable.setIs_world(infoDataBean.getIs_world());
        warMatchAndLocalTable.setLock_sp(infoDataBean.getLock_sp());
        warMatchAndLocalTable.setOther_down_switch(infoDataBean.getOther_down_switch());
        warMatchAndLocalTable.setPackageName(infoDataBean.getPackageName());
        warMatchAndLocalTable.setPlugin_lowest_ver(infoDataBean.getPlugin_lowest_ver());
        warMatchAndLocalTable.setPlugin_num(infoDataBean.getPlugin_num());
        warMatchAndLocalTable.setPlugin_screenshot(infoDataBean.getPlugin_screenshot());
        warMatchAndLocalTable.setPic_remote(infoDataBean.getPic_remote());
        warMatchAndLocalTable.setPlugin_lowest_ver_name(infoDataBean.getPlugin_lowest_ver_name());
        warMatchAndLocalTable.setSource_ver(infoDataBean.getSource_ver());
        warMatchAndLocalTable.setSource_down_url(infoDataBean.getSource_down_url());
        warMatchAndLocalTable.setSource_ver_name(infoDataBean.getSource_ver_name());
        warMatchAndLocalTable.setSync_memory(infoDataBean.getSync_memory());
        warMatchAndLocalTable.setShowName(infoDataBean.getGame_name());
        warMatchAndLocalTable.setScreenshot_pic(infoDataBean.getScreenshot_pic());
        warMatchAndLocalTable.setDown_status(infoDataBean.getDown_status());
        List<DownloadUrlBean> tp_down_url = infoDataBean.getTp_down_url();
        if (tp_down_url == null) {
            tp_down_url = new ArrayList<>();
        }
        for (int i10 = 0; i10 < tp_down_url.size(); i10++) {
            DownloadUrlTable downloadUrlTable = new DownloadUrlTable(tp_down_url.get(i10));
            downloadUrlTable.setWarMatchAndLocalTable(warMatchAndLocalTable);
            l.n().m(downloadUrlTable);
        }
        warMatchAndLocalTable.setTips(JsonMapper.getInstance().toJson(infoDataBean.getTag_info()));
        warMatchAndLocalTable.setUnzip_size(infoDataBean.getUnzip_size());
        warMatchAndLocalTable.setVer(infoDataBean.getVer());
        warMatchAndLocalTable.setVer_name(infoDataBean.getVer_name());
        warMatchAndLocalTable.setWorld_shop(infoDataBean.getWorld_shop());
        warMatchAndLocalTable.setWorld_area(infoDataBean.getWorld_area());
        warMatchAndLocalTable.setGift_package_switch(infoDataBean.getGift_package_switch());
        return warMatchAndLocalTable;
    }

    public static DownloadTask warDataToTask(WarMatchAndLocalTable warMatchAndLocalTable) {
        DownloadTask downloadTask = new DownloadTask();
        downloadTask.setDown_status(warMatchAndLocalTable.getDown_status());
        downloadTask.setCdn_down_switch(warMatchAndLocalTable.getCdn_down_switch());
        downloadTask.setCrc_link_type_val(warMatchAndLocalTable.getCrc_link_type_val());
        downloadTask.setCfg_down_url(warMatchAndLocalTable.getCfg_down_url());
        downloadTask.setCfg_ver_name(warMatchAndLocalTable.getCfg_ver_name());
        downloadTask.setCfg_ver(warMatchAndLocalTable.getCfg_ver());
        downloadTask.setDescribe(warMatchAndLocalTable.getInfo());
        downloadTask.setFight_fun(warMatchAndLocalTable.getFight_fun());
        downloadTask.setFight_type(warMatchAndLocalTable.getFight_type());
        downloadTask.setFight_screenshot_pic(warMatchAndLocalTable.getFight_screenshot_pic());
        downloadTask.setGame_info_tpl_type(warMatchAndLocalTable.getGame_info_tpl_type());
        downloadTask.setIs_fight(1);
        downloadTask.setIs_network(warMatchAndLocalTable.getIs_network());
        downloadTask.setIs_world(warMatchAndLocalTable.getIs_world());
        downloadTask.setLock_sp(warMatchAndLocalTable.getLock_sp());
        downloadTask.setName(warMatchAndLocalTable.getShowName());
        downloadTask.setOther_down_switch(warMatchAndLocalTable.getOther_down_switch());
        downloadTask.setPackageName(warMatchAndLocalTable.getPackageName());
        downloadTask.setPlugin_area(warMatchAndLocalTable.getForum_switch());
        downloadTask.setPlugin_area_val(warMatchAndLocalTable.getForum_id());
        downloadTask.setPlugin_num(warMatchAndLocalTable.getPlugin_num() + "");
        downloadTask.setPlugin_screenshot(warMatchAndLocalTable.getPlugin_screenshot());
        downloadTask.setPortraitURL(warMatchAndLocalTable.getIco_remote());
        downloadTask.setRomType(warMatchAndLocalTable.getPlugin_num() + "");
        downloadTask.setStatus(0);
        downloadTask.setShowSize(warMatchAndLocalTable.getAppSize());
        downloadTask.setScreenshot_pic(warMatchAndLocalTable.getScreenshot_pic());
        downloadTask.setSource_down_path(warMatchAndLocalTable.getSource_down_url());
        downloadTask.setSource_ver(warMatchAndLocalTable.getSource_ver());
        downloadTask.setShowName(warMatchAndLocalTable.getShowName());
        downloadTask.setSync_memory(warMatchAndLocalTable.getSync_memory());
        downloadTask.setSource_ver_name(warMatchAndLocalTable.getSource_ver_name());
        downloadTask.setTips(warMatchAndLocalTable.getTips());
        downloadTask.setPay_game_amount(warMatchAndLocalTable.getPay_game_amount());
        ForeignCollection<DownloadUrlTable> tp_down_url = warMatchAndLocalTable.getTp_down_url();
        ArrayList arrayList = new ArrayList();
        Iterator<DownloadUrlTable> it2 = tp_down_url.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getDownUrlBean());
        }
        downloadTask.setTp_down_url(arrayList);
        downloadTask.setUnzip_size(warMatchAndLocalTable.getUnzip_size());
        downloadTask.setUrl(warMatchAndLocalTable.getDown_url_remote());
        downloadTask.setVer(warMatchAndLocalTable.getVer());
        downloadTask.setVer_name(warMatchAndLocalTable.getVer_name());
        downloadTask.setWorld_area(warMatchAndLocalTable.getWorld_area());
        downloadTask.setWorld_shop(warMatchAndLocalTable.getWorld_shop());
        downloadTask.setGift_package_switch(warMatchAndLocalTable.getGift_package_switch());
        downloadTask.setPay_game_amount(warMatchAndLocalTable.getGift_package_switch());
        downloadTask.setDownloadTask(downloadTask);
        return downloadTask;
    }
}
