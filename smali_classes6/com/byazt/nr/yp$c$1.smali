.class public Lcom/byazt/nr/yp$c$1;
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
        0x504
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nr/yp$c;->c(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/webkit/WebView;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/nr/yp$c;


# direct methods
.method public constructor <init>(Lcom/byazt/nr/yp$c;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nr/yp$c$1;->ve:Lcom/byazt/nr/yp$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/nr/yp$c$1;->c:Landroid/webkit/WebView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/nr/yp$c$1;->tt:Ljava/lang/String;

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
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/nr/yp$c$1;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/nr/yp$c$1;->tt:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    return-void
.end method
