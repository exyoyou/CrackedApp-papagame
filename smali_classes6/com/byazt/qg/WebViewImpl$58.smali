.class public Lcom/byazt/qg/WebViewImpl$58;
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
        0x16c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qg/WebViewImpl;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/qg/WebViewImpl;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/qg/WebViewImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qg/WebViewImpl$58;->a:Lcom/byazt/qg/WebViewImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/qg/WebViewImpl$58;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/qg/WebViewImpl$58;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/qg/WebViewImpl$58;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/qg/WebViewImpl$58;->uj:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/qg/WebViewImpl$58;->n:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/qg/WebViewImpl$58;->a:Lcom/byazt/qg/WebViewImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/qg/WebViewImpl$58;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/qg/WebViewImpl;->c(Lcom/byazt/qg/WebViewImpl;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/qg/WebViewImpl$58;->a:Lcom/byazt/qg/WebViewImpl;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/byazt/qg/WebViewImpl$58;->c:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/byazt/qg/WebViewImpl$58;->tt:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v5, p0, Lcom/byazt/qg/WebViewImpl$58;->ve:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v6, p0, Lcom/byazt/qg/WebViewImpl$58;->uj:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v7, p0, Lcom/byazt/qg/WebViewImpl$58;->n:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static/range {v2 .. v7}, Lcom/byazt/qg/WebViewImpl;->c(Lcom/byazt/qg/WebViewImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :catchall_0
    return-void
.end method
