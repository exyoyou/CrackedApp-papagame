package org.ppsspp.ppsspp;

import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes10.dex */
public class CheatInfo {
    public String cheatName;
    public int i_default;
    public int nVipLevel;
    public int off;
    public ArrayList<CheatInfo> option = new ArrayList<>();
    public int optionNum = 2;

    public CheatInfo(int i10, int i11, String str) {
        this.cheatName = "";
        this.i_default = 0;
        this.nVipLevel = 0;
        this.cheatName = str;
        this.i_default = i11;
        this.nVipLevel = i10;
    }

    public boolean equals(Object obj) {
        if (obj instanceof CheatInfo) {
            return Objects.equals(getCheatName(), ((CheatInfo) obj).getCheatName());
        }
        return false;
    }

    public String getCheatName() {
        return this.cheatName;
    }

    public int getI_default() {
        return this.i_default;
    }

    public int getOff() {
        return this.off;
    }

    public ArrayList<CheatInfo> getOption() {
        return this.option;
    }

    public int getOptionNum() {
        return this.optionNum;
    }

    public int getnVipLevel() {
        return this.nVipLevel;
    }

    public int hashCode() {
        return Objects.hash(getCheatName());
    }

    public void setCheatName(String str) {
        this.cheatName = str;
    }

    public void setI_default(int i10) {
        this.i_default = i10;
    }

    public void setOff(int i10) {
        this.off = i10;
    }

    public void setOption(ArrayList<CheatInfo> arrayList) {
        this.option = arrayList;
    }

    public void setOptionNum(int i10) {
        this.optionNum = i10;
    }

    public void setnVipLevel(int i10) {
        this.nVipLevel = i10;
    }
}
