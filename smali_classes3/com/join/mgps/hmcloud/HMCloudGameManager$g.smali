.class public Lcom/join/mgps/hmcloud/HMCloudGameManager$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/hmcloud/HMCloudGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:D


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxValue"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->c:D

    .line 7
    .line 8
    iput p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->a:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->b:I

    .line 12
    .line 13
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/hmcloud/HMCloudGameManager$g;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->c:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic b(Lcom/join/mgps/hmcloud/HMCloudGameManager$g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/join/mgps/hmcloud/HMCloudGameManager$g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->a:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->b:I

    .line 6
    .line 7
    return-void
.end method

.method public f()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->b:I

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->a:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public g(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->b:I

    .line 2
    .line 3
    if-ge v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public h(D)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->c:D

    .line 2
    .line 3
    add-double/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->c:D

    .line 5
    .line 6
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->b:I

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->c:D

    .line 7
    .line 8
    return-void
.end method
