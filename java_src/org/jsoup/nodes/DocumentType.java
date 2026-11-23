package org.jsoup.nodes;

import kotlin.text.Typography;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import x.a;

/* JADX INFO: loaded from: classes10.dex */
public class DocumentType extends Node {
    public DocumentType(String str, String str2, String str3, String str4) {
        super(str4);
        Validate.notEmpty(str);
        attr("name", str);
        attr("publicId", str2);
        attr("systemId", str3);
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#doctype";
    }

    @Override // org.jsoup.nodes.Node
    void outerHtmlHead(StringBuilder sb2, int i10, Document.OutputSettings outputSettings) {
        sb2.append("<!DOCTYPE ");
        sb2.append(attr("name"));
        if (!StringUtil.isBlank(attr("publicId"))) {
            sb2.append(" PUBLIC \"");
            sb2.append(attr("publicId"));
            sb2.append(a.f97579g);
        }
        if (!StringUtil.isBlank(attr("systemId"))) {
            sb2.append(" \"");
            sb2.append(attr("systemId"));
            sb2.append(a.f97579g);
        }
        sb2.append(Typography.greater);
    }

    @Override // org.jsoup.nodes.Node
    void outerHtmlTail(StringBuilder sb2, int i10, Document.OutputSettings outputSettings) {
    }
}
