.class public Lcom/byazt/fqg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x808,
        0x14
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/byazt/omf/p;->ve:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/ut/uj;->getInstance()Lcom/byazt/ut/uj;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lcom/byazt/ut/da;->c:Lcom/byazt/ut/da;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/byazt/ut/uj;->setListener(Lcom/byazt/ut/i;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public c()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/byazt/omf/p;->uj:I

    .line 2
    .line 3
    const/16 v1, 0x1d4c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    sget-object v0, Lcom/byazt/ut/da;->c:Lcom/byazt/ut/da;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/ut/da;->c()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
