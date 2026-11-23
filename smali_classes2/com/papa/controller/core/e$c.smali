.class Lcom/papa/controller/core/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/controller/component/bluetooth/spp/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/core/e;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/controller/core/e;


# direct methods
.method constructor <init>(Lcom/papa/controller/core/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/controller/core/e;->g(Lcom/papa/controller/core/e;)Lcom/papa/controller/component/bluetooth/spp/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/papa/controller/core/e;->g(Lcom/papa/controller/core/e;)Lcom/papa/controller/component/bluetooth/spp/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lcom/papa/controller/core/PadStateEvent;

    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    const/4 v5, -0x1

    .line 35
    iget-object v1, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/papa/controller/core/e;->d(Lcom/papa/controller/core/e;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const/16 v7, 0x8

    .line 42
    .line 43
    const/4 v8, 0x2

    .line 44
    iget-object v1, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/papa/controller/core/e;->a(Lcom/papa/controller/core/e;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    move-object v2, v0

    .line 51
    invoke-direct/range {v2 .. v9}, Lcom/papa/controller/core/PadStateEvent;-><init>(JILjava/lang/String;IILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/papa/controller/core/e;->f(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/c;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    iget-object v1, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/papa/controller/core/e;->f(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/c;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1, v0}, Lcom/papa/controller/core/c;->onStateEvent(Lcom/papa/controller/core/PadStateEvent;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 9

    .line 1
    new-instance v8, Lcom/papa/controller/core/PadStateEvent;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const/4 v3, -0x1

    .line 8
    iget-object v0, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/papa/controller/core/e;->d(Lcom/papa/controller/core/e;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    iget-object v0, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/papa/controller/core/e;->a(Lcom/papa/controller/core/e;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    move-object v0, v8

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/papa/controller/core/PadStateEvent;-><init>(JILjava/lang/String;IILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/papa/controller/core/e;->f(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/c;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/papa/controller/core/e$c;->a:Lcom/papa/controller/core/e;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/papa/controller/core/e;->f(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/c;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0, v8}, Lcom/papa/controller/core/c;->onStateEvent(Lcom/papa/controller/core/PadStateEvent;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
