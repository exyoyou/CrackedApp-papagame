.class public Lcom/sigmob/sdk/mraid2/h;
.super Lcom/sigmob/sdk/mraid/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uniqueId",
            "type"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/o;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/mraid/o;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 2
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/SensorEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/al$a;->a(Lcom/sigmob/sdk/base/models/SensorEntity;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/o;->d:Lcom/sigmob/sdk/mraid2/j;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/al$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/al$a;->c()V

    return-void
.end method

.method public b(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 2
    return-void
.end method
