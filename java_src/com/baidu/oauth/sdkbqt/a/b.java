package com.baidu.oauth.sdkbqt.a;

import com.baidu.oauth.sdkbqt.dto.BdOauthDTO;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f8121a = "2.0.6.10";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f8122b = "YmFpZHUuaW50ZW50LmFjdGlvbi5hY2NvdW50Lk9BVVRIX0FDVElWSVRZ";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f8123c = "YmFpZHUuaW50ZW50LmFjdGlvbi5hY2NvdW50Lk9BVVRIX1NJTEVOVF9BQ1RJVklUWQ==";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static LinkedHashMap<String, String> f8124d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static LinkedHashMap<String, String> f8125e = new LinkedHashMap<>(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f8126f = "aHR0cHM6Ly9vcGVuYXBpLmJhaWR1LmNvbS9vYXV0aC8yLjAvdG9rZW4=";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f8127g = "L29hdXRoLzIuMC9hdXRob3JpemU=";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f8128h = "L29hdXRoLzIuMC9zc29nZXRxcmNvZGU=";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f8129i = "L2NoYW5uZWwvdW5pY2FzdA==";

    static {
        f8124d = new LinkedHashMap<>(6);
        f8124d.put("Y29tLmJhaWR1LnNhcGkyLiguKik=", "ZGUzMDhkNzk3M2I1MTcxODgzMzMzYTk3MjUzMzI3ZTQ=");
        f8124d.put(BdOauthDTO.APP_SEARCHBOX, "YzJiMGI0OTdkMDM4OWU2ZGUxNTA1ZTdmZDhmNGQ1Mzk=");
        f8124d.put(BdOauthDTO.APP_BAIDUMAP, "YzJiMGI0OTdkMDM4OWU2ZGUxNTA1ZTdmZDhmNGQ1Mzk=");
        f8124d.put(BdOauthDTO.APP_NETDISK, "YWU1ODIxNDQwZmFiNWUxYTYxYTAyNWYwMTRiZDg5NzI=");
        f8124d.put(BdOauthDTO.APP_TIEBA, "NjczMDA0Y2YyZjZlZmRlYzIzODVjODExNmMxZThjMTQ=");
        f8124d.put(BdOauthDTO.APP_HAOKAN, "N2ZkMzcyNzg1MmQyOWViNmY0MjgzOTg4ZGMwZDYxNTA=");
        LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<>(6);
        for (String str : f8124d.keySet()) {
            linkedHashMap.put(h.b(str), h.b(f8124d.get(str)));
        }
        f8124d = linkedHashMap;
        Object[] array = linkedHashMap.keySet().toArray();
        f8125e.put(array[0].toString(), f8124d.get(array[0]));
        f8125e.put(array[1].toString(), f8124d.get(array[1]));
    }
}
