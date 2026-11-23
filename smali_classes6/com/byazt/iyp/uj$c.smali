.class public final Lcom/byazt/iyp/uj$c;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x399,
        0x7b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/iyp/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final c:Landroid/view/View$AccessibilityDelegate;

.field public tt:Z


# direct methods
.method public constructor <init>(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/iyp/uj$c;->c:Landroid/view/View$AccessibilityDelegate;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/byazt/iyp/uj$c;->tt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/byazt/iyp/uj$c;->tt:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/byazt/iyp/uj$c;->c:Landroid/view/View$AccessibilityDelegate;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v2, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :goto_0
    iput-boolean v1, p0, Lcom/byazt/iyp/uj$c;->tt:Z

    .line 25
    .line 26
    if-eq p2, v0, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    if-eq p2, v0, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-static {}, Lcom/byazt/iyp/uj;->sl()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    sub-long v2, v0, v2

    .line 41
    .line 42
    const-wide/16 v4, 0x12c

    .line 43
    .line 44
    cmp-long p2, v2, v4

    .line 45
    .line 46
    if-gez p2, :cond_3

    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    invoke-static {v0, v1}, Lcom/byazt/iyp/uj;->c(J)J

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/byazt/iyp/uj;->t()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/byazt/iyp/n$n;

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    iget p2, p1, Lcom/byazt/iyp/n$n;->c:I

    .line 65
    .line 66
    invoke-static {p2}, Lcom/byazt/iyp/uj;->tt(I)I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/byazt/iyp/n$n;->c()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1}, Lcom/byazt/iyp/uj;->c(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/byazt/iyp/uj;->u()I

    .line 77
    .line 78
    .line 79
    :cond_4
    return-void

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    iput-boolean v1, p0, Lcom/byazt/iyp/uj$c;->tt:Z

    .line 82
    .line 83
    throw p1
.end method
