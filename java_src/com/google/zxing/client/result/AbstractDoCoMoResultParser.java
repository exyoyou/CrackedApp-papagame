package com.google.zxing.client.result;

/* JADX INFO: loaded from: classes5.dex */
abstract class AbstractDoCoMoResultParser extends ResultParser {
    AbstractDoCoMoResultParser() {
    }

    static String[] matchDoCoMoPrefixedField(String str, String str2, boolean z10) {
        return ResultParser.matchPrefixedField(str, str2, ';', z10);
    }

    static String matchSingleDoCoMoPrefixedField(String str, String str2, boolean z10) {
        return ResultParser.matchSinglePrefixedField(str, str2, ';', z10);
    }
}
