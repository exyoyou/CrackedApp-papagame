package com.byazt.or;

import android.net.Uri;
import android.text.TextUtils;
import com.haima.hmcp.beans.ClipBoardItemData;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 579, 72})
public class da {

    public enum c {
        HTML(ClipBoardItemData.TYPE_TEXT_HTML),
        CSS("text/css"),
        JS("application/x-javascript"),
        IMAGE("image/*");


        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f18358n;

        c(String str) {
            this.f18358n = str;
        }

        public String getType() {
            return this.f18358n;
        }
    }

    public static c c(String str) {
        c cVar = c.IMAGE;
        if (!TextUtils.isEmpty(str)) {
            try {
                String path = Uri.parse(str).getPath();
                if (path != null) {
                    if (path.endsWith(".css")) {
                        cVar = c.CSS;
                    } else if (path.endsWith(".js")) {
                        cVar = c.JS;
                    } else if (!path.endsWith(".jpg") && !path.endsWith(".gif") && !path.endsWith(".png") && !path.endsWith(".jpeg") && !path.endsWith(".webp") && !path.endsWith(".bmp") && !path.endsWith(".ico") && path.endsWith(".html")) {
                        cVar = c.HTML;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return cVar;
    }

    public static boolean tt(String str) {
        Uri uri;
        if (TextUtils.isEmpty(str) || (uri = Uri.parse(str)) == null) {
            return false;
        }
        String path = uri.getPath();
        if (TextUtils.isEmpty(path)) {
            return false;
        }
        return path.endsWith(".gif");
    }
}
