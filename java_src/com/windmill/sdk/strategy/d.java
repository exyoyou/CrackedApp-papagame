package com.windmill.sdk.strategy;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.windmill.sdk.WMWaterfallFilter;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.BidInfo;
import com.windmill.sdk.models.WMFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f87138a = "bid_";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f87139b = "wm_bid_info";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f87140c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static d f87141d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<String> f87142e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f87143f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Map<String, String> f87144g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Map<String, Map<String, String>> f87145h = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Map<String, List<String>> f87146i = new HashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Map<String, BidInfo> f87147j = new HashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<WMFilter> f87148k = new ArrayList();

    private d() {
    }

    public static d a() {
        if (f87141d == null) {
            synchronized (d.class) {
                if (f87141d == null) {
                    f87141d = new d();
                }
            }
        }
        return f87141d;
    }

    public Map<String, String> b() {
        Map<String, String> map = this.f87144g;
        if (map != null) {
            map.put("gameVersionCode", h() + "");
        }
        return this.f87144g;
    }

    public List<String> c() {
        return this.f87142e;
    }

    public String d() {
        return this.f87143f;
    }

    public Map<String, List<String>> e() {
        return this.f87146i;
    }

    public List<WMFilter> f() {
        return this.f87148k;
    }

    public void g() {
        List<WMFilter> list = this.f87148k;
        if (list != null) {
            list.clear();
        }
    }

    public int h() {
        int i10 = f87140c;
        if (i10 > 0) {
            return i10;
        }
        try {
            Context context = WindMillAd.sharedAds().getContext();
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (packageInfo != null) {
                f87140c = packageInfo.versionCode;
            }
            return f87140c;
        } catch (PackageManager.NameNotFoundException e10) {
            throw new RuntimeException(e10);
        }
    }

    private Map<String, String> d(String mapString) {
        HashMap map = null;
        try {
            if (!TextUtils.isEmpty(mapString)) {
                String[] strArrSplit = mapString.substring(1, mapString.length() - 1).split(", ");
                if (strArrSplit.length > 0) {
                    HashMap map2 = new HashMap();
                    try {
                        for (String str : strArrSplit) {
                            String[] strArrSplit2 = str.split(SimpleComparison.EQUAL_TO_OPERATION);
                            map2.put(strArrSplit2[0], strArrSplit2[1]);
                        }
                        return map2;
                    } catch (Exception e10) {
                        e = e10;
                        map = map2;
                        e.printStackTrace();
                        return map;
                    }
                }
            }
        } catch (Exception e11) {
            e = e11;
        }
        return map;
    }

    public BidInfo c(String placementId) {
        try {
            if (TextUtils.isEmpty(placementId)) {
                return null;
            }
            return this.f87147j.get(placementId);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void b(String placementId) {
        try {
            if (TextUtils.isEmpty(placementId)) {
                return;
            }
            SharedPreferences sharedPreferencesA = com.windmill.sdk.utils.n.a(WindMillAd.sharedAds().getContext(), f87139b);
            Map<String, String> mapD = d(sharedPreferencesA.getString(f87138a + placementId, null));
            if (mapD != null) {
                this.f87147j.put(placementId, new BidInfo(mapD));
                SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
                editorEdit.remove(f87138a + placementId);
                editorEdit.apply();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(Map<String, String> map) {
        try {
            this.f87144g.putAll(map);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public Map<String, String> a(String placementId) {
        try {
            if (TextUtils.isEmpty(placementId)) {
                return null;
            }
            return this.f87145h.get(placementId);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void a(String placementId, Map<String, String> map) {
        try {
            if (TextUtils.isEmpty(placementId) || map == null) {
                return;
            }
            this.f87145h.put(placementId, map);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(Context context, String dirName) {
        if (context != null && !TextUtils.isEmpty(dirName)) {
            try {
                this.f87143f = dirName;
                this.f87142e = new ArrayList(Arrays.asList(context.getAssets().list(dirName)));
                WMLogUtil.d(this.f87143f + "-----------setLocalStrategyAssetPath--------" + this.f87142e);
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        WMLogUtil.e("setLocalStrategyAssetPath failed: path is null or context");
    }

    public void a(String placementId, List<String> networkFirmIdList) {
        try {
            if (TextUtils.isEmpty(placementId) || networkFirmIdList == null) {
                return;
            }
            this.f87146i.put(placementId, networkFirmIdList);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(int type, String placementId, a strategy, String request_id) {
        try {
            if (!TextUtils.isEmpty(placementId)) {
                Map<String, String> mapD = d(com.windmill.sdk.utils.n.a(WindMillAd.sharedAds().getContext(), f87139b).getString(f87138a + placementId, null));
                if (mapD != null) {
                    new BidInfo(mapD).update(type, request_id, strategy);
                } else {
                    new BidInfo(type, request_id, strategy);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(WMFilter filter) {
        if (filter != null) {
            this.f87148k.add(filter);
        }
    }

    public void a(String... ids) {
        if (ids != null) {
            try {
                if (ids.length > 0) {
                    for (String str : ids) {
                        Iterator<WMFilter> it2 = this.f87148k.iterator();
                        while (it2.hasNext()) {
                            WMWaterfallFilter wMWaterfallFilter = (WMWaterfallFilter) it2.next();
                            if (wMWaterfallFilter != null && wMWaterfallFilter.placementID.equals(str)) {
                                WMLogUtil.i("--------removeIdsFilter: " + str);
                                it2.remove();
                            }
                        }
                    }
                }
            } catch (Exception e10) {
                WMLogUtil.i("--------removeIdsFilter: e " + e10.getMessage());
            }
        }
    }
}
