.class public Lcom/byazt/qx/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x318
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qx/l;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qx/l;


# direct methods
.method public constructor <init>(Lcom/byazt/qx/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qx/l$2;->c:Lcom/byazt/qx/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/qx/l$2;->c:Lcom/byazt/qx/l;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/qx/l;->c(Lcom/byazt/qx/l;)Lcom/byazt/el/SSWebView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/qx/l$2;->c:Lcom/byazt/qx/l;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/qx/l;->c(Lcom/byazt/qx/l;)Lcom/byazt/el/SSWebView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/byazt/qx/l$2;->c:Lcom/byazt/qx/l;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/byazt/qx/l;->tt(Lcom/byazt/qx/l;)Lcom/byazt/omf/d;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/byazt/omf/d;->ve()Lcom/byazt/sy/i;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/byazt/sy/i;->L_()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method
