.class public Lcom/byazt/qx/l$1;
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
        0x319
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
    iput-object p1, p0, Lcom/byazt/qx/l$1;->c:Lcom/byazt/qx/l;

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
    iget-object v0, p0, Lcom/byazt/qx/l$1;->c:Lcom/byazt/qx/l;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/qx/l;->c(Lcom/byazt/qx/l;)Lcom/byazt/el/SSWebView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
