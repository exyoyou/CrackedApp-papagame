package org.androidannotations.api.sharedpreferences;

import android.util.Xml;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f95038a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f95039b = "AA_string";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f95040c = "AA_set";

    private l() {
    }

    public static Set<String> a(String str) {
        TreeSet treeSet = new TreeSet();
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        try {
            xmlPullParserNewPullParser.setInput(new StringReader(str));
            xmlPullParserNewPullParser.next();
            xmlPullParserNewPullParser.require(2, "", f95040c);
            while (xmlPullParserNewPullParser.next() != 3) {
                xmlPullParserNewPullParser.require(2, "", f95039b);
                xmlPullParserNewPullParser.next();
                xmlPullParserNewPullParser.require(4, null, null);
                treeSet.add(xmlPullParserNewPullParser.getText());
                xmlPullParserNewPullParser.next();
                xmlPullParserNewPullParser.require(3, null, f95039b);
            }
            return treeSet;
        } catch (IOException | XmlPullParserException unused) {
            return null;
        }
    }

    public static String b(Set<String> set) {
        if (set == null) {
            set = Collections.emptySet();
        }
        StringWriter stringWriter = new StringWriter();
        XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
        try {
            xmlSerializerNewSerializer.setOutput(stringWriter);
            xmlSerializerNewSerializer.startTag("", f95040c);
            Iterator<String> it2 = set.iterator();
            while (it2.hasNext()) {
                xmlSerializerNewSerializer.startTag("", f95039b).text(it2.next()).endTag("", f95039b);
            }
            xmlSerializerNewSerializer.endTag("", f95040c).endDocument();
        } catch (IOException | IllegalArgumentException | IllegalStateException unused) {
        }
        return stringWriter.toString();
    }
}
