.class Lcom/papa/controller/core/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/controller/component/bluetooth/spp/a$f;


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
    iput-object p1, p0, Lcom/papa/controller/core/e$b;->a:Lcom/papa/controller/core/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/papa/controller/core/PadStateEvent;

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const/4 v4, -0x1

    .line 11
    iget-object v0, p0, Lcom/papa/controller/core/e$b;->a:Lcom/papa/controller/core/e;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/papa/controller/core/e;->d(Lcom/papa/controller/core/e;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const/4 v6, 0x2

    .line 18
    const/4 v7, 0x2

    .line 19
    iget-object v0, p0, Lcom/papa/controller/core/e$b;->a:Lcom/papa/controller/core/e;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/papa/controller/core/e;->a(Lcom/papa/controller/core/e;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    move-object v1, p1

    .line 26
    invoke-direct/range {v1 .. v8}, Lcom/papa/controller/core/PadStateEvent;-><init>(JILjava/lang/String;IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x3

    .line 31
    if-ne p1, v0, :cond_1

    .line 32
    .line 33
    new-instance p1, Lcom/papa/controller/core/PadStateEvent;

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    const/4 v4, -0x1

    .line 40
    iget-object v0, p0, Lcom/papa/controller/core/e$b;->a:Lcom/papa/controller/core/e;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/papa/controller/core/e;->d(Lcom/papa/controller/core/e;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const/4 v6, 0x1

    .line 47
    const/4 v7, 0x1

    .line 48
    iget-object v0, p0, Lcom/papa/controller/core/e$b;->a:Lcom/papa/controller/core/e;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/papa/controller/core/e;->a(Lcom/papa/controller/core/e;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    move-object v1, p1

    .line 55
    invoke-direct/range {v1 .. v8}, Lcom/papa/controller/core/PadStateEvent;-><init>(JILjava/lang/String;IILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/papa/controller/core/e$b;->a:Lcom/papa/controller/core/e;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/papa/controller/core/e;->e(Lcom/papa/controller/core/e;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x1

    .line 65
    const/4 p1, 0x0

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/papa/controller/core/e$b;->a:Lcom/papa/controller/core/e;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/papa/controller/core/e;->f(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/c;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcom/papa/controller/core/e$b;->a:Lcom/papa/controller/core/e;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/papa/controller/core/e;->f(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/c;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v0, p1}, Lcom/papa/controller/core/c;->onStateEvent(Lcom/papa/controller/core/PadStateEvent;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    return-void
.end method
