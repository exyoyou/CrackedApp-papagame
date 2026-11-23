package com.byazt.fh;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.byazt.omf.gt;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TypedValues.PositionType.TYPE_SIZE_PERCENT, 54})
public class ve {
    public static String c(String str) {
        String strMd = gt.tt().md();
        if (TextUtils.isEmpty(strMd)) {
            return "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/".concat(String.valueOf(str));
        }
        return strMd + str;
    }
}
