.class Lnet/bither/util/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bither/util/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/bither/util/b;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lnet/bither/util/b;


# direct methods
.method constructor <init>(Lnet/bither/util/b;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$destDir",
            "val$quality",
            "val$context",
            "val$src"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/bither/util/b$c;->e:Lnet/bither/util/b;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/bither/util/b$c;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lnet/bither/util/b$c;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lnet/bither/util/b$c;->c:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lnet/bither/util/b$c;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
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
    iget-object v0, p0, Lnet/bither/util/b$c;->e:Lnet/bither/util/b;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, p1, v1}, Lnet/bither/util/b;->u(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lnet/bither/util/b$c;->e:Lnet/bither/util/b;

    .line 17
    .line 18
    iget-object v0, v0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lnet/bither/util/b$c;->e:Lnet/bither/util/b;

    .line 27
    .line 28
    iget-object v1, v0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, p1, v1}, Lnet/bither/util/b;->a(Lnet/bither/util/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

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
    iget-object v0, p0, Lnet/bither/util/b$c;->e:Lnet/bither/util/b;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-virtual {v0, p1, v1}, Lnet/bither/util/b;->u(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
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
    aget-object p2, p1, p2

    .line 35
    .line 36
    new-instance v0, Ljava/io/File;

    .line 37
    .line 38
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    array-length v0, p1

    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    const/4 v2, 0x5

    .line 48
    if-ne v0, v1, :cond_0

    .line 49
    .line 50
    aget-object v0, p1, v2

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    int-to-long v0, v0

    .line 57
    sget-wide v3, Lnet/bither/util/b;->g:J

    .line 58
    .line 59
    cmp-long v5, v0, v3

    .line 60
    .line 61
    if-gez v5, :cond_0

    .line 62
    .line 63
    invoke-direct {p0, p2}, Lnet/bither/util/b$c;->b(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    iget v0, p0, Lnet/bither/util/b$c;->b:I

    .line 68
    .line 69
    const/16 v1, 0xa

    .line 70
    .line 71
    if-le v0, v1, :cond_2

    .line 72
    .line 73
    aget-object p1, p1, v2

    .line 74
    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    int-to-long v3, p1

    .line 80
    sget-wide v5, Lnet/bither/util/b;->g:J

    .line 81
    .line 82
    sub-long/2addr v3, v5

    .line 83
    long-to-double v3, v3

    .line 84
    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    .line 85
    .line 86
    cmpg-double p1, v3, v5

    .line 87
    .line 88
    if-gez p1, :cond_1

    .line 89
    .line 90
    iget p1, p0, Lnet/bither/util/b$c;->b:I

    .line 91
    .line 92
    sub-int/2addr p1, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    iget p1, p0, Lnet/bither/util/b$c;->b:I

    .line 95
    .line 96
    sub-int/2addr p1, v1

    .line 97
    :goto_0
    iget-object v0, p0, Lnet/bither/util/b$c;->e:Lnet/bither/util/b;

    .line 98
    .line 99
    iget-object v1, p0, Lnet/bither/util/b$c;->c:Landroid/content/Context;

    .line 100
    .line 101
    iget-object v2, p0, Lnet/bither/util/b$c;->a:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v1, p2, v2, p1}, Lnet/bither/util/b;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-direct {p0, p2}, Lnet/bither/util/b$c;->b(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    iget-object p1, p0, Lnet/bither/util/b$c;->d:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lnet/bither/util/b$c;->a(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :goto_1
    return-void
.end method
