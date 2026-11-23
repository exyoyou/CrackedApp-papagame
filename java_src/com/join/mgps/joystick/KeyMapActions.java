package com.join.mgps.joystick;

import android.content.Context;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.joystick.map.KeyMap;
import com.papa.controller.core.ControllerManager;
import com.papa.controller.core.d;
import com.papa.sim.statistic.JoyStickConfig;
import com.papa.sim.statistic.t;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class KeyMapActions {
    private static void fillConnectedGamepadInfo(Context ctx, JoyStickConfig joyStickConfig) {
        List<ControllerManager.c> listQ = d.r(ctx).q();
        String str = "";
        String str2 = str;
        if (listQ != null) {
            int i10 = 0;
            while (i10 < listQ.size()) {
                String str3 = str + listQ.get(i10).d() + ";";
                str2 = str2 + listQ.get(i10).a().replace(":", "_") + ";";
                i10++;
                str = str3;
            }
        }
        if (!str.equals("")) {
            str.substring(0, str.length() - 1);
        }
        if (!str2.equals("")) {
            str2.substring(0, str.length() - 1);
        }
        joyStickConfig.setGamepad_name(str);
        joyStickConfig.setGamepad_mac(str2);
    }

    public static void saveStat(Context context, KeyMap.EmuMap emuMap, String path) {
        int i10;
        if (emuMap == null && context == null) {
            return;
        }
        if (emuMap == KeyMap.EmuMap.FBA) {
            i10 = 31;
        } else if (emuMap == KeyMap.EmuMap.GBA) {
            i10 = 33;
        } else if (emuMap == KeyMap.EmuMap.SFC) {
            i10 = 43;
        } else if (emuMap == KeyMap.EmuMap.PSP) {
            i10 = 34;
        } else if (emuMap == KeyMap.EmuMap.FC) {
            i10 = 35;
        } else if (emuMap == KeyMap.EmuMap.MD) {
            i10 = 51;
        } else if (emuMap == KeyMap.EmuMap.PS) {
            i10 = 53;
        } else if (emuMap == KeyMap.EmuMap.WSC) {
            i10 = 54;
        } else if (emuMap == KeyMap.EmuMap.GBC) {
            i10 = 56;
        } else if (emuMap == KeyMap.EmuMap.DC) {
            i10 = 60;
        } else {
            i10 = emuMap == KeyMap.EmuMap.N64 ? 57 : -1;
        }
        t.l(context).a0(AccountUtil_.getInstance_(context).getUid(), AccountUtil_.getInstance_(context).isTourist(), "", "", 0);
        JoyStickConfig joyStickConfig = new JoyStickConfig();
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        if (accountData != null) {
            joyStickConfig.setUid(accountData.getUid());
        }
        joyStickConfig.setType(i10);
        joyStickConfig.setFile(path);
        fillConnectedGamepadInfo(context, joyStickConfig);
        joyStickConfig.setUpdate_time(new Date().getTime());
        t.l(context).x1(JsonMapper.nonDefaultMapper().toJson(joyStickConfig), AccountUtil_.getInstance_(context).getUid());
    }
}
