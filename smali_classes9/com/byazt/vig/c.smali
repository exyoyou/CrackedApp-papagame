.class public Lcom/byazt/vig/c;
.super Lcom/byazt/vn/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5d2,
        0x14
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/vn/tt;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lcom/byazt/vig/c$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/byazt/vig/c$1;-><init>(Lcom/byazt/vig/c;Landroid/widget/ImageView;)V

    .line 6
    .line 7
    .line 8
    const/16 p1, 0x140

    .line 9
    .line 10
    invoke-static {v0, p2, v1, p1}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
