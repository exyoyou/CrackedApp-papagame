package com.haima.hmcp.beans;

import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class ExtraConfigureResult extends BaseResult {
    public HashMap<String, String> secondaryConfig;

    @Override // com.haima.hmcp.beans.BaseResult
    public String toString() {
        return "ExtraConfigureResult{secondaryConfig=" + this.secondaryConfig + '}';
    }
}
