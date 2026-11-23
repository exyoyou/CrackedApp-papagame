package com.join.android.app.component.optimizetext;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.collection.LruCache;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f34995d = 15;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f34996e = 100;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f34998b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LruCache<String, StaticLayout> f34997a = new LruCache<>(100);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f34999c = 15;

    public b(Context context) {
        this.f34998b = context;
    }

    private ArrayList<String> a(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (String str2 : str.split("")) {
            arrayList.add(str2);
        }
        return arrayList;
    }

    private String b(String content, int width, int tagLines, TextPaint textPaint) {
        ArrayList<String> arrayListA = a(content);
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        int i11 = 0;
        int length = 0;
        for (String str : arrayListA) {
            if (i10 == tagLines) {
                sb2.setLength(sb2.length() - 4);
                sb2.append("...");
                break;
            }
            if (str.equals("\n\r") || str.equals("\n")) {
                i10++;
                sb2.append(str);
            } else if (i11 <= 20) {
                sb2.append(str);
                i11++;
            } else if (((int) Layout.getDesiredWidth(sb2.toString(), length, sb2.length(), textPaint)) < width) {
                i11++;
                sb2.append(str);
            } else {
                i10++;
                length = sb2.length() - 2;
                sb2.append(str);
                i11 = 0;
            }
        }
        return sb2.toString();
    }

    private void c(SpannableStringBuilder content, int width, int tagLines, TextPaint textPaint) {
        try {
            ArrayList<String> arrayListA = a(content.toString());
            StringBuilder sb2 = new StringBuilder();
            int i10 = 0;
            int i11 = 0;
            int length = 0;
            for (String str : arrayListA) {
                if (i10 == tagLines) {
                    int length2 = sb2.length();
                    if (length2 > 4) {
                        length2 = sb2.length() - 4;
                    }
                    sb2.setLength(length2);
                    content.delete(sb2.length(), content.length());
                    content.append("...");
                    sb2.append("...");
                    return;
                }
                if (str.equals("\n\r") || str.equals("\n")) {
                    i10++;
                    sb2.append(str);
                } else if (i11 <= 20) {
                    sb2.append(str);
                    i11++;
                } else if (((int) Layout.getDesiredWidth(sb2.toString(), length, sb2.length(), textPaint)) < width) {
                    i11++;
                    sb2.append(str);
                } else {
                    i10++;
                    length = sb2.length() - 2;
                    sb2.append(str);
                    i11 = 0;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public StaticLayout d(String key) {
        return this.f34997a.get(key);
    }

    public void e(c item) {
        TextPaint textPaint = new TextPaint(1);
        textPaint.density = this.f34998b.getResources().getDisplayMetrics().density;
        textPaint.setTextSize(this.f34998b.getResources().getDimension(R.dimen.wdp28));
        textPaint.setColor(Color.parseColor("#909090"));
        Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
        Canvas canvas = new Canvas();
        String strB = item.b();
        SpannableStringBuilder spannableStringBuilderA = item.a();
        int iG = a.g() - (this.f34998b.getResources().getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2);
        if (TextUtils.isEmpty(spannableStringBuilderA) || this.f34997a.get(strB) != null) {
            return;
        }
        c(spannableStringBuilderA, iG, 2, textPaint);
        StaticLayout staticLayout = new StaticLayout(spannableStringBuilderA, textPaint, iG, alignment, 1.2f, 0.0f, true);
        staticLayout.draw(canvas);
        this.f34997a.put(strB, staticLayout);
    }

    public void f(c item, int maxLines) {
        TextPaint textPaint = new TextPaint(1);
        textPaint.density = this.f34998b.getResources().getDisplayMetrics().density;
        textPaint.setTextSize(a.s(this.f34999c));
        textPaint.setColor(Color.parseColor("#4A4A4A"));
        Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
        Canvas canvas = new Canvas();
        String strB = item.b();
        SpannableStringBuilder spannableStringBuilderA = item.a();
        int iG = a.g() - (this.f34998b.getResources().getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2);
        if (TextUtils.isEmpty(spannableStringBuilderA) || this.f34997a.get(strB) != null) {
            return;
        }
        if (maxLines != -1) {
            c(spannableStringBuilderA, iG, maxLines, textPaint);
        }
        StaticLayout staticLayout = new StaticLayout(spannableStringBuilderA, textPaint, iG, alignment, 1.2f, 0.0f, true);
        staticLayout.draw(canvas);
        this.f34997a.put(strB, staticLayout);
    }

    public void g(List<? extends c> list, int tagLines) {
        h(list, a.g() - a.a(13.0f), tagLines);
    }

    public void h(List<? extends c> list, int width, int tagLines) {
        TextPaint textPaint = new TextPaint(1);
        textPaint.density = this.f34998b.getResources().getDisplayMetrics().density;
        textPaint.setTextSize(a.s(this.f34999c));
        Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
        Canvas canvas = new Canvas();
        int size = list.size();
        if (size != 0) {
            synchronized (list) {
                for (int i10 = 0; i10 < size; i10++) {
                    String strB = list.get(i10).b();
                    String string = list.get(i10).a().toString();
                    if (!TextUtils.isEmpty(string) && this.f34997a.get(strB) == null) {
                        if (tagLines != -1) {
                            string = b(string, width, tagLines, textPaint);
                        }
                        StaticLayout staticLayout = new StaticLayout(string, textPaint, width, alignment, 1.0f, 0.0f, true);
                        staticLayout.draw(canvas);
                        this.f34997a.put(strB, staticLayout);
                    }
                }
            }
        }
    }

    public void i(String key) {
        this.f34997a.remove(key);
    }

    public b j(int size) {
        this.f34999c = size;
        return this;
    }

    public void k(int maxSize) {
        this.f34997a.trimToSize(maxSize);
    }
}
