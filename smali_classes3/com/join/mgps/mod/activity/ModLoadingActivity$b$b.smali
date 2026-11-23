.class Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->onProgress(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/mod/activity/ModLoadingActivity$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$b;Ljava/lang/String;ILjava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;->e:Lcom/join/mgps/mod/activity/ModLoadingActivity$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;->d:Ljava/lang/String;

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
    invoke-static {}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->o()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;->b:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;->e:Lcom/join/mgps/mod/activity/ModLoadingActivity$b;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->p(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/ProgressBar;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;->c:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;->e:Lcom/join/mgps/mod/activity/ModLoadingActivity$b;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->q(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;->e:Lcom/join/mgps/mod/activity/ModLoadingActivity$b;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const v3, 0x7f1203c3

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x3

    .line 52
    new-array v4, v3, [Ljava/lang/Object;

    .line 53
    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->c()J

    .line 60
    .line 61
    .line 62
    move-result-wide v6

    .line 63
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->e(J)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v6, ""

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    const/4 v7, 0x0

    .line 80
    aput-object v5, v4, v7

    .line 81
    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->e()J

    .line 88
    .line 89
    .line 90
    move-result-wide v8

    .line 91
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->e(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    const/4 v8, 0x1

    .line 106
    aput-object v5, v4, v8

    .line 107
    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    iget v9, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;->c:I

    .line 114
    .line 115
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v9, "%"

    .line 119
    .line 120
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    const/4 v9, 0x2

    .line 128
    aput-object v5, v4, v9

    .line 129
    .line 130
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;->e:Lcom/join/mgps/mod/activity/ModLoadingActivity$b;

    .line 138
    .line 139
    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 140
    .line 141
    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->s(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;->e:Lcom/join/mgps/mod/activity/ModLoadingActivity$b;

    .line 146
    .line 147
    iget-object v2, v2, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 148
    .line 149
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const v4, 0x7f1203c4

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    new-array v3, v3, [Ljava/lang/Object;

    .line 161
    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->e()J

    .line 168
    .line 169
    .line 170
    move-result-wide v10

    .line 171
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->e(J)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    aput-object v0, v3, v7

    .line 186
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    iget-object v4, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;->d:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    aput-object v0, v3, v8

    .line 205
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v4, "v"

    .line 212
    .line 213
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget-object v4, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;->e:Lcom/join/mgps/mod/activity/ModLoadingActivity$b;

    .line 217
    .line 218
    iget-object v4, v4, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 219
    .line 220
    iget-object v4, v4, Lcom/join/mgps/mod/activity/ModLoadingActivity;->k:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    aput-object v0, v3, v9

    .line 230
    .line 231
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    :cond_0
    return-void
.end method
