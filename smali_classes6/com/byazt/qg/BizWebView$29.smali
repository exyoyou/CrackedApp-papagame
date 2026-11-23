.class public Lcom/byazt/qg/BizWebView$29;
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
        0x916
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qg/BizWebView;->setLayerType(ILandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Landroid/graphics/Paint;

.field public final synthetic ve:Lcom/byazt/qg/BizWebView;


# direct methods
.method public constructor <init>(Lcom/byazt/qg/BizWebView;ILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qg/BizWebView$29;->ve:Lcom/byazt/qg/BizWebView;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/qg/BizWebView$29;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/qg/BizWebView$29;->tt:Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BizWebView$29;->ve:Lcom/byazt/qg/BizWebView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/qg/MultiWebview;->tt:Lcom/byazt/nl/uj;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/qg/BizWebView$29;->ve:Lcom/byazt/qg/BizWebView;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/byazt/qg/MultiWebview;->tt:Lcom/byazt/nl/uj;

    .line 10
    .line 11
    iget v1, p0, Lcom/byazt/qg/BizWebView$29;->c:I

    .line 12
    .line 13
    iget-object v2, p0, Lcom/byazt/qg/BizWebView$29;->tt:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Lcom/byazt/nl/uj;->setLayerType(ILandroid/graphics/Paint;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
