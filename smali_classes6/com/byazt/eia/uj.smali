.class public Lcom/byazt/eia/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/eia/c;
.implements Lcom/byazt/eia/da;


# annotations
.annotation runtime Lcom/byazt/ls/tt;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x418,
        0xf
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "ext"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "path"
        tt = "DSL"
    .end annotation
.end field

.field public da:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "landing_page_source"
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "event_tag"
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "target_url"
    .end annotation
.end field

.field public sp:Landroid/content/Context;
    .annotation runtime Lcom/byazt/ls/c;
        c = "context"
    .end annotation
.end field

.field public tt:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "name"
        tt = "DSL"
    .end annotation
.end field

.field public uj:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "wc_miniapp_info"
    .end annotation
.end field

.field public ve:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "type"
        tt = "DSL"
    .end annotation
.end field

.field public x:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "convert_from_landing_page"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A_()Lcom/byazt/ete/hq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/uj;->uj:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/hq;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/hq;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public da()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eia/uj;->ve:I

    .line 2
    .line 3
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/uj;->sp:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/uj;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/uj;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eia/uj;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public uj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eia/uj;->da:I

    .line 2
    .line 3
    return v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/uj;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public w_()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/uj;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/uj;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
