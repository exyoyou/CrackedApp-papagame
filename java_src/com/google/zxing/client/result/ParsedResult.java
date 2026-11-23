package com.google.zxing.client.result;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ParsedResult {
    private final ParsedResultType type;

    protected ParsedResult(ParsedResultType parsedResultType) {
        this.type = parsedResultType;
    }

    public static void maybeAppend(String str, StringBuilder sb2) {
        if (str == null || str.length() <= 0) {
            return;
        }
        if (sb2.length() > 0) {
            sb2.append('\n');
        }
        sb2.append(str);
    }

    public abstract String getDisplayResult();

    public ParsedResultType getType() {
        return this.type;
    }

    public String toString() {
        return getDisplayResult();
    }

    public static void maybeAppend(String[] strArr, StringBuilder sb2) {
        if (strArr != null) {
            for (String str : strArr) {
                if (str != null && str.length() > 0) {
                    if (sb2.length() > 0) {
                        sb2.append('\n');
                    }
                    sb2.append(str);
                }
            }
        }
    }
}
