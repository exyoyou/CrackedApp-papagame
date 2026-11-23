.class public Lcom/byazt/gq/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ou/rl;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x1e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gq/x;->c(Lcom/byazt/ou/rl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ou/rl;

.field public final synthetic tt:Lcom/byazt/gq/x;


# direct methods
.method public constructor <init>(Lcom/byazt/gq/x;Lcom/byazt/ou/rl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gq/x$1;->tt:Lcom/byazt/gq/x;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/gq/x$1;->c:Lcom/byazt/ou/rl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gq/x$1;->c:Lcom/byazt/ou/rl;

    invoke-interface {v0}, Lcom/byazt/ou/rl;->c()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-static {}, Lcom/byazt/gq/t;->ve()Lcom/byazt/ou/u;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/gq/x$1;->tt:Lcom/byazt/gq/x;

    iget-object v3, v3, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v3, v3, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    const-string v4, "\u60a8\u5df2\u7981\u6b62\u4f7f\u7528\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u6388\u6743\u540e\u518d\u4e0b\u8f7d"

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 4
    invoke-interface/range {v0 .. v6}, Lcom/byazt/ou/u;->c(ILandroid/content/Context;Lcom/byazt/su/DownloadModel;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 5
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/gq/x$1;->tt:Lcom/byazt/gq/x;

    invoke-static {v1}, Lcom/byazt/gq/x;->c(Lcom/byazt/gq/x;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/zn/c;->tt(JI)V

    .line 6
    iget-object v0, p0, Lcom/byazt/gq/x$1;->c:Lcom/byazt/ou/rl;

    invoke-interface {v0, p1}, Lcom/byazt/ou/rl;->c(Ljava/lang/String;)V

    return-void
.end method
