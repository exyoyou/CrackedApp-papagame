package com.efs.sdk.base.core.config;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.bn;
import com.efs.sdk.base.core.a.a;
import com.efs.sdk.base.core.util.d;
import com.efs.sdk.base.protocol.file.section.AbsSection;
import com.efs.sdk.base.protocol.file.section.KVSection;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.tencent.cos.common.COSHttpResponseKey;
import com.tencent.stat.DeviceInfo;
import com.umeng.umcrash.UMCrash;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes9.dex */
public class GlobalInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, Object> f26297a = new ConcurrentHashMap();

    final void a(String str, Object obj) {
        if (obj != null) {
            this.f26297a.put(str, obj);
        }
    }

    final Object b(String str, Object obj) {
        Object obj2 = this.f26297a.get(str);
        return (obj2 != null || this.f26297a.containsKey(str)) ? obj2 : obj;
    }

    public Map<String, Object> getGlobalInfoMap() {
        HashMap map = new HashMap(this.f26297a);
        a.a();
        map.put(COSHttpResponseKey.Data.CTIME, Long.valueOf(a.b() / 1000));
        a.a();
        map.put("w_tm", Long.valueOf(a.b() / 1000));
        return map;
    }

    public List<AbsSection> getGlobalSectionList(String str) {
        ArrayList arrayList = new ArrayList();
        KVSection kVSection = new KVSection("global_head");
        KVSection kVSectionPut = kVSection.put("type", str).put("appid", this.f26297a.get("appid")).put("wid", this.f26297a.get("wid")).put(ForumPostsTagSelectActivity_.PID_EXTRA, this.f26297a.get(ForumPostsTagSelectActivity_.PID_EXTRA)).put("pkg", this.f26297a.get("pkg")).put(DeviceInfo.TAG_VERSION, this.f26297a.get(DeviceInfo.TAG_VERSION)).put("vcode", this.f26297a.get("vcode")).put("ps", this.f26297a.get("ps")).put("stime", this.f26297a.get("stime"));
        a.a();
        KVSection kVSectionPut2 = kVSectionPut.put(COSHttpResponseKey.Data.CTIME, Long.valueOf(a.b() / 1000));
        a.a();
        kVSectionPut2.put("w_tm", Long.valueOf(a.b() / 1000)).put("sdk_ver", this.f26297a.get("sdk_ver"));
        String strValueOf = String.valueOf(b("uid", ""));
        if (!TextUtils.isEmpty(strValueOf)) {
            kVSection.put("uid", strValueOf);
        }
        arrayList.add(kVSection);
        KVSection kVSection2 = new KVSection("device_info");
        kVSection2.put("lang", this.f26297a.get("lang")).put(bn.f7598j, this.f26297a.get(bn.f7598j)).put(bn.f7597i, this.f26297a.get(bn.f7597i)).put("build_model", this.f26297a.get("build_model")).put("rom", this.f26297a.get("rom")).put("sdk", this.f26297a.get("sdk")).put("dsp_h", this.f26297a.get("dsp_h")).put("dsp_w", this.f26297a.get("dsp_w")).put("tzone", this.f26297a.get("tzone")).put("net", this.f26297a.get("net")).put("fr", this.f26297a.get("fr"));
        try {
            if (this.f26297a.containsKey(UMCrash.KEY_HEADER_ACCESS)) {
                kVSection2.put(UMCrash.KEY_HEADER_ACCESS, this.f26297a.get(UMCrash.KEY_HEADER_ACCESS));
            }
            if (this.f26297a.containsKey(UMCrash.KEY_HEADER_ACCESS_SUBTYPE)) {
                kVSection2.put(UMCrash.KEY_HEADER_ACCESS_SUBTYPE, this.f26297a.get(UMCrash.KEY_HEADER_ACCESS_SUBTYPE));
            }
            if (this.f26297a.containsKey(UMCrash.KEY_HEADER_NETWORK_TYPE)) {
                kVSection2.put(UMCrash.KEY_HEADER_NETWORK_TYPE, this.f26297a.get(UMCrash.KEY_HEADER_NETWORK_TYPE));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        arrayList.add(kVSection2);
        return arrayList;
    }

    public String getUUID(Context context) {
        String strValueOf = String.valueOf(b("wid", ""));
        if (!TextUtils.isEmpty(strValueOf)) {
            return strValueOf;
        }
        String strA = d.a(context);
        a("wid", strA);
        return strA;
    }
}
