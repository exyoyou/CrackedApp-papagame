.class public Lcom/byazt/ay/c;
.super Lcom/byazt/pct/zm;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x78f,
        0x14
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/zm;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public n()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/ol/n;->c()Lcom/byazt/ol/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/pct/zm;->x:Lcom/byazt/nl/uj;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/pct/zm;->sp:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ol/n;->c(Lcom/byazt/nl/uj;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public uj()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/pct/zm;->x:Lcom/byazt/nl/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/ol/n;->c()Lcom/byazt/ol/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/byazt/pct/zm;->x:Lcom/byazt/nl/uj;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/byazt/pct/zm;->sp:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1, p0, v2}, Lcom/byazt/ol/n;->c(Lcom/byazt/nl/uj;Lcom/byazt/pct/zm;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
