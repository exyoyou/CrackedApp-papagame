.class Lcom/papa/controller/core/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/controller/component/bluetooth/spp/a$f;


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
    iput-object p1, p0, Lcom/papa/controller/core/f$c;->d:Lcom/papa/controller/core/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/controller/core/f$c;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/controller/core/f$c;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/papa/controller/core/f$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
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
    iget-object v5, p0, Lcom/papa/controller/core/f$c;->a:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v6, 0x2

    .line 14
    const/4 v7, 0x2

    .line 15
    iget-object v8, p0, Lcom/papa/controller/core/f$c;->b:Ljava/lang/String;

    .line 16
    .line 17
    move-object v1, p1

    .line 18
    invoke-direct/range {v1 .. v8}, Lcom/papa/controller/core/PadStateEvent;-><init>(JILjava/lang/String;IILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x3

    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    new-instance p1, Lcom/papa/controller/core/PadStateEvent;

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    const/4 v4, -0x1

    .line 32
    iget-object v5, p0, Lcom/papa/controller/core/f$c;->a:Ljava/lang/String;

    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    const/4 v7, 0x1

    .line 36
    iget-object v8, p0, Lcom/papa/controller/core/f$c;->b:Ljava/lang/String;

    .line 37
    .line 38
    move-object v1, p1

    .line 39
    invoke-direct/range {v1 .. v8}, Lcom/papa/controller/core/PadStateEvent;-><init>(JILjava/lang/String;IILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/papa/controller/core/f$c;->d:Lcom/papa/controller/core/f;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/papa/controller/core/f$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/papa/controller/core/f;->e(Lcom/papa/controller/core/f;Lcom/papa/controller/component/bluetooth/spp/a;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x1

    .line 51
    const/4 p1, 0x0

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/papa/controller/core/f$c;->d:Lcom/papa/controller/core/f;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/papa/controller/core/f;->f(Lcom/papa/controller/core/f;)Lcom/papa/controller/core/c;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/papa/controller/core/f$c;->d:Lcom/papa/controller/core/f;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/papa/controller/core/f;->f(Lcom/papa/controller/core/f;)Lcom/papa/controller/core/c;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0, p1}, Lcom/papa/controller/core/c;->onStateEvent(Lcom/papa/controller/core/PadStateEvent;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method
