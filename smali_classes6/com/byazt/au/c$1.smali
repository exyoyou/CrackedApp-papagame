.class public Lcom/byazt/au/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/component/ttvideo/IPreLoaderItemCallBackListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x171,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/au/c;->execVideoPreload(Landroid/content/Context;Lcom/byazt/fk/u;Lcom/byazt/fk/da$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/fk/u;

.field public final synthetic tt:Lcom/byazt/fk/da$c;

.field public final synthetic ve:Lcom/byazt/au/c;


# direct methods
.method public constructor <init>(Lcom/byazt/au/c;Lcom/byazt/fk/u;Lcom/byazt/fk/da$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/au/c$1;->ve:Lcom/byazt/au/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/au/c$1;->c:Lcom/byazt/fk/u;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/au/c$1;->tt:Lcom/byazt/fk/da$c;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public preloadItemInfo(Lcom/bykv/vk/component/ttvideo/PreLoaderItemCallBackInfo;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/byazt/au/c;->c()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/PreLoaderItemCallBackInfo;->getKey()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v2, "TTVideoPreloadImp"

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    new-array v4, v3, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string v5, "TTMediaPlayer execVideoPreload: callback key ="

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    aput-object v5, v4, v6

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const/4 v7, 0x1

    .line 29
    aput-object v5, v4, v7

    .line 30
    .line 31
    const-string v5, "  fileHash ="

    .line 32
    .line 33
    const/4 v8, 0x2

    .line 34
    aput-object v5, v4, v8

    .line 35
    .line 36
    iget-object v5, p0, Lcom/byazt/au/c$1;->c:Lcom/byazt/fk/u;

    .line 37
    .line 38
    invoke-interface {v5}, Lcom/byazt/fk/u;->getFileNameKey()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const/4 v9, 0x3

    .line 43
    aput-object v5, v4, v9

    .line 44
    .line 45
    invoke-static {v2, v4}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x5

    .line 49
    if-eq v1, v8, :cond_5

    .line 50
    .line 51
    if-eq v1, v9, :cond_3

    .line 52
    .line 53
    if-eq v1, v2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/byazt/au/c$1;->tt:Lcom/byazt/fk/da$c;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    iget-object v4, p0, Lcom/byazt/au/c$1;->c:Lcom/byazt/fk/u;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/PreLoaderItemCallBackInfo;->getKey()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-interface {v1, v4, p1}, Lcom/byazt/fk/da$c;->cancel(Lcom/byazt/fk/u;I)V

    .line 67
    .line 68
    .line 69
    :cond_2
    sget p1, Lcom/byazt/au/c;->uj:I

    .line 70
    .line 71
    add-int/2addr p1, v7

    .line 72
    sput p1, Lcom/byazt/au/c;->uj:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object v1, p0, Lcom/byazt/au/c$1;->tt:Lcom/byazt/fk/da$c;

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    iget-object v4, p0, Lcom/byazt/au/c$1;->c:Lcom/byazt/fk/u;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/PreLoaderItemCallBackInfo;->getKey()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    const-string v5, "error"

    .line 86
    .line 87
    invoke-interface {v1, v4, p1, v5}, Lcom/byazt/fk/da$c;->onVideoPreloadFail(Lcom/byazt/fk/u;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    sget p1, Lcom/byazt/au/c;->ve:I

    .line 91
    .line 92
    add-int/2addr p1, v7

    .line 93
    sput p1, Lcom/byazt/au/c;->ve:I

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    iget-object v1, p0, Lcom/byazt/au/c$1;->tt:Lcom/byazt/fk/da$c;

    .line 97
    .line 98
    if-eqz v1, :cond_6

    .line 99
    .line 100
    iget-object v4, p0, Lcom/byazt/au/c$1;->c:Lcom/byazt/fk/u;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/PreLoaderItemCallBackInfo;->getKey()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-interface {v1, v4, p1}, Lcom/byazt/fk/da$c;->onVideoPreloadSuccess(Lcom/byazt/fk/u;I)V

    .line 107
    .line 108
    .line 109
    :cond_6
    sget p1, Lcom/byazt/au/c;->tt:I

    .line 110
    .line 111
    add-int/2addr p1, v7

    .line 112
    sput p1, Lcom/byazt/au/c;->tt:I

    .line 113
    .line 114
    :goto_0
    const-string p1, "TTVideoPreloadImp"

    .line 115
    .line 116
    const/16 v1, 0xa

    .line 117
    .line 118
    new-array v1, v1, [Ljava/lang/Object;

    .line 119
    .line 120
    const-string v4, "preloadItemInfo:  preTime = "

    .line 121
    .line 122
    aput-object v4, v1, v6

    .line 123
    .line 124
    sget v4, Lcom/byazt/au/c;->c:I

    .line 125
    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    aput-object v4, v1, v7

    .line 131
    .line 132
    const-string v4, "  callback ="

    .line 133
    .line 134
    aput-object v4, v1, v8

    .line 135
    .line 136
    sget v4, Lcom/byazt/au/c;->tt:I

    .line 137
    .line 138
    sget v5, Lcom/byazt/au/c;->ve:I

    .line 139
    .line 140
    add-int/2addr v4, v5

    .line 141
    sget v5, Lcom/byazt/au/c;->uj:I

    .line 142
    .line 143
    add-int/2addr v4, v5

    .line 144
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    aput-object v4, v1, v9

    .line 149
    .line 150
    const-string v4, "  callback2 ="

    .line 151
    .line 152
    aput-object v4, v1, v3

    .line 153
    .line 154
    sget v3, Lcom/byazt/au/c;->tt:I

    .line 155
    .line 156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    aput-object v3, v1, v2

    .line 161
    .line 162
    const-string v2, "  callback3="

    .line 163
    .line 164
    const/4 v3, 0x6

    .line 165
    aput-object v2, v1, v3

    .line 166
    .line 167
    sget v2, Lcom/byazt/au/c;->ve:I

    .line 168
    .line 169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    const/4 v3, 0x7

    .line 174
    aput-object v2, v1, v3

    .line 175
    .line 176
    const-string v2, "  callback5 ="

    .line 177
    .line 178
    const/16 v3, 0x8

    .line 179
    .line 180
    aput-object v2, v1, v3

    .line 181
    .line 182
    sget v2, Lcom/byazt/au/c;->uj:I

    .line 183
    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    const/16 v3, 0x9

    .line 189
    .line 190
    aput-object v2, v1, v3

    .line 191
    .line 192
    invoke-static {p1, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    monitor-exit v0

    .line 196
    return-void

    .line 197
    :catchall_0
    move-exception p1

    .line 198
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    throw p1
.end method
