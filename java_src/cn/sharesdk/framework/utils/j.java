package cn.sharesdk.framework.utils;

import android.content.Context;
import com.mob.tools.utils.ResHelper;

/* JADX INFO: loaded from: classes7.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static float f2730a = 1.5f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f2731b = 540;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Context f2732c;

    public static void a(Context context) {
        Context context2 = f2732c;
        if (context2 == null || context2 != context.getApplicationContext()) {
            f2732c = context;
        }
    }

    public static int b(int i10) {
        return ResHelper.designToDevice(f2732c, f2731b, i10);
    }

    public static int a(int i10) {
        return ResHelper.designToDevice(f2732c, f2730a, i10);
    }
}
