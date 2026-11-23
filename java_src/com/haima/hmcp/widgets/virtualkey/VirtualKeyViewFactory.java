package com.haima.hmcp.widgets.virtualkey;

import android.content.Context;
import com.haima.hmcp.beans.PointCoord;

/* JADX INFO: loaded from: classes5.dex */
public class VirtualKeyViewFactory {

    public enum KeyType {
        NORMAL(0, "普通"),
        TRACK(1, "轨迹"),
        DIRECTION(2, "方向键"),
        FIRE(3, "开火"),
        CROSSHAIR(4, "准星"),
        GRAVITY(5, "重力"),
        COMBO(6, "组合键");

        private final String description;
        private final int value;

        KeyType(int i10, String str) {
            this.value = i10;
            this.description = str;
        }

        public String getDescription() {
            return this.description;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static BaseVirtualKeyView createVirtualKeyView(Context context, PointCoord pointCoord) {
        return pointCoord.type == KeyType.DIRECTION.getValue() ? new DirectionKeyView(context) : new NormalVirtualKeyView(context);
    }
}
