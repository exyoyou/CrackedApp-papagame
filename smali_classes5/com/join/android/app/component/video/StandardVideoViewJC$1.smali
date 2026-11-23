.class Lcom/join/android/app/component/video/StandardVideoViewJC$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/video/StandardVideoViewJC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/StandardVideoViewJC;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/StandardVideoViewJC;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$1;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    :try_start_0
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
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$1;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->l2:Landroid/widget/ImageView;

    .line 38
    .line 39
    const p2, 0x7f080b17

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/16 v1, 0x28

    .line 47
    .line 48
    if-lt p1, p2, :cond_1

    .line 49
    .line 50
    if-ge p1, v1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$1;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->l2:Landroid/widget/ImageView;

    .line 55
    .line 56
    const p2, 0x7f080b19

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/16 p2, 0x3c

    .line 64
    .line 65
    if-lt p1, v1, :cond_2

    .line 66
    .line 67
    if-ge p1, p2, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$1;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->l2:Landroid/widget/ImageView;

    .line 72
    .line 73
    const p2, 0x7f080b1a

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/16 v1, 0x50

    .line 81
    .line 82
    if-lt p1, p2, :cond_3

    .line 83
    .line 84
    if-ge p1, v1, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$1;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->l2:Landroid/widget/ImageView;

    .line 89
    .line 90
    const p2, 0x7f080b1b

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    const/16 p2, 0x5f

    .line 98
    .line 99
    if-lt p1, v1, :cond_4

    .line 100
    .line 101
    if-ge p1, p2, :cond_4

    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$1;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->l2:Landroid/widget/ImageView;

    .line 106
    .line 107
    const p2, 0x7f080b1c

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    if-lt p1, p2, :cond_5

    .line 115
    .line 116
    if-gt p1, v2, :cond_5

    .line 117
    .line 118
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$1;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->l2:Landroid/widget/ImageView;

    .line 121
    .line 122
    const p2, 0x7f080b18

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$1;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$1;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    .line 135
    .line 136
    invoke-static {p2}, Lcom/join/android/app/component/video/StandardVideoViewJC;->V(Lcom/join/android/app/component/video/StandardVideoViewJC;)Landroid/content/BroadcastReceiver;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC$1;->a:Lcom/join/android/app/component/video/StandardVideoViewJC;

    .line 144
    .line 145
    invoke-static {p1, v0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->W(Lcom/join/android/app/component/video/StandardVideoViewJC;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    .line 152
    .line 153
    :cond_6
    :goto_1
    return-void
.end method
