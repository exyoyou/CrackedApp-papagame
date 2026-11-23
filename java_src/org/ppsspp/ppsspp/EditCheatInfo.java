package org.ppsspp.ppsspp;

import java.util.Objects;

/* JADX INFO: loaded from: classes10.dex */
public class EditCheatInfo {
    public boolean GBA_IS_GS;
    public String cheatName;
    public String cheatValue;
    public boolean isEnable;

    public EditCheatInfo(boolean z10, boolean z11, String str, String str2) {
        this.cheatName = str;
        this.cheatValue = str2;
        this.isEnable = z10;
        this.GBA_IS_GS = z11;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof EditCheatInfo)) {
            return false;
        }
        EditCheatInfo editCheatInfo = (EditCheatInfo) obj;
        return this.GBA_IS_GS == editCheatInfo.GBA_IS_GS && Objects.equals(this.cheatName, editCheatInfo.cheatName) && Objects.equals(this.cheatValue, editCheatInfo.cheatValue);
    }

    public String getCheatName() {
        return this.cheatName;
    }

    public String getCheatValue() {
        return this.cheatValue;
    }

    public int hashCode() {
        return Objects.hash(this.cheatName, this.cheatValue, Boolean.valueOf(this.GBA_IS_GS));
    }

    public boolean isEnable() {
        return this.isEnable;
    }

    public boolean isGBA_IS_GS() {
        return this.GBA_IS_GS;
    }

    public void setCheatName(String str) {
        this.cheatName = str;
    }

    public void setCheatValue(String str) {
        this.cheatValue = str;
    }

    public void setEnable(boolean z10) {
        this.isEnable = z10;
    }

    public void setGBA_IS_GS(boolean z10) {
        this.GBA_IS_GS = z10;
    }
}
