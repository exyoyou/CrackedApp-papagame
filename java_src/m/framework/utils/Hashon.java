package m.framework.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Hashon {
    private ArrayList<?> arrayToList(Object obj) {
        int i10 = 0;
        if (obj instanceof byte[]) {
            ArrayList<?> arrayList = new ArrayList<>();
            byte[] bArr = (byte[]) obj;
            int length = bArr.length;
            while (i10 < length) {
                arrayList.add(Byte.valueOf(bArr[i10]));
                i10++;
            }
            return arrayList;
        }
        if (obj instanceof short[]) {
            ArrayList<?> arrayList2 = new ArrayList<>();
            short[] sArr = (short[]) obj;
            int length2 = sArr.length;
            while (i10 < length2) {
                arrayList2.add(Short.valueOf(sArr[i10]));
                i10++;
            }
            return arrayList2;
        }
        if (obj instanceof int[]) {
            ArrayList<?> arrayList3 = new ArrayList<>();
            int[] iArr = (int[]) obj;
            int length3 = iArr.length;
            while (i10 < length3) {
                arrayList3.add(Integer.valueOf(iArr[i10]));
                i10++;
            }
            return arrayList3;
        }
        if (obj instanceof long[]) {
            ArrayList<?> arrayList4 = new ArrayList<>();
            long[] jArr = (long[]) obj;
            int length4 = jArr.length;
            while (i10 < length4) {
                arrayList4.add(Long.valueOf(jArr[i10]));
                i10++;
            }
            return arrayList4;
        }
        if (obj instanceof float[]) {
            ArrayList<?> arrayList5 = new ArrayList<>();
            float[] fArr = (float[]) obj;
            int length5 = fArr.length;
            while (i10 < length5) {
                arrayList5.add(Float.valueOf(fArr[i10]));
                i10++;
            }
            return arrayList5;
        }
        if (obj instanceof double[]) {
            ArrayList<?> arrayList6 = new ArrayList<>();
            double[] dArr = (double[]) obj;
            int length6 = dArr.length;
            while (i10 < length6) {
                arrayList6.add(Double.valueOf(dArr[i10]));
                i10++;
            }
            return arrayList6;
        }
        if (obj instanceof char[]) {
            ArrayList<?> arrayList7 = new ArrayList<>();
            char[] cArr = (char[]) obj;
            int length7 = cArr.length;
            while (i10 < length7) {
                arrayList7.add(Character.valueOf(cArr[i10]));
                i10++;
            }
            return arrayList7;
        }
        if (obj instanceof boolean[]) {
            ArrayList<?> arrayList8 = new ArrayList<>();
            boolean[] zArr = (boolean[]) obj;
            int length8 = zArr.length;
            while (i10 < length8) {
                arrayList8.add(Boolean.valueOf(zArr[i10]));
                i10++;
            }
            return arrayList8;
        }
        if (!(obj instanceof String[])) {
            return null;
        }
        ArrayList<?> arrayList9 = new ArrayList<>();
        String[] strArr = (String[]) obj;
        int length9 = strArr.length;
        while (i10 < length9) {
            arrayList9.add(strArr[i10]);
            i10++;
        }
        return arrayList9;
    }

    private JSONArray getJSONArray(ArrayList<Object> arrayList) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (Object jSONArray2 : arrayList) {
            if (jSONArray2 instanceof HashMap) {
                jSONArray2 = getJSONObject((HashMap) jSONArray2);
            } else if (jSONArray2 instanceof ArrayList) {
                jSONArray2 = getJSONArray((ArrayList) jSONArray2);
            }
            jSONArray.put(jSONArray2);
        }
        return jSONArray;
    }

    private JSONObject getJSONObject(HashMap<String, Object> map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof HashMap) {
                value = getJSONObject((HashMap) value);
            } else if (value instanceof ArrayList) {
                value = getJSONArray((ArrayList) value);
            } else if (isBasicArray(value)) {
                value = getJSONArray(arrayToList(value));
            }
            jSONObject.put(entry.getKey(), value);
        }
        return jSONObject;
    }

    private boolean isBasicArray(Object obj) {
        return (obj instanceof byte[]) || (obj instanceof short[]) || (obj instanceof int[]) || (obj instanceof long[]) || (obj instanceof float[]) || (obj instanceof double[]) || (obj instanceof char[]) || (obj instanceof boolean[]) || (obj instanceof String[]);
    }

    public String format(String str) {
        try {
            return format("", fromJson(str));
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public String fromHashMap(HashMap<String, Object> map) {
        try {
            return getJSONObject(map).toString();
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public HashMap<String, Object> fromJson(String str) {
        try {
            if (str.startsWith("[") && str.endsWith("]")) {
                str = "{\"fakelist\":" + str + "}";
            }
            return fromJson(new JSONObject(str));
        } catch (Throwable th) {
            th.printStackTrace();
            return new HashMap<>();
        }
    }

    private String format(String str, HashMap<String, Object> map) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("{\n");
        String str2 = String.valueOf(str) + "\t";
        int i10 = 0;
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (i10 > 0) {
                stringBuffer.append(",\n");
            }
            stringBuffer.append(str2);
            stringBuffer.append('\"');
            stringBuffer.append(entry.getKey());
            stringBuffer.append("\":");
            Object value = entry.getValue();
            if (value instanceof HashMap) {
                stringBuffer.append(format(str2, (HashMap<String, Object>) value));
            } else if (value instanceof ArrayList) {
                stringBuffer.append(format(str2, (ArrayList<Object>) value));
            } else if (value instanceof String) {
                stringBuffer.append('\"');
                stringBuffer.append(value);
                stringBuffer.append('\"');
            } else {
                stringBuffer.append(value);
            }
            i10++;
        }
        stringBuffer.append('\n');
        stringBuffer.append(str);
        stringBuffer.append('}');
        return stringBuffer.toString();
    }

    private HashMap<String, Object> fromJson(JSONObject jSONObject) throws JSONException {
        HashMap<String, Object> map = new HashMap<>();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = jSONObject.opt(next);
            if (JSONObject.NULL.equals(objOpt)) {
                objOpt = null;
            }
            if (objOpt != null) {
                if (objOpt instanceof JSONObject) {
                    objOpt = fromJson((JSONObject) objOpt);
                } else if (objOpt instanceof JSONArray) {
                    objOpt = fromJson((JSONArray) objOpt);
                }
                map.put(next, objOpt);
            }
        }
        return map;
    }

    private ArrayList<Object> fromJson(JSONArray jSONArray) throws JSONException {
        ArrayList<Object> arrayList = new ArrayList<>();
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            Object objOpt = jSONArray.opt(i10);
            if (objOpt instanceof JSONObject) {
                objOpt = fromJson((JSONObject) objOpt);
            } else if (objOpt instanceof JSONArray) {
                objOpt = fromJson((JSONArray) objOpt);
            }
            arrayList.add(objOpt);
        }
        return arrayList;
    }

    private String format(String str, ArrayList<Object> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[\n");
        String str2 = String.valueOf(str) + "\t";
        int i10 = 0;
        for (Object obj : arrayList) {
            if (i10 > 0) {
                stringBuffer.append(",\n");
            }
            stringBuffer.append(str2);
            if (obj instanceof HashMap) {
                stringBuffer.append(format(str2, (HashMap<String, Object>) obj));
            } else if (obj instanceof ArrayList) {
                stringBuffer.append(format(str2, (ArrayList<Object>) obj));
            } else if (obj instanceof String) {
                stringBuffer.append('\"');
                stringBuffer.append(obj);
                stringBuffer.append('\"');
            } else {
                stringBuffer.append(obj);
            }
            i10++;
        }
        stringBuffer.append('\n');
        stringBuffer.append(str);
        stringBuffer.append(']');
        return stringBuffer.toString();
    }
}
