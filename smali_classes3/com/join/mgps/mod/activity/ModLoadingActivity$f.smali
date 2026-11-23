.class Lcom/join/mgps/mod/activity/ModLoadingActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/mod/activity/ModLoadingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

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
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->g:Ljava/lang/String;

    .line 9
    .line 10
    iget v3, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->p:I

    .line 11
    .line 12
    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v2, v3, v1}, Lcom/join/mgps/va/overmind/i;->p0(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->A:Ljava/util/List;

    .line 20
    .line 21
    const-string v1, "copyExtFile"

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/k;->X(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lcom/join/mgps/va/overmind/m;->b(Ljava/lang/String;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    iget-object v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 41
    .line 42
    iget-object v3, v3, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Lcom/join/mgps/va/overmind/k;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v3}, Lcom/join/mgps/va/overmind/m;->b(Ljava/lang/String;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    iget-object v5, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 53
    .line 54
    add-long/2addr v1, v3

    .line 55
    invoke-static {v5, v1, v2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->w(Lcom/join/mgps/mod/activity/ModLoadingActivity;J)J

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->n(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->v(Lcom/join/mgps/mod/activity/ModLoadingActivity;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v1

    .line 69
    const-wide/16 v3, 0x0

    .line 70
    .line 71
    cmp-long v5, v1, v3

    .line 72
    .line 73
    if-nez v5, :cond_0

    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->B:Ljava/util/List;

    .line 78
    .line 79
    const-string v1, "copyExtFile"

    .line 80
    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Landroid/content/Intent;

    .line 89
    .line 90
    const-string v2, "com.join.android.app.mgsim.wufun.soCopyFinish"

    .line 91
    .line 92
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    monitor-exit p0

    .line 99
    return-void

    .line 100
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 101
    .line 102
    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/k;->V(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 109
    .line 110
    iget-object v2, v2, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Lcom/join/mgps/va/overmind/k;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v1}, Lcom/papa91/arc/util/FileUtils;->fileSize(Ljava/lang/String;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v1

    .line 120
    invoke-static {v0}, Lcom/papa91/arc/util/FileUtils;->fileSize(Ljava/lang/String;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->v(Lcom/join/mgps/mod/activity/ModLoadingActivity;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v5

    .line 130
    add-long v7, v1, v3

    .line 131
    .line 132
    cmp-long v0, v5, v7

    .line 133
    .line 134
    if-eqz v0, :cond_1

    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/va/overmind/m;->c(Ljava/lang/String;JJ)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 144
    .line 145
    new-instance v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$f$a;

    .line 146
    .line 147
    invoke-direct {v1, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$f$a;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$f;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$f;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->B:Ljava/util/List;

    .line 157
    .line 158
    const-string v1, "copyExtFile"

    .line 159
    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    new-instance v1, Landroid/content/Intent;

    .line 168
    .line 169
    const-string v2, "com.join.android.app.mgsim.wufun.soCopyFinish"

    .line 170
    .line 171
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    .line 177
    :goto_0
    monitor-exit p0

    .line 178
    return-void

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    monitor-exit p0

    .line 181
    throw v0
.end method
