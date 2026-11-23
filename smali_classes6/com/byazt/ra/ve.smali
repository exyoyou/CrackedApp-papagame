.class public Lcom/byazt/ra/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/oh/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a9,
        0x36
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/hz/x;

.field public tt:Lcom/byazt/ch/c;

.field public uj:Lcom/byazt/ra/c;

.field public ve:Lcom/byazt/nh/uj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/nh/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/ra/ve;->tt:Lcom/byazt/ch/c;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance p2, Lcom/byazt/hz/x;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lcom/byazt/hz/x;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/byazt/ra/ve;->c:Lcom/byazt/hz/x;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/byazt/ra/ve;->ve:Lcom/byazt/nh/uj;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ra/ve;)Lcom/byazt/nh/uj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ra/ve;->ve:Lcom/byazt/nh/uj;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/ra/ve;Lcom/byazt/ra/c;)Lcom/byazt/ra/c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ra/ve;->uj:Lcom/byazt/ra/c;

    return-object p1
.end method

.method public static synthetic tt(Lcom/byazt/ra/ve;)Lcom/byazt/ra/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ra/ve;->uj:Lcom/byazt/ra/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/ra/ve;)Lcom/byazt/hz/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ra/ve;->c:Lcom/byazt/hz/x;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 3
    new-instance v0, Lcom/byazt/ll/tt;

    iget-object v1, p0, Lcom/byazt/ra/ve;->tt:Lcom/byazt/ch/c;

    invoke-virtual {v1}, Lcom/byazt/ch/c;->eo()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ra/ve;->tt:Lcom/byazt/ch/c;

    invoke-virtual {v2}, Lcom/byazt/dj/tt;->or()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v0, v3, v1, v2}, Lcom/byazt/ll/tt;-><init>(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/byazt/ra/ve;->c:Lcom/byazt/hz/x;

    new-instance v2, Lcom/byazt/ra/ve$1;

    invoke-direct {v2, p0}, Lcom/byazt/ra/ve$1;-><init>(Lcom/byazt/ra/ve;)V

    invoke-virtual {v1, v0, v2}, Lcom/byazt/hz/x;->c(Lcom/byazt/ll/tt;Lcom/byazt/ln/tt;)V

    return-void
.end method
