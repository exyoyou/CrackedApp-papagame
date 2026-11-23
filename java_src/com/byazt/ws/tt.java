package com.byazt.ws;

import android.text.TextUtils;
import com.byazt.aas.DeviceUtils;
import com.byazt.aas.nb;
import com.byazt.it.ve;
import com.byazt.nr.m;
import com.byazt.nr.sp;
import com.byazt.nr.x;
import com.byazt.omf.gt;
import com.byazt.ukr.yp;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.activity.UploadActivity;
import com.kuaishou.weapon.p0.t;
import com.tencent.stat.DeviceInfo;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import net.lingala.zip4j.util.e;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 2290, 13})
public class tt {
    private boolean c(long j10, long j11) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (j11 == 0) {
            return !nb.c(j10, jCurrentTimeMillis);
        }
        return jCurrentTimeMillis - j10 >= j11;
    }

    private boolean n(String str) {
        File[] fileArrListFiles;
        long jLastModified;
        File file = new File(str);
        boolean z10 = true;
        if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                String name = file2.getName();
                if (name.startsWith("._tt_")) {
                    try {
                        jLastModified = Long.parseLong(name.substring(5));
                    } catch (Throwable unused) {
                        jLastModified = file2.lastModified();
                    }
                    if (nb.c(jLastModified, System.currentTimeMillis())) {
                        z10 = false;
                    } else {
                        file2.delete();
                    }
                }
            }
        }
        if (z10) {
            new File(file, "._tt_" + System.currentTimeMillis()).mkdirs();
        }
        return z10;
    }

    private void tt(JSONObject jSONObject, String str) {
        FileOutputStream fileOutputStream;
        byte[] bArrUj = uj(jSONObject.toString());
        if (bArrUj == null || bArrUj.length <= 0) {
            return;
        }
        try {
            fileOutputStream = new FileOutputStream(new File(com.byazt.nys.tt.c(gt.getContext()), new File(str).getName()));
            try {
                fileOutputStream.write(bArrUj);
                com.byazt.as.tt.c(fileOutputStream);
            } catch (Throwable unused) {
                com.byazt.as.tt.c(fileOutputStream);
            }
        } catch (Throwable unused2) {
            fileOutputStream = null;
        }
    }

    private byte[] uj(String str) {
        byte[] bytes = com.byazt.nr.c.tt(str).getBytes(StandardCharsets.UTF_8);
        if (bytes == null || bytes.length <= 0) {
            return null;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bytes.length + 1);
        byteBufferAllocate.put((byte) 3);
        byteBufferAllocate.put(bytes);
        return byteBufferAllocate.array();
    }

    private JSONObject ve(String str) {
        byte[] bArrUj = x.uj(new File(com.byazt.nys.tt.c(gt.getContext()), new File(str).getName()));
        if (bArrUj == null) {
            return null;
        }
        try {
            String strC = c(bArrUj);
            if (strC != null) {
                return new JSONObject(strC);
            }
        } catch (Throwable th) {
            m.c(th);
        }
        return null;
    }

    public void c(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectC;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("id_conf")) == null) {
            return;
        }
        try {
            ve veVarC = com.byazt.omf.tt.c();
            long j10 = veVarC.getLong("last_gather_id_time", 0L);
            long jOptLong = jSONObjectOptJSONObject.optLong("delt", 0L);
            if (j10 <= 0 || c(j10, jOptLong)) {
                String strOptString = jSONObjectOptJSONObject.optString("store");
                int iOptInt = jSONObjectOptJSONObject.optInt(NoticeTopAnimActivityDialog_.STATE_EXTRA, 0);
                if (iOptInt != 1) {
                    jSONObjectC = null;
                    if (iOptInt != 2) {
                        if (iOptInt != 4) {
                            return;
                        }
                        File file = new File(strOptString);
                        File file2 = new File(sp.c(gt.getContext(), false, null), file.getName());
                        if (file2.exists()) {
                            file2.delete();
                        }
                        c(file);
                    }
                } else {
                    jSONObjectC = c(strOptString);
                }
                int iOptInt2 = jSONObjectOptJSONObject.optInt(UploadActivity.UPLOAD_RECEIVE, 0);
                if (iOptInt2 > 0) {
                    veVarC.put("last_gather_id_time", System.currentTimeMillis());
                    File file3 = new File(strOptString);
                    jSONObjectC.put("c_r", file3.canRead());
                    jSONObjectC.put("c_w", file3.canWrite());
                    jSONObjectC.put(t.f74895t, strOptString);
                    c(strOptString, jSONObjectC, iOptInt2 == 2);
                }
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    @DungeonFlag
    private JSONObject tt(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        JSONObject jSONObjectVe = ve(str);
        if (file.exists() && file.isDirectory() && file.canRead()) {
            HashMap map = new HashMap();
            c(file, str, map);
            if (map.size() == 0) {
                return jSONObjectVe;
            }
            if (jSONObjectVe == null) {
                jSONObjectVe = new JSONObject();
            }
            JSONObject jSONObjectOptJSONObject = jSONObjectVe.optJSONObject(DeviceInfo.TAG_ANDROID_ID);
            try {
                if (jSONObjectOptJSONObject == null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObjectVe.put(DeviceInfo.TAG_ANDROID_ID, jSONObject);
                    } catch (JSONException unused) {
                    }
                    jSONObjectOptJSONObject = jSONObject;
                } else {
                    for (Map.Entry<String, Set<String>> entry : map.entrySet()) {
                        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray(entry.getKey());
                        if (jSONArrayOptJSONArray != null) {
                            Set<String> value = entry.getValue();
                            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                                String strOptString = jSONArrayOptJSONArray.optString(i10);
                                if (!TextUtils.isEmpty(strOptString)) {
                                    value.add(strOptString);
                                }
                            }
                        }
                    }
                }
            } catch (JSONException unused2) {
            }
            for (Map.Entry<String, Set<String>> entry2 : map.entrySet()) {
                String key = entry2.getKey();
                Set<String> value2 = entry2.getValue();
                if (!TextUtils.isEmpty(key) && value2 != null && value2.size() != 0) {
                    try {
                        JSONArray jSONArray = new JSONArray();
                        Iterator<String> it2 = value2.iterator();
                        while (it2.hasNext()) {
                            jSONArray.put(it2.next());
                        }
                        jSONObjectOptJSONObject.put(key, jSONArray);
                    } catch (JSONException e10) {
                        m.c(e10);
                    }
                }
            }
        }
        return jSONObjectVe;
    }

    private void c(File file) {
        try {
            if (file.exists()) {
                if (file.isDirectory()) {
                    for (File file2 : file.listFiles()) {
                        c(file2);
                    }
                }
                file.delete();
            }
        } catch (Throwable unused) {
        }
    }

    private JSONObject c(String str) throws JSONException {
        String strTt = DeviceUtils.tt();
        if (TextUtils.isEmpty(strTt)) {
            return null;
        }
        String str2 = (TextUtils.isEmpty(strTt) ? 1 : 0) + strTt;
        JSONObject jSONObjectTt = tt(str);
        if (jSONObjectTt == null) {
            jSONObjectTt = new JSONObject();
        }
        JSONObject jSONObjectOptJSONObject = jSONObjectTt.optJSONObject(DeviceInfo.TAG_ANDROID_ID);
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
            jSONObjectTt.putOpt(DeviceInfo.TAG_ANDROID_ID, jSONObjectOptJSONObject);
        }
        String packageName = gt.getContext().getPackageName();
        if (packageName == null) {
            packageName = com.byazt.omf.x.m().rl();
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray(packageName);
        if (jSONArrayOptJSONArray == null) {
            jSONArrayOptJSONArray = new JSONArray();
            jSONObjectOptJSONObject.put(packageName, jSONArrayOptJSONArray);
        }
        int i10 = 0;
        while (true) {
            if (i10 >= jSONArrayOptJSONArray.length()) {
                i10 = -1;
                break;
            }
            if (TextUtils.equals(jSONArrayOptJSONArray.optString(i10), str2)) {
                break;
            }
            i10++;
        }
        if (i10 == -1) {
            jSONArrayOptJSONArray.put(str2);
        }
        tt(jSONObjectTt, str);
        c(jSONObjectOptJSONObject, str);
        return jSONObjectTt;
    }

    @DungeonFlag
    private void c(JSONObject jSONObject, String str) {
        File file = new File(str);
        if (file.exists()) {
            if (!file.canWrite()) {
                return;
            }
        } else if (!file.mkdirs()) {
            return;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(next);
            if (jSONArrayOptJSONArray != null) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    String strOptString = jSONArrayOptJSONArray.optString(i10);
                    if (!TextUtils.isEmpty(strOptString)) {
                        byte[] bArrUj = uj(next + e.F0 + strOptString);
                        if (bArrUj != null) {
                            File file2 = new File(str, c.c(bArrUj, 20));
                            if (file2.isFile()) {
                                file2.delete();
                            }
                            file2.mkdirs();
                            file2.getAbsolutePath();
                        }
                    }
                }
            }
        }
    }

    private void c(File file, String str, Map<String, Set<String>> map) {
        if (file == null || !file.exists() || !file.canRead() || file.getName().startsWith("._tt_")) {
            return;
        }
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                for (File file2 : fileArrListFiles) {
                    if (!file2.getName().startsWith("._tt_") && file2.isDirectory()) {
                        c(file2, str, map);
                        file2.delete();
                    }
                }
                return;
            }
            file.delete();
            String absolutePath = file.getAbsolutePath();
            if (absolutePath.length() <= str.length()) {
                return;
            }
            try {
                String strC = c(c.c(absolutePath.substring(str.length() + 1)));
                if (strC == null) {
                    return;
                }
                String[] strArrSplit = strC.split(e.F0);
                if (strArrSplit.length != 2) {
                    return;
                }
                String str2 = strArrSplit[0];
                String str3 = strArrSplit[1];
                Set<String> hashSet = map.get(str2);
                if (hashSet == null) {
                    hashSet = new HashSet<>();
                    map.put(str2, hashSet);
                }
                hashSet.add(str3);
                return;
            } catch (JSONException unused) {
                return;
            }
        }
        try {
            file.delete();
        } catch (Throwable unused2) {
        }
    }

    private String c(byte[] bArr) throws JSONException {
        byte b10 = bArr[0];
        int length = bArr.length - 1;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 1, bArr2, 0, length);
        if (b10 == 3) {
            return com.byazt.nr.c.ve(new String(bArr2));
        }
        return null;
    }

    private void c(String str, JSONObject jSONObject, boolean z10) {
        if (z10 || n(str)) {
            c(str, jSONObject);
        }
    }

    private void c(String str, JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            jSONObject = tt(str);
        }
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(DeviceInfo.TAG_ANDROID_ID);
        if (jSONObjectOptJSONObject != null) {
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            HashSet hashSet = new HashSet();
            int i10 = 0;
            while (itKeys.hasNext()) {
                i10++;
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray(itKeys.next());
                if (jSONArrayOptJSONArray != null) {
                    for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                        String strOptString = jSONArrayOptJSONArray.optString(i11);
                        if (!TextUtils.isEmpty(strOptString)) {
                            hashSet.add(strOptString);
                        }
                    }
                }
            }
            try {
                jSONObject.put("size", i10);
                if (!hashSet.isEmpty()) {
                    JSONArray jSONArray = new JSONArray();
                    Iterator it2 = hashSet.iterator();
                    while (it2.hasNext()) {
                        jSONArray.put((String) it2.next());
                    }
                    jSONObject.put("all", jSONArray);
                }
            } catch (JSONException unused) {
            }
        }
        yp.c().c("s_d_i_c", jSONObject);
    }
}
