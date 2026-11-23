package com.papa91.arc.view;

import com.papa91.arc.bean.GateBean;
import com.papa91.arc.bean.SkillConfigBean;
import com.papa91.arc.bean.SkillTableDataBean;
import com.papa91.arc.bean.SpBindsDataBean;
import com.papa91.arc.bean.TypeBean;
import com.papa91.arc.bean.VipBean;
import java.util.List;
import org.ppsspp.ppsspp.CheatInfo;
import org.ppsspp.ppsspp.EditCheatInfo;

/* JADX INFO: loaded from: classes2.dex */
public interface IEmulator {
    void addEditCheatInfo(EditCheatInfo editCheatInfo);

    void cheatInfoEnable(int i10, int i11);

    boolean checkCheatCodeInfo(String str, boolean z10);

    void deleteEditCheatInfo(int i10);

    void enableEidtCheat(int i10, int i11);

    boolean getAutoSlotStatus();

    int getAutoStateMax();

    int getAutoStateTimeCount();

    int getAutoStateTimeGap();

    List<CheatInfo> getCheatListData();

    int getCheatLoaded();

    int getCurrentChar();

    String getCustomCheatTip(boolean z10);

    List<EditCheatInfo> getEditCheatListData();

    String getGameId();

    List<GateBean> getGateData();

    List<TypeBean> getMenuTypes(int i10);

    String getModSubfix();

    String getPlugVerCode();

    SkillConfigBean getSkillConfigData();

    SkillTableDataBean getSkillTableData();

    int[] getSpBindImages(int i10);

    SpBindsDataBean getSpBindsData();

    String getToken();

    String getUserId();

    int getVip();

    List<VipBean> getVipData();

    void goLogin();

    void goSlotShop();

    void goVipShop(int i10, boolean z10);

    boolean isNetAvailable();

    boolean isSPVisible();

    void loadAdVideo();

    void loadGateStage(int i10);

    void loadSlotState(String str);

    void modifyEditCheatInfo(int i10, EditCheatInfo editCheatInfo);

    void pauseGame();

    void resumeGame();

    void retryGetGoldFingerConfig();

    String romPath();

    void saveBindsFileData();

    void saveSlotState(String str);

    void screenMode(int i10);

    void setAutoSlotStatus(int i10);

    void setSPBindData(int i10, int i11, int i12);

    void setSPMenuVisible(boolean z10);

    void showAdVideo();

    boolean showGGCodeButton();

    void showVip(String... strArr);

    String ugcPath();
}
