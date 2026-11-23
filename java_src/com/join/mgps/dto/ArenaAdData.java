package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaAdData {
    private boolean c_has_not_read;
    private boolean l_has_not_read;
    private List<ArenaPopupInfoBean> popup_info;

    public List<ArenaPopupInfoBean> getPopup_info() {
        return this.popup_info;
    }

    public boolean isC_has_not_read() {
        return this.c_has_not_read;
    }

    public boolean isL_has_not_read() {
        return this.l_has_not_read;
    }

    public void setC_has_not_read(boolean c_has_not_read) {
        this.c_has_not_read = c_has_not_read;
    }

    public void setL_has_not_read(boolean l_has_not_read) {
        this.l_has_not_read = l_has_not_read;
    }

    public void setPopup_info(List<ArenaPopupInfoBean> popup_info) {
        this.popup_info = popup_info;
    }
}
