.class public Lcom/byazt/jwd/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x301,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/jwd/tt;->c(Lcom/byazt/nl/uj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nl/uj;

.field public final synthetic tt:Lcom/byazt/jwd/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/jwd/tt;Lcom/byazt/nl/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jwd/tt$1;->tt:Lcom/byazt/jwd/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/jwd/tt$1;->c:Lcom/byazt/nl/uj;

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
    iget-object v0, p0, Lcom/byazt/jwd/tt$1;->tt:Lcom/byazt/jwd/tt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/jwd/tt$1;->c:Lcom/byazt/nl/uj;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/byazt/nl/uj;->getWebView()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/jwd/tt;->c(Landroid/webkit/WebView;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
