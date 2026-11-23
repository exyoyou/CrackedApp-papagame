.class Lcn/sharesdk/framework/g$6;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/g;->c(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcn/sharesdk/framework/g;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/g;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/g$6;->c:Lcn/sharesdk/framework/g;

    .line 2
    .line 3
    iput p2, p0, Lcn/sharesdk/framework/g$6;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcn/sharesdk/framework/g$6;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcn/sharesdk/framework/g$6;->c:Lcn/sharesdk/framework/g;

    .line 8
    .line 9
    invoke-static {v0}, Lcn/sharesdk/framework/g;->b(Lcn/sharesdk/framework/g;)Lcn/sharesdk/framework/e;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Lcn/sharesdk/framework/g$6;->a:I

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcn/sharesdk/framework/g;->a(Lcn/sharesdk/framework/g;Lcn/sharesdk/framework/e;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->isAuth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcn/sharesdk/framework/g$6;->c:Lcn/sharesdk/framework/g;

    .line 31
    .line 32
    invoke-static {v0}, Lcn/sharesdk/framework/g;->b(Lcn/sharesdk/framework/g;)Lcn/sharesdk/framework/e;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_5

    .line 37
    .line 38
    iget-object v0, p0, Lcn/sharesdk/framework/g$6;->c:Lcn/sharesdk/framework/g;

    .line 39
    .line 40
    invoke-static {v0}, Lcn/sharesdk/framework/g;->b(Lcn/sharesdk/framework/g;)Lcn/sharesdk/framework/e;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcn/sharesdk/framework/g$6;->c:Lcn/sharesdk/framework/g;

    .line 45
    .line 46
    invoke-static {v1}, Lcn/sharesdk/framework/g;->a(Lcn/sharesdk/framework/g;)Lcn/sharesdk/framework/Platform;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget v2, p0, Lcn/sharesdk/framework/g$6;->a:I

    .line 51
    .line 52
    new-instance v3, Lcom/mob/commons/dialog/PolicyThrowable;

    .line 53
    .line 54
    invoke-direct {v3}, Lcom/mob/commons/dialog/PolicyThrowable;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/framework/e;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/a;->a()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcn/sharesdk/framework/g$6;->c:Lcn/sharesdk/framework/g;

    .line 69
    .line 70
    invoke-static {v0}, Lcn/sharesdk/framework/g;->b(Lcn/sharesdk/framework/g;)Lcn/sharesdk/framework/e;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget v2, p0, Lcn/sharesdk/framework/g$6;->a:I

    .line 75
    .line 76
    invoke-static {v0, v1, v2}, Lcn/sharesdk/framework/g;->b(Lcn/sharesdk/framework/g;Lcn/sharesdk/framework/e;I)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/framework/g$6;->c:Lcn/sharesdk/framework/g;

    .line 82
    .line 83
    invoke-static {v0}, Lcn/sharesdk/framework/g;->a(Lcn/sharesdk/framework/g;)Lcn/sharesdk/framework/Platform;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget v1, p0, Lcn/sharesdk/framework/g$6;->a:I

    .line 88
    .line 89
    iget-object v2, p0, Lcn/sharesdk/framework/g$6;->b:Ljava/lang/Object;

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/Platform;->checkAuthorize(ILjava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    iget-object v0, p0, Lcn/sharesdk/framework/g$6;->c:Lcn/sharesdk/framework/g;

    .line 98
    .line 99
    iget v1, p0, Lcn/sharesdk/framework/g$6;->a:I

    .line 100
    .line 101
    iget-object v2, p0, Lcn/sharesdk/framework/g$6;->b:Ljava/lang/Object;

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/g;->b(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v1, "The user is using the privacy version without a popup newThreadJob 002"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catchall_0
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/ProvicyCanContinue;->a()Lcn/sharesdk/framework/ProvicyCanContinue;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    new-instance v1, Lcn/sharesdk/framework/g$6$1;

    .line 121
    .line 122
    invoke-direct {v1, p0}, Lcn/sharesdk/framework/g$6$1;-><init>(Lcn/sharesdk/framework/g$6;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/ProvicyCanContinue;->a(Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catchall_1
    move-exception v0

    .line 130
    :try_start_3
    invoke-static {}, Lcn/sharesdk/framework/a;->a()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_3

    .line 135
    .line 136
    iget-object v1, p0, Lcn/sharesdk/framework/g$6;->c:Lcn/sharesdk/framework/g;

    .line 137
    .line 138
    invoke-static {v1}, Lcn/sharesdk/framework/g;->b(Lcn/sharesdk/framework/g;)Lcn/sharesdk/framework/e;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget v3, p0, Lcn/sharesdk/framework/g$6;->a:I

    .line 143
    .line 144
    invoke-static {v1, v2, v3}, Lcn/sharesdk/framework/g;->b(Lcn/sharesdk/framework/g;Lcn/sharesdk/framework/e;I)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_3
    iget-object v1, p0, Lcn/sharesdk/framework/g$6;->c:Lcn/sharesdk/framework/g;

    .line 149
    .line 150
    invoke-static {v1}, Lcn/sharesdk/framework/g;->a(Lcn/sharesdk/framework/g;)Lcn/sharesdk/framework/Platform;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iget v2, p0, Lcn/sharesdk/framework/g$6;->a:I

    .line 155
    .line 156
    iget-object v3, p0, Lcn/sharesdk/framework/g$6;->b:Ljava/lang/Object;

    .line 157
    .line 158
    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/Platform;->checkAuthorize(ILjava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_4

    .line 163
    .line 164
    iget-object v1, p0, Lcn/sharesdk/framework/g$6;->c:Lcn/sharesdk/framework/g;

    .line 165
    .line 166
    iget v2, p0, Lcn/sharesdk/framework/g$6;->a:I

    .line 167
    .line 168
    iget-object v3, p0, Lcn/sharesdk/framework/g$6;->b:Ljava/lang/Object;

    .line 169
    .line 170
    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/g;->b(ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v3, "The user is using the non-privacy version newThreadJob 002 "

    .line 183
    .line 184
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :catchall_2
    move-exception v0

    .line 199
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    const-string v3, "new Thread(getThreadName(action)) "

    .line 209
    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const/4 v2, 0x0

    .line 221
    new-array v2, v2, [Ljava/lang/Object;

    .line 222
    .line 223
    invoke-virtual {v1, v0, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 224
    .line 225
    .line 226
    :cond_5
    :goto_1
    return-void
.end method
