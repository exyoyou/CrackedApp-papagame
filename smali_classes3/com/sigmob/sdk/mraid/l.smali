.class public Lcom/sigmob/sdk/mraid/l;
.super Lcom/sigmob/sdk/mraid/o;
.source "SourceFile"


# instance fields
.field private final e:Ljava/lang/String;

.field private f:Lcom/sigmob/sdk/base/views/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "uniqueId",
            "type",
            "adUnit"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/mraid/o;-><init>(Ljava/lang/String;)V

    const-class p2, Lcom/sigmob/sdk/mraid/l;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/l;->e:Ljava/lang/String;

    if-eqz p3, :cond_3

    const/4 p2, 0x1

    if-eq p3, p2, :cond_2

    const/4 p2, 0x2

    if-eq p3, p2, :cond_1

    const/4 p2, 0x3

    if-eq p3, p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Lcom/sigmob/sdk/base/views/ai;

    invoke-direct {p2, p1}, Lcom/sigmob/sdk/base/views/ai;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/sigmob/sdk/base/views/ag;

    invoke-direct {p2, p1}, Lcom/sigmob/sdk/base/views/ag;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/sigmob/sdk/base/views/ap;

    invoke-direct {p2, p1}, Lcom/sigmob/sdk/base/views/ap;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    new-instance p2, Lcom/sigmob/sdk/base/views/y;

    invoke-direct {p2, p1}, Lcom/sigmob/sdk/base/views/y;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object p2, p0, Lcom/sigmob/sdk/mraid/l;->f:Lcom/sigmob/sdk/base/views/r;

    :goto_1
    invoke-virtual {p0, p1, p3}, Lcom/sigmob/sdk/mraid/o;->a(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/l;->f:Lcom/sigmob/sdk/base/views/r;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/l;->f:Lcom/sigmob/sdk/base/views/r;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/r;->a()V

    :cond_4
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    invoke-static {p4}, Lcom/sigmob/sdk/base/models/SensorEntity;->format(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/SensorEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/common/al$a;->a(Lcom/sigmob/sdk/base/models/SensorEntity;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/l;->f:Lcom/sigmob/sdk/base/views/r;

    return-object v0
.end method

.method public a(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/l;->f:Lcom/sigmob/sdk/base/views/r;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lcom/sigmob/sdk/base/views/ai;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sigmob/sdk/base/views/ai;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/ai;->a(F)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/l;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMotionViewUpdateProcess: progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/l;->f:Lcom/sigmob/sdk/base/views/r;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "frame"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "x"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-int v1, v4

    const-string v4, "y"

    invoke-virtual {p1, v4, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-int v2, v2

    const-string v3, "w"

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-int v3, v6

    const-string v6, "h"

    invoke-virtual {p1, v6, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-int p1, v4

    if-lez v3, :cond_2

    int-to-float v3, v3

    invoke-static {v3, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, p1

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    :cond_3
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/l;->f:Lcom/sigmob/sdk/base/views/r;

    int-to-float v1, v1

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/l;->f:Lcom/sigmob/sdk/base/views/r;

    int-to-float v1, v2

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/l;->f:Lcom/sigmob/sdk/base/views/r;

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/l;->f:Lcom/sigmob/sdk/base/views/r;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/l;->f:Lcom/sigmob/sdk/base/views/r;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/al$a;->b()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/al$a;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/l;->f:Lcom/sigmob/sdk/base/views/r;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/l;->f:Lcom/sigmob/sdk/base/views/r;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/x;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/l;->f:Lcom/sigmob/sdk/base/views/r;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/al$a;->c()V

    :cond_1
    return-void
.end method

.method public b(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/l;->f:Lcom/sigmob/sdk/base/views/r;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lcom/sigmob/sdk/base/views/ag;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sigmob/sdk/base/views/ag;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/ag;->a(F)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/l;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMotionViewUpdateScreen: progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
