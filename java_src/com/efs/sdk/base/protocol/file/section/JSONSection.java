package com.efs.sdk.base.protocol.file.section;

import com.haima.hmcp.countly.CountlyDbPolicy;

/* JADX INFO: loaded from: classes9.dex */
public class JSONSection extends AbsSection {
    private String body;

    public JSONSection(String str) {
        super(CountlyDbPolicy.FIELD_COUNTLY_JSON);
        this.name = str;
    }

    @Override // com.efs.sdk.base.protocol.file.section.AbsSection
    public String changeToStr() {
        return getDeclarationLine() + "\n" + this.body + "\n";
    }

    public void setBody(String str) {
        this.body = str;
    }
}
