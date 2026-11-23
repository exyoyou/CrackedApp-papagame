.class public Lcom/byazt/qx/cu;
.super Lcom/byazt/pct/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x79
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/pct/uj<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/omf/d;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Lcom/byazt/ete/ic;

.field public uj:J

.field public ve:Lcom/byazt/at/a;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/d;Lcom/byazt/ete/ic;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/uj;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/qx/cu;->c:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/byazt/qx/cu;->tt:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic c(Lcom/byazt/qx/cu;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/qx/cu;->uj:J

    return-wide v0
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/omf/d;Lcom/byazt/ete/ic;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/byazt/qx/cu$1;

    invoke-direct {v0, p1, p2}, Lcom/byazt/qx/cu$1;-><init>(Lcom/byazt/omf/d;Lcom/byazt/ete/ic;)V

    const-string p1, "requestVideoDelayCallback"

    invoke-virtual {p0, p1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/uj$tt;)Lcom/byazt/pct/nu;

    return-void
.end method

.method public static synthetic c(Lcom/byazt/qx/cu;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/pct/uj;->c(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lcom/byazt/pct/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/cu;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    iget-object p2, p0, Lcom/byazt/qx/cu;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/omf/d;

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/byazt/qx/cu$2;

    invoke-direct {v0, p0}, Lcom/byazt/qx/cu$2;-><init>(Lcom/byazt/qx/cu;)V

    iput-object v0, p0, Lcom/byazt/qx/cu;->ve:Lcom/byazt/at/a;

    const-string v0, "delay"

    const/4 v1, -0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_1

    return-void

    :cond_1
    int-to-long v0, p1

    .line 8
    iput-wide v0, p0, Lcom/byazt/qx/cu;->uj:J

    .line 9
    invoke-virtual {p2}, Lcom/byazt/omf/d;->ve()Lcom/byazt/sy/i;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/byazt/omf/d;->ve()Lcom/byazt/sy/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/sy/i;->K_()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/byazt/qx/cu;->ve:Lcom/byazt/at/a;

    invoke-interface {p1}, Lcom/byazt/at/a;->c()V

    return-void

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/byazt/qx/cu;->ve:Lcom/byazt/at/a;

    invoke-virtual {p2, p1}, Lcom/byazt/omf/d;->c(Lcom/byazt/at/a;)V

    return-void

    .line 12
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/pct/uj;->ve()V

    return-void
.end method

.method public uj()V
    .locals 0

    return-void
.end method
