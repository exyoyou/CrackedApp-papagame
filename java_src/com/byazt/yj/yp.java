package com.byazt.yj;

import android.graphics.Bitmap;
import android.widget.ImageView;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes9.dex */
public interface yp {
    yp cache(tt ttVar);

    yp cacheDir(String str);

    yp config(Bitmap.Config config);

    yp converter(da daVar);

    yp from(String str);

    yp headers(boolean z10);

    yp height(int i10);

    yp isLocalRes(boolean z10);

    yp key(String str);

    yp loadSetp(gt gtVar);

    yp maxHeight(int i10);

    yp maxWidth(int i10);

    yp requestTime(boolean z10);

    yp runIn(ExecutorService executorService);

    yp scaleType(ImageView.ScaleType scaleType);

    yp sync(boolean z10);

    t to(ImageView imageView);

    t to(gr grVar);

    t to(gr grVar, int i10);

    yp track(or orVar);

    yp type(int i10);

    yp width(int i10);
}
