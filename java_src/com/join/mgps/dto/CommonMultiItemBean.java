package com.join.mgps.dto;

import androidx.annotation.Nullable;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.kotlin.base.impl.BaseDownloadable;
import com.join.kotlin.base.impl.Downloadable;
import com.join.kotlin.base.impl.GInfo;
import com.join.kotlin.model.bean.DownState;
import com.join.kotlin.ui.search.model.SearchGameBean;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t2;
import j6.b;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes3.dex */
public class CommonMultiItemBean extends BaseDownloadable implements b {
    private Object data;
    private DownState downState;
    private Object extData;
    private Object extraData;
    private GInfo info;
    public int viewType;

    public CommonMultiItemBean(Object data) {
        this(0, data);
    }

    private String buildDownSizeText(DownloadTask downloadTask) {
        long size;
        try {
            size = t2.i(downloadTask.getShowSize()) ? (long) (Double.parseDouble(downloadTask.getShowSize()) * 1024.0d * 1024.0d) : 0L;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (size <= 0) {
            size = downloadTask.getSize();
        }
        return UtilsMy.i(downloadTask.getCurrentSize()) + e.F0 + UtilsMy.i(size);
    }

    public <T> T getData() {
        return (T) this.data;
    }

    public DownState getDownState() {
        return this.downState;
    }

    public Object getExtData() {
        return this.extData;
    }

    public Object getExtraData() {
        return this.extraData;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    @Nullable
    public GInfo getGInfo() {
        return this.info;
    }

    public GInfo getInfo() {
        return this.info;
    }

    @Override // com.join.kotlin.base.impl.IIntent, com.join.kotlin.base.impl.GInfo
    public IntentDateBean getIntentDataBean() {
        return hasGInfo() ? getGInfo().getIntentDataBean() : new IntentDateBean();
    }

    @Override // j6.b
    public int getItemType() {
        return this.viewType;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    public boolean hasGInfo() {
        return this.info != null;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean is64Bit() {
        if (hasGInfo()) {
            return this.info.is64Bit();
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isAndroidGame() {
        if (hasGInfo()) {
            return this.info.isAndroidGame();
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isBtGame() {
        if (hasGInfo()) {
            return this.info.isBtGame();
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isCpsGame() {
        if (hasGInfo()) {
            return this.info.isCpsGame();
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isGame() {
        if (hasGInfo()) {
            return this.info.isGame();
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isGameVm() {
        if (hasGInfo()) {
            return this.info.isGameVm();
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isH5Game() {
        if (hasGInfo()) {
            return this.info.isH5Game();
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isH5VmGame() {
        if (hasGInfo()) {
            return this.info.isH5VmGame();
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isHmCloud() {
        if (hasGInfo()) {
            return this.info.isHmCloud();
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isMiniGame() {
        if (hasGInfo()) {
            return this.info.isMiniGame();
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isModGameVm() {
        if (hasGInfo()) {
            return this.info.isModGameVm();
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType, com.join.kotlin.base.impl.GInfo
    public boolean isNetGame() {
        if (hasGInfo()) {
            return this.info.isNetGame();
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isNetGameVm() {
        if (hasGInfo()) {
            return this.info.isNetGameVm();
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isSingleGameVm() {
        if (hasGInfo()) {
            return this.info.isSingleGameVm();
        }
        return false;
    }

    public void setExtData(Object extData) {
        this.extData = extData;
    }

    public void setExtraData(Object extraData) {
        this.extraData = extraData;
    }

    public void setViewType(int viewType) {
        this.viewType = viewType;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:35:0x0133  */
    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    public void update(boolean notify) {
        int status;
        if (this.downState != null) {
            DownloadTask downloadTask = getDownloadTask();
            if (downloadTask == null || (status = downloadTask.getStatus()) == 0) {
                this.downState.setUiMode(0);
            } else if (status == 27) {
                this.downState.setUiMode(1);
                this.downState.setDownMode(0);
                this.downState.setProgress((int) downloadTask.getProgress());
                this.downState.setDownText(buildDownSizeText(downloadTask));
            } else if (status == 48) {
                this.downState.setUiMode(0);
            } else if (status == 2) {
                UtilsMy.U4(downloadTask);
                this.downState.setUiMode(1);
                this.downState.setDownMode(0);
                this.downState.setProgress((int) downloadTask.getProgress());
                this.downState.setDownText(buildDownSizeText(downloadTask));
                this.downState.setStatusText(downloadTask.getSpeed() + "/S");
            } else if (status == 3) {
                UtilsMy.U4(downloadTask);
                this.downState.setUiMode(1);
                this.downState.setDownMode(0);
                this.downState.setProgress((int) downloadTask.getProgress());
                this.downState.setDownText(buildDownSizeText(downloadTask));
                this.downState.setStatusText("暂停中");
            } else if (status == 5) {
                this.downState.setUiMode(0);
            } else if (status == 6) {
                UtilsMy.U4(downloadTask);
                this.downState.setUiMode(1);
                this.downState.setDownMode(0);
                this.downState.setProgress((int) downloadTask.getProgress());
                this.downState.setDownText(buildDownSizeText(downloadTask));
                this.downState.setStatusText("暂停中");
            } else if (status != 7 && status != 42 && status != 43) {
                switch (status) {
                    case 9:
                    case 11:
                        this.downState.setUiMode(0);
                        break;
                    case 10:
                        UtilsMy.U4(downloadTask);
                        this.downState.setUiMode(1);
                        this.downState.setDownMode(0);
                        this.downState.setProgress((int) downloadTask.getProgress());
                        this.downState.setDownText(buildDownSizeText(downloadTask));
                        this.downState.setStatusText("等待中");
                        break;
                    case 12:
                        this.downState.setUiMode(1);
                        this.downState.setDownMode(1);
                        this.downState.setProgress((int) downloadTask.getProgress());
                        this.downState.setDownText(buildDownSizeText(downloadTask));
                        this.downState.setStatusText("解压中..");
                        break;
                    case 13:
                        this.downState.setUiMode(1);
                        this.downState.setDownMode(1);
                        this.downState.setProgress((int) downloadTask.getProgress());
                        this.downState.setDownText(buildDownSizeText(downloadTask));
                        this.downState.setStatusText("点击重新解压");
                        break;
                }
            } else {
                this.downState.setUiMode(0);
            }
            if (notify) {
                this.downState.notifyChange();
            }
        }
    }

    public CommonMultiItemBean(int viewType, Object data) {
        this.viewType = viewType;
        this.data = data;
        if (data instanceof SearchGameBean) {
            this.info = ((SearchGameBean) data).getGame();
            this.downState = new DownState();
        } else if (data instanceof GInfo) {
            this.info = (GInfo) data;
        } else if (data instanceof Downloadable) {
            this.info = ((Downloadable) data).getGInfo();
        }
    }
}
