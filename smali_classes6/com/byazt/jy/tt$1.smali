.class public Lcom/byazt/jy/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7e5,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/jy/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/jy/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/jy/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jy/tt$1;->c:Lcom/byazt/jy/tt;

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
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/jy/tt$1;->c:Lcom/byazt/jy/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/jy/tt;->getCurrentPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/byazt/jy/tt$1;->c:Lcom/byazt/jy/tt;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/byazt/jy/tt;->getVideoDuration()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    cmp-long v6, v2, v4

    .line 16
    .line 17
    if-lez v6, :cond_2

    .line 18
    .line 19
    iget-object v2, p0, Lcom/byazt/jy/tt$1;->c:Lcom/byazt/jy/tt;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/byazt/jy/tt;->c(Lcom/byazt/jy/tt;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    cmp-long v4, v2, v0

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lcom/byazt/oy/tt;->uj()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    new-array v2, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    const-string v4, "run: lastCur = "

    .line 40
    .line 41
    aput-object v4, v2, v3

    .line 42
    .line 43
    iget-object v3, p0, Lcom/byazt/jy/tt$1;->c:Lcom/byazt/jy/tt;

    .line 44
    .line 45
    invoke-static {v3}, Lcom/byazt/jy/tt;->c(Lcom/byazt/jy/tt;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/4 v4, 0x1

    .line 54
    aput-object v3, v2, v4

    .line 55
    .line 56
    const/4 v3, 0x2

    .line 57
    const-string v4, "  curPosition="

    .line 58
    .line 59
    aput-object v4, v2, v3

    .line 60
    .line 61
    const/4 v3, 0x3

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    aput-object v4, v2, v3

    .line 67
    .line 68
    const-string v3, "CSJ_VIDEO_TTVideo"

    .line 69
    .line 70
    invoke-static {v3, v2}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    iget-object v2, p0, Lcom/byazt/jy/tt$1;->c:Lcom/byazt/jy/tt;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/byazt/jy/tt;->getVideoDuration()J

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    invoke-static {v2, v0, v1, v3, v4}, Lcom/byazt/jy/tt;->c(Lcom/byazt/jy/tt;JJ)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v2, p0, Lcom/byazt/jy/tt$1;->c:Lcom/byazt/jy/tt;

    .line 83
    .line 84
    invoke-static {v2, v0, v1}, Lcom/byazt/jy/tt;->c(Lcom/byazt/jy/tt;J)J

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-object v0, p0, Lcom/byazt/jy/tt$1;->c:Lcom/byazt/jy/tt;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/byazt/jy/tt;->tt(Lcom/byazt/jy/tt;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_3

    .line 94
    .line 95
    iget-object v0, p0, Lcom/byazt/jy/tt$1;->c:Lcom/byazt/jy/tt;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/byazt/jy/tt;->ve(Lcom/byazt/jy/tt;)Landroid/os/Handler;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    iget-object v0, p0, Lcom/byazt/jy/tt$1;->c:Lcom/byazt/jy/tt;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/byazt/jy/tt;->ve(Lcom/byazt/jy/tt;)Landroid/os/Handler;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/byazt/jy/tt$1;->c:Lcom/byazt/jy/tt;

    .line 110
    .line 111
    invoke-static {v1}, Lcom/byazt/jy/tt;->uj(Lcom/byazt/jy/tt;)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    int-to-long v1, v1

    .line 116
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/byazt/jy/tt$1;->c:Lcom/byazt/jy/tt;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/byazt/jy/tt;->getVideoDuration()J

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    iget-object v3, p0, Lcom/byazt/jy/tt$1;->c:Lcom/byazt/jy/tt;

    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/byazt/jy/tt;->getVideoDuration()J

    .line 129
    .line 130
    .line 131
    move-result-wide v3

    .line 132
    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/jy/tt;->c(Lcom/byazt/jy/tt;JJ)V

    .line 133
    .line 134
    .line 135
    :cond_4
    return-void
.end method
