.class public final Lcom/byazt/umr/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x416,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/umr/uj$tt;,
        Lcom/byazt/umr/uj$c;,
        Lcom/byazt/umr/uj$ve;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/regex/Pattern;

.field public static final synthetic u:Z = true


# instance fields
.field public final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/byazt/umr/uj$tt;",
            ">;"
        }
    .end annotation
.end field

.field public da:Z

.field public gt:J

.field public i:Z

.field public final m:Ljava/io/File;

.field public my:J

.field public n:Lcom/byazt/mk/uj;

.field public final nu:I

.field public final qy:Ljava/lang/Runnable;

.field public rh:J

.field public final rl:Ljava/util/concurrent/Executor;

.field public sl:Z

.field public sp:I

.field public t:Z

.field public final tt:Lcom/byazt/hia/c;

.field public final uj:I

.field public final ve:Ljava/io/File;

.field public x:Z

.field public final yp:Ljava/io/File;

.field public final z:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "[a-z0-9_-]{1,120}"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/byazt/umr/uj;->c:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method private a()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, ", "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/umr/uj;->yp:Ljava/io/File;

    .line 6
    .line 7
    invoke-interface {v1, v2}, Lcom/byazt/hia/c;->c(Ljava/io/File;)Lcom/byazt/mk/my;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/byazt/mk/t;->c(Lcom/byazt/mk/my;)Lcom/byazt/mk/n;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :try_start_0
    invoke-interface {v1}, Lcom/byazt/mk/n;->m()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v1}, Lcom/byazt/mk/n;->m()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v1}, Lcom/byazt/mk/n;->m()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-interface {v1}, Lcom/byazt/mk/n;->m()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-interface {v1}, Lcom/byazt/mk/n;->m()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v7, "libcore.io.DiskLruCache"

    .line 36
    .line 37
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    const-string v7, "1"

    .line 44
    .line 45
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_1

    .line 50
    .line 51
    iget v7, p0, Lcom/byazt/umr/uj;->nu:I

    .line 52
    .line 53
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    iget v4, p0, Lcom/byazt/umr/uj;->uj:I

    .line 64
    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_1

    .line 74
    .line 75
    const-string v4, ""

    .line 76
    .line 77
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-eqz v4, :cond_1

    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    :goto_0
    :try_start_1
    invoke-interface {v1}, Lcom/byazt/mk/n;->m()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-direct {p0, v2}, Lcom/byazt/umr/uj;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .line 90
    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/byazt/umr/uj;->a:Ljava/util/LinkedHashMap;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    sub-int/2addr v0, v2

    .line 101
    iput v0, p0, Lcom/byazt/umr/uj;->sp:I

    .line 102
    .line 103
    invoke-interface {v1}, Lcom/byazt/mk/n;->n()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_0

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/byazt/umr/uj;->tt()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/byazt/umr/uj;->sp()Lcom/byazt/mk/uj;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .line 119
    :goto_1
    invoke-static {v1}, Lcom/byazt/kh/ve;->c(Ljava/io/Closeable;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    .line 124
    .line 125
    new-instance v7, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v8, "unexpected journal header: ["

    .line 128
    .line 129
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v0, "]"

    .line 154
    .line 155
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    invoke-static {v1}, Lcom/byazt/kh/ve;->c(Ljava/io/Closeable;)V

    .line 168
    .line 169
    .line 170
    throw v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    add-int/lit8 v4, v1, 0x1

    .line 23
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 24
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    const-string v5, "REMOVE"

    .line 25
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 26
    iget-object p1, p0, Lcom/byazt/umr/uj;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 27
    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 28
    :cond_1
    iget-object v5, p0, Lcom/byazt/umr/uj;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/umr/uj$tt;

    if-nez v5, :cond_2

    .line 29
    new-instance v5, Lcom/byazt/umr/uj$tt;

    invoke-direct {v5, p0, v4}, Lcom/byazt/umr/uj$tt;-><init>(Lcom/byazt/umr/uj;Ljava/lang/String;)V

    .line 30
    iget-object v6, p0, Lcom/byazt/umr/uj;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v4, 0x5

    if-eq v0, v3, :cond_3

    if-ne v1, v4, :cond_3

    const-string v6, "CLEAN"

    .line 31
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 33
    iput-boolean v1, v5, Lcom/byazt/umr/uj$tt;->n:Z

    const/4 v0, 0x0

    .line 34
    iput-object v0, v5, Lcom/byazt/umr/uj$tt;->a:Lcom/byazt/umr/uj$c;

    .line 35
    invoke-virtual {v5, p1}, Lcom/byazt/umr/uj$tt;->c([Ljava/lang/String;)V

    return-void

    :cond_3
    if-ne v0, v3, :cond_4

    if-ne v1, v4, :cond_4

    const-string v4, "DIRTY"

    .line 36
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 37
    new-instance p1, Lcom/byazt/umr/uj$c;

    invoke-direct {p1, p0, v5}, Lcom/byazt/umr/uj$c;-><init>(Lcom/byazt/umr/uj;Lcom/byazt/umr/uj$tt;)V

    iput-object p1, v5, Lcom/byazt/umr/uj$tt;->a:Lcom/byazt/umr/uj$c;

    return-void

    :cond_4
    if-ne v0, v3, :cond_5

    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    const-string v0, "READ"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 39
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/umr/uj;->uj()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "cache is closed"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    monitor-exit p0

    .line 20
    throw v0
.end method

.method private sp()Lcom/byazt/mk/uj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/umr/uj;->yp:Ljava/io/File;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/byazt/hia/c;->ve(Ljava/io/File;)Lcom/byazt/mk/rh;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/byazt/umr/uj$1;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0}, Lcom/byazt/umr/uj$1;-><init>(Lcom/byazt/umr/uj;Lcom/byazt/mk/rh;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/byazt/mk/t;->c(Lcom/byazt/mk/rh;)Lcom/byazt/mk/uj;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method private tt(Ljava/lang/String;)V
    .locals 3

    .line 29
    sget-object v0, Lcom/byazt/umr/uj;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private x()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/umr/uj;->z:Ljava/io/File;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/byazt/hia/c;->delete(Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/umr/uj;->a:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/byazt/umr/uj$tt;

    .line 29
    .line 30
    iget-object v2, v1, Lcom/byazt/umr/uj$tt;->a:Lcom/byazt/umr/uj$c;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    :goto_1
    iget v2, p0, Lcom/byazt/umr/uj;->uj:I

    .line 36
    .line 37
    if-ge v3, v2, :cond_0

    .line 38
    .line 39
    iget-wide v4, p0, Lcom/byazt/umr/uj;->my:J

    .line 40
    .line 41
    iget-object v2, v1, Lcom/byazt/umr/uj$tt;->tt:[J

    .line 42
    .line 43
    aget-wide v6, v2, v3

    .line 44
    .line 45
    add-long/2addr v4, v6

    .line 46
    iput-wide v4, p0, Lcom/byazt/umr/uj;->my:J

    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v2, 0x0

    .line 52
    iput-object v2, v1, Lcom/byazt/umr/uj$tt;->a:Lcom/byazt/umr/uj$c;

    .line 53
    .line 54
    :goto_2
    iget v2, p0, Lcom/byazt/umr/uj;->uj:I

    .line 55
    .line 56
    if-ge v3, v2, :cond_2

    .line 57
    .line 58
    iget-object v2, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    .line 59
    .line 60
    iget-object v4, v1, Lcom/byazt/umr/uj$tt;->ve:[Ljava/io/File;

    .line 61
    .line 62
    aget-object v4, v4, v3

    .line 63
    .line 64
    invoke-interface {v2, v4}, Lcom/byazt/hia/c;->delete(Ljava/io/File;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    .line 68
    .line 69
    iget-object v4, v1, Lcom/byazt/umr/uj$tt;->uj:[Ljava/io/File;

    .line 70
    .line 71
    aget-object v4, v4, v3

    .line 72
    .line 73
    invoke-interface {v2, v4}, Lcom/byazt/hia/c;->delete(Ljava/io/File;)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized c(Ljava/lang/String;J)Lcom/byazt/umr/uj$c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/umr/uj;->c()V

    .line 42
    invoke-direct {p0}, Lcom/byazt/umr/uj;->i()V

    .line 43
    invoke-direct {p0, p1}, Lcom/byazt/umr/uj;->tt(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/byazt/umr/uj;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/umr/uj$tt;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 45
    iget-wide v1, v0, Lcom/byazt/umr/uj$tt;->sp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 46
    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-eqz v0, :cond_2

    .line 47
    :try_start_1
    iget-object p2, v0, Lcom/byazt/umr/uj$tt;->a:Lcom/byazt/umr/uj$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 48
    monitor-exit p0

    return-object v3

    .line 49
    :cond_2
    :try_start_2
    iget-boolean p2, p0, Lcom/byazt/umr/uj;->sl:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/byazt/umr/uj;->t:Z

    if-eqz p2, :cond_3

    goto :goto_0

    .line 50
    :cond_3
    iget-object p2, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;

    const-string p3, "DIRTY"

    invoke-interface {p2, p3}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    move-result-object p2

    const/16 p3, 0x20

    invoke-interface {p2, p3}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    move-result-object p2

    const/16 p3, 0xa

    invoke-interface {p2, p3}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    .line 51
    iget-object p2, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;

    invoke-interface {p2}, Lcom/byazt/mk/uj;->flush()V

    .line 52
    iget-boolean p2, p0, Lcom/byazt/umr/uj;->x:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    .line 53
    monitor-exit p0

    return-object v3

    :cond_4
    if-nez v0, :cond_5

    .line 54
    :try_start_3
    new-instance v0, Lcom/byazt/umr/uj$tt;

    invoke-direct {v0, p0, p1}, Lcom/byazt/umr/uj$tt;-><init>(Lcom/byazt/umr/uj;Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/byazt/umr/uj;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_5
    new-instance p1, Lcom/byazt/umr/uj$c;

    invoke-direct {p1, p0, v0}, Lcom/byazt/umr/uj$c;-><init>(Lcom/byazt/umr/uj;Lcom/byazt/umr/uj$tt;)V

    .line 57
    iput-object p1, v0, Lcom/byazt/umr/uj$tt;->a:Lcom/byazt/umr/uj$c;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    monitor-exit p0

    return-object p1

    .line 59
    :cond_6
    :goto_0
    :try_start_4
    iget-object p1, p0, Lcom/byazt/umr/uj;->rl:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lcom/byazt/umr/uj;->qy:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 60
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/byazt/umr/uj;->u:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/byazt/umr/uj;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    iget-object v1, p0, Lcom/byazt/umr/uj;->m:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/byazt/hia/c;->uj(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    iget-object v1, p0, Lcom/byazt/umr/uj;->yp:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/byazt/hia/c;->uj(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    iget-object v1, p0, Lcom/byazt/umr/uj;->m:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/byazt/hia/c;->delete(Ljava/io/File;)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    iget-object v1, p0, Lcom/byazt/umr/uj;->m:Ljava/io/File;

    iget-object v2, p0, Lcom/byazt/umr/uj;->yp:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/byazt/hia/c;->c(Ljava/io/File;Ljava/io/File;)V

    .line 8
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    iget-object v1, p0, Lcom/byazt/umr/uj;->yp:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/byazt/hia/c;->uj(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 9
    :try_start_2
    invoke-direct {p0}, Lcom/byazt/umr/uj;->a()V

    .line 10
    invoke-direct {p0}, Lcom/byazt/umr/uj;->x()V

    .line 11
    iput-boolean v1, p0, Lcom/byazt/umr/uj;->i:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 13
    :try_start_3
    invoke-static {}, Lcom/byazt/xb/n;->tt()Lcom/byazt/xb/n;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DiskLruCache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/byazt/umr/uj;->ve:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", removing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    .line 15
    invoke-virtual {v2, v4, v3, v0}, Lcom/byazt/xb/n;->c(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    .line 16
    :try_start_4
    invoke-virtual {p0}, Lcom/byazt/umr/uj;->delete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 17
    :try_start_5
    iput-boolean v0, p0, Lcom/byazt/umr/uj;->da:Z

    goto :goto_2

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/byazt/umr/uj;->da:Z

    .line 18
    throw v1

    .line 19
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/byazt/umr/uj;->tt()V

    .line 20
    iput-boolean v1, p0, Lcom/byazt/umr/uj;->i:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 21
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lcom/byazt/umr/uj$c;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p1, Lcom/byazt/umr/uj$c;->c:Lcom/byazt/umr/uj$tt;

    .line 62
    iget-object v1, v0, Lcom/byazt/umr/uj$tt;->a:Lcom/byazt/umr/uj$c;

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 63
    iget-boolean v2, v0, Lcom/byazt/umr/uj$tt;->n:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 64
    :goto_0
    iget v3, p0, Lcom/byazt/umr/uj;->uj:I

    if-ge v2, v3, :cond_2

    .line 65
    iget-object v3, p1, Lcom/byazt/umr/uj$c;->tt:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 66
    iget-object v3, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    iget-object v4, v0, Lcom/byazt/umr/uj$tt;->uj:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lcom/byazt/hia/c;->uj(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/byazt/umr/uj$c;->ve()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/byazt/umr/uj$c;->ve()V

    .line 70
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Newly created entry didn\'t create value for index "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_2
    :goto_1
    iget p1, p0, Lcom/byazt/umr/uj;->uj:I

    if-ge v1, p1, :cond_5

    .line 72
    iget-object p1, v0, Lcom/byazt/umr/uj$tt;->uj:[Ljava/io/File;

    aget-object p1, p1, v1

    if-eqz p2, :cond_3

    .line 73
    iget-object v2, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    invoke-interface {v2, p1}, Lcom/byazt/hia/c;->uj(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 74
    iget-object v2, v0, Lcom/byazt/umr/uj$tt;->ve:[Ljava/io/File;

    aget-object v2, v2, v1

    .line 75
    iget-object v3, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    invoke-interface {v3, p1, v2}, Lcom/byazt/hia/c;->c(Ljava/io/File;Ljava/io/File;)V

    .line 76
    iget-object p1, v0, Lcom/byazt/umr/uj$tt;->tt:[J

    aget-wide v3, p1, v1

    .line 77
    iget-object p1, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    invoke-interface {p1, v2}, Lcom/byazt/hia/c;->n(Ljava/io/File;)J

    move-result-wide v5

    .line 78
    iget-object p1, v0, Lcom/byazt/umr/uj$tt;->tt:[J

    aput-wide v5, p1, v1

    .line 79
    iget-wide v7, p0, Lcom/byazt/umr/uj;->my:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/byazt/umr/uj;->my:J

    goto :goto_2

    .line 80
    :cond_3
    iget-object v2, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    invoke-interface {v2, p1}, Lcom/byazt/hia/c;->delete(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    :cond_5
    iget p1, p0, Lcom/byazt/umr/uj;->sp:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/byazt/umr/uj;->sp:I

    const/4 p1, 0x0

    .line 82
    iput-object p1, v0, Lcom/byazt/umr/uj$tt;->a:Lcom/byazt/umr/uj$c;

    .line 83
    iget-boolean p1, v0, Lcom/byazt/umr/uj$tt;->n:Z

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_6

    .line 84
    iput-boolean v1, v0, Lcom/byazt/umr/uj$tt;->n:Z

    .line 85
    iget-object p1, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;

    const-string v1, "CLEAN"

    invoke-interface {p1, v1}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    .line 86
    iget-object p1, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;

    iget-object v1, v0, Lcom/byazt/umr/uj$tt;->c:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    .line 87
    iget-object p1, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;

    invoke-virtual {v0, p1}, Lcom/byazt/umr/uj$tt;->c(Lcom/byazt/mk/uj;)V

    .line 88
    iget-object p1, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;

    invoke-interface {p1, v2}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    if-eqz p2, :cond_7

    .line 89
    iget-wide p1, p0, Lcom/byazt/umr/uj;->gt:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/byazt/umr/uj;->gt:J

    iput-wide p1, v0, Lcom/byazt/umr/uj$tt;->sp:J

    goto :goto_3

    .line 90
    :cond_6
    iget-object p1, p0, Lcom/byazt/umr/uj;->a:Ljava/util/LinkedHashMap;

    iget-object p2, v0, Lcom/byazt/umr/uj$tt;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p1, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;

    const-string p2, "REMOVE"

    invoke-interface {p1, p2}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    .line 92
    iget-object p1, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;

    iget-object p2, v0, Lcom/byazt/umr/uj$tt;->c:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    .line 93
    iget-object p1, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;

    invoke-interface {p1, v2}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    .line 94
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;

    invoke-interface {p1}, Lcom/byazt/mk/uj;->flush()V

    .line 95
    iget-wide p1, p0, Lcom/byazt/umr/uj;->my:J

    iget-wide v0, p0, Lcom/byazt/umr/uj;->rh:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    invoke-virtual {p0}, Lcom/byazt/umr/uj;->ve()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 96
    :cond_8
    iget-object p1, p0, Lcom/byazt/umr/uj;->rl:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lcom/byazt/umr/uj;->qy:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :cond_9
    monitor-exit p0

    return-void

    .line 98
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Lcom/byazt/umr/uj$tt;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p1, Lcom/byazt/umr/uj$tt;->a:Lcom/byazt/umr/uj$c;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/byazt/umr/uj$c;->c()V

    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    iget v1, p0, Lcom/byazt/umr/uj;->uj:I

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    iget-object v2, p1, Lcom/byazt/umr/uj$tt;->ve:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/byazt/hia/c;->delete(Ljava/io/File;)V

    .line 103
    iget-wide v1, p0, Lcom/byazt/umr/uj;->my:J

    iget-object v3, p1, Lcom/byazt/umr/uj$tt;->tt:[J

    aget-wide v4, v3, v0

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lcom/byazt/umr/uj;->my:J

    const-wide/16 v1, 0x0

    .line 104
    aput-wide v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    iget v0, p0, Lcom/byazt/umr/uj;->sp:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/byazt/umr/uj;->sp:I

    .line 106
    iget-object v0, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    move-result-object v0

    iget-object v2, p1, Lcom/byazt/umr/uj$tt;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    .line 107
    iget-object v0, p0, Lcom/byazt/umr/uj;->a:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/byazt/umr/uj$tt;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Lcom/byazt/umr/uj;->ve()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/byazt/umr/uj;->rl:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/byazt/umr/uj;->qy:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return v1
.end method

.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/umr/uj;->i:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/byazt/umr/uj;->da:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/umr/uj;->a:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/byazt/umr/uj;->a:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    new-array v2, v2, [Lcom/byazt/umr/uj$tt;

    .line 25
    .line 26
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, [Lcom/byazt/umr/uj$tt;

    .line 31
    .line 32
    array-length v2, v0

    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_0
    if-ge v3, v2, :cond_2

    .line 35
    .line 36
    aget-object v4, v0, v3

    .line 37
    .line 38
    iget-object v4, v4, Lcom/byazt/umr/uj$tt;->a:Lcom/byazt/umr/uj$c;

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/byazt/umr/uj$c;->ve()V

    .line 43
    .line 44
    .line 45
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/umr/uj;->n()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;

    .line 52
    .line 53
    invoke-interface {v0}, Lcom/byazt/mk/rh;->close()V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;

    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/byazt/umr/uj;->da:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :cond_3
    :goto_1
    :try_start_1
    iput-boolean v1, p0, Lcom/byazt/umr/uj;->da:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    monitor-exit p0

    .line 69
    throw v0
.end method

.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/umr/uj;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/umr/uj;->ve:Ljava/io/File;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/byazt/hia/c;->a(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/umr/uj;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/byazt/umr/uj;->i()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/byazt/umr/uj;->n()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/byazt/mk/uj;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method

.method public n()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-wide v0, p0, Lcom/byazt/umr/uj;->my:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/byazt/umr/uj;->rh:J

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/umr/uj;->a:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/byazt/umr/uj$tt;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/byazt/umr/uj;->c(Lcom/byazt/umr/uj$tt;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/byazt/umr/uj;->sl:Z

    .line 31
    .line 32
    return-void
.end method

.method public declared-synchronized tt()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/byazt/mk/rh;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    iget-object v1, p0, Lcom/byazt/umr/uj;->z:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/byazt/hia/c;->tt(Ljava/io/File;)Lcom/byazt/mk/rh;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/mk/t;->c(Lcom/byazt/mk/rh;)Lcom/byazt/mk/uj;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 4
    invoke-interface {v0, v1}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    const-string v1, "1"

    .line 5
    invoke-interface {v0, v1}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    .line 6
    iget v1, p0, Lcom/byazt/umr/uj;->nu:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lcom/byazt/mk/uj;->t(J)Lcom/byazt/mk/uj;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    .line 7
    iget v1, p0, Lcom/byazt/umr/uj;->uj:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lcom/byazt/mk/uj;->t(J)Lcom/byazt/mk/uj;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    .line 8
    invoke-interface {v0, v2}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    .line 9
    iget-object v1, p0, Lcom/byazt/umr/uj;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/umr/uj$tt;

    .line 10
    iget-object v4, v3, Lcom/byazt/umr/uj$tt;->a:Lcom/byazt/umr/uj$c;

    const/16 v5, 0x20

    if-eqz v4, :cond_1

    const-string v4, "DIRTY"

    .line 11
    invoke-interface {v0, v4}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    .line 12
    iget-object v3, v3, Lcom/byazt/umr/uj$tt;->c:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    .line 13
    invoke-interface {v0, v2}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    goto :goto_0

    :cond_1
    const-string v4, "CLEAN"

    .line 14
    invoke-interface {v0, v4}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    .line 15
    iget-object v4, v3, Lcom/byazt/umr/uj$tt;->c:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    .line 16
    invoke-virtual {v3, v0}, Lcom/byazt/umr/uj$tt;->c(Lcom/byazt/mk/uj;)V

    .line 17
    invoke-interface {v0, v2}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 18
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lcom/byazt/mk/rh;->close()V

    .line 19
    iget-object v0, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    iget-object v1, p0, Lcom/byazt/umr/uj;->yp:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/byazt/hia/c;->uj(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    iget-object v1, p0, Lcom/byazt/umr/uj;->yp:Ljava/io/File;

    iget-object v2, p0, Lcom/byazt/umr/uj;->m:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/byazt/hia/c;->c(Ljava/io/File;Ljava/io/File;)V

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    iget-object v1, p0, Lcom/byazt/umr/uj;->z:Ljava/io/File;

    iget-object v2, p0, Lcom/byazt/umr/uj;->yp:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/byazt/hia/c;->c(Ljava/io/File;Ljava/io/File;)V

    .line 22
    iget-object v0, p0, Lcom/byazt/umr/uj;->tt:Lcom/byazt/hia/c;

    iget-object v1, p0, Lcom/byazt/umr/uj;->m:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/byazt/hia/c;->delete(Ljava/io/File;)V

    .line 23
    invoke-direct {p0}, Lcom/byazt/umr/uj;->sp()Lcom/byazt/mk/uj;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/umr/uj;->n:Lcom/byazt/mk/uj;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/byazt/umr/uj;->x:Z

    .line 25
    iput-boolean v0, p0, Lcom/byazt/umr/uj;->t:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 27
    :try_start_3
    invoke-interface {v0}, Lcom/byazt/mk/rh;->close()V

    .line 28
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized uj()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/umr/uj;->da:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public ve()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/umr/uj;->sp:I

    .line 2
    .line 3
    const/16 v1, 0x7d0

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/umr/uj;->a:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method
