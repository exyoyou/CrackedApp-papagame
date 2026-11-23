.class public Lcom/byazt/omf/d$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x81d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/d;->reportJsbBridgeMissing(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic tt:Lcom/byazt/omf/d;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/d;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/d$11;->tt:Lcom/byazt/omf/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/omf/d$11;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "jsb_bridge_missing"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/byazt/omf/d$11;->c:Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->tt(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/byazt/omf/d$11;->tt:Lcom/byazt/omf/d;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/byazt/omf/d;->tt(Lcom/byazt/omf/d;)Lcom/byazt/ete/ic;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/byazt/omf/d$11;->tt:Lcom/byazt/omf/d;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/byazt/omf/d;->tt(Lcom/byazt/omf/d;)Lcom/byazt/ete/ic;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->a(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 39
    .line 40
    .line 41
    :cond_0
    return-object v0
.end method
