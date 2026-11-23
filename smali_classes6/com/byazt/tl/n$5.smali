.class public Lcom/byazt/tl/n$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sml/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d3,
        0x246
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tl/n;->tt(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/tl/n;


# direct methods
.method public constructor <init>(Lcom/byazt/tl/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tl/n$5;->c:Lcom/byazt/tl/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/byazt/tl/n$5;->c:Lcom/byazt/tl/n;

    invoke-static {p1}, Lcom/byazt/tl/n;->ve(Lcom/byazt/tl/n;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "\u53cd\u9988\u5931\u8d25\r\n \u8bf7\u91cd\u65b0\u590d\u5236"

    goto :goto_0

    :cond_0
    const-string p2, "\u53cd\u9988\u5931\u8d25"

    :goto_0
    invoke-static {p1, p2}, Lcom/byazt/tl/n;->c(Lcom/byazt/tl/n;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/tl/n$5;->c:Lcom/byazt/tl/n;

    invoke-static {p1}, Lcom/byazt/tl/n;->ve(Lcom/byazt/tl/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5df2\u590d\u5236\u5e7f\u544aID\r\n\u8bf7\u524d\u5f80\u5e94\u7528\u5185\u4e0a\u62a5\u95ee\u9898"

    goto :goto_0

    :cond_0
    const-string v0, "\u53cd\u9988\u4e0a\u4f20\u6210\u529f\uff01"

    :goto_0
    invoke-static {p1, v0}, Lcom/byazt/tl/n;->c(Lcom/byazt/tl/n;Ljava/lang/String;)V

    return-void
.end method
