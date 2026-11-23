package t6;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.DownloadFileTable;
import com.join.mgps.dto.TipBean;
import com.php25.PDownload.DownloadFile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class m {
    public static DownloadFile a(DownloadFileTable downloadFileTable) {
        DownloadFile downloadFile = new DownloadFile();
        downloadFile.setId(Long.valueOf(downloadFileTable.getId()));
        downloadFile.setTag(downloadFileTable.getTag());
        downloadFile.setUrl(downloadFileTable.getUrl());
        downloadFile.setBasePath(downloadFileTable.getBasePath());
        downloadFile.setName(downloadFileTable.getName());
        downloadFile.setShowName(downloadFileTable.getShowName());
        downloadFile.setAbsolutePath(downloadFileTable.getAbsolutePath());
        downloadFile.setGameZipPath(downloadFileTable.getGameZipPath());
        downloadFile.setTotalSize(Integer.valueOf(downloadFileTable.getTotalSize()));
        downloadFile.setDownloading(downloadFileTable.getDownloading() == 1);
        downloadFile.setFinished(downloadFileTable.getFinished() == 1);
        downloadFile.setCreateTime(downloadFileTable.getCreateTime());
        downloadFile.setPackageName(downloadFileTable.getPackageName());
        downloadFile.setPercent(downloadFileTable.getPercentage());
        downloadFile.setAutoPause(downloadFileTable.getIsAutoPause() == 1);
        downloadFile.setFinishTime(downloadFileTable.getFinishTime());
        downloadFile.setCompleteSize(downloadFileTable.getCompleteSize());
        downloadFile.setDtype(downloadFileTable.getDtype());
        downloadFile.setFileType(downloadFileTable.getFileType());
        downloadFile.setPortraitURL(downloadFileTable.getPortraitURL());
        downloadFile.setCrc_link_type_val(downloadFileTable.getCrc_link_type_val());
        downloadFile.setVer(downloadFileTable.getVer());
        downloadFile.setVer_name(downloadFileTable.getVer_name());
        downloadFile.setGid(downloadFileTable.getGid());
        downloadFile.setStarNumber(downloadFileTable.getStarNumber());
        downloadFile.setRomType(downloadFileTable.getRomType());
        downloadFile.setOpen(downloadFileTable.getIsOpen() == 1);
        downloadFile.setDiscribe(downloadFileTable.getDescribe());
        downloadFile.setShowType(downloadFileTable.getShowType());
        downloadFile.setTipBeans((List) JsonMapper.getInstance().fromJson(downloadFileTable.getTips(), JsonMapper.getInstance().createCollectionType(ArrayList.class, TipBean.class)));
        return downloadFile;
    }

    public static DownloadFileTable b(DownloadFile downloadFile) {
        DownloadFileTable downloadFileTable = new DownloadFileTable();
        downloadFileTable.setTag(downloadFile.getTag());
        downloadFileTable.setUrl(downloadFile.getUrl());
        downloadFileTable.setBasePath(downloadFile.getBasePath());
        downloadFileTable.setName(downloadFile.getName());
        downloadFileTable.setShowName(downloadFile.getShowName());
        downloadFileTable.setAbsolutePath(downloadFile.getAbsolutePath());
        downloadFileTable.setGameZipPath(downloadFile.getGameZipPath());
        downloadFileTable.setTotalSize(downloadFile.getTotalSize().intValue());
        downloadFileTable.setDownloading(downloadFile.isDownloading() ? (short) 1 : (short) 0);
        downloadFileTable.setFinished(downloadFile.isFinished() ? (short) 1 : (short) 0);
        downloadFileTable.setCreateTime(downloadFile.getCreateTime());
        downloadFileTable.setPackageName(downloadFile.getPackageName());
        downloadFileTable.setPercentage(downloadFile.getPercent());
        downloadFileTable.setIsAutoPause(downloadFile.isAutoPause() ? (short) 1 : (short) 0);
        downloadFileTable.setFinishTime(downloadFile.getFinishTime());
        downloadFileTable.setCompleteSize((int) downloadFile.getCompleteSize());
        downloadFileTable.setDtype(downloadFile.getDtype());
        downloadFileTable.setFileType(downloadFile.getFileType());
        downloadFileTable.setPortraitURL(downloadFile.getPortraitURL());
        downloadFileTable.setCrc_link_type_val(downloadFile.getCrc_link_type_val());
        downloadFileTable.setVer(downloadFile.getVer());
        downloadFileTable.setVer_name(downloadFile.getVer_name());
        downloadFileTable.setGid(downloadFile.getGid());
        downloadFileTable.setStarNumber(downloadFile.getStarNumber());
        downloadFileTable.setRomType(downloadFile.getRomType());
        downloadFileTable.setIsOpen(downloadFile.isOpen() ? (short) 1 : (short) 0);
        downloadFileTable.setDescribe(downloadFile.getDiscribe());
        downloadFileTable.setShowType(downloadFile.getShowType());
        downloadFileTable.setTips(JsonMapper.getInstance().toJson(downloadFile.getTipBeans()));
        return downloadFileTable;
    }

    public static DownloadTask c(DownloadFile downloadFile) {
        DownloadTask downloadTask = new DownloadTask();
        downloadTask.setUrl(downloadFile.getUrl());
        downloadTask.setName(downloadFile.getName());
        downloadTask.setShowName(downloadFile.getShowName());
        downloadTask.setPath(downloadFile.getAbsolutePath());
        downloadTask.setGameZipPath(downloadFile.getGameZipPath());
        downloadTask.setSize(downloadFile.getTotalSize().intValue());
        downloadTask.setShowSize(UtilsMy.c(downloadFile.getTotalSize().intValue()));
        downloadTask.setStatus(downloadFile.isFinished() ? 5 : 3);
        downloadTask.setShowSize(UtilsMy.c(downloadFile.getTotalSize().intValue()));
        String createTime = downloadFile.getCreateTime();
        if (createTime == null || createTime.equals("")) {
            downloadTask.setStartTime(System.currentTimeMillis());
        } else if (createTime.contains("-")) {
            downloadTask.setStartTime(com.join.mgps.Util.e0.L(createTime).getTime());
        } else {
            downloadTask.setStartTime(Long.parseLong(createTime));
        }
        downloadTask.setPackageName(downloadFile.getPackageName());
        downloadTask.setFinishTime(System.currentTimeMillis());
        downloadTask.setLastCompleteSize((int) downloadFile.getCompleteSize());
        downloadTask.setFileType(downloadFile.getFileType());
        downloadTask.setPortraitURL(downloadFile.getPortraitURL());
        String crc_link_type_val = downloadFile.getCrc_link_type_val();
        if (crc_link_type_val != null && crc_link_type_val.equals("1024")) {
            crc_link_type_val = "31";
        }
        downloadTask.setCrc_link_type_val(crc_link_type_val);
        downloadTask.setVer(downloadFile.getVer());
        downloadTask.setVer_name(downloadFile.getVer_name());
        downloadTask.setRomType(downloadFile.getRomType());
        downloadTask.setOpen(downloadFile.isOpen());
        downloadTask.setDescribe(downloadFile.getDiscribe());
        downloadTask.setShowType(downloadFile.getShowType());
        downloadTask.setCfg_ver_name("1");
        downloadTask.setCfg_ver("1");
        downloadTask.setCfg_down_url("1");
        downloadTask.setScreenshot_pic("");
        downloadTask.setDownloadType(1);
        downloadTask.setOpenTime(0L);
        downloadTask.setScreenshot_pic("");
        downloadTask.setTips(JsonMapper.getInstance().toJson(downloadFile.getTipBeans()));
        return downloadTask;
    }

    public static DownloadTask d(String packageName) {
        HashMap map = new HashMap(1);
        map.put("packageName", packageName);
        List<DownloadTask> listH = q5.f.M().h(map);
        if (listH == null || listH.size() <= 0) {
            return null;
        }
        return listH.get(0);
    }

    public static void delete(DownloadFile downloadFile) {
        if (downloadFile != null) {
            j.n().b(downloadFile.getId());
        }
    }

    public static long insert(DownloadFile downloadFile) {
        DownloadFileTable downloadFileTableB = b(downloadFile);
        j.n().k(downloadFileTableB);
        return downloadFileTableB.getId();
    }

    public static void update(DownloadFile downloadFile) {
        DownloadFileTable downloadFileTableG = j.n().g(downloadFile.getId());
        downloadFileTableG.setFinished(downloadFile.getFinished() ? (short) 1 : (short) 0);
        downloadFileTableG.setDownloading(downloadFile.isDownloading() ? (short) 1 : (short) 0);
        downloadFileTableG.setFinishTime(downloadFile.getFinishTime());
        downloadFileTableG.setTotalSize(downloadFile.getTotalSize().intValue());
        downloadFileTableG.setPercentage(downloadFile.getPercent());
        downloadFileTableG.setCompleteSize((int) downloadFile.getCompleteSize());
        downloadFileTableG.setGameZipPath(downloadFile.getGameZipPath());
        downloadFileTableG.setVer_name(downloadFile.getVer_name());
        downloadFileTableG.setId(downloadFile.getId().intValue());
        j.n().update(downloadFileTableG);
    }
}
