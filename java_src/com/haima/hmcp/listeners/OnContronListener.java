package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.ControlInfo;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface OnContronListener {
    void controlDistribute(boolean z10, List<ControlInfo> list, String str);

    void controlQuery(boolean z10, List<ControlInfo> list, String str);

    void contronLost();

    void contronResult(boolean z10, String str);

    void pinCodeResult(boolean z10, String str, String str2, String str3);
}
