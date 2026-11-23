.class Lcom/join/android/app/component/video/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/video/StandardVideoView$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/c;->D(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/join/android/app/component/video/c;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/c;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/c$d;->b:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/component/video/c$d;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "standardVideoView"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/c$d;->b:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->z()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/android/app/component/video/c$l;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isInPlayingState()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/android/app/component/video/c$d;->b:Lcom/join/android/app/component/video/c;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    iput-boolean v2, v1, Lcom/join/android/app/component/video/c;->e:Z

    .line 32
    .line 33
    invoke-static {p1}, Lcom/join/android/app/component/video/j;->f(Lcom/join/android/app/component/video/StandardVideoView;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1, p1}, Lcom/papa/gsyvideoplayer/video/base/a;->z(Lv7/a;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/android/app/component/video/c$d;->a:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/join/mgps/activity/EndGameDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c$l;->c()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->b(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c$l;->b()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->a(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c$l;->g()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->d(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->c(Z)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/c$d;->a:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/join/mgps/activity/EndGameDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c$l;->c()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->b(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c$l;->b()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->a(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c$l;->g()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->d(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 112
    .line 113
    .line 114
    :goto_0
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 115
    .line 116
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c$l;->b()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setEndId(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v1, Lcom/papa/sim/statistic/Data;

    .line 127
    .line 128
    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c$l;->c()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/android/app/component/video/c$d;->b:Lcom/join/android/app/component/video/c;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/join/android/app/component/video/c;->b(Lcom/join/android/app/component/video/c;)Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    sget-object v2, Lcom/papa/sim/statistic/Event;->clickEndGameDetail:Lcom/papa/sim/statistic/Event;

    .line 149
    .line 150
    invoke-virtual {v0, v2, p1, v1}, Lcom/papa/sim/statistic/t;->i0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :catch_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    .line 157
    .line 158
    :goto_1
    return-void
.end method
