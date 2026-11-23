.class public Lcom/byazt/iu/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7f,
        0xd
    }
.end annotation


# instance fields
.field public c:I

.field public n:Lcom/byazt/dx/c;

.field public tt:Lcom/byazt/nhd/n;

.field public uj:Lcom/byazt/dx/c;

.field public ve:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x2

    .line 5
    iput v0, p0, Lcom/byazt/iu/tt;->ve:I

    .line 6
    .line 7
    iput p1, p0, Lcom/byazt/iu/tt;->c:I

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/byazt/iu/tt;->uj()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private uj()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/iu/tt;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    new-instance v1, Lcom/byazt/vvt/uj;

    .line 11
    .line 12
    invoke-direct {v1, p0, v0}, Lcom/byazt/vvt/uj;-><init>(Lcom/byazt/iu/tt;I)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/byazt/iu/tt;->n:Lcom/byazt/dx/c;

    .line 16
    .line 17
    new-instance v0, Lcom/byazt/wb/tt;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/byazt/wb/tt;-><init>(Lcom/byazt/iu/tt;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/byazt/iu/tt;->uj:Lcom/byazt/dx/c;

    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_1
    new-instance v0, Lcom/byazt/cf/c;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/byazt/cf/c;-><init>(Lcom/byazt/iu/tt;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/byazt/iu/tt;->uj:Lcom/byazt/dx/c;

    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_2
    new-instance v0, Lcom/byazt/cf/a;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/byazt/cf/a;-><init>(Lcom/byazt/iu/tt;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/byazt/iu/tt;->uj:Lcom/byazt/dx/c;

    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_3
    new-instance v0, Lcom/byazt/ob/tt;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/byazt/ob/tt;-><init>(Lcom/byazt/iu/tt;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/byazt/iu/tt;->uj:Lcom/byazt/dx/c;

    .line 47
    .line 48
    :goto_0
    return-void

    .line 49
    :pswitch_4
    new-instance v1, Lcom/byazt/vvt/uj;

    .line 50
    .line 51
    invoke-direct {v1, p0, v0}, Lcom/byazt/vvt/uj;-><init>(Lcom/byazt/iu/tt;I)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/byazt/iu/tt;->n:Lcom/byazt/dx/c;

    .line 55
    .line 56
    new-instance v0, Lcom/byazt/pro/tt;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lcom/byazt/pro/tt;-><init>(Lcom/byazt/iu/tt;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/byazt/iu/tt;->uj:Lcom/byazt/dx/c;

    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    new-instance v1, Lcom/byazt/vvt/uj;

    .line 65
    .line 66
    invoke-direct {v1, p0, v0}, Lcom/byazt/vvt/uj;-><init>(Lcom/byazt/iu/tt;I)V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lcom/byazt/iu/tt;->n:Lcom/byazt/dx/c;

    .line 70
    .line 71
    new-instance v0, Lcom/byazt/sg/tt;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/byazt/sg/tt;-><init>(Lcom/byazt/iu/tt;)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/byazt/iu/tt;->uj:Lcom/byazt/dx/c;

    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ve()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/iu/tt;->c()Lcom/byazt/ete/x$ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x2

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->sp()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->br()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->uj()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 32
    return v0
.end method


# virtual methods
.method public c(Z)Lcom/byazt/dx/c;
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/iu/tt;->n:Lcom/byazt/dx/c;

    if-eqz p1, :cond_0

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/byazt/iu/tt;->uj:Lcom/byazt/dx/c;

    return-object p1
.end method

.method public c()Lcom/byazt/ete/x$ve;
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/iu/tt;->c:I

    invoke-static {v0}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/byazt/ete/ic;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/apd/tt;->ve(Lcom/byazt/ete/ic;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public tt()Lcom/byazt/nhd/n;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/iu/tt;->ve()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/byazt/iu/tt;->tt:Lcom/byazt/nhd/n;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v2, p0, Lcom/byazt/iu/tt;->ve:I

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    const/4 v1, -0x1

    .line 15
    if-eq v0, v1, :cond_4

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    iget v1, p0, Lcom/byazt/iu/tt;->c:I

    .line 26
    .line 27
    invoke-static {v1}, Lcom/byazt/iu/c;->tt(I)Lcom/byazt/nhd/n;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/byazt/iu/tt;->tt:Lcom/byazt/nhd/n;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v1, Lcom/byazt/nhd/ve;

    .line 35
    .line 36
    iget v2, p0, Lcom/byazt/iu/tt;->c:I

    .line 37
    .line 38
    invoke-direct {v1, v2}, Lcom/byazt/nhd/ve;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/byazt/iu/tt;->tt:Lcom/byazt/nhd/n;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    new-instance v1, Lcom/byazt/nhd/uj;

    .line 45
    .line 46
    iget v2, p0, Lcom/byazt/iu/tt;->c:I

    .line 47
    .line 48
    invoke-direct {v1, v2}, Lcom/byazt/nhd/uj;-><init>(I)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/byazt/iu/tt;->tt:Lcom/byazt/nhd/n;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    new-instance v1, Lcom/byazt/nhd/c;

    .line 55
    .line 56
    iget v2, p0, Lcom/byazt/iu/tt;->c:I

    .line 57
    .line 58
    invoke-direct {v1, v2}, Lcom/byazt/nhd/c;-><init>(I)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/byazt/iu/tt;->tt:Lcom/byazt/nhd/n;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    new-instance v1, Lcom/byazt/nhd/tt;

    .line 65
    .line 66
    iget v2, p0, Lcom/byazt/iu/tt;->c:I

    .line 67
    .line 68
    invoke-direct {v1, v2}, Lcom/byazt/nhd/tt;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/byazt/iu/tt;->tt:Lcom/byazt/nhd/n;

    .line 72
    .line 73
    :goto_0
    iput v0, p0, Lcom/byazt/iu/tt;->ve:I

    .line 74
    .line 75
    iget-object v0, p0, Lcom/byazt/iu/tt;->tt:Lcom/byazt/nhd/n;

    .line 76
    .line 77
    return-object v0
.end method
