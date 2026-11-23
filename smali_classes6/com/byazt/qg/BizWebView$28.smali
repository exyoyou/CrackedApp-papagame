.class public Lcom/byazt/qg/BizWebView$28;
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
        0x91f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qg/BizWebView;->computeScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qg/BizWebView;


# direct methods
.method public constructor <init>(Lcom/byazt/qg/BizWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qg/BizWebView$28;->c:Lcom/byazt/qg/BizWebView;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BizWebView$28;->c:Lcom/byazt/qg/BizWebView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/qg/MultiWebview;->tt:Lcom/byazt/nl/uj;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/qg/BizWebView$28;->c:Lcom/byazt/qg/BizWebView;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/byazt/qg/MultiWebview;->tt:Lcom/byazt/nl/uj;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/nl/uj;->computeScroll()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
