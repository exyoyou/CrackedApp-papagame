.class Lcn/fly/commons/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/a$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/commons/a$1;


# direct methods
.method constructor <init>(Lcn/fly/commons/a$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/a$1$1;->a:Lcn/fly/commons/a$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onResponse(Lcn/fly/tools/utils/DH$DHResponse;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/fly/commons/a$1$1;->a:Lcn/fly/commons/a$1;

    .line 3
    .line 4
    iget-object v1, v1, Lcn/fly/commons/a$1;->c:Lcn/fly/commons/a;

    .line 5
    .line 6
    invoke-static {v1}, Lcn/fly/commons/a;->a(Lcn/fly/commons/a;)[B

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iget-object v2, p0, Lcn/fly/commons/a$1$1;->a:Lcn/fly/commons/a$1;

    .line 12
    .line 13
    iget-object v2, v2, Lcn/fly/commons/a$1;->c:Lcn/fly/commons/a;

    .line 14
    .line 15
    sget-object v3, Lcn/fly/commons/f;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2, v3, p1}, Lcn/fly/commons/a;->a(Lcn/fly/commons/a;Ljava/lang/String;Lcn/fly/tools/utils/DH$DHResponse;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcn/fly/commons/a$1$1;->a:Lcn/fly/commons/a$1;

    .line 22
    .line 23
    iget-object v3, v3, Lcn/fly/commons/a$1;->c:Lcn/fly/commons/a;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcn/fly/commons/a;->f()Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v4, p0, Lcn/fly/commons/a$1$1;->a:Lcn/fly/commons/a$1;

    .line 30
    .line 31
    iget-object v4, v4, Lcn/fly/commons/a$1;->c:Lcn/fly/commons/a;

    .line 32
    .line 33
    invoke-static {v4, v3, p1}, Lcn/fly/commons/a;->a(Lcn/fly/commons/a;Ljava/util/HashMap;Lcn/fly/tools/utils/DH$DHResponse;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget-object v5, p0, Lcn/fly/commons/a$1$1;->a:Lcn/fly/commons/a$1;

    .line 38
    .line 39
    iget-object v5, v5, Lcn/fly/commons/a$1;->c:Lcn/fly/commons/a;

    .line 40
    .line 41
    invoke-static {v5}, Lcn/fly/commons/a;->b(Lcn/fly/commons/a;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    iget-object v6, p0, Lcn/fly/commons/a$1$1;->a:Lcn/fly/commons/a$1;

    .line 46
    .line 47
    iget-object v6, v6, Lcn/fly/commons/a$1;->c:Lcn/fly/commons/a;

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x1

    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    if-eqz v5, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v9, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    const/4 v9, 0x1

    .line 59
    :goto_1
    invoke-static {v6, v9}, Lcn/fly/commons/a;->a(Lcn/fly/commons/a;Z)Z

    .line 60
    .line 61
    .line 62
    iget-object v6, p0, Lcn/fly/commons/a$1$1;->a:Lcn/fly/commons/a$1;

    .line 63
    .line 64
    iget-object v9, v6, Lcn/fly/commons/a$1;->c:Lcn/fly/commons/a;

    .line 65
    .line 66
    iget-object v6, v6, Lcn/fly/commons/a$1;->a:Lcn/fly/commons/FlyProduct;

    .line 67
    .line 68
    invoke-static {v9, v3, v6, p1}, Lcn/fly/commons/a;->a(Lcn/fly/commons/a;Ljava/util/HashMap;Lcn/fly/commons/FlyProduct;Lcn/fly/tools/utils/DH$DHResponse;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    new-instance v10, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v11, "map: "

    .line 82
    .line 83
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v11, "\nisCh: "

    .line 90
    .line 91
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v11, ", isG: "

    .line 98
    .line 99
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v5, ", isReg: "

    .line 106
    .line 107
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    new-array v8, v8, [Ljava/lang/Object;

    .line 118
    .line 119
    new-instance v10, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v11, ", udif:"

    .line 125
    .line 126
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v11, p0, Lcn/fly/commons/a$1$1;->a:Lcn/fly/commons/a$1;

    .line 130
    .line 131
    iget-object v11, v11, Lcn/fly/commons/a$1;->c:Lcn/fly/commons/a;

    .line 132
    .line 133
    invoke-static {v11}, Lcn/fly/commons/a;->c(Lcn/fly/commons/a;)Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    aput-object v10, v8, v7

    .line 145
    .line 146
    invoke-virtual {v9, v5, v8}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 147
    .line 148
    .line 149
    iget-object v5, p0, Lcn/fly/commons/a$1$1;->a:Lcn/fly/commons/a$1;

    .line 150
    .line 151
    iget-object v5, v5, Lcn/fly/commons/a$1;->c:Lcn/fly/commons/a;

    .line 152
    .line 153
    invoke-static {v5}, Lcn/fly/commons/a;->c(Lcn/fly/commons/a;)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_3

    .line 158
    .line 159
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-eqz v5, :cond_2

    .line 164
    .line 165
    sget-object v2, Lcn/fly/commons/f;->a:Ljava/lang/String;

    .line 166
    .line 167
    :cond_2
    iget-object v5, p0, Lcn/fly/commons/a$1$1;->a:Lcn/fly/commons/a$1;

    .line 168
    .line 169
    iget-object v5, v5, Lcn/fly/commons/a$1;->c:Lcn/fly/commons/a;

    .line 170
    .line 171
    invoke-static {v5, v3, v2, p1}, Lcn/fly/commons/a;->a(Lcn/fly/commons/a;Ljava/util/HashMap;Ljava/lang/String;Lcn/fly/tools/utils/DH$DHResponse;)V

    .line 172
    .line 173
    .line 174
    :cond_3
    if-nez v4, :cond_4

    .line 175
    .line 176
    if-eqz v6, :cond_5

    .line 177
    .line 178
    :cond_4
    iget-object p1, p0, Lcn/fly/commons/a$1$1;->a:Lcn/fly/commons/a$1;

    .line 179
    .line 180
    iget-object p1, p1, Lcn/fly/commons/a$1;->c:Lcn/fly/commons/a;

    .line 181
    .line 182
    invoke-virtual {p1, v3}, Lcn/fly/commons/a;->a(Ljava/util/HashMap;)V

    .line 183
    .line 184
    .line 185
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    iget-object p1, p0, Lcn/fly/commons/a$1$1;->a:Lcn/fly/commons/a$1;

    .line 187
    .line 188
    iget-object p1, p1, Lcn/fly/commons/a$1;->b:Lcn/fly/tools/utils/d;

    .line 189
    .line 190
    invoke-virtual {p1, v0}, Lcn/fly/tools/utils/d;->a(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :catchall_0
    move-exception p1

    .line 195
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 197
    :catchall_1
    move-exception p1

    .line 198
    iget-object v1, p0, Lcn/fly/commons/a$1$1;->a:Lcn/fly/commons/a$1;

    .line 199
    .line 200
    iget-object v1, v1, Lcn/fly/commons/a$1;->b:Lcn/fly/tools/utils/d;

    .line 201
    .line 202
    invoke-virtual {v1, v0}, Lcn/fly/tools/utils/d;->a(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    throw p1
.end method
