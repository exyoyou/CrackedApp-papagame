package com.byazt.jk;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import java.util.function.Function;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 801, 13})
public class tt implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TTNativeAd.EasyPlayWidgetListener f15849c;

    public tt(TTNativeAd.EasyPlayWidgetListener easyPlayWidgetListener) {
        this.f15849c = easyPlayWidgetListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (this.f15849c == null) {
            return null;
        }
        ValueSet valueSetTt = com.byazt.rl.ve.c(sparseArray).tt();
        switch (valueSetTt.intValue(-99999987)) {
            case 144101:
                this.f15849c.onInfo((JSONObject) valueSetTt.objectValue(0, JSONObject.class));
                return null;
            case 144102:
                return this.f15849c.getEstimatedInteractionArea();
            case 144103:
                this.f15849c.onCanRenderSuccess((JSONObject) valueSetTt.objectValue(0, JSONObject.class));
                return null;
            case 144104:
                this.f15849c.onCanRenderFail((JSONObject) valueSetTt.objectValue(0, JSONObject.class));
                return null;
            case 144105:
                this.f15849c.onClose();
                return null;
            default:
                return null;
        }
    }
}
