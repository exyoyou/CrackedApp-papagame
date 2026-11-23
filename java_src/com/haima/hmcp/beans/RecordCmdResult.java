package com.haima.hmcp.beans;

import io.netty.util.internal.StringUtil;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class RecordCmdResult {
    public static final int RECORD_ERR = 3;
    public static final int RECORD_PREPARED = 0;
    public static final int RECORD_START = 1;
    public static final int RECORD_STOP = 2;
    private int cmd = -1;
    private String msg;
    private List<Integer> parm;

    public int getCmd() {
        return this.cmd;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getParameter() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('[');
        for (int i10 = 0; i10 < this.parm.size(); i10++) {
            stringBuffer.append(this.parm.get(i10).intValue());
            if (i10 < this.parm.size() - 1) {
                stringBuffer.append(StringUtil.COMMA);
            }
        }
        stringBuffer.append(']');
        return stringBuffer.toString();
    }

    public List<Integer> getParm() {
        return this.parm;
    }

    public void setCmd(int i10) {
        this.cmd = i10;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setParm(List<Integer> list) {
        this.parm = list;
    }
}
