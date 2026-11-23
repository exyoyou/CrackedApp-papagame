.class Lcom/join/mgps/va/service/OMPluginService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/va/service/OMPluginService;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/va/service/OMPluginService;


# direct methods
.method constructor <init>(Lcom/join/mgps/va/service/OMPluginService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/va/service/OMPluginService$3;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/va/service/OMPluginService$3;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/join/mgps/va/service/OMPluginService;->n:Ljava/util/List;

    .line 5
    .line 6
    const-string v1, "copyExtFile"

    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/va/service/OMPluginService$3;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/join/mgps/va/service/OMPluginService;->e:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/k;->V(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/join/mgps/va/service/OMPluginService$3;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/papa91/arc/util/FileUtils;->fileSize(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-static {v2, v3, v4}, Lcom/join/mgps/va/service/OMPluginService;->j(Lcom/join/mgps/va/service/OMPluginService;J)J

    .line 28
    .line 29
    .line 30
    new-instance v1, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "modPath"

    .line 36
    .line 37
    iget-object v3, p0, Lcom/join/mgps/va/service/OMPluginService$3;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/join/mgps/va/service/OMPluginService;->d:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v2, "gameId"

    .line 45
    .line 46
    iget-object v3, p0, Lcom/join/mgps/va/service/OMPluginService$3;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 47
    .line 48
    iget-object v3, v3, Lcom/join/mgps/va/service/OMPluginService;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v2, "obbSize"

    .line 54
    .line 55
    iget-object v3, p0, Lcom/join/mgps/va/service/OMPluginService$3;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 56
    .line 57
    invoke-static {v3}, Lcom/join/mgps/va/service/OMPluginService;->i(Lcom/join/mgps/va/service/OMPluginService;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/join/mgps/va/service/OMPluginService$3;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 65
    .line 66
    iget-object v3, v2, Lcom/join/mgps/va/service/OMPluginService;->e:Ljava/lang/String;

    .line 67
    .line 68
    iget v2, v2, Lcom/join/mgps/va/service/OMPluginService;->i:I

    .line 69
    .line 70
    invoke-static {v3, v2, v1}, Lcom/join/mgps/va/overmind/m;->d(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/va/service/OMPluginService$3;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 74
    .line 75
    invoke-static {v1}, Lcom/join/mgps/va/service/OMPluginService;->i(Lcom/join/mgps/va/service/OMPluginService;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    const-wide/16 v3, 0x0

    .line 80
    .line 81
    cmp-long v5, v1, v3

    .line 82
    .line 83
    if-nez v5, :cond_0

    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/va/service/OMPluginService$3;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/join/mgps/va/service/OMPluginService;->o:Ljava/util/List;

    .line 88
    .line 89
    const-string v1, "copyExtFile"

    .line 90
    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-instance v1, Landroid/content/Intent;

    .line 99
    .line 100
    const-string v2, "com.join.android.app.mgsim.wufun.soCopyFinish"

    .line 101
    .line 102
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    monitor-exit p0

    .line 109
    return-void

    .line 110
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/join/mgps/va/service/OMPluginService$3;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/join/mgps/va/service/OMPluginService;->e:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/k;->X(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/join/mgps/va/overmind/m;->b(Ljava/lang/String;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v0

    .line 122
    iget-object v2, p0, Lcom/join/mgps/va/service/OMPluginService$3;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 123
    .line 124
    invoke-static {v2}, Lcom/join/mgps/va/service/OMPluginService;->k(Lcom/join/mgps/va/service/OMPluginService;)V

    .line 125
    .line 126
    .line 127
    iget-object v2, p0, Lcom/join/mgps/va/service/OMPluginService$3;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 128
    .line 129
    invoke-static {v2}, Lcom/join/mgps/va/service/OMPluginService;->i(Lcom/join/mgps/va/service/OMPluginService;)J

    .line 130
    .line 131
    .line 132
    move-result-wide v2

    .line 133
    cmp-long v4, v2, v0

    .line 134
    .line 135
    if-eqz v4, :cond_1

    .line 136
    .line 137
    iget-object v0, p0, Lcom/join/mgps/va/service/OMPluginService$3;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 138
    .line 139
    const/4 v1, 0x7

    .line 140
    invoke-static {v0, v1}, Lcom/join/mgps/va/service/OMPluginService;->a(Lcom/join/mgps/va/service/OMPluginService;I)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/va/service/OMPluginService$3;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 145
    .line 146
    iget-object v0, v0, Lcom/join/mgps/va/service/OMPluginService;->o:Ljava/util/List;

    .line 147
    .line 148
    const-string v1, "copyExtFile"

    .line 149
    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    new-instance v1, Landroid/content/Intent;

    .line 158
    .line 159
    const-string v2, "com.join.android.app.mgsim.wufun.soCopyFinish"

    .line 160
    .line 161
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .line 166
    .line 167
    :goto_0
    monitor-exit p0

    .line 168
    return-void

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    monitor-exit p0

    .line 171
    throw v0
.end method
