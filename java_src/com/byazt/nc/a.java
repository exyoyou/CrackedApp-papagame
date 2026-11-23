package com.byazt.nc;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME, 34})
public class a implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f17151c;

    public a(Function<SparseArray<Object>, Object> function) {
        Function<SparseArray<Object>, Object> function2 = com.byazt.rl.c.tt;
        this.f17151c = function2;
        this.f17151c = function == null ? function2 : function;
    }

    public void addOption(a aVar) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, aVar);
        sparseArray.put(-99999987, 241101);
        sparseArray.put(-99999985, Void.class);
        this.f17151c.apply(sparseArray);
    }

    public String getId() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 241103);
        sparseArray.put(-99999985, String.class);
        return (String) this.f17151c.apply(sparseArray);
    }

    public boolean getIsSelected() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 241105);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.f17151c.apply(sparseArray)).booleanValue();
    }

    public String getName() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 241104);
        sparseArray.put(-99999985, String.class);
        return (String) this.f17151c.apply(sparseArray);
    }

    public List<a> getOptions() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 241108);
        sparseArray.put(-99999985, List.class);
        List arrayList = (List) this.f17151c.apply(sparseArray);
        if (arrayList == null) {
            arrayList = new ArrayList(0);
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(new a(com.byazt.gxc.ve.c(it2.next())));
        }
        return arrayList2;
    }

    public boolean hasSecondOptions() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 241106);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.f17151c.apply(sparseArray)).booleanValue();
    }

    public boolean isValid() {
        SparseArray sparseArray = new SparseArray(2);
        sparseArray.put(-99999987, 241107);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.f17151c.apply(sparseArray)).booleanValue();
    }

    public void setIsSelected(boolean z10) {
        SparseArray sparseArray = new SparseArray(3);
        sparseArray.put(0, Boolean.valueOf(z10));
        sparseArray.put(-99999987, 241102);
        sparseArray.put(-99999985, Void.class);
        this.f17151c.apply(sparseArray);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetTt = com.byazt.rl.c.c(sparseArray).tt();
        int iIntValue = pluginValueSetTt.intValue(-99999987);
        pluginValueSetTt.objectValue(-99999985, Class.class);
        if (iIntValue == -99999986) {
            return new SparseArray();
        }
        switch (iIntValue) {
            case 241101:
                addOption(new a(n0.c.a(pluginValueSetTt.objectValue(0, n0.a.a()))));
                return null;
            case 241102:
                setIsSelected(pluginValueSetTt.booleanValue(0));
                return null;
            case 241103:
                return getId();
            case 241104:
                return getName();
            case 241105:
                return Boolean.class.cast(Boolean.valueOf(getIsSelected()));
            case 241106:
                return Boolean.class.cast(Boolean.valueOf(hasSecondOptions()));
            case 241107:
                return Boolean.class.cast(Boolean.valueOf(isValid()));
            case 241108:
                return getOptions();
            default:
                return null;
        }
    }
}
