.class Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Z(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aa(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/media/MediaPlayer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/high16 v2, 0x3f800000    # 1.0f

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aa(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/media/MediaPlayer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->A(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ab(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    div-int/lit16 p1, p1, 0x3e8

    .line 54
    .line 55
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->l(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-le v0, p1, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 64
    .line 65
    invoke-static {v0, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->i(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)I

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->l(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-static {v0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)I

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->V(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/ProgressBar;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->V(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/ProgressBar;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->B(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->C(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->D(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/os/Handler;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/os/Handler;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const/16 v0, 0x271a

    .line 124
    .line 125
    const-wide/16 v1, 0x3e8

    .line 126
    .line 127
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 128
    .line 129
    .line 130
    :cond_3
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ac(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 136
    .line 137
    const/4 v0, 0x0

    .line 138
    invoke-static {p1, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    :goto_1
    return-void
.end method
