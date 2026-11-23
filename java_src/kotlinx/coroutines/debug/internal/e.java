package kotlinx.coroutines.debug.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    /* JADX INFO: Access modifiers changed from: private */
    public static final String b(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('\"');
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt == '\"') {
                sb2.append("\\\"");
            } else if (cCharAt == '\\') {
                sb2.append("\\\\");
            } else if (cCharAt == '\b') {
                sb2.append("\\b");
            } else if (cCharAt == '\n') {
                sb2.append("\\n");
            } else if (cCharAt == '\r') {
                sb2.append("\\r");
            } else if (cCharAt == '\t') {
                sb2.append("\\t");
            } else {
                sb2.append(cCharAt);
            }
        }
        sb2.append('\"');
        String string = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
