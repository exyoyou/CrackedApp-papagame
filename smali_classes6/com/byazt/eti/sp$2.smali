.class public Lcom/byazt/eti/sp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/eti/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x180,
        0x250
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/eti/sp;->tt(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/eti/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/eti/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/eti/sp$2;->c:Lcom/byazt/eti/sp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/eti/sp$tt;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/byazt/eti/sp$tt;->ve:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/nr/c;->ve(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->bn()Lcom/byazt/ete/hd;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-virtual {v0, v1}, Lcom/byazt/ete/hd;->uj(I)V

    .line 22
    .line 23
    .line 24
    const-string v0, "embeded_ad"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/byazt/ddx/uj;->ve(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    return-void
.end method
