.class public Lcom/byazt/eg/ve$c;
.super Lcom/byazt/eg/d;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10,
        0x18
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/eg/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final c:Lcom/byazt/umr/uj$ve;

.field public final tt:Lcom/byazt/mk/n;

.field public final uj:Ljava/lang/String;

.field public final ve:Ljava/lang/String;


# virtual methods
.method public c()Lcom/byazt/eg/rl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/ve$c;->ve:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/eg/rl;->c(Ljava/lang/String;)Lcom/byazt/eg/rl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public tt()J
    .locals 3

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/byazt/eg/ve$c;->uj:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    :cond_0
    return-wide v0
.end method

.method public ve()Lcom/byazt/mk/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/ve$c;->tt:Lcom/byazt/mk/n;

    .line 2
    .line 3
    return-object v0
.end method
