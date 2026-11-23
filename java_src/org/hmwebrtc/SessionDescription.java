package org.hmwebrtc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public class SessionDescription {
    public String description;
    final String kExternBeginFlag = "a=haima_extern_begin";
    final String kExternEndFlag = "a=haima_extern_end";
    public String modifyDescription;
    public final Type type;

    public static class Attribute {
        private static final String ATTR_DEVICE_DEBUG = "device_debug";
        private static final String ATTR_DEVICE_LIBVERSION = "device_version";
        private static final String ATTR_DEVICE_MODEL = "device_model";
        private static final String ATTR_LIBVERSION = "lib_version";
        private Map<String, String> attrList = new HashMap();

        public String GetAttribute(String str) {
            if (this.attrList.containsKey(str)) {
                return this.attrList.get(str);
            }
            return null;
        }

        public String GetDebugInfo() {
            return GetAttribute(ATTR_DEVICE_DEBUG);
        }

        public String GetDeviceModel() {
            return GetAttribute("device_model");
        }

        public String GetDeviceVersion() {
            return GetAttribute(ATTR_DEVICE_LIBVERSION);
        }

        public String GetLibVersion() {
            return GetAttribute(ATTR_LIBVERSION);
        }

        public void SetAttribute(String str, String str2) {
            if (str2 == null) {
                this.attrList.remove(str);
            } else {
                this.attrList.put(str, str2);
            }
        }

        public void SetDebugInfo(String str) {
            SetAttribute(ATTR_DEVICE_DEBUG, str);
        }

        public void SetDeviceModel(String str) {
            SetAttribute("device_model", str);
        }

        public void SetDeviceVersion(String str) {
            SetAttribute(ATTR_DEVICE_LIBVERSION, str);
        }

        public void SetLibVersion(String str) {
            SetAttribute(ATTR_LIBVERSION, str);
        }
    }

    public enum Type {
        OFFER,
        PRANSWER,
        ANSWER,
        ROLLBACK;

        public String canonicalForm() {
            return name().toLowerCase(Locale.US);
        }
    }

    @CalledByNative
    public SessionDescription(Type type, String str) {
        this.type = type;
        this.description = str;
    }

    private static String joinString(Iterable<? extends CharSequence> iterable, String str, boolean z10) {
        Iterator<? extends CharSequence> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(it2.next());
        while (it2.hasNext()) {
            sb2.append(str);
            sb2.append(it2.next());
        }
        if (z10) {
            sb2.append(str);
        }
        return sb2.toString();
    }

    public Attribute Deserialize() {
        String[] strArrSplit = this.description.split("\r\n");
        Attribute attribute = new Attribute();
        boolean z10 = false;
        for (String str : strArrSplit) {
            if (!str.equalsIgnoreCase("a=haima_extern_begin")) {
                if (str.equalsIgnoreCase("a=haima_extern_end")) {
                    break;
                }
                if (!z10) {
                    continue;
                } else {
                    if (!str.startsWith("a=")) {
                        break;
                    }
                    String[] strArrSplit2 = str.substring(2).split(":");
                    if (strArrSplit2.length > 1) {
                        int length = strArrSplit2[0].length() + 2 + 1;
                        if (length < str.length()) {
                            attribute.SetAttribute(strArrSplit2[0], str.substring(length));
                        } else {
                            attribute.SetAttribute(strArrSplit2[0], "Nul");
                        }
                    }
                }
            } else {
                z10 = true;
            }
        }
        return attribute;
    }

    public void Serialize(Attribute attribute) {
        String[] strArrSplit = this.description.split("\r\n");
        ArrayList arrayList = new ArrayList();
        for (String str : strArrSplit) {
            arrayList.add(str);
            if (str.equalsIgnoreCase("a=haima_extern_begin")) {
                for (Map.Entry entry : attribute.attrList.entrySet()) {
                    arrayList.add("a=" + ((String) entry.getKey()) + ":" + ((String) entry.getValue()));
                }
            }
        }
        String strJoinString = joinString(arrayList, "\r\n", true);
        this.modifyDescription = strJoinString;
        this.description = strJoinString;
    }

    @CalledByNative
    String getDescription() {
        String str = this.modifyDescription;
        return str != null ? str : this.description;
    }

    @CalledByNative
    String getTypeInCanonicalForm() {
        return this.type.canonicalForm();
    }
}
