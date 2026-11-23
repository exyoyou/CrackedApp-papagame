.class public Lcom/sdk/x/a$c;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/x/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sdk/x/a;


# direct methods
.method public constructor <init>(Lcom/sdk/x/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    iput p2, p0, Lcom/sdk/x/a$c;->a:I

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/sdk/x/a;->h:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "NetworkCallback onAvailable "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    :try_start_0
    const-string v1, "\u83b7\u53d6\u7f51\u7edc onAvailable getUrl"

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/sdk/x/a;->a(Lcom/sdk/x/a;)Ljava/net/URL;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v3, p0, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/sdk/x/a;->d:Lcom/sdk/x/a$d;

    .line 39
    .line 40
    iget-object v1, p1, Lcom/sdk/x/a$d;->a:Landroid/os/Handler;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    sget-wide v5, Lcom/sdk/x/a;->k:J

    .line 50
    .line 51
    sub-long/2addr v3, v5

    .line 52
    sput-wide v3, Lcom/sdk/x/a;->k:J

    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v1, "\u83b7\u53d6\u7f51\u7edc onAvailable time= "

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    sget-wide v3, Lcom/sdk/x/a;->k:J

    .line 65
    .line 66
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v0, p1, v2}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    :cond_0
    iget-object p1, p0, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/sdk/x/a;->a()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-instance v0, Lcom/sdk/w/a;

    .line 83
    .line 84
    invoke-direct {v0}, Lcom/sdk/w/a;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    .line 88
    .line 89
    iget-object v2, v1, Lcom/sdk/x/a;->b:Landroid/content/Context;

    .line 90
    .line 91
    iget v3, p0, Lcom/sdk/x/a$c;->a:I

    .line 92
    .line 93
    new-instance v4, Lcom/sdk/x/a$c$a;

    .line 94
    .line 95
    invoke-direct {v4, p0}, Lcom/sdk/x/a$c$a;-><init>(Lcom/sdk/x/a$c;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2, v3, p1, v4}, Lcom/sdk/w/a;->a(Landroid/content/Context;ILjava/util/List;Lcom/sdk/e/a;)Lcom/sdk/a/c;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, v1, Lcom/sdk/x/a;->e:Lcom/sdk/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catch_0
    move-exception p1

    .line 106
    sget-object v0, Lcom/sdk/x/a;->h:Ljava/lang/String;

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v1, "onAvailable: "

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    :goto_0
    iget-object p1, p0, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/sdk/x/a;->f:Landroid/net/ConnectivityManager;

    .line 124
    .line 125
    if-eqz p1, :cond_1

    .line 126
    .line 127
    sget-object v0, Lcom/sdk/x/a;->j:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 128
    .line 129
    if-eqz v0, :cond_1

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/sdk/x/a;->f:Landroid/net/ConnectivityManager;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/sdk/x/a;->j:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object p1, Lcom/sdk/x/a;->h:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "NetworkCallback onLost"

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {p1, v0, v1}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    return-void
.end method
