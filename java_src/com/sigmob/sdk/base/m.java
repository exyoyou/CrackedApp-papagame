package com.sigmob.sdk.base;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.Database.SQLiteBuider;
import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.Sigmob;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.z;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.WindAdMetaData;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmobRequest;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.sdk.base.utils.t;
import com.sigmob.sdk.base.utils.w;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import com.sigmob.windad.WindAds;
import com.umeng.umcrash.UMCrash;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public abstract class m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final HashMap<String, h> f79491b = new HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h f79492a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f79494d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f79495e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f79497g;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected WindAdRequest f79502l;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected AdStatus f79498h = AdStatus.AdStatusNone;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f79499i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected int f79500j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected int f79501k = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f79493c = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f79496f = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f79503m = WindAds.CNY;

    protected m(WindAdRequest windAdRequest, boolean isHalfInterstitial) {
        this.f79502l = windAdRequest;
        windAdRequest.setHalfInterstitial(isHalfInterstitial);
    }

    private void b(String placementId) {
        if (t.a((CharSequence) placementId)) {
            return;
        }
        try {
            com.sigmob.sdk.base.db.a.a().getWritableDatabase().delete(com.sigmob.sdk.base.db.a.f79320f, "adslot_id=?", new String[]{placementId});
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    protected abstract void a(WindAdError adError);

    protected abstract void a(String key, String value);

    protected abstract Map<String, BiddingResponse> b();

    protected abstract com.sigmob.sdk.manager.b c();

    /* JADX INFO: Access modifiers changed from: protected */
    public String e() {
        WindAdRequest windAdRequest = this.f79502l;
        if (windAdRequest == null) {
            return null;
        }
        return windAdRequest.getPlacementId();
    }

    protected Integer f() {
        WindAdRequest windAdRequest = this.f79502l;
        if (windAdRequest == null) {
            return null;
        }
        return Integer.valueOf(windAdRequest.getAdType());
    }

    protected boolean g() {
        String strE = e();
        com.sigmob.sdk.manager.b bVarC = c();
        return !t.a((CharSequence) strE) && bVarC != null && this.f79498h == AdStatus.AdStatusReady && bVarC.c();
    }

    public int getBidFloor() {
        return this.f79497g;
    }

    public String getBid_token() {
        return this.f79495e;
    }

    public abstract String getCurrency();

    public abstract String getEcpm();

    public Map<String, String> getSaasOptions() {
        com.sigmob.sdk.manager.b bVarC = c();
        if (bVarC == null) {
            return null;
        }
        BaseAdUnit baseAdUnitI = bVarC.i();
        BaseAdUnit baseAdUnitE = bVarC.e();
        if (baseAdUnitI == null) {
            baseAdUnitI = baseAdUnitE;
        }
        if (baseAdUnitI == null) {
            return null;
        }
        return baseAdUnitI.getSaasOptions();
    }

    public WindAdMetaData getWindAdMetaData() {
        com.sigmob.sdk.manager.b bVarC = c();
        if (bVarC == null) {
            return null;
        }
        BaseAdUnit baseAdUnitI = bVarC.i();
        if (baseAdUnitI == null) {
            baseAdUnitI = bVarC.e();
        }
        return WindAdMetaData.create(baseAdUnitI);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:40:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:42:0x010a  */
    /* JADX WARN: Code duplicated, block: B:44:0x010e  */
    /* JADX WARN: Code duplicated, block: B:45:0x0114  */
    /* JADX WARN: Code duplicated, block: B:48:0x012f  */
    protected boolean h() {
        WindAdError sigMobError;
        String str;
        h hVar;
        if (com.sigmob.sdk.b.e() != null) {
            com.sigmob.sdk.b.a(true);
            WindAdRequest windAdRequest = this.f79502l;
            if (windAdRequest == null || t.a((CharSequence) windAdRequest.getPlacementId())) {
                sigMobError = WindAdError.ERROR_SIGMOB_PLACEMENTID_EMPTY;
                this.f79499i++;
                str = "PlacementId with WindAdRequest can't is null";
            } else {
                HashMap<String, h> map = f79491b;
                h hVar2 = map.get(e());
                this.f79492a = hVar2;
                if (hVar2 == null) {
                    h hVarA = a(e());
                    this.f79492a = hVarA;
                    hVarA.f79442e = this.f79500j;
                    this.f79492a.f79443f = this.f79496f;
                    map.put(e(), this.f79492a);
                }
                if (this.f79494d && t.a((CharSequence) this.f79495e)) {
                    this.f79492a.f79446i++;
                    sigMobError = WindAdError.ERROR_SIGMOB_BID_TOKEN_IS_EMPTY;
                } else {
                    AdStatus adStatus = this.f79498h;
                    if (adStatus == AdStatus.AdStatusReady) {
                        sigMobError = null;
                    } else if (adStatus == AdStatus.AdStatusLoading) {
                        this.f79492a.f79445h++;
                        sigMobError = WindAdError.ERROR_AD_LOAD_FAIL_LOADING;
                    } else if (Sigmob.getInstance().getSigMobError() != null) {
                        sigMobError = Sigmob.getInstance().getSigMobError();
                        this.f79492a.f79444g++;
                    } else if (!i.a().i()) {
                        SigmobLog.e("User GDPR Consent Status is denied");
                        sigMobError = WindAdError.ERROR_SIGMOB_GDPR_DENIED;
                        this.f79492a.f79440c++;
                    } else if (o.a().Q() <= 0 || o.a().Q() + this.f79492a.f79447j <= System.currentTimeMillis()) {
                        sigMobError = null;
                    } else {
                        SigmobLog.e("load interval Time error");
                        this.f79492a.f79441d++;
                        sigMobError = WindAdError.ERROR_AD_LOAD_FAIL_INTERVAL;
                    }
                }
            }
            hVar = this.f79492a;
            if (hVar == null) {
                this.f79501k++;
            } else {
                hVar.f79439b += this.f79501k + 1;
                this.f79501k = 0;
            }
            if (sigMobError != null) {
                ClientMetadata.setUserId(this.f79502l.getUserId());
                return true;
            }
            if (this.f79492a == null) {
                this.f79493c++;
            } else {
                a(e(), sigMobError.getErrorCode());
                this.f79492a.f79438a += this.f79493c + 1;
                this.f79493c = 0;
            }
            a(sigMobError);
            return false;
        }
        this.f79500j++;
        sigMobError = WindAdError.ERROR_SIGMOB_NOT_START;
        str = "WindAds not start";
        SigmobLog.e(str);
        hVar = this.f79492a;
        if (hVar == null) {
            this.f79501k++;
        } else {
            hVar.f79439b += this.f79501k + 1;
            this.f79501k = 0;
        }
        if (sigMobError != null) {
            ClientMetadata.setUserId(this.f79502l.getUserId());
            return true;
        }
        if (this.f79492a == null) {
            this.f79493c++;
        } else {
            a(e(), sigMobError.getErrorCode());
            this.f79492a.f79438a += this.f79493c + 1;
            this.f79493c = 0;
        }
        a(sigMobError);
        return false;
    }

    protected String i() {
        return this.f79503m;
    }

    public boolean loadAd() {
        this.f79494d = false;
        this.f79495e = null;
        return false;
    }

    public void sendLossNotificationWithInfo(Map<String, Object> lossInfo) {
        String strValueOf;
        try {
            Map<String, BiddingResponse> mapB = b();
            if (mapB == null) {
                return;
            }
            Set<String> setKeySet = mapB.keySet();
            if (com.sigmob.sdk.base.utils.e.a(setKeySet)) {
                return;
            }
            for (String str : setKeySet) {
                BiddingResponse biddingResponse = mapB.get(str);
                if (biddingResponse != null) {
                    String strReplace = biddingResponse.lose_url;
                    if (!t.a((CharSequence) strReplace)) {
                        if (com.sigmob.sdk.base.utils.e.b(lossInfo)) {
                            if (lossInfo.get(WindAds.AUCTION_PRICE) != null) {
                                a(SigMacroCommon._PUBLISHERPRICE_, String.valueOf(lossInfo.get(WindAds.AUCTION_PRICE)));
                                strReplace = strReplace.replace("__AUCTION_PRICE__", String.valueOf(lossInfo.get(WindAds.AUCTION_PRICE)));
                            }
                            if (lossInfo.get(WindAds.CURRENCY) != null) {
                                a(SigMacroCommon._CURRENCY_, String.valueOf(lossInfo.get(WindAds.CURRENCY)));
                                strValueOf = String.valueOf(lossInfo.get(WindAds.CURRENCY));
                            } else {
                                a(SigMacroCommon._CURRENCY_, this.f79503m);
                                strValueOf = this.f79503m;
                            }
                            strReplace = strReplace.replace("__CURRENCY__", strValueOf);
                            if (lossInfo.get(WindAds.LOSS_REASON) != null) {
                                strReplace = strReplace.replace("_BIDLOSSCODE_", String.valueOf(lossInfo.get(WindAds.LOSS_REASON)));
                            }
                            if (lossInfo.get(WindAds.ADN_ID) != null) {
                                strReplace = strReplace.replace("_WINADNID_", String.valueOf(lossInfo.get(WindAds.ADN_ID)));
                            }
                        }
                        com.sigmob.sdk.base.network.b.a(strReplace, "lose", this.f79502l, str);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void sendWinNotificationWithInfo(Map<String, Object> winInfo) {
        String strValueOf;
        try {
            Map<String, BiddingResponse> mapB = b();
            if (mapB == null) {
                return;
            }
            Set<String> setKeySet = mapB.keySet();
            if (com.sigmob.sdk.base.utils.e.a(setKeySet)) {
                return;
            }
            for (String str : setKeySet) {
                BiddingResponse biddingResponse = mapB.get(str);
                if (biddingResponse != null) {
                    String strReplace = biddingResponse.win_url;
                    if (!t.a((CharSequence) strReplace)) {
                        if (com.sigmob.sdk.base.utils.e.b(winInfo)) {
                            if (winInfo.get(WindAds.AUCTION_PRICE) != null) {
                                a(SigMacroCommon._PUBLISHERPRICE_, String.valueOf(winInfo.get(WindAds.AUCTION_PRICE)));
                                strReplace = strReplace.replace("__AUCTION_PRICE__", String.valueOf(winInfo.get(WindAds.AUCTION_PRICE)));
                            }
                            if (winInfo.get(WindAds.HIGHEST_LOSS_PRICE) != null) {
                                a(SigMacroCommon._HIGHESTLOSSPRICE_, String.valueOf(winInfo.get(WindAds.HIGHEST_LOSS_PRICE)));
                                strReplace = strReplace.replace("__HIGHEST_LOSS_PRICE__", String.valueOf(winInfo.get(WindAds.HIGHEST_LOSS_PRICE)));
                            }
                            if (winInfo.get(WindAds.CURRENCY) != null) {
                                a(SigMacroCommon._CURRENCY_, String.valueOf(winInfo.get(WindAds.CURRENCY)));
                                strValueOf = String.valueOf(winInfo.get(WindAds.CURRENCY));
                            } else {
                                a(SigMacroCommon._CURRENCY_, this.f79503m);
                                strValueOf = this.f79503m;
                            }
                            strReplace = strReplace.replace("__CURRENCY__", strValueOf);
                        }
                        com.sigmob.sdk.base.network.b.a(strReplace, "win", this.f79502l, str);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setBidEcpm(int bidEcpm) {
        a(SigMacroCommon._PUBLISHERPRICE_, String.valueOf(bidEcpm));
    }

    public void setBidFloor(int bidFloor) {
        this.f79497g = bidFloor;
        com.sigmob.sdk.manager.b bVarC = c();
        if (bVarC == null) {
            return;
        }
        bVarC.d(Integer.valueOf(bidFloor));
    }

    public void setCurrency(String currency) {
        this.f79503m = currency;
        com.sigmob.sdk.manager.b bVarC = c();
        if (bVarC == null) {
            return;
        }
        bVarC.a(currency);
    }

    private h a(String placement) {
        h hVar = new h();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = com.sigmob.sdk.base.db.a.a().getReadableDatabase().rawQuery("select error_code, count(*) as num from adload_event where adslot_id = ? group by adslot_id", new String[]{placement});
            a(hVar, cursorRawQuery);
            if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
            }
        } catch (Throwable th) {
            try {
                SigmobLog.e(th.getMessage());
            } finally {
                if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                    cursorRawQuery.close();
                }
            }
        }
        return hVar;
    }

    public boolean loadAd(String bidToken) {
        this.f79494d = true;
        this.f79495e = bidToken;
        SigmobLog.d("loadAd: bidToken = " + bidToken);
        return false;
    }

    private void a() {
        this.f79499i = 0;
        b(e());
        this.f79492a.a();
    }

    protected void a(final z loadCacheItem, final String traceId) {
        ad.a(PointCategory.REQUEST, "init", this.f79502l, (LoadAdRequest) null, new ad.a() { // from class: com.sigmob.sdk.base.q
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                this.f79674a.a(traceId, loadCacheItem, obj);
            }
        });
    }

    private void a(h loadFilterItem, Cursor cursor) {
        if (cursor == null || !cursor.moveToFirst()) {
            return;
        }
        int i10 = cursor.getInt(cursor.getColumnIndexOrThrow("error_code"));
        int i11 = cursor.getInt(cursor.getColumnIndexOrThrow("num"));
        do {
            if (i10 != 0) {
                loadFilterItem.f79438a = i11;
            }
            loadFilterItem.f79439b += i11;
            switch (i10) {
                case 600200:
                case 600201:
                case 600203:
                case 600204:
                    loadFilterItem.f79444g = i11;
                    break;
                case 600900:
                    loadFilterItem.f79442e = i11;
                    break;
                case 600905:
                    loadFilterItem.f79440c = i11;
                    break;
                case 610012:
                    loadFilterItem.f79445h = i11;
                    break;
                case 610013:
                    loadFilterItem.f79441d = i11;
                    break;
            }
        } while (cursor.moveToNext());
    }

    private void a(final String placementId, final int error_code) {
        if (t.a((CharSequence) placementId)) {
            return;
        }
        try {
            SQLiteDatabase writableDatabase = com.sigmob.sdk.base.db.a.a().getWritableDatabase();
            SQLiteBuider.Insert.Builder builder = new SQLiteBuider.Insert.Builder();
            builder.setTableName(com.sigmob.sdk.base.db.a.f79320f);
            HashMap map = new HashMap();
            map.put("adslot_id", placementId);
            map.put("error_code", Integer.valueOf(error_code));
            map.put(UMCrash.SP_KEY_TIMESTAMP, Long.valueOf(System.currentTimeMillis()));
            builder.setColumnValues(map);
            com.sigmob.sdk.base.db.a.a().a(writableDatabase, builder.build(), new com.sigmob.sdk.base.db.a.InterfaceC1022a() { // from class: com.sigmob.sdk.base.m.1
                @Override // com.sigmob.sdk.base.db.a.InterfaceC1022a
                public void a() {
                    SigmobLog.d(placementId + " insert load error event " + error_code + " onSuccess: ");
                }

                @Override // com.sigmob.sdk.base.db.a.InterfaceC1022a
                public void a(Throwable e10) {
                    SigmobLog.e(placementId + " insert load error event " + error_code + " onFailed: ", e10);
                }
            });
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, z zVar, Object obj) {
        if (obj instanceof PointEntitySigmobRequest) {
            PointEntitySigmobRequest pointEntitySigmobRequest = (PointEntitySigmobRequest) obj;
            pointEntitySigmobRequest.setLoad_count(String.valueOf(this.f79492a.f79439b));
            pointEntitySigmobRequest.setInvalid_load_count(String.valueOf(this.f79492a.f79438a));
            pointEntitySigmobRequest.setGdpr_filters(String.valueOf(this.f79492a.f79440c));
            pointEntitySigmobRequest.setInterval_filters(String.valueOf(this.f79492a.f79441d));
            pointEntitySigmobRequest.setPldempty_filters(String.valueOf(this.f79499i));
            pointEntitySigmobRequest.setInit_filters(String.valueOf(this.f79492a.f79442e));
            pointEntitySigmobRequest.setLoading_filters(String.valueOf(this.f79492a.f79445h));
            pointEntitySigmobRequest.setProguard_filters(String.valueOf(this.f79492a.f79444g));
            pointEntitySigmobRequest.setAdx_id(null);
            if (t.b(this.f79495e)) {
                pointEntitySigmobRequest.setBid_token(this.f79495e);
            }
            if (t.b(str)) {
                pointEntitySigmobRequest.setTrace_id(str);
            }
            Map<String, String> options = pointEntitySigmobRequest.getOptions();
            if (w.b(zVar)) {
                options.put(PointParamKey.FEED_PRE_REQUEST_COUNT, String.valueOf(zVar.f79303a));
                options.put(PointParamKey.FEED_PRE_READY_COUNT, String.valueOf(zVar.f79304b));
            }
            options.put(PointParamKey.IS_MINOR, i.a().d() ? "0" : "1");
            options.put(PointParamKey.IS_UNPERSONALIZED, i.a().e() ? "0" : "1");
            options.put(PointParamKey.PERSONALIZED_FILTERS, String.valueOf(this.f79492a.f79443f));
            options.put(PointParamKey.REQUEST_SCENE_TYPE, String.valueOf(j.NormalRequest.a()));
            pointEntitySigmobRequest.setOptions(options);
        }
        a();
    }

    protected void a(boolean isBidType) {
        this.f79494d = isBidType;
    }
}
