package com.join.kotlin.autocode.dailyfind.utils;

import com.join.kotlin.autocode.dailyfind.model.DateItem;
import com.kuaishou.weapon.p0.t;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0002R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/utils/DateStripHelper;", "", "<init>", "()V", "today", "Ljava/util/Calendar;", "getToday", "()Ljava/util/Calendar;", "buildDateItems", "", "Lcom/join/kotlin/autocode/dailyfind/model/DateItem;", "days", "", "sameDay", "", "a", t.f74887l, "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDateStripHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateStripHelper.kt\ncom/join/kotlin/autocode/dailyfind/utils/DateStripHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,43:1\n1#2:44\n*E\n"})
public final class DateStripHelper {

    @NotNull
    public static final DateStripHelper INSTANCE = new DateStripHelper();

    private DateStripHelper() {
    }

    public static /* synthetic */ List buildDateItems$default(DateStripHelper dateStripHelper, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 30;
        }
        return dateStripHelper.buildDateItems(i10);
    }

    private final Calendar getToday() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Intrinsics.checkNotNullExpressionValue(calendar, "apply(...)");
        return calendar;
    }

    private final boolean sameDay(Calendar a10, Calendar b10) {
        return a10.get(1) == b10.get(1) && a10.get(6) == b10.get(6);
    }

    @NotNull
    public final List<DateItem> buildDateItems(int days) {
        ArrayList arrayList = new ArrayList();
        Calendar today = getToday();
        Object objClone = today.clone();
        Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type java.util.Calendar");
        Calendar calendar = (Calendar) objClone;
        calendar.add(5, -(days - 1));
        Object objClone2 = today.clone();
        Intrinsics.checkNotNull(objClone2, "null cannot be cast to non-null type java.util.Calendar");
        Calendar calendar2 = (Calendar) objClone2;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy.MM.dd", Locale.getDefault());
        Object objClone3 = calendar.clone();
        Intrinsics.checkNotNull(objClone3, "null cannot be cast to non-null type java.util.Calendar");
        Calendar calendar3 = (Calendar) objClone3;
        while (!calendar3.after(calendar2)) {
            String str = simpleDateFormat.format(calendar3.getTime());
            long timeInMillis = calendar3.getTimeInMillis();
            Object objClone4 = calendar3.clone();
            Intrinsics.checkNotNull(objClone4, "null cannot be cast to non-null type java.util.Calendar");
            boolean zSameDay = sameDay(calendar3, today);
            Intrinsics.checkNotNull(str);
            arrayList.add(new DateItem((Calendar) objClone4, zSameDay, str, timeInMillis, false, 16, null));
            calendar3.add(5, 1);
        }
        return arrayList;
    }
}
