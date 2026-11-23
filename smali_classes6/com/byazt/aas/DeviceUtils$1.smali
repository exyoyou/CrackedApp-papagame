.class public final Lcom/byazt/aas/DeviceUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/cb/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x389
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/aas/DeviceUtils;->uj(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/aas/DeviceUtils;->ve(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget v1, Lcom/byazt/aas/DeviceUtils;->tt:I

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    sput p1, Lcom/byazt/aas/DeviceUtils;->tt:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sub-int/2addr v1, p1

    .line 18
    sput p1, Lcom/byazt/aas/DeviceUtils;->tt:I

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/16 v0, 0x14

    .line 29
    .line 30
    if-le p1, v0, :cond_6

    .line 31
    .line 32
    if-lez v1, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    :cond_1
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, v4}, Lcom/byazt/qqc/ve;->c(Z)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->z()J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    sub-long v4, v0, v4

    .line 51
    .line 52
    const-wide/16 v6, 0x3e8

    .line 53
    .line 54
    cmp-long p1, v4, v6

    .line 55
    .line 56
    if-lez p1, :cond_2

    .line 57
    .line 58
    invoke-static {v2, v3}, Lcom/byazt/ukr/yp;->c(II)V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-static {v0, v1}, Lcom/byazt/aas/DeviceUtils;->ve(J)J

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    if-eq p1, v2, :cond_5

    .line 66
    .line 67
    if-lez v1, :cond_4

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    :cond_4
    invoke-static {v2, v3}, Lcom/byazt/ukr/yp;->c(II)V

    .line 71
    .line 72
    .line 73
    :cond_5
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, v4}, Lcom/byazt/qqc/ve;->c(Z)V

    .line 78
    .line 79
    .line 80
    :cond_6
    return-void
.end method
