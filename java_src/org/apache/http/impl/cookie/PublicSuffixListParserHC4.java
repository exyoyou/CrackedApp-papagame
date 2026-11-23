package org.apache.http.impl.cookie;

import com.join.mgps.Util.o0;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import org.apache.http.annotation.Immutable;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class PublicSuffixListParserHC4 {
    private static final int MAX_LINE_LEN = 256;
    private final PublicSuffixFilterHC4 filter;

    PublicSuffixListParserHC4(PublicSuffixFilterHC4 publicSuffixFilterHC4) {
        this.filter = publicSuffixFilterHC4;
    }

    private boolean readLine(Reader reader, StringBuilder sb2) throws IOException {
        char c10;
        sb2.setLength(0);
        boolean z10 = false;
        do {
            int i10 = reader.read();
            if (i10 == -1 || (c10 = (char) i10) == '\n') {
                return i10 != -1;
            }
            if (Character.isWhitespace(c10)) {
                z10 = true;
            }
            if (!z10) {
                sb2.append(c10);
            }
        } while (sb2.length() <= 256);
        throw new IOException("Line too long");
    }

    public void parse(Reader reader) throws IOException {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(reader);
        StringBuilder sb2 = new StringBuilder(256);
        boolean line = true;
        while (line) {
            line = readLine(bufferedReader, sb2);
            String string = sb2.toString();
            if (string.length() != 0 && !string.startsWith("//")) {
                if (string.startsWith(o0.f49827a)) {
                    string = string.substring(1);
                }
                boolean zStartsWith = string.startsWith("!");
                if (zStartsWith) {
                    string = string.substring(1);
                }
                if (zStartsWith) {
                    arrayList2.add(string);
                } else {
                    arrayList.add(string);
                }
            }
        }
        this.filter.setPublicSuffixes(arrayList);
        this.filter.setExceptions(arrayList2);
    }
}
