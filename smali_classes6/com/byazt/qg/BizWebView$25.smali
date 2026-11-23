.class public Lcom/byazt/qg/BizWebView$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x11b,
        0x91b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qg/BizWebView;->setSavePassword(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Lcom/byazt/qg/BizWebView;


# direct methods
.method public constructor <init>(Lcom/byazt/qg/BizWebView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qg/BizWebView$25;->tt:Lcom/byazt/qg/BizWebView;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/qg/BizWebView$25;->c:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BizWebView$25;->tt:Lcom/byazt/qg/BizWebView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/qg/MultiWebview;->tt:Lcom/byazt/nl/uj;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/qg/BizWebView$25;->tt:Lcom/byazt/qg/BizWebView;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/byazt/qg/MultiWebview;->tt:Lcom/byazt/nl/uj;

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/byazt/qg/BizWebView$25;->c:Z

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/byazt/nl/uj;->setSavePassword(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
