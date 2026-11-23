.class public final Lcom/byazt/jb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yx/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/jb/a$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/byazt/mk/a;

.field public static final da:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/mk/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lcom/byazt/mk/a;

.field public static final n:Lcom/byazt/mk/a;

.field public static final sl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/mk/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final sp:Lcom/byazt/mk/a;

.field public static final tt:Lcom/byazt/mk/a;

.field public static final uj:Lcom/byazt/mk/a;

.field public static final ve:Lcom/byazt/mk/a;

.field public static final x:Lcom/byazt/mk/a;


# instance fields
.field public final c:Lcom/byazt/iq/sp;

.field public final t:Lcom/byazt/eg/gu;

.field public final u:Lcom/byazt/eg/gt$c;

.field public final yp:Lcom/byazt/jb/sp;

.field public z:Lcom/byazt/jb/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/mk/a;->c(Ljava/lang/String;)Lcom/byazt/mk/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/byazt/jb/a;->tt:Lcom/byazt/mk/a;

    .line 8
    .line 9
    const-string v1, "host"

    .line 10
    .line 11
    invoke-static {v1}, Lcom/byazt/mk/a;->c(Ljava/lang/String;)Lcom/byazt/mk/a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Lcom/byazt/jb/a;->ve:Lcom/byazt/mk/a;

    .line 16
    .line 17
    const-string v2, "keep-alive"

    .line 18
    .line 19
    invoke-static {v2}, Lcom/byazt/mk/a;->c(Ljava/lang/String;)Lcom/byazt/mk/a;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sput-object v2, Lcom/byazt/jb/a;->uj:Lcom/byazt/mk/a;

    .line 24
    .line 25
    const-string v3, "proxy-connection"

    .line 26
    .line 27
    invoke-static {v3}, Lcom/byazt/mk/a;->c(Ljava/lang/String;)Lcom/byazt/mk/a;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sput-object v3, Lcom/byazt/jb/a;->n:Lcom/byazt/mk/a;

    .line 32
    .line 33
    const-string v4, "transfer-encoding"

    .line 34
    .line 35
    invoke-static {v4}, Lcom/byazt/mk/a;->c(Ljava/lang/String;)Lcom/byazt/mk/a;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    sput-object v4, Lcom/byazt/jb/a;->a:Lcom/byazt/mk/a;

    .line 40
    .line 41
    const-string v5, "te"

    .line 42
    .line 43
    invoke-static {v5}, Lcom/byazt/mk/a;->c(Ljava/lang/String;)Lcom/byazt/mk/a;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    sput-object v5, Lcom/byazt/jb/a;->sp:Lcom/byazt/mk/a;

    .line 48
    .line 49
    const-string v6, "encoding"

    .line 50
    .line 51
    invoke-static {v6}, Lcom/byazt/mk/a;->c(Ljava/lang/String;)Lcom/byazt/mk/a;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    sput-object v6, Lcom/byazt/jb/a;->x:Lcom/byazt/mk/a;

    .line 56
    .line 57
    const-string v7, "upgrade"

    .line 58
    .line 59
    invoke-static {v7}, Lcom/byazt/mk/a;->c(Ljava/lang/String;)Lcom/byazt/mk/a;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    sput-object v7, Lcom/byazt/jb/a;->i:Lcom/byazt/mk/a;

    .line 64
    .line 65
    const/16 v8, 0xc

    .line 66
    .line 67
    new-array v8, v8, [Lcom/byazt/mk/a;

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    aput-object v0, v8, v9

    .line 71
    .line 72
    const/4 v10, 0x1

    .line 73
    aput-object v1, v8, v10

    .line 74
    .line 75
    const/4 v11, 0x2

    .line 76
    aput-object v2, v8, v11

    .line 77
    .line 78
    const/4 v12, 0x3

    .line 79
    aput-object v3, v8, v12

    .line 80
    .line 81
    const/4 v13, 0x4

    .line 82
    aput-object v5, v8, v13

    .line 83
    .line 84
    const/4 v14, 0x5

    .line 85
    aput-object v4, v8, v14

    .line 86
    .line 87
    const/4 v15, 0x6

    .line 88
    aput-object v6, v8, v15

    .line 89
    .line 90
    const/16 v16, 0x7

    .line 91
    .line 92
    aput-object v7, v8, v16

    .line 93
    .line 94
    sget-object v17, Lcom/byazt/jb/ve;->ve:Lcom/byazt/mk/a;

    .line 95
    .line 96
    const/16 v15, 0x8

    .line 97
    .line 98
    aput-object v17, v8, v15

    .line 99
    .line 100
    const/16 v17, 0x9

    .line 101
    .line 102
    sget-object v18, Lcom/byazt/jb/ve;->uj:Lcom/byazt/mk/a;

    .line 103
    .line 104
    aput-object v18, v8, v17

    .line 105
    .line 106
    const/16 v17, 0xa

    .line 107
    .line 108
    sget-object v18, Lcom/byazt/jb/ve;->n:Lcom/byazt/mk/a;

    .line 109
    .line 110
    aput-object v18, v8, v17

    .line 111
    .line 112
    const/16 v17, 0xb

    .line 113
    .line 114
    sget-object v18, Lcom/byazt/jb/ve;->a:Lcom/byazt/mk/a;

    .line 115
    .line 116
    aput-object v18, v8, v17

    .line 117
    .line 118
    invoke-static {v8}, Lcom/byazt/kh/ve;->c([Ljava/lang/Object;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    sput-object v8, Lcom/byazt/jb/a;->da:Ljava/util/List;

    .line 123
    .line 124
    new-array v8, v15, [Lcom/byazt/mk/a;

    .line 125
    .line 126
    aput-object v0, v8, v9

    .line 127
    .line 128
    aput-object v1, v8, v10

    .line 129
    .line 130
    aput-object v2, v8, v11

    .line 131
    .line 132
    aput-object v3, v8, v12

    .line 133
    .line 134
    aput-object v5, v8, v13

    .line 135
    .line 136
    aput-object v4, v8, v14

    .line 137
    .line 138
    const/4 v0, 0x6

    .line 139
    aput-object v6, v8, v0

    .line 140
    .line 141
    aput-object v7, v8, v16

    .line 142
    .line 143
    invoke-static {v8}, Lcom/byazt/kh/ve;->c([Ljava/lang/Object;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    sput-object v0, Lcom/byazt/jb/a;->sl:Ljava/util/List;

    .line 148
    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/byazt/eg/gu;Lcom/byazt/eg/gt$c;Lcom/byazt/iq/sp;Lcom/byazt/jb/sp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/jb/a;->t:Lcom/byazt/eg/gu;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/jb/a;->u:Lcom/byazt/eg/gt$c;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/jb/a;->c:Lcom/byazt/iq/sp;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/jb/a;->yp:Lcom/byazt/jb/sp;

    .line 11
    .line 12
    return-void
.end method

.method public static c(Ljava/util/List;)Lcom/byazt/eg/h$c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/jb/ve;",
            ">;)",
            "Lcom/byazt/eg/h$c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/byazt/eg/rh$c;

    invoke-direct {v0}, Lcom/byazt/eg/rh$c;-><init>()V

    .line 13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 14
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/jb/ve;

    if-nez v5, :cond_0

    if-eqz v4, :cond_2

    .line 15
    iget v5, v4, Lcom/byazt/yx/sl;->tt:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    .line 16
    new-instance v0, Lcom/byazt/eg/rh$c;

    invoke-direct {v0}, Lcom/byazt/eg/rh$c;-><init>()V

    move-object v4, v2

    goto :goto_1

    .line 17
    :cond_0
    iget-object v6, v5, Lcom/byazt/jb/ve;->sp:Lcom/byazt/mk/a;

    .line 18
    iget-object v5, v5, Lcom/byazt/jb/ve;->x:Lcom/byazt/mk/a;

    invoke-virtual {v5}, Lcom/byazt/mk/a;->c()Ljava/lang/String;

    move-result-object v5

    .line 19
    sget-object v7, Lcom/byazt/jb/ve;->tt:Lcom/byazt/mk/a;

    invoke-virtual {v6, v7}, Lcom/byazt/mk/a;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 20
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "HTTP/1.1 "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/byazt/yx/sl;->c(Ljava/lang/String;)Lcom/byazt/yx/sl;

    move-result-object v4

    goto :goto_1

    .line 21
    :cond_1
    sget-object v7, Lcom/byazt/jb/a;->sl:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 22
    sget-object v7, Lcom/byazt/kh/c;->c:Lcom/byazt/kh/c;

    invoke-virtual {v6}, Lcom/byazt/mk/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v0, v6, v5}, Lcom/byazt/kh/c;->c(Lcom/byazt/eg/rh$c;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 23
    new-instance p0, Lcom/byazt/eg/h$c;

    invoke-direct {p0}, Lcom/byazt/eg/h$c;-><init>()V

    sget-object v1, Lcom/byazt/eg/gr;->uj:Lcom/byazt/eg/gr;

    .line 24
    invoke-virtual {p0, v1}, Lcom/byazt/eg/h$c;->c(Lcom/byazt/eg/gr;)Lcom/byazt/eg/h$c;

    move-result-object p0

    iget v1, v4, Lcom/byazt/yx/sl;->tt:I

    .line 25
    invoke-virtual {p0, v1}, Lcom/byazt/eg/h$c;->c(I)Lcom/byazt/eg/h$c;

    move-result-object p0

    iget-object v1, v4, Lcom/byazt/yx/sl;->ve:Ljava/lang/String;

    .line 26
    invoke-virtual {p0, v1}, Lcom/byazt/eg/h$c;->c(Ljava/lang/String;)Lcom/byazt/eg/h$c;

    move-result-object p0

    .line 27
    invoke-virtual {v0}, Lcom/byazt/eg/rh$c;->c()Lcom/byazt/eg/rh;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/eg/h$c;->c(Lcom/byazt/eg/rh;)Lcom/byazt/eg/h$c;

    move-result-object p0

    return-object p0

    .line 28
    :cond_4
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static tt(Lcom/byazt/eg/yv;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/eg/yv;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/jb/ve;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/byazt/eg/yv;->ve()Lcom/byazt/eg/rh;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/byazt/eg/rh;->c()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v2, Lcom/byazt/jb/ve;

    sget-object v3, Lcom/byazt/jb/ve;->ve:Lcom/byazt/mk/a;

    invoke-virtual {p0}, Lcom/byazt/eg/yv;->tt()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/byazt/jb/ve;-><init>(Lcom/byazt/mk/a;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v2, Lcom/byazt/jb/ve;

    sget-object v3, Lcom/byazt/jb/ve;->uj:Lcom/byazt/mk/a;

    invoke-virtual {p0}, Lcom/byazt/eg/yv;->c()Lcom/byazt/eg/my;

    move-result-object v4

    invoke-static {v4}, Lcom/byazt/yx/i;->c(Lcom/byazt/eg/my;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/byazt/jb/ve;-><init>(Lcom/byazt/mk/a;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    .line 6
    invoke-virtual {p0, v2}, Lcom/byazt/eg/yv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    new-instance v3, Lcom/byazt/jb/ve;

    sget-object v4, Lcom/byazt/jb/ve;->a:Lcom/byazt/mk/a;

    invoke-direct {v3, v4, v2}, Lcom/byazt/jb/ve;-><init>(Lcom/byazt/mk/a;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    new-instance v2, Lcom/byazt/jb/ve;

    sget-object v3, Lcom/byazt/jb/ve;->n:Lcom/byazt/mk/a;

    invoke-virtual {p0}, Lcom/byazt/eg/yv;->c()Lcom/byazt/eg/my;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/eg/my;->ve()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/byazt/jb/ve;-><init>(Lcom/byazt/mk/a;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v0}, Lcom/byazt/eg/rh;->c()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    .line 10
    invoke-virtual {v0, v2}, Lcom/byazt/eg/rh;->c(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/mk/a;->c(Ljava/lang/String;)Lcom/byazt/mk/a;

    move-result-object v3

    .line 11
    sget-object v4, Lcom/byazt/jb/a;->da:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 12
    new-instance v4, Lcom/byazt/jb/ve;

    invoke-virtual {v0, v2}, Lcom/byazt/eg/rh;->tt(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/byazt/jb/ve;-><init>(Lcom/byazt/mk/a;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public c(Lcom/byazt/eg/h;)Lcom/byazt/eg/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 29
    invoke-virtual {p1, v0}, Lcom/byazt/eg/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {p1}, Lcom/byazt/yx/n;->c(Lcom/byazt/eg/h;)J

    move-result-wide v1

    .line 31
    new-instance p1, Lcom/byazt/jb/a$c;

    iget-object v3, p0, Lcom/byazt/jb/a;->z:Lcom/byazt/jb/i;

    invoke-virtual {v3}, Lcom/byazt/jb/i;->sp()Lcom/byazt/mk/my;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lcom/byazt/jb/a$c;-><init>(Lcom/byazt/jb/a;Lcom/byazt/mk/my;)V

    .line 32
    new-instance v3, Lcom/byazt/yx/x;

    invoke-static {p1}, Lcom/byazt/mk/t;->c(Lcom/byazt/mk/my;)Lcom/byazt/mk/n;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/byazt/yx/x;-><init>(Ljava/lang/String;JLcom/byazt/mk/n;)V

    return-object v3
.end method

.method public c(Z)Lcom/byazt/eg/h$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/byazt/jb/a;->z:Lcom/byazt/jb/i;

    invoke-virtual {v0}, Lcom/byazt/jb/i;->uj()Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/byazt/jb/a;->c(Ljava/util/List;)Lcom/byazt/eg/h$c;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 11
    sget-object p1, Lcom/byazt/kh/c;->c:Lcom/byazt/kh/c;

    invoke-virtual {p1, v0}, Lcom/byazt/kh/c;->c(Lcom/byazt/eg/h$c;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public c(Lcom/byazt/eg/yv;J)Lcom/byazt/mk/rh;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/jb/a;->z:Lcom/byazt/jb/i;

    invoke-virtual {p1}, Lcom/byazt/jb/i;->x()Lcom/byazt/mk/rh;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/byazt/jb/a;->yp:Lcom/byazt/jb/sp;

    invoke-virtual {v0}, Lcom/byazt/jb/sp;->tt()V

    return-void
.end method

.method public c(Lcom/byazt/eg/yv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/jb/a;->z:Lcom/byazt/jb/i;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/eg/yv;->uj()Lcom/byazt/eg/p;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/byazt/jb/a;->tt(Lcom/byazt/eg/yv;)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/byazt/jb/a;->yp:Lcom/byazt/jb/sp;

    invoke-virtual {v1, p1, v0}, Lcom/byazt/jb/sp;->c(Ljava/util/List;Z)Lcom/byazt/jb/i;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/jb/a;->z:Lcom/byazt/jb/i;

    .line 6
    invoke-virtual {p1}, Lcom/byazt/jb/i;->n()Lcom/byazt/mk/gt;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/jb/a;->u:Lcom/byazt/eg/gt$c;

    invoke-interface {v0}, Lcom/byazt/eg/gt$c;->ve()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/mk/gt;->c(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/mk/gt;

    .line 7
    iget-object p1, p0, Lcom/byazt/jb/a;->z:Lcom/byazt/jb/i;

    invoke-virtual {p1}, Lcom/byazt/jb/i;->a()Lcom/byazt/mk/gt;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/jb/a;->u:Lcom/byazt/eg/gt$c;

    invoke-interface {v0}, Lcom/byazt/eg/gt$c;->uj()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/mk/gt;->c(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/mk/gt;

    return-void
.end method

.method public tt()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/jb/a;->z:Lcom/byazt/jb/i;

    invoke-virtual {v0}, Lcom/byazt/jb/i;->x()Lcom/byazt/mk/rh;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/mk/rh;->close()V

    return-void
.end method

.method public ve()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/jb/a;->z:Lcom/byazt/jb/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/byazt/jb/tt;->a:Lcom/byazt/jb/tt;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/jb/i;->tt(Lcom/byazt/jb/tt;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
