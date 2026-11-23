.class public Lcom/byazt/sn/c;
.super Lcom/byazt/dw/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4ea,
        0x14
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/me/da;


# direct methods
.method public constructor <init>(Lcom/byazt/me/da;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/dw/tt;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/sn/c;->c:Lcom/byazt/me/da;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCallToActionId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sn/c;->c:Lcom/byazt/me/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/byazt/me/da;->uj:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getDecriptionTextId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sn/c;->c:Lcom/byazt/me/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/byazt/me/da;->ve:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/sn/c;->c:Lcom/byazt/me/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/me/da;->yp:Ljava/util/Map;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public getGroupImage1Id()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sn/c;->c:Lcom/byazt/me/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/byazt/me/da;->i:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getGroupImage2Id()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sn/c;->c:Lcom/byazt/me/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/byazt/me/da;->da:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getGroupImage3Id()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sn/c;->c:Lcom/byazt/me/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/byazt/me/da;->sl:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getIconImageId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sn/c;->c:Lcom/byazt/me/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/byazt/me/da;->n:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sn/c;->c:Lcom/byazt/me/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/byazt/me/da;->c:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getLogoLayoutId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sn/c;->c:Lcom/byazt/me/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/byazt/me/da;->t:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getMainImageId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sn/c;->c:Lcom/byazt/me/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/byazt/me/da;->a:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getMediaViewId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sn/c;->c:Lcom/byazt/me/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/byazt/me/da;->sp:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getShakeViewContainerId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sn/c;->c:Lcom/byazt/me/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/byazt/me/da;->u:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getSourceId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sn/c;->c:Lcom/byazt/me/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/byazt/me/da;->x:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getTitleId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sn/c;->c:Lcom/byazt/me/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/byazt/me/da;->tt:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method
