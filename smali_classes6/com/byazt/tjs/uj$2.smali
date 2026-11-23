.class public Lcom/byazt/tjs/uj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4b9,
        0x61
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tjs/uj;->tt(Landroid/webkit/WebView;Lcom/byazt/tjs/tt;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/tjs/tt;

.field public final synthetic tt:Lcom/byazt/tjs/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/tjs/uj;Lcom/byazt/tjs/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tjs/uj$2;->tt:Lcom/byazt/tjs/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tjs/uj$2;->c:Lcom/byazt/tjs/tt;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/tjs/uj$2;->tt:Lcom/byazt/tjs/uj;

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/byazt/tjs/uj$2;->tt:Lcom/byazt/tjs/uj;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/byazt/tjs/uj;->c(Lcom/byazt/tjs/uj;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/byazt/tjs/uj$2;->c:Lcom/byazt/tjs/tt;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/tjs/uj;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/tjs/tt;)Landroid/webkit/WebResourceResponse;

    .line 16
    .line 17
    .line 18
    return-void
.end method
