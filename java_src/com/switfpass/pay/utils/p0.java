package com.switfpass.pay.utils;

import android.util.Xml;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes2.dex */
public class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f82830a = "Problem parsing API response";

    public static HashMap a(String str) throws Exception {
        HashMap map = new HashMap();
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        try {
            xmlPullParserNewPullParser.setInput(new StringReader(str));
            while (true) {
                String strTrim = null;
                while (true) {
                    int next = xmlPullParserNewPullParser.next();
                    if (next == 1) {
                        return map;
                    }
                    if (next != 2) {
                        if (next != 3) {
                            if (next == 4 && strTrim != null) {
                                map.put(strTrim, xmlPullParserNewPullParser.getText().trim());
                            }
                        }
                    } else if (!xmlPullParserNewPullParser.getName().equals("root")) {
                        strTrim = xmlPullParserNewPullParser.getName().trim();
                    }
                }
            }
        } catch (Exception e10) {
            final String str2 = f82830a;
            throw new Exception(str2, e10) { // from class: com.switfpass.pay.utils.XmlUtils$ParseException
            };
        }
    }

    public static String b(Map map) {
        StringBuilder sb2 = new StringBuilder();
        ArrayList<String> arrayList = new ArrayList(map.keySet());
        Collections.sort(arrayList);
        sb2.append("<xml>");
        for (String str : arrayList) {
            sb2.append(SimpleComparison.LESS_THAN_OPERATION);
            sb2.append(str);
            sb2.append(SimpleComparison.GREATER_THAN_OPERATION);
            sb2.append("<![CDATA[");
            sb2.append((String) map.get(str));
            sb2.append("]]>");
            sb2.append("</");
            sb2.append(str);
            sb2.append(">\n");
        }
        sb2.append("</xml>");
        return sb2.toString();
    }
}
