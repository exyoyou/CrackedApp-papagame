package com.haima.hmcp.beans.report;

import com.haima.hmcp.beans.JoinBattle;
import com.haima.hmcp.beans.ReportInfo;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportGetJoinBattle extends ReportInfo implements Serializable {
    private static final long serialVersionUID = 1;
    public JoinBattle joinBattle;

    public ReportGetJoinBattle(JoinBattle joinBattle) {
        this.joinBattle = joinBattle;
    }

    public String toString() {
        return "ReportGetJoinBattle{joinBattle=" + this.joinBattle + '}';
    }
}
