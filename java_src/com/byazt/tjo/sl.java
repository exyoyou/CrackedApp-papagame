package com.byazt.tjo;

import android.content.Context;
import android.util.SparseArray;
import com.byazt.omf.md;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 516, 158})
public class sl implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public md f20210c;
    public n tt = new n();
    public x ve;

    public sl(md mdVar) {
        this.f20210c = mdVar;
        this.ve = new x(this.f20210c);
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetTt = com.byazt.rl.c.c(sparseArray).tt();
        int iIntValue = pluginValueSetTt.intValue(-99999987);
        if (iIntValue == -99999986) {
            md mdVar = this.f20210c;
            if (mdVar != null) {
                return mdVar.values();
            }
        } else if (iIntValue != -999800) {
            if (iIntValue == 8303 || iIntValue == 999801) {
                if (iIntValue == 8303) {
                    com.byazt.eu.tt.tt("TMe", "initRequestCondition getBridge");
                    return this.tt;
                }
                if (this.f20210c != null) {
                    return this.ve;
                }
            }
        } else if (this.f20210c != null) {
            Context context = (Context) pluginValueSetTt.objectValue(-998000, Context.class);
            return new sp(context, this.f20210c.createLoader(context));
        }
        return null;
    }
}
