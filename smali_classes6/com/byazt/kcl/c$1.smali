.class public Lcom/byazt/kcl/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pop/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x173,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kcl/c;->c(Lcom/byazt/kcl/c$tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kcl/c$tt;

.field public final synthetic tt:Lcom/byazt/kcl/c;


# direct methods
.method public constructor <init>(Lcom/byazt/kcl/c;Lcom/byazt/kcl/c$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kcl/c$1;->tt:Lcom/byazt/kcl/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kcl/c$1;->c:Lcom/byazt/kcl/c$tt;

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
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/byazt/kcl/c$1;->tt:Lcom/byazt/kcl/c;

    invoke-static {v2}, Lcom/byazt/kcl/c;->c(Lcom/byazt/kcl/c;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3
    sget v2, Lcom/byazt/ouz/NativeExpressView;->my:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/kcl/c$1;->tt:Lcom/byazt/kcl/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/byazt/kcl/c;->c(Lcom/byazt/kcl/c;J)J

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/byazt/kcl/c$1;->c:Lcom/byazt/kcl/c$tt;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1, v0}, Lcom/byazt/kcl/c$tt;->c(Z)V

    :cond_1
    return-void
.end method

.method public c(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    iget-object v2, p0, Lcom/byazt/kcl/c$1;->tt:Lcom/byazt/kcl/c;

    invoke-static {v2}, Lcom/byazt/kcl/c;->tt(Lcom/byazt/kcl/c;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 9
    sget v2, Lcom/byazt/ouz/NativeExpressView;->my:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 10
    iget-object v0, p0, Lcom/byazt/kcl/c$1;->tt:Lcom/byazt/kcl/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/byazt/kcl/c;->tt(Lcom/byazt/kcl/c;J)J

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/byazt/kcl/c$1;->c:Lcom/byazt/kcl/c$tt;

    if-eqz v1, :cond_1

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    .line 12
    invoke-interface/range {v1 .. v8}, Lcom/byazt/kcl/c$tt;->c(ZJJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 14
    iget-object v2, p0, Lcom/byazt/kcl/c$1;->tt:Lcom/byazt/kcl/c;

    invoke-static {v2}, Lcom/byazt/kcl/c;->n(Lcom/byazt/kcl/c;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 15
    sget v2, Lcom/byazt/ouz/NativeExpressView;->my:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 16
    iget-object v0, p0, Lcom/byazt/kcl/c$1;->tt:Lcom/byazt/kcl/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/byazt/kcl/c;->n(Lcom/byazt/kcl/c;J)J

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/byazt/kcl/c$1;->c:Lcom/byazt/kcl/c$tt;

    if-eqz v1, :cond_1

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    .line 18
    invoke-interface/range {v1 .. v6}, Lcom/byazt/kcl/c$tt;->c(ZJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 20
    iget-object v2, p0, Lcom/byazt/kcl/c$1;->tt:Lcom/byazt/kcl/c;

    invoke-static {v2}, Lcom/byazt/kcl/c;->a(Lcom/byazt/kcl/c;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 21
    sget v2, Lcom/byazt/ouz/NativeExpressView;->my:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 22
    iget-object v0, p0, Lcom/byazt/kcl/c$1;->tt:Lcom/byazt/kcl/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/byazt/kcl/c;->a(Lcom/byazt/kcl/c;J)J

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/byazt/kcl/c$1;->c:Lcom/byazt/kcl/c$tt;

    if-eqz v1, :cond_1

    .line 24
    invoke-interface {v1, v0, p1, p2}, Lcom/byazt/kcl/c$tt;->c(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public tt(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/byazt/kcl/c$1;->tt:Lcom/byazt/kcl/c;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/byazt/kcl/c;->ve(Lcom/byazt/kcl/c;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long/2addr v0, v2

    .line 12
    sget v2, Lcom/byazt/ouz/NativeExpressView;->my:I

    .line 13
    .line 14
    int-to-long v2, v2

    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-lez v4, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/kcl/c$1;->tt:Lcom/byazt/kcl/c;

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-static {v0, v1, v2}, Lcom/byazt/kcl/c;->ve(Lcom/byazt/kcl/c;J)J

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    const/4 v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/byazt/kcl/c$1;->c:Lcom/byazt/kcl/c$tt;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    move-wide v3, p1

    .line 38
    move-wide v5, p3

    .line 39
    move-object v7, p5

    .line 40
    move-object v8, p6

    .line 41
    invoke-interface/range {v1 .. v8}, Lcom/byazt/kcl/c$tt;->tt(ZJJLjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public ve(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/byazt/kcl/c$1;->tt:Lcom/byazt/kcl/c;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/byazt/kcl/c;->uj(Lcom/byazt/kcl/c;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long/2addr v0, v2

    .line 12
    sget v2, Lcom/byazt/ouz/NativeExpressView;->my:I

    .line 13
    .line 14
    int-to-long v2, v2

    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-lez v4, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/kcl/c$1;->tt:Lcom/byazt/kcl/c;

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-static {v0, v1, v2}, Lcom/byazt/kcl/c;->uj(Lcom/byazt/kcl/c;J)J

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    const/4 v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/byazt/kcl/c$1;->c:Lcom/byazt/kcl/c$tt;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    move-wide v3, p1

    .line 38
    move-wide v5, p3

    .line 39
    move-object v7, p5

    .line 40
    move-object v8, p6

    .line 41
    invoke-interface/range {v1 .. v8}, Lcom/byazt/kcl/c$tt;->ve(ZJJLjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method
