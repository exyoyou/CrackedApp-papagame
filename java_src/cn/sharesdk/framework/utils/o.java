package cn.sharesdk.framework.utils;

import android.text.TextUtils;
import android.util.Xml;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.util.HashMap;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes7.dex */
public class o {

    private static class a extends DefaultHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private HashMap<String, Object> f2739a = new HashMap<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private HashMap<String, Object> f2740b;

        public HashMap<String, Object> a() {
            return this.f2739a;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i10, int i11) {
            HashMap<String, Object> map;
            String strTrim = String.valueOf(cArr, i10, i11).trim();
            if (TextUtils.isEmpty(strTrim) || (map = this.f2740b) == null) {
                return;
            }
            map.put(HmInputMappingContent.FIELD_VALUE, strTrim);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            this.f2740b = null;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            if (this.f2740b != null) {
                HashMap<String, Object> map = new HashMap<>();
                this.f2740b.put(str2, map);
                this.f2740b = map;
            } else {
                HashMap<String, Object> map2 = new HashMap<>();
                this.f2740b = map2;
                this.f2739a.put(str2, map2);
            }
            int length = attributes.getLength();
            for (int i10 = 0; i10 < length; i10++) {
                this.f2740b.put(attributes.getLocalName(i10), attributes.getValue(i10));
            }
        }
    }

    public HashMap<String, Object> a(String str) throws Throwable {
        a aVar = new a();
        Xml.parse(str, aVar);
        return aVar.a();
    }
}
