.class public Lcom/byazt/da/uj;
.super Lcom/byazt/pbu/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x48,
        0xf
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/hz/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/sp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pbu/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/da/uj;->c:Lcom/byazt/hz/sp;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/byazt/da/uj;)Lcom/byazt/hz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/da/uj;->c:Lcom/byazt/hz/sp;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public loadByAdm(Ljava/lang/String;Lcom/byazt/nh/tt;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/da/uj;->c:Lcom/byazt/hz/sp;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/byazt/da/uj$1;

    .line 14
    .line 15
    invoke-direct {v1, p0, p2}, Lcom/byazt/da/uj$1;-><init>(Lcom/byazt/da/uj;Lcom/byazt/nh/tt;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Lcom/byazt/hz/sp;->c(Ljava/lang/String;Lcom/byazt/fy/tt;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string p1, "TMe"

    .line 23
    .line 24
    const-string p2, "adm \u53c2\u6570\u9519\u8bef \u6216\u8005 drawTokenInfo is null"

    .line 25
    .line 26
    invoke-static {p1, p2}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public loadDrawAdByAdm(Ljava/lang/String;Lcom/byazt/nh/tt;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/byazt/da/uj;->loadByAdm(Ljava/lang/String;Lcom/byazt/nh/tt;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
