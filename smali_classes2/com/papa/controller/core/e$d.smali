.class Lcom/papa/controller/core/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/core/e;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:J

.field final synthetic c:Lcom/papa/controller/core/e;


# direct methods
.method constructor <init>(Lcom/papa/controller/core/e;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/e$d;->c:Lcom/papa/controller/core/e;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/papa/controller/core/e$d;->b:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/papa/controller/core/e$d;->b:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0xbb8

    .line 9
    .line 10
    const/16 v4, 0x2710

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x1

    .line 14
    cmp-long v7, v0, v2

    .line 15
    .line 16
    if-gez v7, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->c:Lcom/papa/controller/core/e;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/papa/controller/core/e;->h(Lcom/papa/controller/core/e;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->c:Lcom/papa/controller/core/e;

    .line 27
    .line 28
    invoke-virtual {v0, v6}, Lcom/papa/controller/core/e;->z(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->c:Lcom/papa/controller/core/e;

    .line 32
    .line 33
    invoke-static {v0, v6}, Lcom/papa/controller/core/e;->i(Lcom/papa/controller/core/e;Z)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->c:Lcom/papa/controller/core/e;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/papa/controller/core/e;->j(Lcom/papa/controller/core/e;)Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->c:Lcom/papa/controller/core/e;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/papa/controller/core/e;->j(Lcom/papa/controller/core/e;)Landroid/os/Handler;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/papa/controller/core/e$d;->c:Lcom/papa/controller/core/e;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/papa/controller/core/e;->k(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/b;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v4, v6, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->c:Lcom/papa/controller/core/e;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/papa/controller/core/e;->c(Lcom/papa/controller/core/e;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->c:Lcom/papa/controller/core/e;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/papa/controller/core/e;->n()V

    .line 74
    .line 75
    .line 76
    :cond_2
    return-void

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->c:Lcom/papa/controller/core/e;

    .line 78
    .line 79
    invoke-static {v0, v6}, Lcom/papa/controller/core/e;->i(Lcom/papa/controller/core/e;Z)Z

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->c:Lcom/papa/controller/core/e;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/papa/controller/core/e;->j(Lcom/papa/controller/core/e;)Landroid/os/Handler;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->c:Lcom/papa/controller/core/e;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/papa/controller/core/e;->j(Lcom/papa/controller/core/e;)Landroid/os/Handler;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/papa/controller/core/e$d;->c:Lcom/papa/controller/core/e;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/papa/controller/core/e;->k(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/b;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v4, v5, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 107
    .line 108
    .line 109
    :cond_4
    iget-object v0, p0, Lcom/papa/controller/core/e$d;->c:Lcom/papa/controller/core/e;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/papa/controller/core/e;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    :goto_0
    return-void
.end method
