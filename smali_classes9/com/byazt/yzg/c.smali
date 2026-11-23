.class public abstract Lcom/byazt/yzg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x308,
        0x14
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public n:Z

.field public tt:Lcom/byazt/eia/sp;

.field public uj:I

.field public ve:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/yzg/c;->ve:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/byazt/yzg/c;->uj:I

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/byazt/yzg/c;->n:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yzg/c;->c:Landroid/content/Context;

    return-void
.end method

.method public c(Lcom/byazt/eia/sp;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/yzg/c;->tt:Lcom/byazt/eia/sp;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/yzg/c;->ve:Z

    return-void
.end method

.method public c()Z
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/byazt/yzg/c;->tt:Lcom/byazt/eia/sp;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/byazt/yzg/c;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-boolean v2, p0, Lcom/byazt/yzg/c;->ve:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/byazt/yzg/c;->c:Landroid/content/Context;

    const-string v2, "\"\u65e0\u7f51\u7edc\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\""

    invoke-static {v0, v2, v3}, Lcom/byazt/nr/h;->c(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/yzg/c;->ve()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    sput-boolean v1, Lcom/byazt/yzg/a;->c:Z

    .line 10
    sput-boolean v1, Lcom/byazt/yzg/a;->ve:Z

    :cond_3
    return v0

    :cond_4
    :goto_1
    const/16 v0, 0xa

    .line 11
    iput v0, p0, Lcom/byazt/yzg/c;->uj:I

    return v1
.end method

.method public tt()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/yzg/c;->uj:I

    return v0
.end method

.method public tt(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/yzg/c;->n:Z

    return-void
.end method

.method public uj()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/yzg/c;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/byazt/yzg/c;->tt:Lcom/byazt/eia/sp;

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    invoke-interface {v1}, Lcom/byazt/eia/sp;->u_()Lcom/byazt/ete/gt;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/byazt/ete/gt;->uj(Lcom/byazt/ete/gt;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eq v1, v2, :cond_4

    .line 22
    .line 23
    if-eqz v1, :cond_5

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    if-eq v1, v3, :cond_3

    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    if-eq v1, v3, :cond_2

    .line 30
    .line 31
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Lcom/byazt/omf/x;->ve(I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_5

    .line 40
    .line 41
    iget-object v0, p0, Lcom/byazt/yzg/c;->tt:Lcom/byazt/eia/sp;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/byazt/eia/sp;->z()Lcom/byazt/ete/n;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/byazt/ete/n;->sp()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-lez v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/byazt/ete/n;->sp()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/high16 v0, 0x6400000

    .line 61
    .line 62
    :goto_0
    iget-object v1, p0, Lcom/byazt/yzg/c;->tt:Lcom/byazt/eia/sp;

    .line 63
    .line 64
    invoke-interface {v1}, Lcom/byazt/eia/sp;->u_()Lcom/byazt/ete/gt;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/byazt/ete/gt;->n(Lcom/byazt/ete/gt;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-le v0, v1, :cond_5

    .line 73
    .line 74
    const/16 v2, 0xe

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/16 v2, 0xd

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    const/4 v1, 0x4

    .line 81
    if-eq v0, v1, :cond_5

    .line 82
    .line 83
    const/16 v2, 0xc

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1, v0}, Lcom/byazt/omf/x;->ve(I)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    const/16 v2, 0xb

    .line 97
    .line 98
    :cond_5
    :goto_1
    return v2
.end method

.method public abstract ve()Z
.end method
