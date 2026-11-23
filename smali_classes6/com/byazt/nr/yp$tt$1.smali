.class public Lcom/byazt/nr/yp$tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x274,
        0x360
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nr/yp$tt;->c(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Landroid/webkit/WebView;

.field public final synthetic ve:Lcom/byazt/nr/yp$tt;


# direct methods
.method public constructor <init>(Lcom/byazt/nr/yp$tt;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nr/yp$tt$1;->ve:Lcom/byazt/nr/yp$tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/nr/yp$tt$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/nr/yp$tt$1;->tt:Landroid/webkit/WebView;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/nr/yp$tt$1;->c:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v2, "javascript:"

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/byazt/nr/yp$tt$1;->tt:Landroid/webkit/WebView;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/byazt/nr/yp$tt$1;->c:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    instance-of v0, v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 28
    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/byazt/nr/yp$tt$1;->tt:Landroid/webkit/WebView;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/byazt/nr/yp$tt$1;->c:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    .line 36
    :catchall_1
    :cond_1
    return-void
.end method
