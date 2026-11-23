.class public Lcom/byazt/uu/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ly/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5d9,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uu/tt;->c(Lcom/byazt/ly/uj;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lcom/byazt/uu/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/uu/tt;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uu/tt$1;->tt:Lcom/byazt/uu/tt;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/uu/tt$1;->c:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/uu/tt$1;->tt:Lcom/byazt/uu/tt;

    invoke-static {v0}, Lcom/byazt/uu/tt;->c(Lcom/byazt/uu/tt;)Lcom/byazt/ly/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/uu/tt$1;->tt:Lcom/byazt/uu/tt;

    invoke-static {v0}, Lcom/byazt/uu/tt;->c(Lcom/byazt/uu/tt;)Lcom/byazt/ly/ve;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/ly/ve;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/uu/tt$1;->tt:Lcom/byazt/uu/tt;

    invoke-virtual {v0}, Lcom/byazt/uu/tt;->tt()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/byazt/vx/qy;->c()Ljava/lang/String;

    .line 5
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byazt/uu/tt$1;->c:J

    sub-long/2addr v0, v2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--==--time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/byazt/uu/tt$1;->tt:Lcom/byazt/uu/tt;

    invoke-virtual {v3}, Lcom/byazt/uu/tt;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ----==----- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TMe"

    invoke-static {v3, v2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/byazt/uu/tt$1;->tt:Lcom/byazt/uu/tt;

    invoke-static {v2}, Lcom/byazt/uu/tt;->tt(Lcom/byazt/uu/tt;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/uu/tt$1;->tt:Lcom/byazt/uu/tt;

    invoke-virtual {v3}, Lcom/byazt/uu/tt;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    iget-object v2, p0, Lcom/byazt/uu/tt$1;->tt:Lcom/byazt/uu/tt;

    invoke-static {v2}, Lcom/byazt/uu/tt;->tt(Lcom/byazt/uu/tt;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/uu/tt$1;->tt:Lcom/byazt/uu/tt;

    invoke-virtual {v3}, Lcom/byazt/uu/tt;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v2, p0, Lcom/byazt/uu/tt$1;->tt:Lcom/byazt/uu/tt;

    invoke-virtual {v2}, Lcom/byazt/uu/tt;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/byazt/vx/yv;->c(Ljava/lang/String;J)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/byazt/uu/tt$1;->tt:Lcom/byazt/uu/tt;

    invoke-virtual {v0}, Lcom/byazt/uu/tt;->tt()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/byazt/px/c;->c(Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method public c(Lcom/byazt/pp/c;)V
    .locals 5
    .param p1    # Lcom/byazt/pp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    iget-object v0, p0, Lcom/byazt/uu/tt$1;->tt:Lcom/byazt/uu/tt;

    invoke-static {v0}, Lcom/byazt/uu/tt;->c(Lcom/byazt/uu/tt;)Lcom/byazt/ly/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/byazt/uu/tt$1;->tt:Lcom/byazt/uu/tt;

    invoke-static {v0}, Lcom/byazt/uu/tt;->c(Lcom/byazt/uu/tt;)Lcom/byazt/ly/ve;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/ly/ve;->c(Lcom/byazt/pp/c;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 13
    iget-object v0, p0, Lcom/byazt/uu/tt$1;->tt:Lcom/byazt/uu/tt;

    invoke-virtual {v0}, Lcom/byazt/uu/tt;->tt()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "errorCode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/byazt/pp/c;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " errorMessage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/byazt/px/c;->c(Ljava/lang/String;Landroid/util/Pair;)V

    :cond_1
    return-void
.end method
