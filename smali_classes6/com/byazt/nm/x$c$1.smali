.class public Lcom/byazt/nm/x$c$1;
.super Lcom/byazt/bf/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x936
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nm/x$c;->c(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/x$c;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/x$c;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/x$c$1;->c:Lcom/byazt/nm/x$c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/bf/tt;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c$1;->c:Lcom/byazt/nm/x$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/nm/x$c;->c(Lcom/byazt/nm/x$c;)Lcom/byazt/me/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/nm/x$c$1;->c:Lcom/byazt/nm/x$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/nm/x$c;->tt(Lcom/byazt/nm/x$c;)Lcom/byazt/me/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/byazt/me/i;->c(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
