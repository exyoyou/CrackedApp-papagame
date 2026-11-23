package com.papa91.arc.dialog;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import com.papa91.arc.bean.GateBean;
import com.papa91.arc.bean.SkillConfigBean;
import com.papa91.arc.bean.SkillTableDataBean;
import com.papa91.arc.bean.SpBindsDataBean;
import com.papa91.arc.bean.TypeBean;
import com.papa91.arc.bean.VipBean;
import com.papa91.arc.view.BaseDialog;
import com.papa91.arc.view.IEmulator;
import java.util.ArrayList;
import java.util.List;
import org.ppsspp.ppsspp.CheatInfo;
import org.ppsspp.ppsspp.EditCheatInfo;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SettingDialog extends BaseDialog implements View.OnClickListener, IEmulator {
    protected String appContent;
    protected IEmulator emulatorListener;

    public SettingDialog(Context context) {
        super(context);
        this.appContent = "http://anv3cjapi.5fun.com";
        setContentView(getLayoutId());
        setBackgroundDimAmount(1.0f);
    }

    @Override // com.papa91.arc.view.IEmulator
    public void addEditCheatInfo(EditCheatInfo editCheatInfo) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.addEditCheatInfo(editCheatInfo);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void cheatInfoEnable(int i10, int i11) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.cheatInfoEnable(i10, i11);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean checkCheatCodeInfo(String str, boolean z10) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.checkCheatCodeInfo(str, z10);
        }
        return false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void deleteEditCheatInfo(int i10) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.deleteEditCheatInfo(i10);
        }
    }

    @Override // com.papa91.arc.view.BaseDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        resumeGame();
    }

    public void dismissOnly() {
        super.dismiss();
    }

    @Override // com.papa91.arc.view.IEmulator
    public void enableEidtCheat(int i10, int i11) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.enableEidtCheat(i10, i11);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean getAutoSlotStatus() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getAutoSlotStatus();
        }
        return false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getAutoStateMax() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getAutoStateMax();
        }
        return 10;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getAutoStateTimeCount() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getAutoStateTimeCount();
        }
        return 0;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getAutoStateTimeGap() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getAutoStateTimeGap();
        }
        return 20;
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<CheatInfo> getCheatListData() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getCheatListData();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getCheatLoaded() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getCheatLoaded();
        }
        return 0;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getCurrentChar() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getCurrentChar();
        }
        return 0;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getCustomCheatTip(boolean z10) {
        IEmulator iEmulator = this.emulatorListener;
        return iEmulator != null ? iEmulator.getCustomCheatTip(z10) : "";
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<EditCheatInfo> getEditCheatListData() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getEditCheatListData();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getGameId() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getGameId();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<GateBean> getGateData() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getGateData();
        }
        return null;
    }

    public abstract int getLayoutId();

    @Override // com.papa91.arc.view.IEmulator
    public List<TypeBean> getMenuTypes(int i10) {
        IEmulator iEmulator = this.emulatorListener;
        return iEmulator != null ? iEmulator.getMenuTypes(i10) : new ArrayList();
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getModSubfix() {
        IEmulator iEmulator = this.emulatorListener;
        return iEmulator != null ? iEmulator.getModSubfix() : "";
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getPlugVerCode() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getPlugVerCode();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public SkillConfigBean getSkillConfigData() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getSkillConfigData();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public SkillTableDataBean getSkillTableData() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getSkillTableData();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int[] getSpBindImages(int i10) {
        IEmulator iEmulator = this.emulatorListener;
        return iEmulator != null ? iEmulator.getSpBindImages(i10) : new int[0];
    }

    @Override // com.papa91.arc.view.IEmulator
    public SpBindsDataBean getSpBindsData() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getSpBindsData();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getToken() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getToken();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getUserId() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getUserId();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getVip() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getVip();
        }
        return 0;
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<VipBean> getVipData() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.getVipData();
        }
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void goLogin() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.goLogin();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void goSlotShop() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.goSlotShop();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void goVipShop(int i10, boolean z10) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.goVipShop(i10, z10);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean isNetAvailable() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.isNetAvailable();
        }
        return false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean isSPVisible() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.isSPVisible();
        }
        return false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void loadAdVideo() {
    }

    @Override // com.papa91.arc.view.IEmulator
    public void loadGateStage(int i10) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.loadGateStage(i10);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void loadSlotState(String str) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.loadSlotState(str);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void modifyEditCheatInfo(int i10, EditCheatInfo editCheatInfo) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.modifyEditCheatInfo(i10, editCheatInfo);
        }
    }

    public boolean needScreenAdapter() {
        return true;
    }

    public void onClick(View view) {
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    public void onVipChanged() {
    }

    public void pauseGame() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.pauseGame();
        }
    }

    public void resumeGame() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.resumeGame();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void retryGetGoldFingerConfig() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.retryGetGoldFingerConfig();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public String romPath() {
        IEmulator iEmulator = this.emulatorListener;
        return iEmulator != null ? iEmulator.romPath() : "";
    }

    @Override // com.papa91.arc.view.IEmulator
    public void saveBindsFileData() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.saveBindsFileData();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void saveSlotState(String str) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.saveSlotState(str);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void screenMode(int i10) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.screenMode(i10);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void setAutoSlotStatus(int i10) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.setAutoSlotStatus(i10);
        }
    }

    public void setOnEmulatorListener(IEmulator iEmulator) {
        this.emulatorListener = iEmulator;
    }

    public void setOnListener(View... viewArr) {
        if (viewArr == null) {
            return;
        }
        for (View view : viewArr) {
            view.setOnClickListener(this);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void setSPBindData(int i10, int i11, int i12) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.setSPBindData(i10, i11, i12);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void setSPMenuVisible(boolean z10) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.setSPMenuVisible(z10);
        }
    }

    public void setappContentUrl(String str) {
        this.appContent = str;
    }

    @Override // com.papa91.arc.view.BaseDialog, android.app.Dialog
    public void show() {
        pauseGame();
        super.show();
    }

    @Override // com.papa91.arc.view.IEmulator
    public void showAdVideo() {
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean showGGCodeButton() {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            return iEmulator.showGGCodeButton();
        }
        return false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void showVip(String... strArr) {
        IEmulator iEmulator = this.emulatorListener;
        if (iEmulator != null) {
            iEmulator.showVip(strArr);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public String ugcPath() {
        IEmulator iEmulator = this.emulatorListener;
        return iEmulator != null ? iEmulator.ugcPath() : "";
    }

    public SettingDialog(Context context, int i10) {
        super(context, i10);
        this.appContent = "http://anv3cjapi.5fun.com";
        setContentView(getLayoutId());
        setBackgroundDimAmount(1.0f);
    }
}
