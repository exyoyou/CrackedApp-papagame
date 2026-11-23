.class public Lcom/byazt/iym/ve;
.super Lcom/byazt/kt/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x310,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/iym/ve$c;
    }
.end annotation


# instance fields
.field public gr:Lcom/byazt/iym/ve$c;

.field public gt:I

.field public gu:I

.field public final my:Lcom/byazt/kt/i;

.field public qy:Z

.field public rh:Z

.field public rl:I

.field public final zm:Lcom/byazt/kt/RecyclerView$sl;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/kt/n;-><init>(Landroid/content/Context;IZ)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/iym/ve;->qy:Z

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/byazt/iym/ve;->rh:Z

    .line 9
    .line 10
    new-instance p1, Lcom/byazt/iym/ve$1;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/byazt/iym/ve$1;-><init>(Lcom/byazt/iym/ve;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/byazt/iym/ve;->zm:Lcom/byazt/kt/RecyclerView$sl;

    .line 16
    .line 17
    new-instance p1, Lcom/byazt/kt/i;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/byazt/kt/i;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/byazt/iym/ve;->my:Lcom/byazt/kt/i;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic c(Lcom/byazt/iym/ve;)Lcom/byazt/iym/ve$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/iym/ve;->gr:Lcom/byazt/iym/ve$c;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/iym/ve;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/iym/ve;->gt:I

    return p0
.end method


# virtual methods
.method public c(ILcom/byazt/kt/RecyclerView$m;Lcom/byazt/kt/RecyclerView$gt;)I
    .locals 0

    .line 6
    iput p1, p0, Lcom/byazt/iym/ve;->gt:I

    .line 7
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/kt/n;->c(ILcom/byazt/kt/RecyclerView$m;Lcom/byazt/kt/RecyclerView$gt;)I

    move-result p1

    return p1
.end method

.method public c(Lcom/byazt/iym/ve$c;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/byazt/iym/ve;->gr:Lcom/byazt/iym/ve$c;

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView;Lcom/byazt/kt/RecyclerView$m;)V
    .locals 1

    .line 2
    invoke-super {p0, p1, p2}, Lcom/byazt/kt/n;->c(Lcom/byazt/kt/RecyclerView;Lcom/byazt/kt/RecyclerView$m;)V

    .line 3
    :try_start_0
    iget p2, p0, Lcom/byazt/iym/ve;->gu:I

    invoke-virtual {p1, p2}, Lcom/byazt/kt/RecyclerView;->ve(I)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object p1

    check-cast p1, Lcom/byazt/iym/n;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/byazt/iym/n;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cubic detached exception:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    return-void
.end method

.method public sl(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/byazt/iym/ve;->rl:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p1, :cond_4

    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/iym/ve;->my:Lcom/byazt/kt/i;

    .line 7
    .line 8
    invoke-virtual {v1, p0}, Lcom/byazt/kt/i;->c(Lcom/byazt/kt/RecyclerView$i;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/byazt/kt/RecyclerView$i;->uj(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget v3, p0, Lcom/byazt/iym/ve;->gu:I

    .line 20
    .line 21
    if-ne v3, v1, :cond_0

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v3, 0x0

    .line 26
    :goto_0
    iput v1, p0, Lcom/byazt/iym/ve;->gu:I

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v3, 0x1

    .line 30
    :goto_1
    iget-boolean v1, p0, Lcom/byazt/iym/ve;->qy:Z

    .line 31
    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    iput-boolean v2, p0, Lcom/byazt/iym/ve;->qy:Z

    .line 35
    .line 36
    if-nez v3, :cond_4

    .line 37
    .line 38
    iget-object v1, p0, Lcom/byazt/iym/ve;->gr:Lcom/byazt/iym/ve$c;

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    iget v3, p0, Lcom/byazt/iym/ve;->gt:I

    .line 43
    .line 44
    if-ltz v3, :cond_2

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 v3, 0x0

    .line 49
    :goto_2
    iget v4, p0, Lcom/byazt/iym/ve;->gu:I

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->h()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    sub-int/2addr v5, v0

    .line 56
    if-ne v4, v5, :cond_3

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    :cond_3
    invoke-interface {v1, v3, v4, v2}, Lcom/byazt/iym/ve$c;->c(ZIZ)V

    .line 60
    .line 61
    .line 62
    :cond_4
    const/4 v1, 0x2

    .line 63
    if-ne p1, v1, :cond_5

    .line 64
    .line 65
    iput-boolean v0, p0, Lcom/byazt/iym/ve;->qy:Z

    .line 66
    .line 67
    :cond_5
    return-void
.end method

.method public tt(ILcom/byazt/kt/RecyclerView$m;Lcom/byazt/kt/RecyclerView$gt;)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/iym/ve;->gt:I

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/kt/n;->tt(ILcom/byazt/kt/RecyclerView$m;Lcom/byazt/kt/RecyclerView$gt;)I

    move-result p1

    return p1
.end method

.method public tt(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/iym/ve;->rh:Z

    return-void
.end method

.method public ve(Lcom/byazt/kt/RecyclerView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/kt/RecyclerView$i;->ve(Lcom/byazt/kt/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/iym/ve;->my:Lcom/byazt/kt/i;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/byazt/kt/t;->c(Lcom/byazt/kt/RecyclerView;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/iym/ve;->zm:Lcom/byazt/kt/RecyclerView$sl;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/byazt/kt/RecyclerView;->c(Lcom/byazt/kt/RecyclerView$sl;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
