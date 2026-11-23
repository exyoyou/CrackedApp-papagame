.class public Lcom/alibaba/fastjson/parser/deserializer/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/x0;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/r;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/r;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/r;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private e:Lcom/alibaba/fastjson/util/d;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/k;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/v;-><init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/k;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->a:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->b:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->c:Ljava/util/List;

    .line 6
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->d:Ljava/lang/Class;

    .line 7
    invoke-static {p2, p3}, Lcom/alibaba/fastjson/util/d;->b(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/util/d;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->e:Lcom/alibaba/fastjson/util/d;

    .line 8
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/d;->k()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/e;

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/v;->d(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->e:Lcom/alibaba/fastjson/util/d;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/d;->m()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson/util/e;

    .line 11
    iget-object p3, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->a:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 12
    iget-object p3, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->c:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private d(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/k;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/util/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/v;->e(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->a:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->b:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    const/16 v0, 0xc

    return v0
.end method

.method public c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/v;->g(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public e(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/k;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/util/e;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/r;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/k;->a(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public f(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4

    .line 1
    const-string v0, "create instance error, class "

    .line 2
    .line 3
    instance-of v1, p2, Ljava/lang/Class;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->d:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast p2, Ljava/lang/Class;

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 30
    .line 31
    .line 32
    new-array v1, v2, [Ljava/lang/Class;

    .line 33
    .line 34
    aput-object p2, v1, v3

    .line 35
    .line 36
    invoke-static {p1, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->e:Lcom/alibaba/fastjson/util/d;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/d;->f()Ljava/lang/reflect/Constructor;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    return-object p1

    .line 51
    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->e:Lcom/alibaba/fastjson/util/d;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/d;->f()Ljava/lang/reflect/Constructor;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    array-length v1, v1

    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    new-array v1, v3, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    new-array v1, v2, [Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->getContext()Lcom/alibaba/fastjson/parser/j;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    aput-object v2, v1, v3

    .line 82
    .line 83
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->e:Lcom/alibaba/fastjson/util/d;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/d;->k()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Lcom/alibaba/fastjson/util/e;

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const-class v3, Ljava/lang/String;

    .line 122
    .line 123
    if-ne v2, v3, :cond_3

    .line 124
    .line 125
    :try_start_1
    const-string v2, ""

    .line 126
    .line 127
    invoke-virtual {v1, p2, v2}, Lcom/alibaba/fastjson/util/e;->s(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catch_0
    move-exception p1

    .line 132
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->d:Ljava/lang/Class;

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    throw p2

    .line 159
    :cond_4
    return-object p2

    .line 160
    :catch_1
    move-exception p1

    .line 161
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 162
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->d:Ljava/lang/Class;

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    throw p2
.end method

.method public g(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 10
    .line 11
    .line 12
    move-result-object v10

    .line 13
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    const/16 v12, 0x10

    .line 21
    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v10, v12}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 25
    .line 26
    .line 27
    return-object v11

    .line 28
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/c;->getContext()Lcom/alibaba/fastjson/parser/j;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz p4, :cond_1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/j;->b()Lcom/alibaba/fastjson/parser/j;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_1
    move-object v13, v1

    .line 41
    :try_start_0
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/16 v14, 0xd

    .line 46
    .line 47
    if-ne v1, v14, :cond_3

    .line 48
    .line 49
    invoke-interface {v10, v12}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 50
    .line 51
    .line 52
    if-nez p4, :cond_2

    .line 53
    .line 54
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/v;->f(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object/from16 v0, p4

    .line 60
    .line 61
    :goto_0
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_3
    :try_start_1
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    const/16 v2, 0xe

    .line 70
    .line 71
    if-ne v1, v2, :cond_4

    .line 72
    .line 73
    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson/parser/deserializer/v;->m(Lcom/alibaba/fastjson/parser/d;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    invoke-virtual/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/deserializer/v;->h(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 83
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 84
    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_4
    :try_start_2
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/16 v2, 0xc

    .line 92
    .line 93
    if-eq v1, v2, :cond_6

    .line 94
    .line 95
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eq v1, v12, :cond_6

    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v1, "syntax error, expect {, actual "

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    .line 110
    .line 111
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->h()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    .line 117
    .line 118
    const-string v1, ", pos "

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    .line 122
    .line 123
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->v()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 128
    .line 129
    .line 130
    instance-of v1, v9, Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v1, :cond_5

    .line 133
    .line 134
    const-string v1, ", fieldName "

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 140
    .line 141
    .line 142
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v1

    .line 152
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/c;->J()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    const/4 v2, 0x2

    .line 157
    const/4 v15, 0x0

    .line 158
    if-ne v1, v2, :cond_7

    .line 159
    .line 160
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/c;->y0(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 161
    .line 162
    .line 163
    :cond_7
    move-object/from16 v1, p4

    .line 164
    .line 165
    move-object v2, v11

    .line 166
    move-object v3, v2

    .line 167
    :goto_1
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/c;->M()Lcom/alibaba/fastjson/parser/l;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-interface {v10, v4}, Lcom/alibaba/fastjson/parser/d;->c0(Lcom/alibaba/fastjson/parser/l;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    if-nez v4, :cond_9

    .line 176
    .line 177
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-ne v5, v14, :cond_8

    .line 182
    .line 183
    invoke-interface {v10, v12}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_6

    .line 187
    .line 188
    :cond_8
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-ne v5, v12, :cond_9

    .line 193
    .line 194
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    .line 195
    .line 196
    invoke-virtual {v8, v5}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-eqz v5, :cond_9

    .line 201
    .line 202
    goto/16 :goto_4

    .line 203
    .line 204
    :cond_9
    const-string v5, "$ref"

    .line 205
    .line 206
    const/4 v6, 0x4

    .line 207
    const/4 v15, 0x1

    .line 208
    if-ne v5, v4, :cond_13

    .line 209
    .line 210
    invoke-interface {v10, v6}, Lcom/alibaba/fastjson/parser/d;->L(I)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-ne v0, v6, :cond_12

    .line 218
    .line 219
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const-string v2, "@"

    .line 224
    .line 225
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-eqz v2, :cond_a

    .line 230
    .line 231
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    move-object v1, v0

    .line 236
    goto :goto_3

    .line 237
    :cond_a
    const-string v2, ".."

    .line 238
    .line 239
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_c

    .line 244
    .line 245
    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/j;->b()Lcom/alibaba/fastjson/parser/j;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    if-eqz v4, :cond_b

    .line 254
    .line 255
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    goto :goto_3

    .line 260
    :cond_b
    new-instance v4, Lcom/alibaba/fastjson/parser/c$a;

    .line 261
    .line 262
    invoke-direct {v4, v2, v0}, Lcom/alibaba/fastjson/parser/c$a;-><init>(Lcom/alibaba/fastjson/parser/j;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/c;->e(Lcom/alibaba/fastjson/parser/c$a;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/c;->y0(I)V

    .line 269
    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_c
    const-string v2, "$"

    .line 273
    .line 274
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_f

    .line 279
    .line 280
    move-object v2, v13

    .line 281
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/j;->b()Lcom/alibaba/fastjson/parser/j;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    if-eqz v4, :cond_d

    .line 286
    .line 287
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/j;->b()Lcom/alibaba/fastjson/parser/j;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    goto :goto_2

    .line 292
    :cond_d
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    if-eqz v4, :cond_e

    .line 297
    .line 298
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    goto :goto_3

    .line 303
    :cond_e
    new-instance v4, Lcom/alibaba/fastjson/parser/c$a;

    .line 304
    .line 305
    invoke-direct {v4, v2, v0}, Lcom/alibaba/fastjson/parser/c$a;-><init>(Lcom/alibaba/fastjson/parser/j;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/c;->e(Lcom/alibaba/fastjson/parser/c$a;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/c;->y0(I)V

    .line 312
    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_f
    new-instance v2, Lcom/alibaba/fastjson/parser/c$a;

    .line 316
    .line 317
    invoke-direct {v2, v13, v0}, Lcom/alibaba/fastjson/parser/c$a;-><init>(Lcom/alibaba/fastjson/parser/j;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson/parser/c;->e(Lcom/alibaba/fastjson/parser/c$a;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/c;->y0(I)V

    .line 324
    .line 325
    .line 326
    :goto_3
    invoke-interface {v10, v14}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 327
    .line 328
    .line 329
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-ne v0, v14, :cond_11

    .line 334
    .line 335
    invoke-interface {v10, v12}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v8, v13, v1, v9}, Lcom/alibaba/fastjson/parser/c;->t0(Lcom/alibaba/fastjson/parser/j;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/j;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 339
    .line 340
    .line 341
    if-eqz v3, :cond_10

    .line 342
    .line 343
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/parser/j;->d(Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    :cond_10
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 347
    .line 348
    .line 349
    return-object v1

    .line 350
    :cond_11
    :try_start_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 351
    .line 352
    const-string v2, "illegal ref"

    .line 353
    .line 354
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw v0

    .line 358
    :cond_12
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 359
    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .line 364
    .line 365
    const-string v4, "illegal ref, "

    .line 366
    .line 367
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    invoke-static {v4}, Lcom/alibaba/fastjson/parser/h;->a(I)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    throw v0

    .line 389
    :cond_13
    sget-object v5, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 390
    .line 391
    if-ne v5, v4, :cond_18

    .line 392
    .line 393
    invoke-interface {v10, v6}, Lcom/alibaba/fastjson/parser/d;->L(I)V

    .line 394
    .line 395
    .line 396
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    if-ne v4, v6, :cond_17

    .line 401
    .line 402
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    invoke-interface {v10, v12}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 407
    .line 408
    .line 409
    instance-of v5, v0, Ljava/lang/Class;

    .line 410
    .line 411
    if-eqz v5, :cond_15

    .line 412
    .line 413
    move-object v5, v0

    .line 414
    check-cast v5, Ljava/lang/Class;

    .line 415
    .line 416
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    if-eqz v5, :cond_15

    .line 425
    .line 426
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    if-ne v4, v14, :cond_14

    .line 431
    .line 432
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 433
    .line 434
    .line 435
    goto/16 :goto_6

    .line 436
    .line 437
    :cond_14
    :goto_4
    const/4 v15, 0x0

    .line 438
    goto/16 :goto_1

    .line 439
    .line 440
    :cond_15
    invoke-static {v4}, Lcom/alibaba/fastjson/util/k;->K(Ljava/lang/String;)Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/c;->j()Lcom/alibaba/fastjson/parser/k;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/parser/k;->g(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    invoke-interface {v2, v8, v0, v9}, Lcom/alibaba/fastjson/parser/deserializer/x0;->c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 456
    if-eqz v3, :cond_16

    .line 457
    .line 458
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/parser/j;->d(Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    :cond_16
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 462
    .line 463
    .line 464
    return-object v0

    .line 465
    :cond_17
    :try_start_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 466
    .line 467
    const-string v2, "syntax error"

    .line 468
    .line 469
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    throw v0

    .line 473
    :cond_18
    if-nez v1, :cond_1a

    .line 474
    .line 475
    if-nez v2, :cond_1a

    .line 476
    .line 477
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/v;->f(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    if-nez v1, :cond_19

    .line 482
    .line 483
    new-instance v2, Ljava/util/HashMap;

    .line 484
    .line 485
    iget-object v5, v7, Lcom/alibaba/fastjson/parser/deserializer/v;->b:Ljava/util/List;

    .line 486
    .line 487
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 488
    .line 489
    .line 490
    move-result v5

    .line 491
    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 492
    .line 493
    .line 494
    :cond_19
    invoke-virtual {v8, v13, v1, v9}, Lcom/alibaba/fastjson/parser/c;->t0(Lcom/alibaba/fastjson/parser/j;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/j;

    .line 495
    .line 496
    .line 497
    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 498
    :cond_1a
    move-object/from16 v16, v1

    .line 499
    .line 500
    move-object/from16 v17, v2

    .line 501
    .line 502
    move-object/from16 v18, v3

    .line 503
    .line 504
    move-object/from16 v1, p0

    .line 505
    .line 506
    move-object/from16 v2, p1

    .line 507
    .line 508
    move-object v3, v4

    .line 509
    move-object/from16 v4, v16

    .line 510
    .line 511
    move-object/from16 v5, p2

    .line 512
    .line 513
    move-object/from16 v6, v17

    .line 514
    .line 515
    :try_start_6
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/v;->o(Lcom/alibaba/fastjson/parser/c;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    if-nez v1, :cond_1b

    .line 520
    .line 521
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    if-ne v1, v14, :cond_25

    .line 526
    .line 527
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 528
    .line 529
    .line 530
    goto :goto_5

    .line 531
    :cond_1b
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    if-ne v1, v12, :cond_1c

    .line 536
    .line 537
    goto/16 :goto_9

    .line 538
    .line 539
    :cond_1c
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    if-ne v1, v14, :cond_24

    .line 544
    .line 545
    invoke-interface {v10, v12}, Lcom/alibaba/fastjson/parser/d;->l(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 546
    .line 547
    .line 548
    :goto_5
    move-object/from16 v1, v16

    .line 549
    .line 550
    move-object/from16 v2, v17

    .line 551
    .line 552
    move-object/from16 v3, v18

    .line 553
    .line 554
    :goto_6
    if-nez v1, :cond_22

    .line 555
    .line 556
    if-nez v2, :cond_1f

    .line 557
    .line 558
    :try_start_7
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/v;->f(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    if-nez v3, :cond_1d

    .line 563
    .line 564
    invoke-virtual {v8, v13, v1, v9}, Lcom/alibaba/fastjson/parser/c;->t0(Lcom/alibaba/fastjson/parser/j;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/j;

    .line 565
    .line 566
    .line 567
    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 568
    :cond_1d
    if-eqz v3, :cond_1e

    .line 569
    .line 570
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/parser/j;->d(Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    :cond_1e
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 574
    .line 575
    .line 576
    return-object v1

    .line 577
    :cond_1f
    :try_start_8
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/deserializer/v;->e:Lcom/alibaba/fastjson/util/d;

    .line 578
    .line 579
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/d;->k()Ljava/util/List;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 584
    .line 585
    .line 586
    move-result v4

    .line 587
    new-array v5, v4, [Ljava/lang/Object;

    .line 588
    .line 589
    const/4 v15, 0x0

    .line 590
    :goto_7
    if-ge v15, v4, :cond_20

    .line 591
    .line 592
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    check-cast v6, Lcom/alibaba/fastjson/util/e;

    .line 597
    .line 598
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v6

    .line 602
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v6

    .line 606
    aput-object v6, v5, v15

    .line 607
    .line 608
    add-int/lit8 v15, v15, 0x1

    .line 609
    .line 610
    goto :goto_7

    .line 611
    :cond_20
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/deserializer/v;->e:Lcom/alibaba/fastjson/util/d;

    .line 612
    .line 613
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/d;->d()Ljava/lang/reflect/Constructor;

    .line 614
    .line 615
    .line 616
    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 617
    if-eqz v0, :cond_21

    .line 618
    .line 619
    :try_start_9
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/deserializer/v;->e:Lcom/alibaba/fastjson/util/d;

    .line 620
    .line 621
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/d;->d()Ljava/lang/reflect/Constructor;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 629
    goto :goto_8

    .line 630
    :catch_0
    move-exception v0

    .line 631
    :try_start_a
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    .line 632
    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    .line 634
    .line 635
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    .line 637
    .line 638
    const-string v5, "create instance error, "

    .line 639
    .line 640
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    iget-object v5, v7, Lcom/alibaba/fastjson/parser/deserializer/v;->e:Lcom/alibaba/fastjson/util/d;

    .line 644
    .line 645
    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/d;->d()Ljava/lang/reflect/Constructor;

    .line 646
    .line 647
    .line 648
    move-result-object v5

    .line 649
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v5

    .line 653
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v4

    .line 660
    invoke-direct {v2, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 661
    .line 662
    .line 663
    throw v2

    .line 664
    :cond_21
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/deserializer/v;->e:Lcom/alibaba/fastjson/util/d;

    .line 665
    .line 666
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/d;->h()Ljava/lang/reflect/Method;

    .line 667
    .line 668
    .line 669
    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 670
    if-eqz v0, :cond_22

    .line 671
    .line 672
    :try_start_b
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/deserializer/v;->e:Lcom/alibaba/fastjson/util/d;

    .line 673
    .line 674
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/d;->h()Ljava/lang/reflect/Method;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-virtual {v0, v11, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 682
    goto :goto_8

    .line 683
    :catch_1
    move-exception v0

    .line 684
    :try_start_c
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    .line 685
    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    .line 687
    .line 688
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .line 690
    .line 691
    const-string v5, "create factory method error, "

    .line 692
    .line 693
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    iget-object v5, v7, Lcom/alibaba/fastjson/parser/deserializer/v;->e:Lcom/alibaba/fastjson/util/d;

    .line 697
    .line 698
    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/d;->h()Ljava/lang/reflect/Method;

    .line 699
    .line 700
    .line 701
    move-result-object v5

    .line 702
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v5

    .line 706
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v4

    .line 713
    invoke-direct {v2, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 714
    .line 715
    .line 716
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 717
    :cond_22
    :goto_8
    if-eqz v3, :cond_23

    .line 718
    .line 719
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/parser/j;->d(Ljava/lang/Object;)V

    .line 720
    .line 721
    .line 722
    :cond_23
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 723
    .line 724
    .line 725
    return-object v1

    .line 726
    :cond_24
    :try_start_d
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 727
    .line 728
    .line 729
    move-result v1

    .line 730
    const/16 v2, 0x12

    .line 731
    .line 732
    if-eq v1, v2, :cond_26

    .line 733
    .line 734
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 735
    .line 736
    .line 737
    move-result v1

    .line 738
    if-eq v1, v15, :cond_26

    .line 739
    .line 740
    :cond_25
    :goto_9
    move-object/from16 v1, v16

    .line 741
    .line 742
    move-object/from16 v2, v17

    .line 743
    .line 744
    move-object/from16 v3, v18

    .line 745
    .line 746
    goto/16 :goto_4

    .line 747
    .line 748
    :cond_26
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 749
    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    .line 751
    .line 752
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    .line 754
    .line 755
    const-string v2, "syntax error, unexpect token "

    .line 756
    .line 757
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    invoke-interface {v10}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 761
    .line 762
    .line 763
    move-result v2

    .line 764
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/h;->a(I)Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v2

    .line 768
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 779
    :catchall_0
    move-exception v0

    .line 780
    move-object/from16 v1, v16

    .line 781
    .line 782
    move-object/from16 v11, v18

    .line 783
    .line 784
    goto :goto_a

    .line 785
    :catchall_1
    move-exception v0

    .line 786
    move-object v11, v3

    .line 787
    goto :goto_a

    .line 788
    :catchall_2
    move-exception v0

    .line 789
    move-object/from16 v1, p4

    .line 790
    .line 791
    :goto_a
    if-eqz v11, :cond_27

    .line 792
    .line 793
    invoke-virtual {v11, v1}, Lcom/alibaba/fastjson/parser/j;->d(Ljava/lang/Object;)V

    .line 794
    .line 795
    .line 796
    :cond_27
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 797
    .line 798
    .line 799
    throw v0
.end method

.method public h(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    const/16 v0, 0xe

    .line 10
    .line 11
    if-ne p4, v0, :cond_a

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/v;->f(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget-object p4, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->c:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    const/16 v2, 0x10

    .line 25
    .line 26
    if-ge v1, p4, :cond_9

    .line 27
    .line 28
    add-int/lit8 v3, p4, -0x1

    .line 29
    .line 30
    const/16 v4, 0x5d

    .line 31
    .line 32
    const/16 v5, 0x2c

    .line 33
    .line 34
    if-ne v1, v3, :cond_0

    .line 35
    .line 36
    const/16 v3, 0x5d

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/16 v3, 0x2c

    .line 40
    .line 41
    :goto_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->c:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 48
    .line 49
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/deserializer/r;->c()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    if-ne v7, v8, :cond_1

    .line 56
    .line 57
    invoke-interface {p3, v3}, Lcom/alibaba/fastjson/parser/d;->m(C)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v6, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/r;->h(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    const-class v8, Ljava/lang/String;

    .line 66
    .line 67
    if-ne v7, v8, :cond_2

    .line 68
    .line 69
    invoke-interface {p3, v3}, Lcom/alibaba/fastjson/parser/d;->q(C)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v6, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/r;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 78
    .line 79
    if-ne v7, v8, :cond_3

    .line 80
    .line 81
    invoke-interface {p3, v3}, Lcom/alibaba/fastjson/parser/d;->t(C)J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    invoke-virtual {v6, p2, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/r;->i(Ljava/lang/Object;J)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Class;->isEnum()Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-eqz v8, :cond_4

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->M()Lcom/alibaba/fastjson/parser/l;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-interface {p3, v7, v2, v3}, Lcom/alibaba/fastjson/parser/d;->z(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/l;C)Ljava/lang/Enum;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v6, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/r;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    invoke-interface {p3, v0}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/deserializer/r;->e()Ljava/lang/reflect/Type;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/c;->n0(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-virtual {v6, p2, v7}, Lcom/alibaba/fastjson/parser/deserializer/r;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    const-string v6, "syntax error"

    .line 122
    .line 123
    if-ne v3, v4, :cond_6

    .line 124
    .line 125
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    const/16 v4, 0xf

    .line 130
    .line 131
    if-ne v3, v4, :cond_5

    .line 132
    .line 133
    invoke-interface {p3, v2}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 138
    .line 139
    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_6
    if-ne v3, v5, :cond_8

    .line 144
    .line 145
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-ne v3, v2, :cond_7

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 153
    .line 154
    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_9
    invoke-interface {p3, v2}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 163
    .line 164
    .line 165
    return-object p2

    .line 166
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 167
    .line 168
    const-string p2, "error"

    .line 169
    .line 170
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1
.end method

.method public i()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->d:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public j(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/r;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->a:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method

.method public k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->a:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m(Lcom/alibaba/fastjson/parser/d;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->e:Lcom/alibaba/fastjson/util/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/d;->l()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/Feature;->isEnabled(ILcom/alibaba/fastjson/parser/Feature;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/parser/d;->c(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    :goto_1
    return p1
.end method

.method n(Lcom/alibaba/fastjson/parser/c;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/d;->c(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->M()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/serializer/j0;->j(Lcom/alibaba/fastjson/parser/c;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/c;->n0(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-static {p1, p2, p3, v0}, Lcom/alibaba/fastjson/serializer/j0;->k(Lcom/alibaba/fastjson/parser/c;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 36
    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v0, "setter not found, class "

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->d:Ljava/lang/Class;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ", property "

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method

.method public o(Lcom/alibaba/fastjson/parser/c;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/c;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->a:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/v;->a:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 54
    .line 55
    :cond_1
    if-nez v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0, p1, p3, p2}, Lcom/alibaba/fastjson/parser/deserializer/v;->n(Lcom/alibaba/fastjson/parser/c;Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    return p1

    .line 62
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/deserializer/r;->a()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/parser/d;->L(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1, p3, p4, p5}, Lcom/alibaba/fastjson/parser/deserializer/r;->g(Lcom/alibaba/fastjson/parser/c;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    return p1
.end method
