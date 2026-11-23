.class public Lcom/byazt/omf/gr$17;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x97f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/gr;->tt(Lorg/json/JSONObject;Lcom/byazt/omf/gu$ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/omf/gu$ve;

.field public final synthetic tt:Lcom/byazt/omf/gr;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/gr;Lcom/byazt/omf/gu$ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/gr$17;->tt:Lcom/byazt/omf/gr;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/omf/gr$17;->c:Lcom/byazt/omf/gu$ve;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/omf/gr$17;->c:Lcom/byazt/omf/gu$ve;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lcom/byazt/omf/gu$ve;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/byazt/omf/gr$17;->c:Lcom/byazt/omf/gu$ve;

    if-eqz p1, :cond_0

    const/16 v0, 0x259

    .line 4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/byazt/omf/gu$ve;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
