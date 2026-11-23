.class public final Lcom/byazt/uwt/ve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ao/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x111,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uwt/ve;->c(Ljava/io/File;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/io/File;

.field public final synthetic n:[Z

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Ljava/lang/StringBuffer;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;[Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uwt/ve$2;->c:Ljava/io/File;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/uwt/ve$2;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/uwt/ve$2;->ve:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/uwt/ve$2;->uj:Ljava/lang/StringBuffer;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/uwt/ve$2;->n:[Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/uwt/ve$2;->c:Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/uwt/ve$2;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/byazt/uwt/ve$2;->ve:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/uwt/ve$2;->uj:Ljava/lang/StringBuffer;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/uwt/ve;->tt(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/byazt/uwt/ve$2;->c:Ljava/io/File;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/byazt/uwt/ve$2;->tt:Ljava/lang/String;

    .line 16
    .line 17
    iget v3, p0, Lcom/byazt/uwt/ve$2;->ve:I

    .line 18
    .line 19
    iget-object v4, p0, Lcom/byazt/uwt/ve$2;->uj:Ljava/lang/StringBuffer;

    .line 20
    .line 21
    invoke-static {v1, v2, v3, v4}, Lcom/byazt/uwt/ve;->ve(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/byazt/uwt/ve$2;->c:Ljava/io/File;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/byazt/uwt/ve$2;->tt:Ljava/lang/String;

    .line 27
    .line 28
    iget v3, p0, Lcom/byazt/uwt/ve$2;->ve:I

    .line 29
    .line 30
    iget-object v4, p0, Lcom/byazt/uwt/ve$2;->uj:Ljava/lang/StringBuffer;

    .line 31
    .line 32
    invoke-static {v1, v2, v3, v4}, Lcom/byazt/uwt/ve;->uj(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/byazt/uwt/ve$2;->tt:Ljava/lang/String;

    .line 37
    .line 38
    iget v3, p0, Lcom/byazt/uwt/ve$2;->ve:I

    .line 39
    .line 40
    iget-object v4, p0, Lcom/byazt/uwt/ve$2;->uj:Ljava/lang/StringBuffer;

    .line 41
    .line 42
    invoke-static {v1, v2, v3, v4}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/byazt/uq/i;->sp()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x0

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    new-array v3, v1, [Z

    .line 54
    .line 55
    aput-boolean v2, v3, v2

    .line 56
    .line 57
    const/4 v4, 0x2

    .line 58
    new-array v4, v4, [Lcom/byazt/ao/c$c;

    .line 59
    .line 60
    new-instance v5, Lcom/byazt/uwt/ve$2$1;

    .line 61
    .line 62
    invoke-direct {v5, p0, v0}, Lcom/byazt/uwt/ve$2$1;-><init>(Lcom/byazt/uwt/ve$2;Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    aput-object v5, v4, v2

    .line 66
    .line 67
    new-instance v0, Lcom/byazt/uwt/ve$2$2;

    .line 68
    .line 69
    invoke-direct {v0, p0, v3}, Lcom/byazt/uwt/ve$2$2;-><init>(Lcom/byazt/uwt/ve$2;[Z)V

    .line 70
    .line 71
    .line 72
    aput-object v0, v4, v1

    .line 73
    .line 74
    invoke-static {v2, v4}, Lcom/byazt/ao/c;->c(Z[Lcom/byazt/ao/c$c;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/byazt/uwt/ve$2;->n:[Z

    .line 78
    .line 79
    iget-object v1, p0, Lcom/byazt/uwt/ve$2;->tt:Ljava/lang/String;

    .line 80
    .line 81
    iget v4, p0, Lcom/byazt/uwt/ve$2;->ve:I

    .line 82
    .line 83
    aget-boolean v3, v3, v2

    .line 84
    .line 85
    iget-object v5, p0, Lcom/byazt/uwt/ve$2;->uj:Ljava/lang/StringBuffer;

    .line 86
    .line 87
    invoke-static {v1, v4, v3, v5}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;IZLjava/lang/StringBuffer;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    aput-boolean v1, v0, v2

    .line 92
    .line 93
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/byazt/uwt/ve$2;->tt:Ljava/lang/String;

    .line 95
    .line 96
    iget v3, p0, Lcom/byazt/uwt/ve$2;->ve:I

    .line 97
    .line 98
    iget-object v4, p0, Lcom/byazt/uwt/ve$2;->uj:Ljava/lang/StringBuffer;

    .line 99
    .line 100
    invoke-static {v1, v3, v0, v4}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;ILjava/util/Map;Ljava/lang/StringBuffer;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/byazt/uwt/ve$2;->n:[Z

    .line 104
    .line 105
    iget-object v1, p0, Lcom/byazt/uwt/ve$2;->tt:Ljava/lang/String;

    .line 106
    .line 107
    iget v3, p0, Lcom/byazt/uwt/ve$2;->ve:I

    .line 108
    .line 109
    iget-object v4, p0, Lcom/byazt/uwt/ve$2;->uj:Ljava/lang/StringBuffer;

    .line 110
    .line 111
    invoke-static {v1, v3, v2, v4}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;IZLjava/lang/StringBuffer;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    aput-boolean v1, v0, v2

    .line 116
    .line 117
    iget-object v0, p0, Lcom/byazt/uwt/ve$2;->tt:Ljava/lang/String;

    .line 118
    .line 119
    iget v1, p0, Lcom/byazt/uwt/ve$2;->ve:I

    .line 120
    .line 121
    invoke-static {v0, v1}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    return-void
.end method
