package com.kongzue.dialogx.style;

import android.content.Context;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.interfaces.DialogXStyle;
import com.kongzue.dialogx.interfaces.b0;
import com.kongzue.dialogx.util.views.ProgressView;

/* JADX INFO: loaded from: classes3.dex */
public class a extends DialogXStyle {

    /* JADX INFO: renamed from: com.kongzue.dialogx.style.a$a, reason: collision with other inner class name */
    public class C0777a extends DialogXStyle.b {
        public C0777a() {
            super();
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.b
        public float a() {
            return 0.6f;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.b
        public int b(boolean z10) {
            return z10 ? R.layout.layout_dialogx_bottom_material : R.layout.layout_dialogx_bottom_material_dark;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.b
        public int c(boolean z10) {
            return z10 ? R.drawable.rect_dialogx_material_menu_split_divider : R.drawable.rect_dialogx_material_menu_split_divider_night;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.b
        public int d(boolean z10) {
            return 1;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.b
        public int e(boolean z10, int i10, int i11, boolean z11) {
            return 0;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.b
        public int f(boolean z10) {
            return z10 ? R.color.black90 : R.color.white90;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.b
        public int g(boolean z10, boolean z11) {
            return z11 ? R.mipmap.img_dialogx_bottom_menu_material_item_multi_selection : R.mipmap.img_dialogx_bottom_menu_material_item_non_multi_select;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.b
        public int h(boolean z10, boolean z11) {
            return z11 ? R.mipmap.img_dialogx_bottom_menu_material_item_selection : R.mipmap.img_dialogx_bottom_menu_material_item_non_select;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.b
        public int i(boolean z10) {
            return 0;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.b
        public boolean j(boolean z10) {
            return false;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.b
        public boolean k() {
            return true;
        }
    }

    public class b extends DialogXStyle.c {
        public b() {
            super();
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.c
        public int a(int i10, boolean z10) {
            return z10 ? R.drawable.button_dialogx_material_light : R.drawable.button_dialogx_material_night;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.c
        public int b(int i10, boolean z10) {
            return z10 ? R.drawable.button_dialogx_material_light : R.drawable.button_dialogx_material_night;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.c
        public int c(int i10, boolean z10) {
            return z10 ? R.drawable.button_dialogx_material_light : R.drawable.button_dialogx_material_night;
        }
    }

    public class c extends DialogXStyle.d {
        public c() {
            super();
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.d
        public int a() {
            return 0;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.d
        public DialogXStyle.a b() {
            return null;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.d
        public int c(boolean z10) {
            return z10 ? R.layout.layout_dialogx_popmenu_material : R.layout.layout_dialogx_popmenu_material_dark;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.d
        public int d(boolean z10) {
            return 0;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.d
        public int e(boolean z10) {
            return 0;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.d
        public int f(boolean z10, int i10, int i11, boolean z11) {
            return 0;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.d
        public int g(boolean z10) {
            return 0;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.d
        public int h(boolean z10) {
            return z10 ? R.color.black90 : R.color.white90;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.d
        public int i(boolean z10) {
            return 0;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.d
        public int j() {
            return 0;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.d
        public boolean k(boolean z10) {
            return false;
        }
    }

    public class d extends DialogXStyle.PopNotificationSettings {
        public d() {
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.PopNotificationSettings
        public DialogXStyle.PopNotificationSettings.ALIGN a() {
            return DialogXStyle.PopNotificationSettings.ALIGN.TOP;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.PopNotificationSettings
        public int f(boolean z10) {
            return R.anim.anim_dialogx_notification_enter;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.PopNotificationSettings
        public int g(boolean z10) {
            return R.anim.anim_dialogx_notification_exit;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.PopNotificationSettings
        public int h(boolean z10) {
            return z10 ? R.layout.layout_dialogx_popnotification_material : R.layout.layout_dialogx_popnotification_material_dark;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.PopNotificationSettings
        public boolean i() {
            return false;
        }
    }

    public class e extends DialogXStyle.PopTipSettings {
        public e() {
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.PopTipSettings
        public DialogXStyle.PopTipSettings.ALIGN a() {
            return DialogXStyle.PopTipSettings.ALIGN.BOTTOM;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.PopTipSettings
        public int e(boolean z10) {
            return R.anim.anim_dialogx_default_enter;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.PopTipSettings
        public int f(boolean z10) {
            return R.anim.anim_dialogx_default_exit;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.PopTipSettings
        public int g(boolean z10) {
            return z10 ? R.layout.layout_dialogx_poptip_material : R.layout.layout_dialogx_poptip_material_dark;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.PopTipSettings
        public boolean h() {
            return true;
        }
    }

    public class f extends DialogXStyle.e {
        public f() {
            super();
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.e
        public int a(int i10, boolean z10) {
            return z10 ? R.drawable.button_dialogx_material_light : R.drawable.button_dialogx_material_night;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.e
        public int b(int i10, boolean z10) {
            return z10 ? R.drawable.button_dialogx_material_light : R.drawable.button_dialogx_material_night;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.e
        public int c(int i10, boolean z10) {
            return z10 ? R.drawable.button_dialogx_material_light : R.drawable.button_dialogx_material_night;
        }
    }

    public class g extends DialogXStyle.f {
        public g() {
            super();
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.f
        public boolean a() {
            return false;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.f
        public int b(boolean z10) {
            return 0;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.f
        public int c() {
            return -1;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.f
        public int d(boolean z10) {
            return z10 ? R.color.white : R.color.black;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.f
        public int e(boolean z10) {
            return R.layout.layout_dialogx_wait;
        }

        @Override // com.kongzue.dialogx.interfaces.DialogXStyle.f
        public b0 f(Context context, boolean z10) {
            return new ProgressView(context);
        }
    }

    public static a q() {
        return new a();
    }

    @Override // com.kongzue.dialogx.interfaces.DialogXStyle
    public int a() {
        return R.anim.anim_dialogx_default_enter;
    }

    @Override // com.kongzue.dialogx.interfaces.DialogXStyle
    public int b() {
        return R.anim.anim_dialogx_default_exit;
    }

    @Override // com.kongzue.dialogx.interfaces.DialogXStyle
    public int[] c() {
        return new int[]{3, 4, 2, 1};
    }

    @Override // com.kongzue.dialogx.interfaces.DialogXStyle
    public int d(boolean z10) {
        return z10 ? R.layout.layout_dialogx_material : R.layout.layout_dialogx_material_dark;
    }

    @Override // com.kongzue.dialogx.interfaces.DialogXStyle
    public DialogXStyle.a e() {
        return null;
    }

    @Override // com.kongzue.dialogx.interfaces.DialogXStyle
    public DialogXStyle.b f() {
        return new C0777a();
    }

    @Override // com.kongzue.dialogx.interfaces.DialogXStyle
    public DialogXStyle.c g() {
        return new b();
    }

    @Override // com.kongzue.dialogx.interfaces.DialogXStyle
    public DialogXStyle.e h() {
        return new f();
    }

    @Override // com.kongzue.dialogx.interfaces.DialogXStyle
    public DialogXStyle.f i() {
        return new g();
    }

    @Override // com.kongzue.dialogx.interfaces.DialogXStyle
    public DialogXStyle.d j() {
        return new c();
    }

    @Override // com.kongzue.dialogx.interfaces.DialogXStyle
    public DialogXStyle.PopNotificationSettings k() {
        return new d();
    }

    @Override // com.kongzue.dialogx.interfaces.DialogXStyle
    public DialogXStyle.PopTipSettings l() {
        return new e();
    }

    @Override // com.kongzue.dialogx.interfaces.DialogXStyle
    public int m(boolean z10) {
        return 0;
    }

    @Override // com.kongzue.dialogx.interfaces.DialogXStyle
    public int n() {
        return 1;
    }

    @Override // com.kongzue.dialogx.interfaces.DialogXStyle
    public boolean o() {
        return true;
    }

    @Override // com.kongzue.dialogx.interfaces.DialogXStyle
    public int[] p() {
        return new int[]{1, 3, 2};
    }
}
