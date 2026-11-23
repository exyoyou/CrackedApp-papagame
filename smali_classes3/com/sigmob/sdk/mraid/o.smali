.class public abstract Lcom/sigmob/sdk/mraid/o;
.super Lcom/sigmob/sdk/mraid/n;
.source "SourceFile"


# instance fields
.field protected c:Lcom/sigmob/sdk/base/common/al$a;

.field protected d:Lcom/sigmob/sdk/mraid2/j;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniqueId"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/n;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/al$a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/common/al$a;

    new-instance v1, Lcom/sigmob/sdk/mraid/o$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/o$1;-><init>(Lcom/sigmob/sdk/mraid/o;)V

    sget-object v2, Lcom/sigmob/sdk/base/common/al$d;->b:Lcom/sigmob/sdk/base/common/al$d;

    invoke-direct {v0, p1, v1, v2}, Lcom/sigmob/sdk/base/common/al$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/al$c;Lcom/sigmob/sdk/base/common/al$d;)V

    return-object v0
.end method

.method public abstract a(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation
.end method

.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/al$a;->c(I)V

    return-void
.end method

.method protected a(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "type"
        }
    .end annotation

    .line 3
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const-string p1, "Motion type is not support."

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/o;->c(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/al$a;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/o;->d(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/al$a;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/o;->a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/al$a;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/o;->b(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/al$a;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    :goto_1
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "type"
        }
    .end annotation

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "twist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "swing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "slope"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "shake"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p1, "Motion type is not support."

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/o;->a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/al$a;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/o;->c(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/al$a;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/o;->d(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/al$a;

    move-result-object p1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/o;->b(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/al$a;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x6854f06 -> :sswitch_3
        0x68755ab -> :sswitch_2
        0x68c3efe -> :sswitch_1
        0x69a5727 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/sigmob/sdk/mraid2/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionListener"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/o;->d:Lcom/sigmob/sdk/mraid2/j;

    return-void
.end method

.method protected b(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/al$a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/common/al$a;

    new-instance v1, Lcom/sigmob/sdk/mraid/o$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/o$2;-><init>(Lcom/sigmob/sdk/mraid/o;)V

    sget-object v2, Lcom/sigmob/sdk/base/common/al$d;->d:Lcom/sigmob/sdk/base/common/al$d;

    invoke-direct {v0, p1, v1, v2}, Lcom/sigmob/sdk/base/common/al$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/al$c;Lcom/sigmob/sdk/base/common/al$d;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/al$a;->a(I)V

    return-object v0
.end method

.method public abstract b(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation
.end method

.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensitivityRaw"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/al$a;->b(I)V

    return-void
.end method

.method protected c(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/al$a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/common/al$a;

    new-instance v1, Lcom/sigmob/sdk/mraid/o$3;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/o$3;-><init>(Lcom/sigmob/sdk/mraid/o;)V

    sget-object v2, Lcom/sigmob/sdk/base/common/al$d;->a:Lcom/sigmob/sdk/base/common/al$d;

    invoke-direct {v0, p1, v1, v2}, Lcom/sigmob/sdk/base/common/al$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/al$c;Lcom/sigmob/sdk/base/common/al$d;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/al$a;->a(I)V

    return-object v0
.end method

.method public c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shakeTriggerType"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/al$a;->d(I)V

    return-void
.end method

.method protected d(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/al$a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/common/al$a;

    new-instance v1, Lcom/sigmob/sdk/mraid/o$4;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/o$4;-><init>(Lcom/sigmob/sdk/mraid/o;)V

    sget-object v2, Lcom/sigmob/sdk/base/common/al$d;->c:Lcom/sigmob/sdk/base/common/al$d;

    invoke-direct {v0, p1, v1, v2}, Lcom/sigmob/sdk/base/common/al$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/al$c;Lcom/sigmob/sdk/base/common/al$d;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/al$a;->a(I)V

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/al$a;->a()V

    return-void
.end method

.method public d(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widgetIntervalTime"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/al$a;->e(I)V

    return-void
.end method

.method public e(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shakeTimeThreshold"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/al$a;->f(I)V

    return-void
.end method
