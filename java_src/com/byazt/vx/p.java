package com.byazt.vx;

import com.haima.hmcp.device.input.manager.TcMouseManager;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 962, TcMouseManager.MOUSE_STARY})
public class p {
    public static <T> boolean c(List<T> list) {
        return list == null || list.size() == 0;
    }

    public static <T> boolean tt(List<T> list) {
        return list == null || list.size() == 0 || list.get(0) == null;
    }
}
