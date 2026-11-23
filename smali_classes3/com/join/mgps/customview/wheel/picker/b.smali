.class public Lcom/join/mgps/customview/wheel/picker/b;
.super Lcom/join/mgps/customview/wheel/picker/DateTimePicker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/wheel/picker/b$d;,
        Lcom/join/mgps/customview/wheel/picker/b$c;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/wheel/picker/b;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "mode"
        }
    .end annotation

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;-><init>(Landroid/app/Activity;II)V

    return-void
.end method


# virtual methods
.method public final C1(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "yearOrMonth",
            "monthOrDay",
            "hour",
            "minute"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->C1(IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final D1(IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "year",
            "month",
            "day",
            "hour",
            "minute"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->D1(IIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public E1(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "endHour",
            "endMinute",
            "endSecond"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->E1(III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public F1(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startHour",
            "startMinute",
            "startSecond"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->F1(III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public G1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hourLabel",
            "minuteLabel",
            "secondLable"
        }
    .end annotation

    .line 1
    const-string v1, ""

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-string v3, ""

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v4, p1

    .line 9
    move-object v5, p2

    .line 10
    move-object v6, p3

    .line 11
    invoke-super/range {v0 .. v6}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->x1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public H1(Lcom/join/mgps/customview/wheel/picker/b$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/wheel/picker/b$b;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/wheel/picker/b$b;-><init>(Lcom/join/mgps/customview/wheel/picker/b;Lcom/join/mgps/customview/wheel/picker/b$c;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->y1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public I1(Lcom/join/mgps/customview/wheel/picker/b$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/wheel/picker/b$a;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/wheel/picker/b$a;-><init>(Lcom/join/mgps/customview/wheel/picker/b;Lcom/join/mgps/customview/wheel/picker/b$d;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->z1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public J1(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startHour",
            "endHour",
            "endSecond"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0, p1, v0, v0}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->F1(III)V

    .line 3
    .line 4
    .line 5
    const/16 p1, 0x3b

    .line 6
    .line 7
    invoke-super {p0, p2, p1, p3}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->E1(III)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public K1(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "endHour",
            "endMinute",
            "endSecond"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->E1(III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public L1(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startHour",
            "startMinute",
            "startSecond"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->F1(III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public M1(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hour",
            "minute"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0, v0, v0, p1, p2}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->C1(IIII)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final t1(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "endYearOrMonth",
            "endMonthOrDay"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p2, "Data range nonsupport"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final u1(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "endYear",
            "endMonth",
            "endDay"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p2, "Date range nonsupport"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final v1(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startYearOrMonth",
            "startMonthOrDay"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p2, "Date range nonsupport"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final w1(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startYear",
            "startMonth",
            "startDay"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p2, "Date range nonsupport"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final x1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "yearLabel",
            "monthLabel",
            "dayLabel",
            "hourLabel",
            "minuteLabel",
            "secondLabel"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->x1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final y1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->y1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker$h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final z1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onWheelListener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/wheel/picker/DateTimePicker;->z1(Lcom/join/mgps/customview/wheel/picker/DateTimePicker$l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
