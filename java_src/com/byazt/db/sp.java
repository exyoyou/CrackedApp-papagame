package com.byazt.db;

import android.app.Activity;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.byazt.me.da;
import com.byazt.nc.t;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.join.mgps.socket.entity.b;
import com.umeng.analytics.pro.q;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 734, 91})
public class sp extends uj {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.dhf.c f12659da;
    public com.byazt.sp.ve sl;

    public sp(com.byazt.dv.c cVar, com.byazt.sp.ve veVar) {
        super(cVar);
        this.sl = veVar;
    }

    private void c(@NonNull Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, da daVar, List<View> list4) {
        if (((uj) this).f12664x != null) {
            ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(8159).c(Void.class).c(20033, activity).c(8067, viewGroup).c(8068, list).c(8069, list2).c(8070, list3).c(8071, da.c(daVar)).c(8053, list4).tt());
        }
    }

    @Override // com.byazt.db.uj
    public <T> T callMethod(int i10, PluginValueSet pluginValueSet, Class<T> cls) {
        com.byazt.fy.c cVar;
        com.byazt.fy.c cVar2;
        if (i10 == 8130) {
            if (getAdType() == 5) {
                if (getSubAdType() == 5) {
                    com.byazt.fy.c cVar3 = this.f22289a;
                    if (cVar3 != null) {
                        cVar3.c(null);
                    }
                } else {
                    com.byazt.me.tt ttVar = this.f22291c;
                    if (ttVar != null) {
                        ttVar.c(null);
                    }
                }
            } else if (getAdType() == 9 && (cVar2 = this.f22289a) != null) {
                cVar2.c(null);
            }
        } else if (i10 == 8113) {
            if (getAdType() == 5) {
                if (getSubAdType() == 5) {
                    com.byazt.fy.c cVar4 = this.f22289a;
                    if (cVar4 != null) {
                        cVar4.c();
                    }
                } else {
                    com.byazt.me.tt ttVar2 = this.f22291c;
                    if (ttVar2 != null) {
                        ttVar2.c();
                    }
                }
            } else if (getAdType() == 9 && (cVar = this.f22289a) != null) {
                cVar.c();
            }
        } else if (i10 == 8131) {
            if (this.sl != null) {
                this.sl.nativeDislikeClick(this, pluginValueSet.stringValue(8036));
            }
        } else if (i10 == 8132) {
            com.byazt.dv.c cVar5 = ((uj) this).f12663i;
            if (cVar5 != null) {
                com.byazt.bg.c.c(cVar5.tt());
            }
            if (this.f12659da != null) {
                this.f12659da.c(pluginValueSet.intValue(8038), pluginValueSet.stringValue(8039), false);
            }
        } else if (i10 == 8133) {
            float fFloatValue = pluginValueSet.floatValue(8040);
            float fFloatValue2 = pluginValueSet.floatValue(8041);
            if (getAdType() == 5) {
                if (getSubAdType() == 5) {
                    com.byazt.fy.c cVar6 = this.f22289a;
                    if (cVar6 instanceof com.byazt.fy.uj) {
                        ((com.byazt.fy.uj) cVar6).c(fFloatValue, fFloatValue2);
                    }
                } else {
                    com.byazt.me.tt ttVar3 = this.f22291c;
                    if (ttVar3 instanceof com.byazt.me.a) {
                        ((com.byazt.me.a) ttVar3).c(fFloatValue, fFloatValue2);
                    }
                }
            } else if (getAdType() == 9) {
                com.byazt.fy.c cVar7 = this.f22289a;
                if (cVar7 instanceof com.byazt.fy.uj) {
                    ((com.byazt.fy.uj) cVar7).c(fFloatValue, fFloatValue2);
                }
            }
        } else if (i10 == 8134) {
            int iIntValue = pluginValueSet.intValue(8014);
            String strStringValue = pluginValueSet.stringValue(8015);
            View view = (View) pluginValueSet.objectValue(8042, View.class);
            if (getAdType() == 5) {
                if (getSubAdType() == 5) {
                    com.byazt.fy.c cVar8 = this.f22289a;
                    if (cVar8 instanceof com.byazt.fy.uj) {
                        ((com.byazt.fy.uj) cVar8).c(view, strStringValue, iIntValue);
                    }
                } else {
                    com.byazt.me.tt ttVar4 = this.f22291c;
                    if (ttVar4 instanceof com.byazt.me.a) {
                        ((com.byazt.me.a) ttVar4).c(view, strStringValue, iIntValue);
                    }
                }
            } else if (getAdType() == 9) {
                com.byazt.fy.c cVar9 = this.f22289a;
                if (cVar9 instanceof com.byazt.fy.uj) {
                    ((com.byazt.fy.uj) cVar9).c(view, strStringValue, iIntValue);
                }
            }
        } else if (i10 == 8140) {
            String strStringValue2 = pluginValueSet.stringValue(8045);
            String strStringValue3 = pluginValueSet.stringValue(8046);
            int iIntValue2 = pluginValueSet.intValue(8047);
            String strStringValue4 = pluginValueSet.stringValue(8048);
            String strStringValue5 = pluginValueSet.stringValue(8049);
            String strStringValue6 = pluginValueSet.stringValue(8050);
            int iIntValue3 = pluginValueSet.intValue(8051);
            int iIntValue4 = pluginValueSet.intValue(8052);
            List<String> list = (List) pluginValueSet.objectValue(8053, List.class);
            String strStringValue7 = pluginValueSet.stringValue(8054);
            boolean zBooleanValue = pluginValueSet.booleanValue(8055);
            String strStringValue8 = pluginValueSet.stringValue(8056);
            String strStringValue9 = pluginValueSet.stringValue(8057);
            Object objObjectValue = pluginValueSet.objectValue(8036, Object.class);
            String strStringValue10 = pluginValueSet.stringValue(8058);
            double dDoubleValue = pluginValueSet.doubleValue(8016);
            boolean zBooleanValue2 = pluginValueSet.booleanValue(8033);
            int iIntValue5 = pluginValueSet.intValue(8060);
            String strStringValue11 = pluginValueSet.stringValue(8061);
            String strStringValue12 = pluginValueSet.stringValue(8061);
            long jLongValue = pluginValueSet.longValue(8078);
            String strStringValue13 = pluginValueSet.stringValue(8079);
            Map<String, String> map = (Map) pluginValueSet.objectValue(8427, Map.class);
            String strStringValue14 = pluginValueSet.stringValue(b.f73010l);
            String strStringValue15 = pluginValueSet.stringValue(8081);
            double dDoubleValue2 = pluginValueSet.doubleValue(8082);
            int iIntValue6 = pluginValueSet.intValue(8059);
            String strStringValue16 = pluginValueSet.stringValue(8551);
            String strStringValue17 = pluginValueSet.stringValue(8559);
            int iIntValue7 = pluginValueSet.intValue(8553);
            setTitle(strStringValue2);
            setAdDescription(strStringValue3);
            setAppSize(iIntValue2);
            setIconUrl(strStringValue4);
            setSource(strStringValue5);
            setImageUrl(strStringValue6);
            setImageHeight(iIntValue3);
            setImageWidth(iIntValue4);
            setImages(list);
            setPackageName(strStringValue7);
            setIsAppDownload(zBooleanValue);
            setAppName(strStringValue8);
            setAuthorName(strStringValue9);
            if (TextUtils.equals(getAdNetWorkName(), "baidu")) {
                putExtraMsg(MediationConstant.BAIDU_DISLIKE_INFO, objObjectValue);
            }
            setLevelTag(strStringValue10);
            setCpm(dDoubleValue);
            setExpressAd(zBooleanValue2);
            setImageMode(iIntValue5);
            setActionText(strStringValue11);
            setStore(strStringValue12);
            setPackageSizeBytes(jLongValue);
            setPermissionsUrl(strStringValue13);
            setPermissionsMap(map);
            setPrivacyAgreement(strStringValue14);
            setVersionName(strStringValue15);
            setRating(dDoubleValue2);
            setInteractionType(iIntValue6);
            setFunctionDescUrl(strStringValue16);
            setRegUrl(strStringValue17);
            setSupportRender(iIntValue7);
        } else {
            if (i10 == 8143) {
                return (T) Double.valueOf(getCpm());
            }
            if (i10 == 8145) {
                com.byazt.me.x xVar = this.tt;
                if (xVar != null) {
                    xVar.tt();
                }
            } else if (i10 == 8146) {
                com.byazt.me.x xVar2 = this.tt;
                if (xVar2 != null) {
                    xVar2.ve();
                }
            } else if (i10 == 8118) {
                com.byazt.me.x xVar3 = this.tt;
                if (xVar3 != null) {
                    xVar3.n();
                }
            } else if (i10 == 8117) {
                int iIntValue8 = pluginValueSet.intValue(8014);
                String strStringValue18 = pluginValueSet.stringValue(8015);
                com.byazt.me.x xVar4 = this.tt;
                if (xVar4 != null) {
                    xVar4.c(new com.byazt.pp.c(iIntValue8, strStringValue18));
                }
            } else if (i10 == 8150) {
                com.byazt.me.x xVar5 = this.tt;
                if (xVar5 != null) {
                    xVar5.uj();
                }
            } else if (i10 == 1025) {
                if (this.tt != null) {
                    this.tt.c(pluginValueSet.longValue(8072), pluginValueSet.longValue(8073));
                }
            } else if (i10 == 8152) {
                com.byazt.zh.tt ttVar5 = this.ve;
                if (ttVar5 != null) {
                    ttVar5.c();
                }
            } else if (i10 == 8153) {
                com.byazt.zh.tt ttVar6 = this.ve;
                if (ttVar6 != null) {
                    ttVar6.tt();
                }
            } else if (i10 == 8187) {
                if (this.ve != null) {
                    this.ve.c(pluginValueSet.longValue(8062), pluginValueSet.longValue(8063), pluginValueSet.intValue(8064), pluginValueSet.intValue(8065), "", "");
                }
            } else if (i10 == 8155) {
                if (this.ve != null) {
                    this.ve.c(pluginValueSet.longValue(8062), pluginValueSet.stringValue(8066), pluginValueSet.stringValue(8056));
                }
            } else if (i10 == 8156) {
                if (this.ve != null) {
                    this.ve.c(pluginValueSet.stringValue(8066), pluginValueSet.stringValue(8056));
                }
            } else if (i10 == 8157) {
                if (this.ve != null) {
                    this.ve.tt(pluginValueSet.longValue(8062), pluginValueSet.longValue(8063), pluginValueSet.stringValue(8066), pluginValueSet.stringValue(8056));
                }
            } else if (i10 == 8158) {
                if (this.ve != null) {
                    this.ve.c(pluginValueSet.longValue(8062), pluginValueSet.longValue(8063), pluginValueSet.stringValue(8066), pluginValueSet.stringValue(8056));
                }
            } else {
                if (i10 == 8160) {
                    return (T) Boolean.valueOf(isUseCustomVideo());
                }
                if (i10 == 6069) {
                    return (T) Integer.valueOf(getImageMode());
                }
                if (i10 == 8185) {
                    com.byazt.dhf.c cVar10 = this.f12659da;
                    if (cVar10 != null) {
                        cVar10.c();
                    }
                } else if (i10 == 8184) {
                    com.byazt.dhf.c cVar11 = this.f12659da;
                    if (cVar11 != null) {
                        cVar11.tt();
                    }
                } else {
                    if (i10 == 8196) {
                        return (T) Boolean.valueOf(isExpressAd());
                    }
                    if (i10 == 8197) {
                        com.byazt.zh.n nVar = this.uj;
                        if (nVar != null) {
                            nVar.c();
                        }
                    } else if (i10 == 8227) {
                        if (pluginValueSet != null) {
                            putExtraMsg((Map) pluginValueSet.objectValue(8075, Map.class));
                        }
                    } else if (i10 == 6107 && this.f22304n != null) {
                        this.f22304n.c(pluginValueSet.intValue(20055));
                    }
                }
            }
        }
        return (T) com.byazt.hf.c.c(cls);
    }

    @Override // com.byazt.yl.ve
    public void cancelDownload() {
        if (((uj) this).f12664x != null) {
            ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(6093).c(Void.class).tt());
        }
    }

    @Override // com.byazt.yl.ve
    public void dislikeClick(String str, Map<String, Object> map) {
        if (((uj) this).f12664x != null) {
            ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(8194).c(Integer.class).c(8036, str).c(8075, map).tt());
        }
    }

    @Override // com.byazt.yl.ve
    public Bitmap getAdLogo() {
        if (TextUtils.equals(getAdnName(), MediationConstant.ADN_GDT)) {
            return com.byazt.fh.uj.c(2);
        }
        if (((uj) this).f12664x == null) {
            return super.getAdLogo();
        }
        Object objApply = ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(8267).c(Bitmap.class).tt());
        if (objApply instanceof Bitmap) {
            return (Bitmap) objApply;
        }
        return null;
    }

    @Override // com.byazt.yl.ve
    public View getAdView() {
        if (((uj) this).f12664x == null) {
            return super.getAdView();
        }
        Object objApply = ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(6081).c(View.class).tt());
        if (objApply instanceof View) {
            return (View) objApply;
        }
        return null;
    }

    @Override // com.byazt.yl.ve
    public int getDownloadStatus() {
        if (((uj) this).f12664x == null) {
            return super.getDownloadStatus();
        }
        Object objApply = ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(8193).c(Integer.class).tt());
        if (objApply instanceof Integer) {
            return ((Integer) objApply).intValue();
        }
        return 0;
    }

    @Override // com.byazt.yl.ve
    public com.byazt.me.n getGMNativeCustomVideoReporter() {
        if (((uj) this).f12664x == null) {
            return null;
        }
        Object objApply = ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(8320).c(n0.a.a()).tt());
        if (n0.b.a(objApply)) {
            return com.byazt.zr.c.c(n0.c.a(objApply));
        }
        return null;
    }

    @Override // com.byazt.yl.ve
    public String getReqId() {
        if (((uj) this).f12664x == null) {
            return super.getReqId();
        }
        Object objApply = ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(8147).c(String.class).tt());
        if (objApply instanceof String) {
            return objApply.toString();
        }
        return null;
    }

    @Override // com.byazt.yl.ve
    public t getVideoCoverImage() {
        if (((uj) this).f12664x != null) {
            Object objApply = ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(8269).c(Map.class).tt());
            if (objApply instanceof Map) {
                Map map = (Map) objApply;
                Object obj = map.get("imgUrl");
                final Object obj2 = map.get("width");
                final Object obj3 = map.get("height");
                final Object obj4 = map.get("valid");
                final Object obj5 = map.get("duration");
                if (obj instanceof String) {
                    final String str = (String) obj;
                    if (!TextUtils.isEmpty(str)) {
                        return new t() { // from class: com.byazt.db.sp.1
                            @Override // com.byazt.nc.t
                            public double getDuration() {
                                Object obj6 = obj5;
                                if (obj6 instanceof Double) {
                                    return ((Double) obj6).doubleValue();
                                }
                                return 0.0d;
                            }

                            @Override // com.byazt.nc.t
                            public int getHeight() {
                                Object obj6 = obj3;
                                if (obj6 instanceof Integer) {
                                    return ((Integer) obj6).intValue();
                                }
                                return 0;
                            }

                            @Override // com.byazt.nc.t
                            public String getImageUrl() {
                                return str;
                            }

                            @Override // com.byazt.nc.t
                            public int getWidth() {
                                Object obj6 = obj2;
                                if (obj6 instanceof Integer) {
                                    return ((Integer) obj6).intValue();
                                }
                                return 0;
                            }

                            @Override // com.byazt.nc.t
                            public boolean isValid() {
                                Object obj6 = obj4;
                                return (obj6 instanceof Boolean) && ((Boolean) obj6).booleanValue();
                            }
                        };
                    }
                }
            }
        }
        return super.getVideoCoverImage();
    }

    @Override // com.byazt.yl.ve
    public double getVideoDuration() {
        if (((uj) this).f12664x == null) {
            return super.getVideoDuration();
        }
        Object objApply = ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(8268).c(Double.class).tt());
        if (objApply instanceof Double) {
            return ((Double) objApply).doubleValue();
        }
        return 0.0d;
    }

    @Override // com.byazt.yl.ve
    public int getVideoHeight() {
        if (((uj) this).f12664x == null) {
            return super.getVideoWidth();
        }
        Object objApply = ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(8162).c(Integer.class).tt());
        if (objApply instanceof Integer) {
            return ((Integer) objApply).intValue();
        }
        return 0;
    }

    @Override // com.byazt.yl.ve
    public String getVideoUrl() {
        if (((uj) this).f12664x == null) {
            return super.getVideoUrl();
        }
        Object objApply = ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(8163).c(String.class).tt());
        return objApply instanceof String ? objApply.toString() : "";
    }

    @Override // com.byazt.yl.ve
    public View getVideoView() {
        if (((uj) this).f12664x == null) {
            return super.getVideoView();
        }
        Object objApply = ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(6164).c(View.class).tt());
        if (objApply instanceof View) {
            return (View) objApply;
        }
        return null;
    }

    @Override // com.byazt.yl.ve
    public int getVideoWidth() {
        if (((uj) this).f12664x == null) {
            return super.getVideoWidth();
        }
        Object objApply = ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(8161).c(Integer.class).tt());
        if (objApply instanceof Integer) {
            return ((Integer) objApply).intValue();
        }
        return 0;
    }

    @Override // com.byazt.yl.ve
    public boolean hasDislike() {
        try {
            if (((uj) this).f12664x != null) {
                Object objApply = ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(8135).c(Boolean.class).tt());
                return (objApply instanceof Boolean) && ((Boolean) objApply).booleanValue();
            }
        } catch (Exception unused) {
        }
        return super.hasDislike();
    }

    @Override // com.byazt.yl.ve
    public Integer isReadyStatus() {
        return uj.isReadyStatus(((uj) this).f12664x);
    }

    @Override // com.byazt.yl.ve
    public void pauseAppDownload() {
        if (((uj) this).f12664x != null) {
            ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(8191).c(Void.class).tt());
        }
    }

    @Override // com.byazt.yl.ve
    public void registerViewForInteraction(@NonNull Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, da daVar, List<View> list4) {
        super.registerViewForInteraction(activity, viewGroup, list, list2, list3, daVar, list4);
        c(activity, viewGroup, list, list2, list3, daVar, list4);
    }

    @Override // com.byazt.yl.ve
    public void render() {
        super.render();
        if (((uj) this).f12664x != null) {
            ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(6083).c(Void.class).tt());
        }
    }

    @Override // com.byazt.yl.ve
    public void resumeAppDownload() {
        if (((uj) this).f12664x != null) {
            ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(8192).c(Void.class).tt());
        }
    }

    @Override // com.byazt.yl.ve
    public void setDislikeCallback(Activity activity, com.byazt.dhf.c cVar) {
        this.f12659da = cVar;
        if (((uj) this).f12664x != null) {
            ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(6085).c(Void.class).c(20033, activity).tt());
        }
    }

    @Override // com.byazt.yl.ve
    public void unregisterView() {
        if (((uj) this).f12664x != null) {
            ((uj) this).f12664x.apply(com.byazt.yxi.uj.c().c(q.a.f84873t).c(Void.class).tt());
        }
    }
}
