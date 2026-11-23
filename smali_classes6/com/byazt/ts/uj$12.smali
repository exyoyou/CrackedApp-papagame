.class public Lcom/byazt/ts/uj$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x165,
        0x35b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ts/uj;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ts/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/ts/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 10
    .line 11
    new-instance v1, Lcom/byazt/ts/tt;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/byazt/ts/tt;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;Lcom/byazt/ts/ve;)Lcom/byazt/ts/ve;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    const-string v1, "CSJ_VIDEO_MEDIA"

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 51
    .line 52
    invoke-interface {v0, v1}, Lcom/byazt/ts/ve;->c(Lcom/byazt/ts/ve$n;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 62
    .line 63
    invoke-interface {v0, v1}, Lcom/byazt/ts/ve;->c(Lcom/byazt/ts/ve$tt;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 73
    .line 74
    invoke-interface {v0, v1}, Lcom/byazt/ts/ve;->c(Lcom/byazt/ts/ve$ve;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 84
    .line 85
    invoke-interface {v0, v1}, Lcom/byazt/ts/ve;->c(Lcom/byazt/ts/ve$c;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 95
    .line 96
    invoke-interface {v0, v1}, Lcom/byazt/ts/ve;->c(Lcom/byazt/ts/ve$a;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 106
    .line 107
    invoke-interface {v0, v1}, Lcom/byazt/ts/ve;->c(Lcom/byazt/ts/ve$uj;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 117
    .line 118
    invoke-interface {v0, v1}, Lcom/byazt/ts/ve;->c(Lcom/byazt/ts/ve$sp;)V

    .line 119
    .line 120
    .line 121
    const/4 v0, 0x0

    .line 122
    :try_start_1
    iget-object v1, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 123
    .line 124
    invoke-static {v1}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v1, v0}, Lcom/byazt/ts/ve;->ve(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    .line 130
    .line 131
    :catchall_1
    iget-object v1, p0, Lcom/byazt/ts/uj$12;->c:Lcom/byazt/ts/uj;

    .line 132
    .line 133
    invoke-static {v1, v0}, Lcom/byazt/ts/uj;->tt(Lcom/byazt/ts/uj;Z)Z

    .line 134
    .line 135
    .line 136
    :cond_1
    return-void
.end method
