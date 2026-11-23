.class Lcom/join/mgps/activity/MiniGameLoadingActivity$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->onProgress(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/activity/MiniGameLoadingActivity$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MiniGameLoadingActivity$c;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$url",
            "val$progress",
            "val$speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$b;->e:Lcom/join/mgps/activity/MiniGameLoadingActivity$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$b;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$b;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$b;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->access$400()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/github/snowdream/android/app/downloader/c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$b;->e:Lcom/join/mgps/activity/MiniGameLoadingActivity$c;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/join/mgps/activity/MiniGameLoadingActivity;->pb_progress:Lcom/join/mgps/customview/PictureHProgress;

    .line 20
    .line 21
    iget v2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$b;->c:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/PictureHProgress;->setProgress(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$b;->e:Lcom/join/mgps/activity/MiniGameLoadingActivity$c;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 29
    .line 30
    iget-object v2, v1, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tv_loading_progress:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const v3, 0x7f1203c3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v3, 0x3

    .line 44
    new-array v4, v3, [Ljava/lang/Object;

    .line 45
    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->c()J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->e(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v6, ""

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const/4 v7, 0x0

    .line 72
    aput-object v5, v4, v7

    .line 73
    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->e()J

    .line 80
    .line 81
    .line 82
    move-result-wide v8

    .line 83
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->e(J)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    const/4 v8, 0x1

    .line 98
    aput-object v5, v4, v8

    .line 99
    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    iget v9, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$b;->c:I

    .line 106
    .line 107
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v9, "%"

    .line 111
    .line 112
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const/4 v9, 0x2

    .line 120
    aput-object v5, v4, v9

    .line 121
    .line 122
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$b;->e:Lcom/join/mgps/activity/MiniGameLoadingActivity$c;

    .line 130
    .line 131
    iget-object v1, v1, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 132
    .line 133
    iget-object v2, v1, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tv_speed:Landroid/widget/TextView;

    .line 134
    .line 135
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const v4, 0x7f1203c4

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    new-array v3, v3, [Ljava/lang/Object;

    .line 147
    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->e()J

    .line 154
    .line 155
    .line 156
    move-result-wide v10

    .line 157
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->e(J)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    aput-object v0, v3, v7

    .line 172
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    iget-object v4, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$b;->d:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    aput-object v0, v3, v8

    .line 191
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string v4, "v"

    .line 198
    .line 199
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-object v4, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$b;->e:Lcom/join/mgps/activity/MiniGameLoadingActivity$c;

    .line 203
    .line 204
    iget-object v4, v4, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 205
    .line 206
    iget-object v4, v4, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modVersion:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    aput-object v0, v3, v9

    .line 216
    .line 217
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    :cond_0
    return-void
.end method
