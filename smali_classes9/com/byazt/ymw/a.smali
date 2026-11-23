.class public Lcom/byazt/ymw/a;
.super Lcom/byazt/omf/nu$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ce,
        0x22
    }
.end annotation


# instance fields
.field public volatile c:Lcom/byazt/pop/c;

.field public tt:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/byazt/pop/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/nu$c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/ymw/a;->tt:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/byazt/ymw/a;->c:Lcom/byazt/pop/c;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ymw/a;)Lcom/byazt/pop/c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/ymw/a;->c:Lcom/byazt/pop/c;

    return-object p0
.end method

.method private c(Lcom/byazt/pop/c;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic c(Lcom/byazt/ymw/a;Lcom/byazt/pop/c;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/ymw/a;->c(Lcom/byazt/pop/c;)Z

    move-result p0

    return p0
.end method

.method private uj()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ymw/a;->tt:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/byazt/ymw/a;->tt:Landroid/os/Handler;

    .line 15
    .line 16
    :cond_0
    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/byazt/ymw/a;->c:Lcom/byazt/pop/c;

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/byazt/ymw/a;->uj()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/ymw/a$1;

    invoke-direct {v1, p0}, Lcom/byazt/ymw/a$1;-><init>(Lcom/byazt/ymw/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public c(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v8, p0

    .line 6
    iget-object v0, v8, Lcom/byazt/ymw/a;->c:Lcom/byazt/pop/c;

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/byazt/ymw/a;->uj()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/byazt/ymw/a$2;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/byazt/ymw/a$2;-><init>(Lcom/byazt/ymw/a;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public c(JLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/byazt/ymw/a;->c:Lcom/byazt/pop/c;

    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/byazt/ymw/a;->uj()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/byazt/ymw/a$5;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/byazt/ymw/a$5;-><init>(Lcom/byazt/ymw/a;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/byazt/ymw/a;->c:Lcom/byazt/pop/c;

    if-eqz v0, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/byazt/ymw/a;->uj()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/ymw/a$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/ymw/a$6;-><init>(Lcom/byazt/ymw/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public tt(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object v8, p0

    .line 2
    iget-object v0, v8, Lcom/byazt/ymw/a;->c:Lcom/byazt/pop/c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/byazt/ymw/a;->uj()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v9

    .line 10
    new-instance v10, Lcom/byazt/ymw/a$3;

    .line 11
    .line 12
    move-object v0, v10

    .line 13
    move-object v1, p0

    .line 14
    move-wide v2, p1

    .line 15
    move-wide v4, p3

    .line 16
    move-object/from16 v6, p5

    .line 17
    .line 18
    move-object/from16 v7, p6

    .line 19
    .line 20
    invoke-direct/range {v0 .. v7}, Lcom/byazt/ymw/a$3;-><init>(Lcom/byazt/ymw/a;JJLjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/byazt/ymw/a;->c:Lcom/byazt/pop/c;

    .line 4
    iput-object v0, p0, Lcom/byazt/ymw/a;->tt:Landroid/os/Handler;

    return-void
.end method

.method public ve(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v8, p0

    .line 1
    iget-object v0, v8, Lcom/byazt/ymw/a;->c:Lcom/byazt/pop/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/byazt/ymw/a;->uj()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/byazt/ymw/a$4;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/byazt/ymw/a$4;-><init>(Lcom/byazt/ymw/a;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
