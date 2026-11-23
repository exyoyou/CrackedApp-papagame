.class public Lcom/byazt/sp/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5b,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Landroid/util/SparseArray<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/ll/tt;

.field public c:Lcom/byazt/sp/ve;

.field public n:Lcom/byazt/dv/tt;

.field public sp:Lcom/byazt/nbs/da;

.field public tt:I

.field public uj:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/ll/tt;Lcom/byazt/dv/tt;Lcom/byazt/sp/ve;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/byazt/sp/c;->tt:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/byazt/sp/c;->a:Lcom/byazt/ll/tt;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->z()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/byazt/sp/c;->ve:I

    .line 17
    .line 18
    iput-object p2, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/byazt/sp/c;->c:Lcom/byazt/sp/ve;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/byazt/sp/c;->sp:Lcom/byazt/nbs/da;

    .line 27
    .line 28
    return-void
.end method

.method private c()Lcom/byazt/yl/ve;
    .locals 3

    .line 1
    iget v0, p0, Lcom/byazt/sp/c;->tt:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    goto/16 :goto_0

    .line 7
    .line 8
    :pswitch_1
    iget v0, p0, Lcom/byazt/sp/c;->ve:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/byazt/db/a;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/byazt/db/a;-><init>(Lcom/byazt/dv/c;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const/4 v1, 0x2

    .line 22
    if-ne v0, v1, :cond_7

    .line 23
    .line 24
    new-instance v0, Lcom/byazt/db/n;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/byazt/db/n;-><init>(Lcom/byazt/dv/c;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_2
    new-instance v0, Lcom/byazt/db/sp;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/byazt/sp/c;->c:Lcom/byazt/sp/ve;

    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lcom/byazt/db/sp;-><init>(Lcom/byazt/dv/c;Lcom/byazt/sp/ve;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :pswitch_3
    new-instance v0, Lcom/byazt/db/n;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    .line 45
    .line 46
    invoke-direct {v0, v1}, Lcom/byazt/db/n;-><init>(Lcom/byazt/dv/c;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :pswitch_4
    iget v0, p0, Lcom/byazt/sp/c;->ve:I

    .line 51
    .line 52
    const/4 v1, 0x6

    .line 53
    if-ne v0, v1, :cond_1

    .line 54
    .line 55
    new-instance v0, Lcom/byazt/db/x;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lcom/byazt/db/x;-><init>(Lcom/byazt/dv/c;)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_1
    const/4 v1, 0x7

    .line 64
    if-ne v0, v1, :cond_2

    .line 65
    .line 66
    new-instance v0, Lcom/byazt/db/n;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    .line 69
    .line 70
    invoke-direct {v0, v1}, Lcom/byazt/db/n;-><init>(Lcom/byazt/dv/c;)V

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_2
    const/16 v1, 0x8

    .line 75
    .line 76
    if-ne v0, v1, :cond_3

    .line 77
    .line 78
    new-instance v0, Lcom/byazt/db/a;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    .line 81
    .line 82
    invoke-direct {v0, v1}, Lcom/byazt/db/a;-><init>(Lcom/byazt/dv/c;)V

    .line 83
    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_3
    new-instance v0, Lcom/byazt/db/x;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    .line 89
    .line 90
    invoke-direct {v0, v1}, Lcom/byazt/db/x;-><init>(Lcom/byazt/dv/c;)V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    :pswitch_5
    iget v0, p0, Lcom/byazt/sp/c;->ve:I

    .line 95
    .line 96
    const/4 v1, 0x4

    .line 97
    if-ne v0, v1, :cond_4

    .line 98
    .line 99
    new-instance v0, Lcom/byazt/db/sp;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/byazt/sp/c;->c:Lcom/byazt/sp/ve;

    .line 104
    .line 105
    invoke-direct {v0, v1, v2}, Lcom/byazt/db/sp;-><init>(Lcom/byazt/dv/c;Lcom/byazt/sp/ve;)V

    .line 106
    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_4
    const/4 v1, 0x3

    .line 110
    if-ne v0, v1, :cond_5

    .line 111
    .line 112
    new-instance v0, Lcom/byazt/db/ve;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    .line 115
    .line 116
    invoke-direct {v0, v1}, Lcom/byazt/db/ve;-><init>(Lcom/byazt/dv/c;)V

    .line 117
    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_5
    const/4 v1, 0x5

    .line 121
    if-ne v0, v1, :cond_6

    .line 122
    .line 123
    new-instance v0, Lcom/byazt/db/sp;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    .line 126
    .line 127
    iget-object v2, p0, Lcom/byazt/sp/c;->c:Lcom/byazt/sp/ve;

    .line 128
    .line 129
    invoke-direct {v0, v1, v2}, Lcom/byazt/db/sp;-><init>(Lcom/byazt/dv/c;Lcom/byazt/sp/ve;)V

    .line 130
    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_6
    new-instance v0, Lcom/byazt/db/sp;

    .line 134
    .line 135
    iget-object v1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    .line 136
    .line 137
    iget-object v2, p0, Lcom/byazt/sp/c;->c:Lcom/byazt/sp/ve;

    .line 138
    .line 139
    invoke-direct {v0, v1, v2}, Lcom/byazt/db/sp;-><init>(Lcom/byazt/dv/c;Lcom/byazt/sp/ve;)V

    .line 140
    .line 141
    .line 142
    return-object v0

    .line 143
    :pswitch_6
    new-instance v0, Lcom/byazt/db/i;

    .line 144
    .line 145
    iget-object v1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    .line 146
    .line 147
    invoke-direct {v0, v1}, Lcom/byazt/db/i;-><init>(Lcom/byazt/dv/c;)V

    .line 148
    .line 149
    .line 150
    return-object v0

    .line 151
    :pswitch_7
    new-instance v0, Lcom/byazt/db/a;

    .line 152
    .line 153
    iget-object v1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    .line 154
    .line 155
    invoke-direct {v0, v1}, Lcom/byazt/db/a;-><init>(Lcom/byazt/dv/c;)V

    .line 156
    .line 157
    .line 158
    return-object v0

    .line 159
    :pswitch_8
    new-instance v0, Lcom/byazt/db/ve;

    .line 160
    .line 161
    iget-object v1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    .line 162
    .line 163
    invoke-direct {v0, v1}, Lcom/byazt/db/ve;-><init>(Lcom/byazt/dv/c;)V

    .line 164
    .line 165
    .line 166
    return-object v0

    .line 167
    :cond_7
    :goto_0
    const/4 v0, 0x0

    .line 168
    return-object v0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public apply(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/byazt/rl/c;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1

    const v0, -0x5f5e0f3

    .line 3
    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v0

    const v1, -0x5f5e0f1

    .line 4
    const-class v2, Ljava/lang/Class;

    invoke-interface {p1, v1, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const/16 v2, 0x1fac

    const/16 v3, 0x1f4f

    const/16 v4, 0x1f4e

    if-ne v0, v2, :cond_1

    .line 5
    invoke-interface {p1, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v0

    .line 6
    invoke-interface {p1, v3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v2, p0, Lcom/byazt/sp/c;->c:Lcom/byazt/sp/ve;

    new-instance v3, Lcom/byazt/pp/c;

    invoke-direct {v3, v0, p1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    goto/16 :goto_2

    :cond_1
    const/16 v2, 0x1fb0

    const v5, -0x5f5e0e9

    const/16 v6, 0x206f

    if-ne v0, v2, :cond_4

    .line 8
    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v0

    .line 9
    invoke-interface {p1, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v2

    .line 10
    invoke-interface {p1, v3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    instance-of v4, v0, Lcom/byazt/yl/ve;

    if-eqz v4, :cond_2

    .line 13
    check-cast v0, Lcom/byazt/yl/ve;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v0}, Ln0/b;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v4

    .line 16
    invoke-static {v0, v4}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    instance-of v4, v0, Lcom/byazt/yl/ve;

    if-eqz v4, :cond_3

    .line 18
    check-cast v0, Lcom/byazt/yl/ve;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/byazt/sp/c;->c:Lcom/byazt/sp/ve;

    new-instance v4, Lcom/byazt/pp/c;

    invoke-direct {v4, v2, p1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/byazt/sp/tt;->notifyVideoCache(Ljava/util/List;Lcom/byazt/pp/c;)V

    goto/16 :goto_2

    :cond_4
    const/16 v2, 0x1fab

    if-ne v0, v2, :cond_8

    .line 20
    const-class v0, Ljava/util/List;

    invoke-interface {p1, v6, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_7

    .line 22
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 24
    instance-of v3, v2, Lcom/byazt/yl/ve;

    if-eqz v3, :cond_6

    .line 25
    check-cast v2, Lcom/byazt/yl/ve;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_6
    invoke-static {v2}, Ln0/b;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 27
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v3

    .line 28
    invoke-static {v2}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v2

    invoke-static {v2, v3}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 29
    instance-of v3, v2, Lcom/byazt/yl/ve;

    if-eqz v3, :cond_5

    .line 30
    check-cast v2, Lcom/byazt/yl/ve;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 31
    :cond_7
    iget-object p1, p0, Lcom/byazt/sp/c;->c:Lcom/byazt/sp/ve;

    invoke-virtual {p1, v0}, Lcom/byazt/sp/tt;->notifyLoadSuccess(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_8
    const/16 v2, 0x1fbf

    if-ne v0, v2, :cond_9

    .line 32
    invoke-direct {p0}, Lcom/byazt/sp/c;->c()Lcom/byazt/yl/ve;

    move-result-object p1

    return-object p1

    :cond_9
    const/16 v2, 0x1fae

    if-ne v0, v2, :cond_a

    .line 33
    iget-object p1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    invoke-virtual {p1}, Lcom/byazt/dv/tt;->c()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_a
    const/16 v2, 0x1fc8

    if-ne v0, v2, :cond_b

    .line 34
    iget-object p1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    invoke-virtual {p1}, Lcom/byazt/dv/tt;->gu()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_b
    const/16 v2, 0x1fcd

    if-ne v0, v2, :cond_c

    .line 35
    iget-object p1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    invoke-virtual {p1}, Lcom/byazt/dv/tt;->gr()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_c
    const/16 v2, 0x1fc9

    if-ne v0, v2, :cond_d

    .line 36
    iget-object p1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    invoke-virtual {p1}, Lcom/byazt/dv/tt;->zm()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    const/16 v2, 0x2022

    if-ne v0, v2, :cond_e

    .line 37
    iget-object p1, p0, Lcom/byazt/sp/c;->n:Lcom/byazt/dv/tt;

    invoke-virtual {p1}, Lcom/byazt/dv/tt;->my()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_e
    const/16 v2, 0x1fca

    if-ne v0, v2, :cond_f

    const/16 v0, 0x1f6b

    .line 38
    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/sp/c;->uj:Ljava/util/function/Function;

    goto :goto_2

    :cond_f
    const/16 p1, 0x2012

    if-ne v0, p1, :cond_10

    .line 39
    iget-object p1, p0, Lcom/byazt/sp/c;->c:Lcom/byazt/sp/ve;

    invoke-virtual {p1}, Lcom/byazt/sp/tt;->hasNotifyFail()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 40
    :cond_10
    :goto_2
    invoke-static {v1}, Lcom/byazt/hf/c;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/byazt/sp/c;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBiddingToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/sp/c;->uj:Ljava/util/function/Function;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/16 v2, 0x1fcb

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/16 v2, 0x1f49

    .line 17
    .line 18
    invoke-virtual {v0, v2, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/16 v0, 0x1f47

    .line 23
    .line 24
    invoke-virtual {p1, v0, p2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/16 p2, 0x1f6c

    .line 29
    .line 30
    invoke-virtual {p1, p2, p3}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-class p2, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/byazt/sp/c;->uj:Ljava/util/function/Function;

    .line 45
    .line 46
    invoke-static {p2, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    instance-of p2, p1, Ljava/lang/String;

    .line 51
    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :cond_0
    return-object v1
.end method
