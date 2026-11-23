.class public Lcom/byazt/cg/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/or;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x225,
        0x36
    }
.end annotation


# instance fields
.field public c:Z

.field public tt:Lcom/byazt/cg/tt;

.field public ve:Lcom/byazt/cg/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/cg/tt;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/cg/tt;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/cg/ve;->tt:Lcom/byazt/cg/tt;

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/cg/c;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/byazt/cg/c;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/cg/ve;->ve:Lcom/byazt/cg/c;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/cg/ve;->tt:Lcom/byazt/cg/tt;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/cg/tt;->c()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    xor-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/byazt/cg/ve;->c:Z

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cg/ve;->tt:Lcom/byazt/cg/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/cg/tt;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/cg/ve;->tt:Lcom/byazt/cg/tt;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/byazt/cg/tt;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, ""

    .line 17
    .line 18
    :goto_0
    iget-boolean v1, p0, Lcom/byazt/cg/ve;->c:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/cg/ve;->ve:Lcom/byazt/cg/c;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/byazt/cg/c;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_1
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cg/ve;->tt:Lcom/byazt/cg/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/cg/tt;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/cg/ve;->tt:Lcom/byazt/cg/tt;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/byazt/cg/tt;->getBoolean(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-boolean v1, p0, Lcom/byazt/cg/ve;->c:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/cg/ve;->ve:Lcom/byazt/cg/c;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/byazt/cg/c;->getBoolean(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :cond_1
    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/cg/ve;->tt:Lcom/byazt/cg/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/cg/tt;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x7fffffff

    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/cg/ve;->tt:Lcom/byazt/cg/tt;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/byazt/cg/tt;->getInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const v0, 0x7fffffff

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-boolean v2, p0, Lcom/byazt/cg/ve;->c:Z

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/cg/ve;->ve:Lcom/byazt/cg/c;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/byazt/cg/c;->getInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :cond_1
    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/cg/ve;->tt:Lcom/byazt/cg/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/cg/tt;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/cg/ve;->tt:Lcom/byazt/cg/tt;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/byazt/cg/tt;->getLong(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    :goto_0
    iget-boolean v2, p0, Lcom/byazt/cg/ve;->c:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const-wide/32 v2, 0x7fffffff

    .line 26
    .line 27
    .line 28
    cmp-long v4, v0, v2

    .line 29
    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/cg/ve;->ve:Lcom/byazt/cg/c;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/byazt/cg/c;->getLong(Ljava/lang/String;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    :cond_1
    return-wide v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cg/ve;->tt:Lcom/byazt/cg/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/cg/tt;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/cg/ve;->tt:Lcom/byazt/cg/tt;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/byazt/cg/tt;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
