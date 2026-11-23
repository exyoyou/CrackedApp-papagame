.class public Lcom/byazt/fiq/a$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x21a,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/fiq/a;->c(Ljava/util/Map;Lorg/json/JSONObject;Lcom/byazt/fiq/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic n:Lcom/byazt/fiq/a;

.field public final synthetic tt:Lorg/json/JSONObject;

.field public final synthetic uj:Lcom/byazt/fiq/a$tt;

.field public final synthetic ve:Lcom/byazt/fiq/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/fiq/a;Ljava/util/Map;Lorg/json/JSONObject;Lcom/byazt/fiq/ve;Lcom/byazt/fiq/a$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/fiq/a$1;->n:Lcom/byazt/fiq/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/fiq/a$1;->c:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/fiq/a$1;->tt:Lorg/json/JSONObject;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/fiq/a$1;->ve:Lcom/byazt/fiq/ve;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/fiq/a$1;->uj:Lcom/byazt/fiq/a$tt;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/byazt/fiq/a$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "wifiSwitchAndDoRequest onAvailable:"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "transmit_business"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/fiq/a$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/fiq/a$1;->n:Lcom/byazt/fiq/a;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/byazt/fiq/a$1;->c:Ljava/util/Map;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/byazt/fiq/a$1;->tt:Lorg/json/JSONObject;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/byazt/fiq/a$1;->ve:Lcom/byazt/fiq/ve;

    .line 34
    .line 35
    invoke-static {v0, p1, v1, v2, v3}, Lcom/byazt/fiq/a;->c(Lcom/byazt/fiq/a;Landroid/net/Network;Ljava/util/Map;Lorg/json/JSONObject;Lcom/byazt/fiq/ve;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/byazt/fiq/a$1;->uj:Lcom/byazt/fiq/a$tt;

    .line 39
    .line 40
    const-wide/16 v0, 0x3e8

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/byazt/fiq/a$tt;->c(J)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public onUnavailable()V
    .locals 9

    .line 1
    const-string v0, "transmit_business"

    .line 2
    .line 3
    const-string v1, "wifiSwitchAndDoRequest onUnavailable"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/fiq/a$1;->ve:Lcom/byazt/fiq/ve;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iget-object v0, p0, Lcom/byazt/fiq/a$1;->n:Lcom/byazt/fiq/a;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/fiq/a;->c(Lcom/byazt/fiq/a;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const v5, 0x1906c

    .line 18
    .line 19
    .line 20
    const v0, 0x1906c

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/byazt/fiq/a$c;->c(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    invoke-interface/range {v2 .. v8}, Lcom/byazt/fiq/ve;->c(ZIILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
