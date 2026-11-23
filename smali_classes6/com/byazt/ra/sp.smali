.class public Lcom/byazt/ra/sp;
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
        0x5b
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/hz/c;

.field public tt:Lcom/byazt/ch/c;

.field public uj:Lcom/byazt/ra/n;

.field public ve:Lcom/byazt/nh/uj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/nh/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/ra/sp;->tt:Lcom/byazt/ch/c;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance p2, Lcom/byazt/hz/c;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lcom/byazt/hz/c;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/byazt/ra/sp;->c:Lcom/byazt/hz/c;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/byazt/ra/sp;->ve:Lcom/byazt/nh/uj;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ra/sp;)Lcom/byazt/nh/uj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ra/sp;->ve:Lcom/byazt/nh/uj;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/ra/sp;Lcom/byazt/ra/n;)Lcom/byazt/ra/n;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ra/sp;->uj:Lcom/byazt/ra/n;

    return-object p1
.end method

.method public static synthetic tt(Lcom/byazt/ra/sp;)Lcom/byazt/ra/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ra/sp;->uj:Lcom/byazt/ra/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/ra/sp;)Lcom/byazt/hz/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ra/sp;->c:Lcom/byazt/hz/c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 3
    new-instance v0, Lcom/byazt/ll/tt;

    iget-object v1, p0, Lcom/byazt/ra/sp;->tt:Lcom/byazt/ch/c;

    invoke-virtual {v1}, Lcom/byazt/ch/c;->eo()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ra/sp;->tt:Lcom/byazt/ch/c;

    invoke-virtual {v2}, Lcom/byazt/dj/tt;->or()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v0, v3, v1, v2}, Lcom/byazt/ll/tt;-><init>(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/byazt/ra/sp;->c:Lcom/byazt/hz/c;

    new-instance v2, Lcom/byazt/ra/sp$1;

    invoke-direct {v2, p0}, Lcom/byazt/ra/sp$1;-><init>(Lcom/byazt/ra/sp;)V

    invoke-virtual {v1, v0, v2}, Lcom/byazt/hz/c;->c(Lcom/byazt/ll/tt;Lcom/byazt/bi/tt;)V

    return-void
.end method
