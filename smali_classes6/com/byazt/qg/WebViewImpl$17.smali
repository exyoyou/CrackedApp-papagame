.class public Lcom/byazt/qg/WebViewImpl$17;
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
        0x12c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qg/WebViewImpl;->setLayerType(ILandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Landroid/graphics/Paint;

.field public final synthetic ve:Lcom/byazt/qg/WebViewImpl;


# direct methods
.method public constructor <init>(Lcom/byazt/qg/WebViewImpl;ILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qg/WebViewImpl$17;->ve:Lcom/byazt/qg/WebViewImpl;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/qg/WebViewImpl$17;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/qg/WebViewImpl$17;->tt:Landroid/graphics/Paint;

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
    :try_start_0
    iget-object v0, p0, Lcom/byazt/qg/WebViewImpl$17;->ve:Lcom/byazt/qg/WebViewImpl;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/qg/WebViewImpl$17;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/qg/WebViewImpl$17;->tt:Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/byazt/qg/WebViewImpl;->c(Lcom/byazt/qg/WebViewImpl;ILandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method
