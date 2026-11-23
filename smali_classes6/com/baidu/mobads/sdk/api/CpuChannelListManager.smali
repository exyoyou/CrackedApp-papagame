.class public Lcom/baidu/mobads/sdk/api/CpuChannelListManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CpuChannelListManager"


# instance fields
.field private mCPUChannelListProd:Lcom/baidu/mobads/sdk/internal/o;

.field private mChannelIdListListener:Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/baidu/mobads/sdk/internal/o;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/baidu/mobads/sdk/internal/o;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->mCPUChannelListProd:Lcom/baidu/mobads/sdk/internal/o;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->mChannelIdListListener:Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/o;->a(Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public loadChannelList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x2

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-array p2, v3, [Ljava/lang/Object;

    .line 15
    .line 16
    sget-object v0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    aput-object v0, p2, v2

    .line 19
    .line 20
    const-string v0, "SubChannelId is null!"

    .line 21
    .line 22
    aput-object v0, p2, v1

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->mChannelIdListListener:Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    sget-object p2, Lcom/baidu/mobads/sdk/internal/br;->a:Lcom/baidu/mobads/sdk/internal/br;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/baidu/mobads/sdk/internal/br;->b()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const-string v0, "SubChannelId is null."

    .line 38
    .line 39
    invoke-interface {p1, v0, p2}, Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;->onChannelListError(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void

    .line 43
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-array p2, v3, [Ljava/lang/Object;

    .line 54
    .line 55
    sget-object v0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    aput-object v0, p2, v2

    .line 58
    .line 59
    const-string v0, "appsid is null!"

    .line 60
    .line 61
    aput-object v0, p2, v1

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->mChannelIdListListener:Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    sget-object p2, Lcom/baidu/mobads/sdk/internal/br;->a:Lcom/baidu/mobads/sdk/internal/br;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/baidu/mobads/sdk/internal/br;->b()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    const-string v0, "appsid is null."

    .line 77
    .line 78
    invoke-interface {p1, v0, p2}, Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;->onChannelListError(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void

    .line 82
    :cond_3
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->mCPUChannelListProd:Lcom/baidu/mobads/sdk/internal/o;

    .line 87
    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobads/sdk/internal/o;->a(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->mCPUChannelListProd:Lcom/baidu/mobads/sdk/internal/o;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/o;->a()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void

    .line 99
    :catch_0
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    new-array p2, v3, [Ljava/lang/Object;

    .line 104
    .line 105
    sget-object v0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->TAG:Ljava/lang/String;

    .line 106
    .line 107
    aput-object v0, p2, v2

    .line 108
    .line 109
    const-string v0, "SubChannelId is not Integer!"

    .line 110
    .line 111
    aput-object v0, p2, v1

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->mChannelIdListListener:Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;

    .line 117
    .line 118
    if-eqz p1, :cond_5

    .line 119
    .line 120
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->mChannelIdListListener:Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;

    .line 121
    .line 122
    sget-object p2, Lcom/baidu/mobads/sdk/internal/br;->a:Lcom/baidu/mobads/sdk/internal/br;

    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/baidu/mobads/sdk/internal/br;->b()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-interface {p1, v0, p2}, Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;->onChannelListError(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    :cond_5
    return-void
.end method
