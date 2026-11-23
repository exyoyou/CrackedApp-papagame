package com.byazt.sp;

import android.content.Context;
import android.util.SparseArray;
import com.byazt.db.a;
import com.byazt.db.i;
import com.byazt.db.n;
import com.byazt.db.sp;
import com.byazt.db.x;
import com.byazt.nbs.da;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import n0.b;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 91, 20})
public class c implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.ll.tt f19845a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ve f19846c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.dv.tt f19847n;
    public da sp;
    public int tt;
    public Function<SparseArray<Object>, Object> uj;
    public int ve;

    public c(com.byazt.ll.tt ttVar, com.byazt.dv.tt ttVar2, ve veVar) {
        this.tt = ttVar.my();
        this.f19845a = ttVar;
        this.ve = ttVar2.z();
        this.f19847n = ttVar2;
        this.f19846c = veVar;
        this.sp = ttVar2.x();
    }

    private com.byazt.yl.ve c() {
        switch (this.tt) {
            case 1:
                return new com.byazt.db.ve(this.f19847n);
            case 2:
                return new a(this.f19847n);
            case 3:
                return new i(this.f19847n);
            case 4:
            case 6:
            default:
                return null;
            case 5:
                int i10 = this.ve;
                if (i10 == 4) {
                    return new sp(this.f19847n, this.f19846c);
                }
                if (i10 == 3) {
                    return new com.byazt.db.ve(this.f19847n);
                }
                return i10 == 5 ? new sp(this.f19847n, this.f19846c) : new sp(this.f19847n, this.f19846c);
            case 7:
                int i11 = this.ve;
                if (i11 == 6) {
                    return new x(this.f19847n);
                }
                if (i11 == 7) {
                    return new n(this.f19847n);
                }
                return i11 == 8 ? new a(this.f19847n) : new x(this.f19847n);
            case 8:
                return new n(this.f19847n);
            case 9:
                return new sp(this.f19847n, this.f19846c);
            case 10:
                int i12 = this.ve;
                if (i12 == 1) {
                    return new a(this.f19847n);
                }
                if (i12 == 2) {
                    return new n(this.f19847n);
                }
                return null;
        }
    }

    public String getBiddingToken(Context context, String str, Object obj) {
        if (this.uj != null) {
            Object objApply = this.uj.apply(com.byazt.yxi.uj.c().c(8139).c(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context).c(AVMDLDataLoader.KeyIsLiveCacheThresholdP2pToHttp, str).c(8044, obj).c(String.class).tt());
            if (objApply instanceof String) {
                return objApply.toString();
            }
        }
        return null;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetTt = com.byazt.rl.c.c(sparseArray).tt();
        int iIntValue = pluginValueSetTt.intValue(-99999987);
        Class cls = (Class) pluginValueSetTt.objectValue(-99999985, Class.class);
        if (iIntValue == 8108) {
            this.f19846c.notifyLoadFail(new com.byazt.pp.c(pluginValueSetTt.intValue(8014), pluginValueSetTt.stringValue(8015)));
        } else if (iIntValue == 8112) {
            Function functionA = n0.c.a(pluginValueSetTt.objectValue(8303, n0.a.a()));
            int iIntValue2 = pluginValueSetTt.intValue(8014);
            String strStringValue = pluginValueSetTt.stringValue(8015);
            ArrayList arrayList = new ArrayList(1);
            if (functionA instanceof com.byazt.yl.ve) {
                arrayList.add((com.byazt.yl.ve) functionA);
            } else if (b.a(functionA)) {
                Object objApply = functionA.apply(com.byazt.yxi.uj.c().c(-99999977).tt());
                if (objApply instanceof com.byazt.yl.ve) {
                    arrayList.add((com.byazt.yl.ve) objApply);
                }
            }
            this.f19846c.notifyVideoCache(arrayList, new com.byazt.pp.c(iIntValue2, strStringValue));
        } else if (iIntValue == 8107) {
            List list = (List) pluginValueSetTt.objectValue(8303, List.class);
            ArrayList arrayList2 = new ArrayList();
            if (list != null && !list.isEmpty()) {
                for (Object obj : list) {
                    if (obj instanceof com.byazt.yl.ve) {
                        arrayList2.add((com.byazt.yl.ve) obj);
                    } else if (b.a(obj)) {
                        Object objApply2 = n0.c.a(obj).apply(com.byazt.yxi.uj.c().c(-99999977).tt());
                        if (objApply2 instanceof com.byazt.yl.ve) {
                            arrayList2.add((com.byazt.yl.ve) objApply2);
                        }
                    }
                }
            }
            this.f19846c.notifyLoadSuccess(arrayList2);
        } else {
            if (iIntValue == 8127) {
                return c();
            }
            if (iIntValue == 8110) {
                return Boolean.valueOf(this.f19847n.c());
            }
            if (iIntValue == 8136) {
                return Boolean.valueOf(this.f19847n.gu());
            }
            if (iIntValue == 8141) {
                return Boolean.valueOf(this.f19847n.gr());
            }
            if (iIntValue == 8137) {
                return this.f19847n.zm();
            }
            if (iIntValue == 8226) {
                return Integer.valueOf(this.f19847n.my());
            }
            if (iIntValue == 8138) {
                this.uj = n0.c.a(pluginValueSetTt.objectValue(8043, n0.a.a()));
            } else if (iIntValue == 8210) {
                return Boolean.valueOf(this.f19846c.hasNotifyFail());
            }
        }
        return com.byazt.hf.c.c(cls);
    }
}
