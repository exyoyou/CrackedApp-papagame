.class Lnet/bither/util/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bither/util/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/bither/util/b;->A(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashMap;Lnet/bither/util/b$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Ljava/util/HashMap;

.field final synthetic f:Lnet/bither/util/b$f;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Lnet/bither/util/b$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$destDir",
            "val$quality",
            "val$context",
            "val$srcImages",
            "val$tempHash",
            "val$optimListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/bither/util/b$d;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lnet/bither/util/b$d;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lnet/bither/util/b$d;->c:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lnet/bither/util/b$d;->d:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Lnet/bither/util/b$d;->e:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p6, p0, Lnet/bither/util/b$d;->f:Lnet/bither/util/b$f;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "dest"
        }
    .end annotation

    .line 1
    const-string v0, "OptimResultHandler-->optimSuccess"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lnet/bither/util/b$d;->e:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lnet/bither/util/b$d;->e:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-static {p1}, Lnet/bither/util/b;->c(Ljava/util/HashMap;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lnet/bither/util/b$d;->f:Lnet/bither/util/b$f;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p2, p0, Lnet/bither/util/b$d;->d:Ljava/util/List;

    .line 32
    .line 33
    iget-object v0, p0, Lnet/bither/util/b$d;->e:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-static {p2, v0, p1}, Lnet/bither/util/b;->d(Ljava/util/List;Ljava/util/HashMap;Lnet/bither/util/b$f;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    const-string v0, "OptimResultHandler-->optimFailure"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onResult(ZLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "optimized",
            "msg"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "OptimResultHandler-->msg:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    const-string p1, ","

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x0

    .line 34
    aget-object v1, p1, p2

    .line 35
    .line 36
    array-length p2, p1

    .line 37
    const/16 v0, 0x8

    .line 38
    .line 39
    const/4 v2, 0x5

    .line 40
    if-ne p2, v0, :cond_0

    .line 41
    .line 42
    aget-object p2, p1, v2

    .line 43
    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    int-to-long v3, p2

    .line 49
    sget-wide v5, Lnet/bither/util/b;->g:J

    .line 50
    .line 51
    cmp-long p2, v3, v5

    .line 52
    .line 53
    if-gez p2, :cond_0

    .line 54
    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lnet/bither/util/b$d;->a:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p2, "/"

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    new-instance p2, Ljava/io/File;

    .line 71
    .line 72
    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p0, v1, p1}, Lnet/bither/util/b$d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_0
    iget p2, p0, Lnet/bither/util/b$d;->b:I

    .line 91
    .line 92
    const/16 v0, 0xa

    .line 93
    .line 94
    if-le p2, v0, :cond_2

    .line 95
    .line 96
    aget-object p1, p1, v2

    .line 97
    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    int-to-long p1, p1

    .line 103
    sget-wide v3, Lnet/bither/util/b;->g:J

    .line 104
    .line 105
    sub-long/2addr p1, v3

    .line 106
    long-to-double p1, p1

    .line 107
    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    .line 108
    .line 109
    cmpg-double v5, p1, v3

    .line 110
    .line 111
    if-gez v5, :cond_1

    .line 112
    .line 113
    iget p1, p0, Lnet/bither/util/b$d;->b:I

    .line 114
    .line 115
    sub-int/2addr p1, v2

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    iget p1, p0, Lnet/bither/util/b$d;->b:I

    .line 118
    .line 119
    sub-int/2addr p1, v0

    .line 120
    :goto_0
    move v3, p1

    .line 121
    iget-object v0, p0, Lnet/bither/util/b$d;->c:Landroid/content/Context;

    .line 122
    .line 123
    iget-object v2, p0, Lnet/bither/util/b$d;->a:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v4, p0, Lnet/bither/util/b$d;->d:Ljava/util/List;

    .line 126
    .line 127
    iget-object v5, p0, Lnet/bither/util/b$d;->e:Ljava/util/HashMap;

    .line 128
    .line 129
    iget-object v6, p0, Lnet/bither/util/b$d;->f:Lnet/bither/util/b$f;

    .line 130
    .line 131
    invoke-static/range {v0 .. v6}, Lnet/bither/util/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashMap;Lnet/bither/util/b$f;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {p0}, Lnet/bither/util/b$d;->a()V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {p0}, Lnet/bither/util/b$d;->a()V

    .line 140
    .line 141
    .line 142
    :goto_1
    return-void
.end method
