package com.ta.utdid2.core.persistent;

import android.util.Xml;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes2.dex */
class e {
    public static final HashMap a(InputStream inputStream) throws XmlPullParserException, IOException {
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        xmlPullParserNewPullParser.setInput(inputStream, null);
        return (HashMap) f(xmlPullParserNewPullParser, new String[1]);
    }

    public static final int[] b(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        try {
            int[] iArr = new int[Integer.parseInt(xmlPullParser.getAttributeValue(null, "num"))];
            int eventType = xmlPullParser.getEventType();
            int i10 = 0;
            do {
                if (eventType == 2) {
                    if (!xmlPullParser.getName().equals("item")) {
                        throw new XmlPullParserException("Expected item tag at: " + xmlPullParser.getName());
                    }
                    try {
                        iArr[i10] = Integer.parseInt(xmlPullParser.getAttributeValue(null, HmInputMappingContent.FIELD_VALUE));
                    } catch (NullPointerException unused) {
                        throw new XmlPullParserException("Need value attribute in item");
                    } catch (NumberFormatException unused2) {
                        throw new XmlPullParserException("Not a number in value attribute in item");
                    }
                } else if (eventType == 3) {
                    if (xmlPullParser.getName().equals(str)) {
                        return iArr;
                    }
                    if (!xmlPullParser.getName().equals("item")) {
                        throw new XmlPullParserException("Expected " + str + " end tag at: " + xmlPullParser.getName());
                    }
                    i10++;
                }
                eventType = xmlPullParser.next();
            } while (eventType != 1);
            throw new XmlPullParserException("Document ended before " + str + " end tag");
        } catch (NullPointerException unused3) {
            throw new XmlPullParserException("Need num attribute in byte-array");
        } catch (NumberFormatException unused4) {
            throw new XmlPullParserException("Not a number in num attribute in byte-array");
        }
    }

    public static final ArrayList c(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                arrayList.add(e(xmlPullParser, strArr));
            } else if (eventType == 3) {
                if (xmlPullParser.getName().equals(str)) {
                    return arrayList;
                }
                throw new XmlPullParserException("Expected " + str + " end tag at: " + xmlPullParser.getName());
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        throw new XmlPullParserException("Document ended before " + str + " end tag");
    }

    public static final HashMap d(XmlPullParser xmlPullParser, String str, String[] strArr) throws XmlPullParserException, IOException {
        HashMap map = new HashMap();
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                Object objE = e(xmlPullParser, strArr);
                String str2 = strArr[0];
                if (str2 == null) {
                    throw new XmlPullParserException("Map value without name attribute: " + xmlPullParser.getName());
                }
                map.put(str2, objE);
            } else if (eventType == 3) {
                if (xmlPullParser.getName().equals(str)) {
                    return map;
                }
                throw new XmlPullParserException("Expected " + str + " end tag at: " + xmlPullParser.getName());
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        throw new XmlPullParserException("Document ended before " + str + " end tag");
    }

    private static final Object e(XmlPullParser xmlPullParser, String[] strArr) throws XmlPullParserException, IOException {
        int next;
        Object d10;
        Object objValueOf = null;
        String attributeValue = xmlPullParser.getAttributeValue(null, "name");
        String name = xmlPullParser.getName();
        if (!name.equals("null")) {
            if (name.equals(TypedValues.Custom.S_STRING)) {
                String str = "";
                while (true) {
                    int next2 = xmlPullParser.next();
                    if (next2 == 1) {
                        throw new XmlPullParserException("Unexpected end of document in <string>");
                    }
                    if (next2 == 3) {
                        if (xmlPullParser.getName().equals(TypedValues.Custom.S_STRING)) {
                            strArr[0] = attributeValue;
                            return str;
                        }
                        throw new XmlPullParserException("Unexpected end tag in <string>: " + xmlPullParser.getName());
                    }
                    if (next2 == 4) {
                        str = str + xmlPullParser.getText();
                    } else if (next2 == 2) {
                        throw new XmlPullParserException("Unexpected start tag in <string>: " + xmlPullParser.getName());
                    }
                }
            } else if (name.equals("int")) {
                objValueOf = Integer.valueOf(Integer.parseInt(xmlPullParser.getAttributeValue(null, HmInputMappingContent.FIELD_VALUE)));
            } else if (name.equals(MethodReflectParams.LONG)) {
                objValueOf = Long.valueOf(xmlPullParser.getAttributeValue(null, HmInputMappingContent.FIELD_VALUE));
            } else {
                if (name.equals("float")) {
                    d10 = new Float(xmlPullParser.getAttributeValue(null, HmInputMappingContent.FIELD_VALUE));
                } else if (name.equals(MethodReflectParams.DOUBLE)) {
                    d10 = new Double(xmlPullParser.getAttributeValue(null, HmInputMappingContent.FIELD_VALUE));
                } else {
                    if (!name.equals("boolean")) {
                        if (name.equals("int-array")) {
                            xmlPullParser.next();
                            int[] iArrB = b(xmlPullParser, "int-array", strArr);
                            strArr[0] = attributeValue;
                            return iArrB;
                        }
                        if (name.equals("map")) {
                            xmlPullParser.next();
                            HashMap mapD = d(xmlPullParser, "map", strArr);
                            strArr[0] = attributeValue;
                            return mapD;
                        }
                        if (!name.equals("list")) {
                            throw new XmlPullParserException("Unknown tag: " + name);
                        }
                        xmlPullParser.next();
                        ArrayList arrayListC = c(xmlPullParser, "list", strArr);
                        strArr[0] = attributeValue;
                        return arrayListC;
                    }
                    objValueOf = Boolean.valueOf(xmlPullParser.getAttributeValue(null, HmInputMappingContent.FIELD_VALUE));
                }
                objValueOf = d10;
            }
        }
        do {
            next = xmlPullParser.next();
            if (next == 1) {
                throw new XmlPullParserException("Unexpected end of document in <" + name + SimpleComparison.GREATER_THAN_OPERATION);
            }
            if (next == 3) {
                if (xmlPullParser.getName().equals(name)) {
                    strArr[0] = attributeValue;
                    return objValueOf;
                }
                throw new XmlPullParserException("Unexpected end tag in <" + name + ">: " + xmlPullParser.getName());
            }
            if (next == 4) {
                throw new XmlPullParserException("Unexpected text in <" + name + ">: " + xmlPullParser.getName());
            }
        } while (next != 2);
        throw new XmlPullParserException("Unexpected start tag in <" + name + ">: " + xmlPullParser.getName());
    }

