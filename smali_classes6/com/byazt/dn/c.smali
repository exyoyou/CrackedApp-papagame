.class public Lcom/byazt/dn/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x23,
        0x14
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/kdw/tt;

.field public c:Lcom/byazt/nr/d;

.field public n:Lcom/byazt/xl/x;

.field public tt:Lcom/byazt/atv/sp;

.field public uj:Lcom/byazt/xl/sp;

.field public final ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/nr/d;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/dn/c;->c:Lcom/byazt/nr/d;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/byazt/dn/c;->ve:Lcom/byazt/ete/ic;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic c(Lcom/byazt/dn/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dn/c;->ve:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/dn/c;Lcom/byazt/ete/ic;Lorg/json/JSONObject;II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/dn/c;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;II)V

    return-void
.end method

.method private c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;II)V
    .locals 6

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "width"

    .line 9
    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "height"

    .line 10
    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 11
    :goto_0
    new-instance p4, Lcom/byazt/atv/tt$c;

    invoke-direct {p4}, Lcom/byazt/atv/tt$c;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/byazt/jlk/tt;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLjava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/byazt/xl/u$c;->c(Lorg/json/JSONObject;)Lcom/byazt/xl/u$c;

    .line 13
    new-instance p1, Lcom/byazt/ouz/gt;

    invoke-direct {p1}, Lcom/byazt/ouz/gt;-><init>()V

    invoke-virtual {p4, p1}, Lcom/byazt/atv/tt$c;->c(Lcom/byazt/sz/qy;)Lcom/byazt/atv/tt$c;

    int-to-float p1, p3

    .line 14
    invoke-virtual {p4, p1}, Lcom/byazt/atv/tt$c;->c(F)Lcom/byazt/atv/tt$c;

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p4, p1}, Lcom/byazt/atv/tt$c;->tt(F)Lcom/byazt/atv/tt$c;

    .line 16
    invoke-virtual {p4}, Lcom/byazt/atv/tt$c;->tt()Lcom/byazt/atv/tt;

    move-result-object p1

    .line 17
    new-instance p2, Lcom/byazt/atv/sp;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4, p1, p4}, Lcom/byazt/atv/sp;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/atv/tt;Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/byazt/dn/c;->tt:Lcom/byazt/atv/sp;

    .line 18
    iget-object p1, p0, Lcom/byazt/dn/c;->uj:Lcom/byazt/xl/sp;

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p2, p1}, Lcom/byazt/atv/n;->c(Lcom/byazt/xl/sp;)V

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/byazt/dn/c;->n:Lcom/byazt/xl/x;

    if-eqz p1, :cond_1

    .line 21
    iget-object p2, p0, Lcom/byazt/dn/c;->tt:Lcom/byazt/atv/sp;

    invoke-virtual {p2, p1}, Lcom/byazt/atv/n;->c(Lcom/byazt/xl/x;)V

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/byazt/dn/c;->a:Lcom/byazt/kdw/tt;

    if-eqz p1, :cond_2

    .line 23
    iget-object p2, p0, Lcom/byazt/dn/c;->tt:Lcom/byazt/atv/sp;

    invoke-virtual {p2, p1}, Lcom/byazt/atv/sp;->c(Lcom/byazt/kdw/tt;)V

    :cond_2
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/dn/c;)Lcom/byazt/xl/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dn/c;->uj:Lcom/byazt/xl/sp;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Lcom/byazt/kdw/tt;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/dn/c;->a:Lcom/byazt/kdw/tt;

    return-void
.end method

.method public c(Lcom/byazt/xl/sp;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/dn/c;->uj:Lcom/byazt/xl/sp;

    return-void
.end method

.method public c(Lcom/byazt/xl/x;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/dn/c;->n:Lcom/byazt/xl/x;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 4

    if-lez p5, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/dn/c;->c:Lcom/byazt/nr/d;

    const/4 v1, 0x1

    int-to-long v2, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7
    :cond_0
    new-instance p5, Lcom/byazt/dn/c$1;

    invoke-direct {p5, p0, p3, p4}, Lcom/byazt/dn/c$1;-><init>(Lcom/byazt/dn/c;II)V

    invoke-static {p1, p2, p5}, Lcom/byazt/xs/da;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)Lorg/json/JSONObject;

    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/byazt/dn/c;->uj:Lcom/byazt/xl/sp;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 v0, -0x2

    .line 12
    const-string v1, "render timeout"

    .line 13
    .line 14
    invoke-interface {p1, v0, v1}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method
