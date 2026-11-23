.class public Lcom/byazt/ir/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x271,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ir/c;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Lcom/byazt/ir/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ir/c;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ir/c$2;->tt:Lcom/byazt/ir/c;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/ir/c$2;->c:Z

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
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lcom/byazt/ir/c$2$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/ir/c$2$1;-><init>(Lcom/byazt/ir/c$2;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/ir/c$2;->tt:Lcom/byazt/ir/c;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/byazt/ir/c;->i(Lcom/byazt/ir/c;)Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager;->newBuilder(Landroid/content/Context;)Lcom/bykv/vk/component/ttvideo/VideoLiveManager$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "pangle_ad_live"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$Builder;->setProjectKey(Ljava/lang/String;)Lcom/bykv/vk/component/ttvideo/VideoLiveManager$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Lcom/byazt/ir/c$c;

    .line 23
    .line 24
    invoke-direct {v3}, Lcom/byazt/ir/c$c;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$Builder;->setNetworkClient(Lcom/bykv/vk/component/ttvideo/INetworkClient;)Lcom/bykv/vk/component/ttvideo/VideoLiveManager$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v2, v3}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$Builder;->setForceHttpDns(Z)Lcom/bykv/vk/component/ttvideo/VideoLiveManager$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2, v3}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$Builder;->setForceTTNetHttpDns(Z)Lcom/bykv/vk/component/ttvideo/VideoLiveManager$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2, v0}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$Builder;->setSettingsBundle(Lcom/bykv/vk/component/ttvideo/ILiveSettingBundle;)Lcom/bykv/vk/component/ttvideo/VideoLiveManager$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-virtual {v0, v2}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$Builder;->setPlayerType(I)Lcom/bykv/vk/component/ttvideo/VideoLiveManager$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v4, p0, Lcom/byazt/ir/c$2;->tt:Lcom/byazt/ir/c;

    .line 50
    .line 51
    invoke-static {v4}, Lcom/byazt/ir/c;->x(Lcom/byazt/ir/c;)Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v0, v4}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$Builder;->setListener(Lcom/bykv/vk/component/ttvideo/ILiveListener;)Lcom/bykv/vk/component/ttvideo/VideoLiveManager$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/VideoLiveManager$Builder;->build()Lcom/bykv/vk/component/ttvideo/VideoLiveManager;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v1, v0}, Lcom/byazt/ir/c;->c(Lcom/byazt/ir/c;Lcom/bykv/vk/component/ttvideo/ILivePlayer;)Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/byazt/ir/c$2;->tt:Lcom/byazt/ir/c;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/byazt/ir/c;->da(Lcom/byazt/ir/c;)Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-boolean v1, p0, Lcom/byazt/ir/c$2;->c:Z

    .line 73
    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    const/4 v3, 0x1

    .line 77
    :cond_0
    const/16 v1, 0x45

    .line 78
    .line 79
    invoke-interface {v0, v1, v3}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->setIntOption(II)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/byazt/ir/c$2;->tt:Lcom/byazt/ir/c;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/byazt/ir/c;->da(Lcom/byazt/ir/c;)Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/byazt/ir/c$2;->tt:Lcom/byazt/ir/c;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/byazt/ir/c;->i(Lcom/byazt/ir/c;)Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-static {v2, v3}, Lcom/byazt/nys/tt;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, "/pangle_live/"

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const/16 v2, 0x48

    .line 121
    .line 122
    invoke-interface {v0, v2, v1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->setStringOption(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v1, "TTLiveVideoPlayer"

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v1, v0}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method
