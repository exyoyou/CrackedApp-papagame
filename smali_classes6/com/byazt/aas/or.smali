.class public final Lcom/byazt/aas/or;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x243
    }
.end annotation


# static fields
.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final tt:Ljava/lang/Object;

.field public static volatile ve:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/aas/or;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/byazt/aas/or;->tt:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/byazt/aas/or;->ve:Z

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/aas/or;->ve()V

    return-void
.end method

.method public static c(ILjava/lang/String;)V
    .locals 2

    .line 28
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/aas/or$2;

    invoke-direct {v1, p0, p1}, Lcom/byazt/aas/or$2;-><init>(ILjava/lang/String;)V

    const-string p0, "stats_shake_tag_key"

    const/4 p1, 0x0

    invoke-interface {v0, v1, p0, p1}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method private static c(Landroid/view/ViewGroup;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "is_shake_efficient"

    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x7e06fd95

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 24
    :try_start_0
    instance-of v1, v1, Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 25
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "TTShakeChecker"

    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/byazt/aas/or;->c(ILjava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/ref/WeakReference;FFJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;FFJ)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 30
    invoke-static {p0}, Lcom/byazt/omf/zb;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 31
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/byazt/aas/or;->c(FFJ)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 32
    :cond_2
    sget-object p1, Lcom/byazt/aas/or;->c:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p2, Lcom/byazt/aas/or;->tt:Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-boolean p0, Lcom/byazt/aas/or;->ve:Z

    if-eqz p0, :cond_3

    return-void

    .line 34
    :cond_3
    const-class p0, Lcom/byazt/aas/or;

    monitor-enter p0

    .line 35
    :try_start_0
    sget-boolean p1, Lcom/byazt/aas/or;->ve:Z

    if-eqz p1, :cond_4

    .line 36
    monitor-exit p0

    return-void

    :cond_4
    const/4 p1, 0x1

    .line 37
    sput-boolean p1, Lcom/byazt/aas/or;->ve:Z

    .line 38
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/byazt/aas/or$3;

    invoke-direct {p2}, Lcom/byazt/aas/or$3;-><init>()V

    const-wide/16 p3, 0x32

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static c(Ljava/lang/ref/WeakReference;Lcom/byazt/hkv/ve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Lcom/byazt/hkv/ve;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 3
    invoke-static {p0}, Lcom/byazt/omf/zb;->c(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0, v1}, Lcom/byazt/aas/or;->c(Landroid/view/ViewGroup;Z)V

    return-void

    .line 5
    :cond_1
    sget-object v0, Lcom/byazt/aas/or;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-boolean p1, Lcom/byazt/aas/or;->ve:Z

    if-eqz p1, :cond_2

    .line 7
    invoke-static {p0, v1}, Lcom/byazt/aas/or;->c(Landroid/view/ViewGroup;Z)V

    return-void

    .line 8
    :cond_2
    const-class p1, Lcom/byazt/aas/or;

    monitor-enter p1

    .line 9
    :try_start_0
    sget-boolean v0, Lcom/byazt/aas/or;->ve:Z

    if-eqz v0, :cond_3

    .line 10
    invoke-static {p0, v1}, Lcom/byazt/aas/or;->c(Landroid/view/ViewGroup;Z)V

    .line 11
    monitor-exit p1

    return-void

    :cond_3
    const/4 p0, 0x1

    .line 12
    sput-boolean p0, Lcom/byazt/aas/or;->ve:Z

    .line 13
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/byazt/aas/or$1;

    invoke-direct {v0}, Lcom/byazt/aas/or$1;-><init>()V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method private static c(FFJ)Z
    .locals 5

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    cmpg-float v3, p0, v0

    if-gez v3, :cond_1

    return v2

    :cond_1
    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    const/high16 v0, 0x4f000000

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    cmpg-float v0, p1, p0

    if-gtz v0, :cond_3

    return v2

    .line 40
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p2

    long-to-float p2, v3

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    cmpg-float p0, p2, p0

    if-ltz p0, :cond_5

    cmpl-float p0, p2, p1

    if-lez p0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v2
.end method

.method public static c(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x7e06fd95

    .line 15
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 16
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 17
    check-cast p0, Ljava/util/Map;

    const-string v1, "is_shake_efficient"

    .line 18
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 19
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 20
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public static synthetic tt()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/aas/or;->uj()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static uj()V
    .locals 14

    .line 1
    sget-object v0, Lcom/byazt/aas/or;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/byazt/aas/pf;->n(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const v2, 0x7fffffff

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    move-object v5, v3

    .line 31
    move-object v6, v5

    .line 32
    const v4, 0x7fffffff

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const/4 v8, 0x2

    .line 40
    if-eqz v7, :cond_8

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    check-cast v7, Landroid/view/ViewGroup;

    .line 47
    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    new-instance v9, Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-nez v10, :cond_2

    .line 60
    .line 61
    sget-object v8, Lcom/byazt/aas/or;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-static {v7}, Lcom/byazt/omf/zb;->c(Landroid/view/View;)Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-nez v10, :cond_3

    .line 72
    .line 73
    sget-object v8, Lcom/byazt/aas/or;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    .line 75
    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    div-int/lit8 v10, v1, 0x2

    .line 80
    .line 81
    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    .line 82
    .line 83
    if-gt v11, v10, :cond_4

    .line 84
    .line 85
    sub-int v12, v10, v11

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    const v12, 0x7fffffff

    .line 89
    .line 90
    .line 91
    :goto_1
    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 92
    .line 93
    if-lt v9, v10, :cond_5

    .line 94
    .line 95
    sub-int v13, v9, v10

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    const v13, 0x7fffffff

    .line 99
    .line 100
    .line 101
    :goto_2
    if-le v11, v10, :cond_6

    .line 102
    .line 103
    if-ge v9, v10, :cond_6

    .line 104
    .line 105
    move-object v5, v7

    .line 106
    goto :goto_3

    .line 107
    :cond_6
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-ge v8, v4, :cond_7

    .line 112
    .line 113
    move-object v5, v7

    .line 114
    move v4, v8

    .line 115
    goto :goto_0

    .line 116
    :cond_7
    if-ne v8, v4, :cond_1

    .line 117
    .line 118
    move-object v6, v7

    .line 119
    goto :goto_0

    .line 120
    :cond_8
    :goto_3
    if-nez v5, :cond_9

    .line 121
    .line 122
    return-void

    .line 123
    :cond_9
    if-eqz v6, :cond_a

    .line 124
    .line 125
    new-instance v0, Landroid/graphics/Rect;

    .line 126
    .line 127
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 131
    .line 132
    .line 133
    new-instance v1, Landroid/graphics/Rect;

    .line 134
    .line 135
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 139
    .line 140
    .line 141
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 142
    .line 143
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 144
    .line 145
    if-ge v0, v1, :cond_a

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_a
    move-object v6, v5

    .line 149
    :goto_4
    const/4 v0, 0x0

    .line 150
    const/4 v1, 0x0

    .line 151
    :goto_5
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-ge v1, v2, :cond_d

    .line 156
    .line 157
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    const v4, 0x7e06fd95

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    instance-of v4, v2, Ljava/util/Map;

    .line 169
    .line 170
    if-eqz v4, :cond_b

    .line 171
    .line 172
    check-cast v2, Ljava/util/Map;

    .line 173
    .line 174
    const-string v4, "click_listener"

    .line 175
    .line 176
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    instance-of v4, v2, Lcom/byazt/hkv/c;

    .line 181
    .line 182
    if-eqz v4, :cond_b

    .line 183
    .line 184
    check-cast v2, Lcom/byazt/hkv/c;

    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_b
    move-object v2, v3

    .line 188
    :goto_6
    if-eqz v2, :cond_c

    .line 189
    .line 190
    new-instance v1, Ljava/util/HashMap;

    .line 191
    .line 192
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string v3, "click_type"

    .line 196
    .line 197
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    const-class v3, Lcom/byazt/vis/c;

    .line 205
    .line 206
    invoke-virtual {v2, v3}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    check-cast v3, Lcom/byazt/vis/c;

    .line 211
    .line 212
    invoke-virtual {v3, v1}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3}, Lcom/byazt/vis/c;->c()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v6}, Lcom/byazt/hkv/uj;->onClick(Landroid/view/View;)V

    .line 219
    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_d
    :goto_7
    sget-object v1, Lcom/byazt/aas/or;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 228
    .line 229
    .line 230
    sput-boolean v0, Lcom/byazt/aas/or;->ve:Z

    .line 231
    .line 232
    return-void
.end method

.method private static ve()V
    .locals 13

    .line 1
    sget-object v0, Lcom/byazt/aas/or;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/byazt/aas/pf;->n(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const v2, 0x7fffffff

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    move-object v5, v3

    .line 31
    move-object v6, v5

    .line 32
    const v4, 0x7fffffff

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_8

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    check-cast v7, Landroid/view/ViewGroup;

    .line 46
    .line 47
    if-eqz v7, :cond_1

    .line 48
    .line 49
    new-instance v8, Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-nez v9, :cond_2

    .line 59
    .line 60
    sget-object v8, Lcom/byazt/aas/or;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    .line 62
    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-static {v7}, Lcom/byazt/omf/zb;->c(Landroid/view/View;)Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-nez v9, :cond_3

    .line 71
    .line 72
    sget-object v8, Lcom/byazt/aas/or;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    .line 74
    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    div-int/lit8 v9, v1, 0x2

    .line 79
    .line 80
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 81
    .line 82
    if-gt v10, v9, :cond_4

    .line 83
    .line 84
    sub-int v11, v9, v10

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    const v11, 0x7fffffff

    .line 88
    .line 89
    .line 90
    :goto_1
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 91
    .line 92
    if-lt v8, v9, :cond_5

    .line 93
    .line 94
    sub-int v12, v8, v9

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    const v12, 0x7fffffff

    .line 98
    .line 99
    .line 100
    :goto_2
    if-le v10, v9, :cond_6

    .line 101
    .line 102
    if-ge v8, v9, :cond_6

    .line 103
    .line 104
    move-object v5, v7

    .line 105
    goto :goto_3

    .line 106
    :cond_6
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-ge v8, v4, :cond_7

    .line 111
    .line 112
    move-object v5, v7

    .line 113
    move v4, v8

    .line 114
    goto :goto_0

    .line 115
    :cond_7
    if-ne v8, v4, :cond_1

    .line 116
    .line 117
    move-object v6, v7

    .line 118
    goto :goto_0

    .line 119
    :cond_8
    :goto_3
    if-nez v5, :cond_9

    .line 120
    .line 121
    return-void

    .line 122
    :cond_9
    if-eqz v6, :cond_a

    .line 123
    .line 124
    new-instance v0, Landroid/graphics/Rect;

    .line 125
    .line 126
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 130
    .line 131
    .line 132
    new-instance v1, Landroid/graphics/Rect;

    .line 133
    .line 134
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 138
    .line 139
    .line 140
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 141
    .line 142
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 143
    .line 144
    if-ge v0, v1, :cond_a

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_a
    move-object v6, v5

    .line 148
    :goto_4
    sget-object v0, Lcom/byazt/aas/or;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 149
    .line 150
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    instance-of v1, v1, Lcom/byazt/hkv/ve;

    .line 155
    .line 156
    if-eqz v1, :cond_b

    .line 157
    .line 158
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    move-object v3, v1

    .line 163
    check-cast v3, Lcom/byazt/hkv/ve;

    .line 164
    .line 165
    :cond_b
    const/4 v1, 0x1

    .line 166
    invoke-static {v6, v1}, Lcom/byazt/aas/or;->c(Landroid/view/ViewGroup;Z)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 170
    .line 171
    .line 172
    const/4 v0, 0x0

    .line 173
    sput-boolean v0, Lcom/byazt/aas/or;->ve:Z

    .line 174
    .line 175
    if-eqz v3, :cond_c

    .line 176
    .line 177
    invoke-interface {v3}, Lcom/byazt/hkv/ve;->c()V

    .line 178
    .line 179
    .line 180
    :cond_c
    return-void
.end method
