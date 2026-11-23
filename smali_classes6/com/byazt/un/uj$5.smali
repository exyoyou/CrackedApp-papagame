.class public Lcom/byazt/un/uj$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x6b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/uj;->ve(Lcom/byazt/jzl/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/un/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/un/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/uj$5;->c:Lcom/byazt/un/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/un/uj$5;->c:Lcom/byazt/un/uj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/sw/c;->c()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/un/uj$5;->c:Lcom/byazt/un/uj;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/un/uj;->nb()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/un/uj$5;->c:Lcom/byazt/un/uj;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-static {v0, v1, v2}, Lcom/byazt/un/uj;->tt(Lcom/byazt/un/uj;J)J

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/un/uj$5;->c:Lcom/byazt/un/uj;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/byazt/un/uj;->j(Lcom/byazt/un/uj;)Lcom/byazt/un/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/un/uj$5;->c:Lcom/byazt/un/uj;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/byazt/un/uj;->dz(Lcom/byazt/un/uj;)Lcom/byazt/un/a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v1}, Lcom/byazt/un/a;->uj(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/uj$5;->c:Lcom/byazt/un/uj;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-static {v0, v2}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;I)I

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/byazt/un/uj$5;->c:Lcom/byazt/un/uj;

    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;Z)Z

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/byazt/un/uj$5;->c:Lcom/byazt/un/uj;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/byazt/un/uj;->ve(Lcom/byazt/un/uj;Z)Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/byazt/un/uj$5;->c:Lcom/byazt/un/uj;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/byazt/un/uj$5;->c:Lcom/byazt/un/uj;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/byazt/un/uj;->ma(Lcom/byazt/un/uj;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-static {v0, v1}, Lcom/byazt/rgb/ve;->c(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/byazt/un/uj$5;->c:Lcom/byazt/un/uj;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/byazt/un/uj;->ir(Lcom/byazt/un/uj;)Lcom/byazt/fk/sp;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/byazt/un/uj$5;->c:Lcom/byazt/un/uj;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/byazt/un/uj;->yf(Lcom/byazt/un/uj;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    iget-object v1, p0, Lcom/byazt/un/uj$5;->c:Lcom/byazt/un/uj;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/byazt/un/uj;->f(Lcom/byazt/un/uj;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-interface {v0, v2, v3, v4, v1}, Lcom/byazt/fk/sp;->start(ZJZ)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
