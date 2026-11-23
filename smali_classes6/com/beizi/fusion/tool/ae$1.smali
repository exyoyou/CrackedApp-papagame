.class Lcom/beizi/fusion/tool/ae$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/tool/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/tool/ae;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/tool/ae;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto/16 :goto_0

    .line 7
    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/beizi/fusion/tool/ae;->j(Lcom/beizi/fusion/tool/ae;)V

    .line 11
    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :pswitch_1
    iget-object p1, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/beizi/fusion/tool/ae;->a()V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :pswitch_2
    iget-object p1, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/beizi/fusion/tool/ae;->a(Lcom/beizi/fusion/tool/ae;)Landroid/view/ViewGroup;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    :try_start_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/beizi/fusion/tool/ae;->b(Lcom/beizi/fusion/tool/ae;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v1, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/beizi/fusion/tool/ae;->c(Lcom/beizi/fusion/tool/ae;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/beizi/fusion/tool/ae;->e(Lcom/beizi/fusion/tool/ae;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/beizi/fusion/tool/ae;->d(Lcom/beizi/fusion/tool/ae;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v2, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 61
    .line 62
    invoke-static {v2}, Lcom/beizi/fusion/tool/ae;->d(Lcom/beizi/fusion/tool/ae;)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iget-object v3, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 67
    .line 68
    invoke-static {v3}, Lcom/beizi/fusion/tool/ae;->d(Lcom/beizi/fusion/tool/ae;)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    iget-object v4, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 73
    .line 74
    invoke-static {v4}, Lcom/beizi/fusion/tool/ae;->d(Lcom/beizi/fusion/tool/ae;)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/beizi/fusion/tool/ae;->e(Lcom/beizi/fusion/tool/ae;)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v1, "#FFFFFF"

    .line 88
    .line 89
    iget-object v2, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 90
    .line 91
    invoke-static {v2}, Lcom/beizi/fusion/tool/ae;->c(Lcom/beizi/fusion/tool/ae;)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    div-int/lit8 v2, v2, 0x4

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    const/4 v4, 0x0

    .line 99
    invoke-static {v0, v1, v3, v4, v2}, Lcom/beizi/fusion/tool/ar;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/beizi/fusion/tool/ae;->a(Lcom/beizi/fusion/tool/ae;)Landroid/view/ViewGroup;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 109
    .line 110
    invoke-static {v1}, Lcom/beizi/fusion/tool/ae;->e(Lcom/beizi/fusion/tool/ae;)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/beizi/fusion/tool/ae;->e(Lcom/beizi/fusion/tool/ae;)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object p1, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/beizi/fusion/tool/ae;->b(Lcom/beizi/fusion/tool/ae;)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    iget-object p1, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 130
    .line 131
    invoke-static {p1}, Lcom/beizi/fusion/tool/ae;->c(Lcom/beizi/fusion/tool/ae;)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    iget-object p1, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 136
    .line 137
    invoke-static {p1}, Lcom/beizi/fusion/tool/ae;->f(Lcom/beizi/fusion/tool/ae;)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    iget-object p1, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 142
    .line 143
    invoke-static {p1}, Lcom/beizi/fusion/tool/ae;->g(Lcom/beizi/fusion/tool/ae;)I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    iget-object p1, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 148
    .line 149
    invoke-static {p1}, Lcom/beizi/fusion/tool/ae;->h(Lcom/beizi/fusion/tool/ae;)I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    const/16 v6, 0x12c

    .line 154
    .line 155
    invoke-static/range {v0 .. v6}, Lcom/beizi/fusion/tool/q;->a(Landroid/view/View;IIIIII)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 159
    .line 160
    invoke-static {p1}, Lcom/beizi/fusion/tool/ae;->i(Lcom/beizi/fusion/tool/ae;)Lcom/beizi/fusion/tool/ae$a;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_1

    .line 165
    .line 166
    iget-object p1, p0, Lcom/beizi/fusion/tool/ae$1;->a:Lcom/beizi/fusion/tool/ae;

    .line 167
    .line 168
    invoke-static {p1}, Lcom/beizi/fusion/tool/ae;->i(Lcom/beizi/fusion/tool/ae;)Lcom/beizi/fusion/tool/ae$a;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-interface {p1}, Lcom/beizi/fusion/tool/ae$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    :cond_1
    :goto_0
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
