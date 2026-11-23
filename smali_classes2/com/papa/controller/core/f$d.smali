.class Lcom/papa/controller/core/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/controller/component/bluetooth/spp/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/core/f;->g(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/papa/controller/component/bluetooth/spp/a;

.field final synthetic d:Lcom/papa/controller/core/f;


# direct methods
.method constructor <init>(Lcom/papa/controller/core/f;Ljava/lang/String;Ljava/lang/String;Lcom/papa/controller/component/bluetooth/spp/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/f$d;->d:Lcom/papa/controller/core/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/controller/core/f$d;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/controller/core/f$d;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/papa/controller/core/f$d;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/f$d;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa/controller/core/f$d;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/papa/controller/core/PadStateEvent;

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    const/4 v5, -0x1

    .line 27
    iget-object v6, p0, Lcom/papa/controller/core/f$d;->a:Ljava/lang/String;

    .line 28
    .line 29
    const/16 v7, 0x8

    .line 30
    .line 31
    const/4 v8, 0x2

    .line 32
    iget-object v9, p0, Lcom/papa/controller/core/f$d;->b:Ljava/lang/String;

    .line 33
    .line 34
    move-object v2, v0

    .line 35
    invoke-direct/range {v2 .. v9}, Lcom/papa/controller/core/PadStateEvent;-><init>(JILjava/lang/String;IILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/papa/controller/core/f$d;->d:Lcom/papa/controller/core/f;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/papa/controller/core/f;->f(Lcom/papa/controller/core/f;)Lcom/papa/controller/core/c;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Lcom/papa/controller/core/f$d;->d:Lcom/papa/controller/core/f;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/papa/controller/core/f;->f(Lcom/papa/controller/core/f;)Lcom/papa/controller/core/c;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1, v0}, Lcom/papa/controller/core/c;->onStateEvent(Lcom/papa/controller/core/PadStateEvent;)V

    .line 53
    .line 54
    .line 55
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
    iget-object v4, p0, Lcom/papa/controller/core/f$d;->a:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    iget-object v7, p0, Lcom/papa/controller/core/f$d;->b:Ljava/lang/String;

    .line 13
    .line 14
    move-object v0, v8

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/papa/controller/core/PadStateEvent;-><init>(JILjava/lang/String;IILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa/controller/core/f$d;->d:Lcom/papa/controller/core/f;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/papa/controller/core/f;->f(Lcom/papa/controller/core/f;)Lcom/papa/controller/core/c;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/papa/controller/core/f$d;->d:Lcom/papa/controller/core/f;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/papa/controller/core/f;->f(Lcom/papa/controller/core/f;)Lcom/papa/controller/core/c;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0, v8}, Lcom/papa/controller/core/c;->onStateEvent(Lcom/papa/controller/core/PadStateEvent;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
