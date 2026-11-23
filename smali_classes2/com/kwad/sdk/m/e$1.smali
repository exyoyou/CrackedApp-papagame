.class final Lcom/kwad/sdk/m/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/m/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/m/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmV:Ljava/lang/String;

.field final synthetic bmW:Lcom/kwad/sdk/m/e$a;

.field final synthetic bmX:Lcom/tencent/matrix/plugin/PluginListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/kwad/sdk/m/e$a;Lcom/tencent/matrix/plugin/PluginListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/m/e$1;->bmV:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/sdk/m/e$1;->bmW:Lcom/kwad/sdk/m/e$a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/sdk/m/e$1;->bmX:Lcom/tencent/matrix/plugin/PluginListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 p1, 0x0

    .line 2
    const-string v0, "originPluginListener callback:"

    .line 3
    .line 4
    const-string v1, "perfMonitor.RangerInjector"

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/kwad/sdk/m/e$1;->bmV:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    aget-object p2, p3, v3

    .line 41
    .line 42
    check-cast p2, Lcom/tencent/matrix/report/Issue;

    .line 43
    .line 44
    new-instance p3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/tencent/matrix/report/Issue;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-static {v1, p3}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 61
    .line 62
    .line 63
    :try_start_1
    invoke-virtual {p2}, Lcom/tencent/matrix/report/Issue;->getContent()Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-static {p3}, Lcom/kwad/sdk/m/e;->v(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {p3}, Lcom/kwad/sdk/m/e;->w(Lorg/json/JSONObject;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    invoke-static {p3}, Lcom/kwad/sdk/m/e;->x(Lorg/json/JSONObject;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    invoke-static {p3}, Lcom/kwad/sdk/m/e;->y(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-static {p3}, Lcom/kwad/sdk/m/e;->z(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    iget-object v0, p0, Lcom/kwad/sdk/m/e$1;->bmW:Lcom/kwad/sdk/m/e$a;

    .line 88
    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    invoke-interface/range {v0 .. v7}, Lcom/kwad/sdk/m/e$a;->a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    :catchall_0
    :cond_1
    :try_start_2
    iget-object p3, p0, Lcom/kwad/sdk/m/e$1;->bmX:Lcom/tencent/matrix/plugin/PluginListener;

    .line 95
    .line 96
    invoke-interface {p3, p2}, Lcom/tencent/matrix/plugin/PluginListener;->onReportIssue(Lcom/tencent/matrix/report/Issue;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string v2, "onInit"

    .line 105
    .line 106
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    aget-object p2, p3, v3

    .line 113
    .line 114
    check-cast p2, Lcom/tencent/matrix/plugin/Plugin;

    .line 115
    .line 116
    iget-object p3, p0, Lcom/kwad/sdk/m/e$1;->bmX:Lcom/tencent/matrix/plugin/PluginListener;

    .line 117
    .line 118
    invoke-interface {p3, p2}, Lcom/tencent/matrix/plugin/PluginListener;->onInit(Lcom/tencent/matrix/plugin/Plugin;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v2, "onStart"

    .line 127
    .line 128
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    aget-object p2, p3, v3

    .line 135
    .line 136
    check-cast p2, Lcom/tencent/matrix/plugin/Plugin;

    .line 137
    .line 138
    iget-object p3, p0, Lcom/kwad/sdk/m/e$1;->bmX:Lcom/tencent/matrix/plugin/PluginListener;

    .line 139
    .line 140
    invoke-interface {p3, p2}, Lcom/tencent/matrix/plugin/PluginListener;->onStart(Lcom/tencent/matrix/plugin/Plugin;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const-string v2, "onStop"

    .line 149
    .line 150
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_5

    .line 155
    .line 156
    aget-object p2, p3, v3

    .line 157
    .line 158
    check-cast p2, Lcom/tencent/matrix/plugin/Plugin;

    .line 159
    .line 160
    iget-object p3, p0, Lcom/kwad/sdk/m/e$1;->bmX:Lcom/tencent/matrix/plugin/PluginListener;

    .line 161
    .line 162
    invoke-interface {p3, p2}, Lcom/tencent/matrix/plugin/PluginListener;->onStop(Lcom/tencent/matrix/plugin/Plugin;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const-string v2, "onDestroy"

    .line 171
    .line 172
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_6

    .line 177
    .line 178
    aget-object p2, p3, v3

    .line 179
    .line 180
    check-cast p2, Lcom/tencent/matrix/plugin/Plugin;

    .line 181
    .line 182
    iget-object p3, p0, Lcom/kwad/sdk/m/e$1;->bmX:Lcom/tencent/matrix/plugin/PluginListener;

    .line 183
    .line 184
    invoke-interface {p3, p2}, Lcom/tencent/matrix/plugin/PluginListener;->onDestroy(Lcom/tencent/matrix/plugin/Plugin;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/kwad/sdk/m/e$1;->bmX:Lcom/tencent/matrix/plugin/PluginListener;

    .line 189
    .line 190
    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :catchall_1
    move-exception p2

    .line 195
    :try_start_4
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-static {v1, p2}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 200
    .line 201
    .line 202
    :goto_0
    return-object p1

    .line 203
    :catchall_2
    move-exception p2

    .line 204
    iget-object p3, p0, Lcom/kwad/sdk/m/e$1;->bmW:Lcom/kwad/sdk/m/e$a;

    .line 205
    .line 206
    if-eqz p3, :cond_7

    .line 207
    .line 208
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-interface {p3, p2}, Lcom/kwad/sdk/m/e$a;->onError(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_7
    return-object p1
.end method
