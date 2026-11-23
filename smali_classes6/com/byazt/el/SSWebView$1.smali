.class public Lcom/byazt/el/SSWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nr/zm$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x15c,
        0x307
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/el/SSWebView;->tt(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/el/SSWebView;


# direct methods
.method public constructor <init>(Lcom/byazt/el/SSWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/el/SSWebView$1;->c:Lcom/byazt/el/SSWebView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/byazt/el/SSWebView$1;->c:Lcom/byazt/el/SSWebView;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/byazt/el/SSWebView;->c(I)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/byazt/el/SSWebView$1;->c:Lcom/byazt/el/SSWebView;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/byazt/el/SSWebView;->c(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
