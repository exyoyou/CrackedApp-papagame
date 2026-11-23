package z3;

import android.graphics.PointF;
import android.graphics.Rect;
import android.net.Uri;
import b4.c;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a {
    public static c.a a(Map<String, Object> componentAttribution, Map<String, Object> shortcutAttribution, @Nullable Map<String, Object> dataSourceExtras, @Nullable Rect viewportDimensions, @Nullable String scaleType, @Nullable PointF focusPoint, @Nullable Map<String, Object> imageExtras, @Nullable Object callerContext, @Nullable Uri mainUri) {
        c.a aVar = new c.a();
        if (viewportDimensions != null) {
            aVar.f379g = viewportDimensions.width();
            aVar.f380h = viewportDimensions.height();
        }
        aVar.f381i = scaleType;
        if (focusPoint != null) {
            aVar.f382j = focusPoint.x;
            aVar.f383k = focusPoint.y;
        }
        aVar.f377e = callerContext;
        aVar.f378f = mainUri;
        aVar.f375c = dataSourceExtras;
        aVar.f376d = imageExtras;
        aVar.f374b = shortcutAttribution;
        aVar.f373a = componentAttribution;
        return aVar;
    }
}