    public static final Object f(XmlPullParser xmlPullParser, String[] strArr) throws XmlPullParserException, IOException {
        int eventType = xmlPullParser.getEventType();
        while (eventType != 2) {
            if (eventType == 3) {
                throw new XmlPullParserException("Unexpected end tag at: " + xmlPullParser.getName());
            }
            if (eventType == 4) {
                throw new XmlPullParserException("Unexpected text: " + xmlPullParser.getText());
            }
            try {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    throw new XmlPullParserException("Unexpected end of document");
                }
            } catch (Exception unused) {
                throw new XmlPullParserException("Unexpected call next(): " + xmlPullParser.getName());
            }
        }
        return e(xmlPullParser, strArr);
    }

    public static final void g(byte[] bArr, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        if (bArr == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "byte-array");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, "num", Integer.toString(bArr.length));
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (byte b10 : bArr) {
            int i10 = b10 >> 4;
            sb2.append(i10 >= 10 ? (i10 + 97) - 10 : i10 + 48);
            int i11 = b10 & 255;
            sb2.append(i11 >= 10 ? (i11 + 97) - 10 : i11 + 48);
        }
        xmlSerializer.text(sb2.toString());
        xmlSerializer.endTag(null, "byte-array");
    }

    public static final void h(int[] iArr, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        if (iArr == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "int-array");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, "num", Integer.toString(iArr.length));
        for (int i10 : iArr) {
            xmlSerializer.startTag(null, "item");
            xmlSerializer.attribute(null, HmInputMappingContent.FIELD_VALUE, Integer.toString(i10));
            xmlSerializer.endTag(null, "item");
        }
        xmlSerializer.endTag(null, "int-array");
    }

    public static final void i(List list, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        if (list == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "list");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            l(list.get(i10), null, xmlSerializer);
        }
        xmlSerializer.endTag(null, "list");
    }

    public static final void j(Map map, OutputStream outputStream) throws XmlPullParserException, IOException {
        a aVar = new a();
        aVar.setOutput(outputStream, "utf-8");
        aVar.startDocument(null, Boolean.TRUE);
        aVar.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        k(map, null, aVar);
        aVar.endDocument();
    }

    public static final void k(Map map, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        if (map == null) {
            xmlSerializer.startTag(null, "null");
            xmlSerializer.endTag(null, "null");
            return;
        }
        xmlSerializer.startTag(null, "map");
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        for (Map.Entry entry : map.entrySet()) {
            l(entry.getValue(), (String) entry.getKey(), xmlSerializer);
        }
        xmlSerializer.endTag(null, "map");
    }

    public static final void l(Object obj, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException {
        String str2;
        if (obj == null) {
            xmlSerializer.startTag(null, "null");
            if (str != null) {
                xmlSerializer.attribute(null, "name", str);
            }
            xmlSerializer.endTag(null, "null");
            return;
        }
        if (obj instanceof String) {
            xmlSerializer.startTag(null, TypedValues.Custom.S_STRING);
            if (str != null) {
                xmlSerializer.attribute(null, "name", str);
            }
            xmlSerializer.text(obj.toString());
            xmlSerializer.endTag(null, TypedValues.Custom.S_STRING);
            return;
        }
        if (obj instanceof Integer) {
            str2 = "int";
        } else if (obj instanceof Long) {
            str2 = MethodReflectParams.LONG;
        } else if (obj instanceof Float) {
            str2 = "float";
        } else if (obj instanceof Double) {
            str2 = MethodReflectParams.DOUBLE;
        } else {
            if (!(obj instanceof Boolean)) {
                if (obj instanceof byte[]) {
                    g((byte[]) obj, str, xmlSerializer);
                    return;
                }
                if (obj instanceof int[]) {
                    h((int[]) obj, str, xmlSerializer);
                    return;
                }
                if (obj instanceof Map) {
                    k((Map) obj, str, xmlSerializer);
                    return;
                }
                if (obj instanceof List) {
                    i((List) obj, str, xmlSerializer);
                    return;
                }
                if (!(obj instanceof CharSequence)) {
                    throw new RuntimeException("writeValueXml: unable to write value " + obj);
                }
                xmlSerializer.startTag(null, TypedValues.Custom.S_STRING);
                if (str != null) {
                    xmlSerializer.attribute(null, "name", str);
                }
                xmlSerializer.text(obj.toString());
                xmlSerializer.endTag(null, TypedValues.Custom.S_STRING);
                return;
            }
            str2 = "boolean";
        }
        xmlSerializer.startTag(null, str2);
        if (str != null) {
            xmlSerializer.attribute(null, "name", str);
        }
        xmlSerializer.attribute(null, HmInputMappingContent.FIELD_VALUE, obj.toString());
        xmlSerializer.endTag(null, str2);
    }
}
