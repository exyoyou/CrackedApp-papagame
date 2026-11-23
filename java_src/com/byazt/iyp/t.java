package com.byazt.iyp;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.beizi.fusion.widget.ScrollClickView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, 66})
public final class t {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f15660c = new int[2];

    public static void c(JSONObject jSONObject, View view, int i10, boolean z10) {
        if (jSONObject == null || view == null) {
            return;
        }
        try {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parent;
                jSONObject.put("container_class", viewGroup.getClass().getName());
                jSONObject.put("container_width_height", viewGroup.getWidth() + " X " + viewGroup.getHeight());
            }
            int[] iArr = f15660c;
            int i11 = 0;
            iArr[0] = 0;
            iArr[1] = 0;
            view.getLocationOnScreen(iArr);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(ScrollClickView.DIR_LEFT, iArr[0]);
            jSONObject2.put("top", iArr[1]);
            jSONObject2.put(ScrollClickView.DIR_RIGHT, iArr[0] + view.getWidth());
            jSONObject2.put("bottom", iArr[1] + view.getHeight());
            jSONObject.put("screen_rect", jSONObject2.toString());
            if (!z10) {
                jSONObject.put("view_tree_path", " ");
                jSONObject.put("view_tree_path_hash", " ");
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            View view2 = view;
            while (view2 != null) {
                int i12 = i11 + 1;
                if (i11 >= i10) {
                    break;
                }
                if (sb2.length() > 0) {
                    sb2.append(" > ");
                }
                sb2.append(view2.getClass().getName());
                Object parent2 = view2.getParent();
                view2 = parent2 instanceof View ? (View) parent2 : null;
                i11 = i12;
            }
            if (sb2.length() > 0) {
                jSONObject.put("view_tree_path", sb2.toString());
                jSONObject.put("view_tree_path_hash", com.byazt.nr.a.tt(sb2.toString()));
            } else {
                jSONObject.put("view_tree_path", " ");
                jSONObject.put("view_tree_path_hash", " ");
            }
            i.c(jSONObject, view, i10);
        } catch (Throwable unused) {
        }
    }
}
