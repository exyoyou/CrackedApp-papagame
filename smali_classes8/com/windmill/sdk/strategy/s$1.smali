.class Lcom/windmill/sdk/strategy/s$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/strategy/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/s;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/strategy/s;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "looper"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

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
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    if-eq p1, v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->f(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/s$b;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_5

    .line 21
    .line 22
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->f(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/s$b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    .line 29
    .line 30
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_CHANNEL_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v0, v2, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0}, Lcom/windmill/sdk/strategy/s$b;->a(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/q;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/q;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget p1, p1, Lcom/windmill/sdk/strategy/q;->k:I

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/q;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget p1, p1, Lcom/windmill/sdk/strategy/q;->k:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/16 p1, 0xbb8

    .line 76
    .line 77
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-lez v0, :cond_4

    .line 96
    .line 97
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-static {v0, v2}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;Z)Z

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->c(Lcom/windmill/sdk/strategy/s;)Landroid/os/Handler;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->c(Lcom/windmill/sdk/strategy/s;)Landroid/os/Handler;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    int-to-long v3, p1

    .line 119
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 123
    .line 124
    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->d(Lcom/windmill/sdk/strategy/s;)Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 129
    .line 130
    .line 131
    :goto_1
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 132
    .line 133
    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-ge v2, p1, :cond_5

    .line 142
    .line 143
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 144
    .line 145
    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Lcom/windmill/sdk/strategy/a;

    .line 154
    .line 155
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 156
    .line 157
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->e(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/s$d;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_3

    .line 162
    .line 163
    if-eqz p1, :cond_3

    .line 164
    .line 165
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 166
    .line 167
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->e(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/s$d;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 172
    .line 173
    invoke-static {v1}, Lcom/windmill/sdk/strategy/s;->f(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/s$b;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-interface {v0, p1, v1}, Lcom/windmill/sdk/strategy/s$d;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$b;)V

    .line 178
    .line 179
    .line 180
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_4
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s$1;->a:Lcom/windmill/sdk/strategy/s;

    .line 184
    .line 185
    invoke-static {p1}, Lcom/windmill/sdk/strategy/s;->c(Lcom/windmill/sdk/strategy/s;)Landroid/os/Handler;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 190
    .line 191
    .line 192
    :cond_5
    :goto_2
    return-void
.end method
