package q.rorbin.badgeview;

import android.content.Context;

/* JADX INFO: loaded from: classes10.dex */
public class d {
    public static int a(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int b(Context context, float f10) {
        return (int) ((f10 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
