.class public Lcom/byazt/gq/n$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/tg/x;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x245
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gq/n;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic n:Lcom/byazt/gq/n;

.field public final synthetic tt:Z

.field public final synthetic uj:I

.field public final synthetic ve:Lcom/byazt/dd/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/gq/n;IZLcom/byazt/dd/tt;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gq/n$6;->n:Lcom/byazt/gq/n;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/gq/n$6;->c:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/gq/n$6;->tt:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/gq/n$6;->ve:Lcom/byazt/dd/tt;

    .line 8
    .line 9
    iput p5, p0, Lcom/byazt/gq/n$6;->uj:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/dd/tt;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/gq/n$6;->n:Lcom/byazt/gq/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/gq/n;->sp(Lcom/byazt/gq/n;)Lcom/byazt/t/DownloadInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "fix_handle_pause"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/gq/n$6;->n:Lcom/byazt/gq/n;

    .line 22
    .line 23
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, p0, Lcom/byazt/gq/n$6;->c:I

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lcom/byazt/gq/n;->c(Lcom/byazt/gq/n;Lcom/byazt/t/DownloadInfo;)Lcom/byazt/t/DownloadInfo;

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/byazt/gq/n$6;->n:Lcom/byazt/gq/n;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/byazt/gq/n;->tt(Lcom/byazt/gq/n;)Lcom/byazt/gq/x;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/byazt/gq/n$6;->n:Lcom/byazt/gq/n;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/byazt/gq/n;->sp(Lcom/byazt/gq/n;)Lcom/byazt/t/DownloadInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-boolean v2, p0, Lcom/byazt/gq/n$6;->tt:Z

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/byazt/gq/x;->c(Lcom/byazt/t/DownloadInfo;Z)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/byazt/gq/n$6;->n:Lcom/byazt/gq/n;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/byazt/gq/n;->sp(Lcom/byazt/gq/n;)Lcom/byazt/t/DownloadInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/byazt/w/a;->tt(Landroid/content/Context;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    iget-object v0, p0, Lcom/byazt/gq/n$6;->n:Lcom/byazt/gq/n;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/byazt/gq/n;->sp(Lcom/byazt/gq/n;)Lcom/byazt/t/DownloadInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isPauseReserveOnWifi()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    iget-object p1, p0, Lcom/byazt/gq/n$6;->n:Lcom/byazt/gq/n;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/byazt/gq/n;->sp(Lcom/byazt/gq/n;)Lcom/byazt/t/DownloadInfo;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->stopPauseReserveOnWifi()V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string v0, "cancel_pause_reserve_wifi_cancel_on_wifi"

    .line 101
    .line 102
    iget-object v1, p0, Lcom/byazt/gq/n$6;->ve:Lcom/byazt/dd/tt;

    .line 103
    .line 104
    invoke-virtual {p1, v0, v1}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lcom/byazt/dd/c;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_1
    invoke-static {}, Lcom/byazt/gq/sl;->c()Lcom/byazt/gq/sl;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/byazt/gq/n$6;->n:Lcom/byazt/gq/n;

    .line 113
    .line 114
    invoke-static {v1}, Lcom/byazt/gq/n;->x(Lcom/byazt/gq/n;)Lcom/byazt/su/DownloadModel;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/byazt/gq/n$6;->n:Lcom/byazt/gq/n;

    .line 119
    .line 120
    invoke-static {v2}, Lcom/byazt/gq/n;->sp(Lcom/byazt/gq/n;)Lcom/byazt/t/DownloadInfo;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/byazt/gq/sl;->c(Lcom/byazt/su/DownloadModel;Lcom/byazt/t/DownloadInfo;)V

    .line 125
    .line 126
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 128
    .line 129
    .line 130
    move-result-wide v0

    .line 131
    invoke-virtual {p1, v0, v1}, Lcom/byazt/dd/tt;->sl(J)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/byazt/gq/n$6;->n:Lcom/byazt/gq/n;

    .line 135
    .line 136
    iget v0, p0, Lcom/byazt/gq/n$6;->c:I

    .line 137
    .line 138
    iget v1, p0, Lcom/byazt/gq/n$6;->uj:I

    .line 139
    .line 140
    invoke-static {p1}, Lcom/byazt/gq/n;->sp(Lcom/byazt/gq/n;)Lcom/byazt/t/DownloadInfo;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {p1, v0, v1, v2}, Lcom/byazt/gq/n;->c(Lcom/byazt/gq/n;IILcom/byazt/t/DownloadInfo;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method
