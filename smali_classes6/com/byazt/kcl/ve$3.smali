.class public Lcom/byazt/kcl/ve$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ya/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x173,
        0x15b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kcl/ve;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic tt:Lcom/byazt/kcl/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/kcl/ve;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kcl/ve$3;->tt:Lcom/byazt/kcl/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kcl/ve$3;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onSend(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/ve$3;->c:Lorg/json/JSONObject;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/kcl/ve$3;->tt:Lcom/byazt/kcl/ve;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/byazt/kcl/ve;->c(Lcom/byazt/kcl/ve;)Lcom/byazt/ete/ic;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/byazt/ic/c;->c(Lorg/json/JSONObject;Lcom/byazt/ete/ic;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "ad_extra_data"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/kcl/ve$3;->c:Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    return-void
.end method
