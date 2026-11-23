.class public Lcom/byazt/tjo/x;
.super Lcom/byazt/fb/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x204,
        0x47
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/omf/md;

.field public tt:Lcom/byazt/tjo/i;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/md;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/fb/uj;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/tjo/x;->c:Lcom/byazt/omf/md;

    .line 5
    .line 6
    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .line 1
    invoke-static {p1}, Ln0/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v0

    const-string v1, "mediation_qa_common"

    invoke-direct {p0, v0, v1}, Lcom/byazt/tjo/x;->c(Ljava/util/function/Function;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/byazt/lx/tt;->getInstance()Lcom/byazt/lx/tt;

    move-result-object v0

    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/lx/tt;->setQATool(Ljava/util/function/Function;)V

    .line 3
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    const/16 v1, 0x2719

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    const/16 v1, 0x4e29

    .line 5
    invoke-static {}, Lcom/byazt/lx/tt;->getInstance()Lcom/byazt/lx/tt;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 6
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private c(Ljava/util/function/Function;Ljava/lang/String;)Z
    .locals 3

    .line 7
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    const/16 v1, 0x2718

    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 9
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public applyFunction(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/PluginValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const p3, -0x5f5e0f2

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-ne p1, p3, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/byazt/tjo/x;->c:Lcom/byazt/omf/md;

    .line 8
    .line 9
    if-eqz p1, :cond_c

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/byazt/omf/md;->values()Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p3, 0x6

    .line 17
    if-ne p1, p3, :cond_7

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    const/16 p1, 0xa

    .line 22
    .line 23
    const-class p3, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/os/Bundle;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object p1, v0

    .line 33
    :goto_0
    if-eqz p2, :cond_2

    .line 34
    .line 35
    const/16 p3, 0x9

    .line 36
    .line 37
    const-class v1, Ljava/lang/Class;

    .line 38
    .line 39
    invoke-interface {p2, p3, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    check-cast p3, Ljava/lang/Class;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object p3, v0

    .line 47
    :goto_1
    if-eqz p1, :cond_4

    .line 48
    .line 49
    const-string v1, "mediation_manager"

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    iget-object p1, p0, Lcom/byazt/tjo/x;->tt:Lcom/byazt/tjo/i;

    .line 62
    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    new-instance p1, Lcom/byazt/tjo/i;

    .line 66
    .line 67
    invoke-direct {p1}, Lcom/byazt/tjo/i;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/byazt/tjo/x;->tt:Lcom/byazt/tjo/i;

    .line 71
    .line 72
    :cond_3
    iget-object p1, p0, Lcom/byazt/tjo/x;->tt:Lcom/byazt/tjo/i;

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_4
    invoke-static {p3, p1}, Lcom/byazt/sq/uj;->c(Ljava/lang/Class;Landroid/os/Bundle;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_6

    .line 80
    .line 81
    iget-object v1, p0, Lcom/byazt/tjo/x;->c:Lcom/byazt/omf/md;

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {v1, p2}, Lcom/byazt/omf/md;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    instance-of v1, p2, Lcom/byazt/sq/uj$c;

    .line 94
    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    new-instance v0, Lcom/byazt/tjo/da;

    .line 98
    .line 99
    check-cast p2, Lcom/byazt/sq/uj$c;

    .line 100
    .line 101
    invoke-direct {v0, p2}, Lcom/byazt/tjo/da;-><init>(Lcom/byazt/sq/uj$c;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v0, p3, p1}, Lcom/byazt/sq/uj;->c(Lcom/byazt/sq/uj$c;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    :cond_5
    return-object v0

    .line 110
    :cond_6
    iget-object p1, p0, Lcom/byazt/tjo/x;->c:Lcom/byazt/omf/md;

    .line 111
    .line 112
    if-eqz p1, :cond_c

    .line 113
    .line 114
    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p1, p2}, Lcom/byazt/omf/md;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    return-object p1

    .line 123
    :cond_7
    const/4 p3, 0x4

    .line 124
    if-ne p1, p3, :cond_b

    .line 125
    .line 126
    const-class p1, Ljava/lang/Object;

    .line 127
    .line 128
    if-eqz p2, :cond_8

    .line 129
    .line 130
    const/16 p3, 0x8

    .line 131
    .line 132
    invoke-interface {p2, p3, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    goto :goto_2

    .line 137
    :cond_8
    move-object p3, v0

    .line 138
    :goto_2
    invoke-static {}, Lcom/byazt/omf/p;->x()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_9

    .line 143
    .line 144
    invoke-static {p3}, Ln0/b;->a(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_9

    .line 149
    .line 150
    invoke-static {p3}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {v1}, Lcom/byazt/yxi/ve;->c(Ljava/util/function/Function;)Landroid/util/SparseArray;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-static {v2}, Lcom/byazt/rl/c;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/c;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    if-eqz v2, :cond_9

    .line 167
    .line 168
    const/16 v3, 0x2710

    .line 169
    .line 170
    invoke-interface {v2, v3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    const/4 v3, 0x1

    .line 175
    if-ne v2, v3, :cond_9

    .line 176
    .line 177
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const/4 v3, 0x5

    .line 182
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v2, p1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-static {v1, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    if-eqz p1, :cond_9

    .line 199
    .line 200
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1, p1}, Lcom/byazt/bp/c;->c(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :cond_9
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p1}, Lcom/byazt/omf/x;->lr()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_a

    .line 216
    .line 217
    invoke-direct {p0, p3}, Lcom/byazt/tjo/x;->c(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :cond_a
    iget-object p1, p0, Lcom/byazt/tjo/x;->c:Lcom/byazt/omf/md;

    .line 221
    .line 222
    if-eqz p1, :cond_c

    .line 223
    .line 224
    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    invoke-virtual {p1, p2}, Lcom/byazt/omf/md;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    return-object p1

    .line 233
    :cond_b
    iget-object p1, p0, Lcom/byazt/tjo/x;->c:Lcom/byazt/omf/md;

    .line 234
    .line 235
    if-eqz p1, :cond_c

    .line 236
    .line 237
    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-virtual {p1, p2}, Lcom/byazt/omf/md;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    return-object p1

    .line 246
    :cond_c
    return-object v0
.end method
