.class Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$5;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$5;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_6

    .line 12
    .line 13
    const-string p1, "level"

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const-string v1, "scale"

    .line 21
    .line 22
    const/16 v2, 0x64

    .line 23
    .line 24
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    mul-int/lit8 p1, p1, 0x64

    .line 29
    .line 30
    div-int/2addr p1, p2

    .line 31
    const/16 p2, 0xf

    .line 32
    .line 33
    if-ge p1, p2, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$5;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 36
    .line 37
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->l2:Landroid/widget/ImageView;

    .line 38
    .line 39
    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_battery_level_10:I

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/16 v1, 0x28

    .line 46
    .line 47
    if-lt p1, p2, :cond_1

    .line 48
    .line 49
    if-ge p1, v1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$5;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 52
    .line 53
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->l2:Landroid/widget/ImageView;

    .line 54
    .line 55
    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_battery_level_30:I

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/16 p2, 0x3c

    .line 62
    .line 63
    if-lt p1, v1, :cond_2

    .line 64
    .line 65
    if-ge p1, p2, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$5;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 68
    .line 69
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->l2:Landroid/widget/ImageView;

    .line 70
    .line 71
    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_battery_level_50:I

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/16 v1, 0x50

    .line 78
    .line 79
    if-lt p1, p2, :cond_3

    .line 80
    .line 81
    if-ge p1, v1, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$5;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 84
    .line 85
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->l2:Landroid/widget/ImageView;

    .line 86
    .line 87
    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_battery_level_70:I

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const/16 p2, 0x5f

    .line 94
    .line 95
    if-lt p1, v1, :cond_4

    .line 96
    .line 97
    if-ge p1, p2, :cond_4

    .line 98
    .line 99
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$5;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 100
    .line 101
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->l2:Landroid/widget/ImageView;

    .line 102
    .line 103
    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_battery_level_90:I

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    if-lt p1, p2, :cond_5

    .line 110
    .line 111
    if-gt p1, v2, :cond_5

    .line 112
    .line 113
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$5;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 114
    .line 115
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->l2:Landroid/widget/ImageView;

    .line 116
    .line 117
    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_battery_level_100:I

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_0
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$5;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$5;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 129
    .line 130
    invoke-static {p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->V(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)Landroid/content/BroadcastReceiver;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$5;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 138
    .line 139
    invoke-static {p1, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->W(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;Z)Z

    .line 140
    .line 141
    .line 142
    :cond_6
    return-void
.end method
