package com.google.android.material.color;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;
import com.google.android.material.color.utilities.u5;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final u5 f30150a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map<Integer, com.google.android.material.color.utilities.j> f30151b;

    static {
        u5 u5Var = new u5();
        f30150a = u5Var;
        HashMap map = new HashMap();
        map.put(Integer.valueOf(R.color.material_personalized_color_primary), u5Var.V5());
        map.put(Integer.valueOf(R.color.material_personalized_color_on_primary), u5Var.E5());
        map.put(Integer.valueOf(R.color.material_personalized_color_primary_inverse), u5Var.p2());
        map.put(Integer.valueOf(R.color.material_personalized_color_primary_container), u5Var.W5());
        map.put(Integer.valueOf(R.color.material_personalized_color_on_primary_container), u5Var.F5());
        map.put(Integer.valueOf(R.color.material_personalized_color_secondary), u5Var.b6());
        map.put(Integer.valueOf(R.color.material_personalized_color_on_secondary), u5Var.I5());
        map.put(Integer.valueOf(R.color.material_personalized_color_secondary_container), u5Var.c6());
        map.put(Integer.valueOf(R.color.material_personalized_color_on_secondary_container), u5Var.J5());
        map.put(Integer.valueOf(R.color.material_personalized_color_tertiary), u5Var.r6());
        map.put(Integer.valueOf(R.color.material_personalized_color_on_tertiary), u5Var.O5());
        map.put(Integer.valueOf(R.color.material_personalized_color_tertiary_container), u5Var.s6());
        map.put(Integer.valueOf(R.color.material_personalized_color_on_tertiary_container), u5Var.P5());
        map.put(Integer.valueOf(R.color.material_personalized_color_background), u5Var.g2());
        map.put(Integer.valueOf(R.color.material_personalized_color_on_background), u5Var.B5());
        map.put(Integer.valueOf(R.color.material_personalized_color_surface), u5Var.h6());
        map.put(Integer.valueOf(R.color.material_personalized_color_on_surface), u5Var.M5());
        map.put(Integer.valueOf(R.color.material_personalized_color_surface_variant), u5Var.q6());
        map.put(Integer.valueOf(R.color.material_personalized_color_on_surface_variant), u5Var.N5());
        map.put(Integer.valueOf(R.color.material_personalized_color_surface_inverse), u5Var.q2());
        map.put(Integer.valueOf(R.color.material_personalized_color_on_surface_inverse), u5Var.o2());
        map.put(Integer.valueOf(R.color.material_personalized_color_surface_bright), u5Var.i6());
        map.put(Integer.valueOf(R.color.material_personalized_color_surface_dim), u5Var.o6());
        map.put(Integer.valueOf(R.color.material_personalized_color_surface_container), u5Var.j6());
        map.put(Integer.valueOf(R.color.material_personalized_color_surface_container_low), u5Var.m6());
        map.put(Integer.valueOf(R.color.material_personalized_color_surface_container_high), u5Var.k6());
        map.put(Integer.valueOf(R.color.material_personalized_color_surface_container_lowest), u5Var.n6());
        map.put(Integer.valueOf(R.color.material_personalized_color_surface_container_highest), u5Var.l6());
        map.put(Integer.valueOf(R.color.material_personalized_color_outline), u5Var.S5());
        map.put(Integer.valueOf(R.color.material_personalized_color_outline_variant), u5Var.T5());
        map.put(Integer.valueOf(R.color.material_personalized_color_error), u5Var.k2());
        map.put(Integer.valueOf(R.color.material_personalized_color_on_error), u5Var.C5());
        map.put(Integer.valueOf(R.color.material_personalized_color_error_container), u5Var.l2());
        map.put(Integer.valueOf(R.color.material_personalized_color_on_error_container), u5Var.D5());
        map.put(Integer.valueOf(R.color.material_personalized_color_control_activated), u5Var.h2());
        map.put(Integer.valueOf(R.color.material_personalized_color_control_normal), u5Var.j2());
        map.put(Integer.valueOf(R.color.material_personalized_color_control_highlight), u5Var.i2());
        map.put(Integer.valueOf(R.color.material_personalized_color_text_primary_inverse), u5Var.x6());
        map.put(Integer.valueOf(R.color.material_personalized_color_text_secondary_and_tertiary_inverse), u5Var.z6());
        map.put(Integer.valueOf(R.color.material_personalized_color_text_secondary_and_tertiary_inverse_disabled), u5Var.A6());
        map.put(Integer.valueOf(R.color.material_personalized_color_text_primary_inverse_disable_only), u5Var.y6());
        map.put(Integer.valueOf(R.color.material_personalized_color_text_hint_foreground_inverse), u5Var.w6());
        f30151b = Collections.unmodifiableMap(map);
    }

    private r() {
    }

    @NonNull
    public static Map<Integer, Integer> a(@NonNull com.google.android.material.color.utilities.k kVar) {
        HashMap map = new HashMap();
        for (Map.Entry<Integer, com.google.android.material.color.utilities.j> entry : f30151b.entrySet()) {
            map.put(entry.getKey(), Integer.valueOf(entry.getValue().h(kVar)));
        }
        return Collections.unmodifiableMap(map);
    }
}
