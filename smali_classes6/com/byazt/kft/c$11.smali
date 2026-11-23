.class public Lcom/byazt/kft/c$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/cph/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0x4d0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/c;->tt(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/cph/tt$c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/kft/c;


# direct methods
.method public constructor <init>(Lcom/byazt/kft/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/c$11;->tt:Lcom/byazt/kft/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kft/c$11;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 2

    .line 4
    iget-object p1, p0, Lcom/byazt/kft/c$11;->tt:Lcom/byazt/kft/c;

    invoke-static {p1}, Lcom/byazt/kft/c;->zm(Lcom/byazt/kft/c;)I

    .line 5
    iget-object p1, p0, Lcom/byazt/kft/c$11;->tt:Lcom/byazt/kft/c;

    invoke-static {p1}, Lcom/byazt/kft/c;->yv(Lcom/byazt/kft/c;)I

    move-result p1

    const/4 p2, 0x3

    if-gt p1, p2, :cond_0

    .line 6
    iget-object p1, p0, Lcom/byazt/kft/c$11;->tt:Lcom/byazt/kft/c;

    iget-object p2, p0, Lcom/byazt/kft/c$11;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/byazt/kft/c;->ve(Lcom/byazt/kft/c;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Lcom/byazt/jzl/ve;

    const/16 p2, 0x2713

    const-string v0, "\u5e7f\u544a\u4e3b\u56feurl\u52a0\u8f7d\u5931\u8d25"

    const v1, 0xea68

    invoke-direct {p1, v1, p2, v0}, Lcom/byazt/jzl/ve;-><init>(IILjava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/byazt/kft/c$11;->tt:Lcom/byazt/kft/c;

    invoke-static {p2, p1}, Lcom/byazt/kft/c;->c(Lcom/byazt/kft/c;Lcom/byazt/jzl/ve;)V

    return-void
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/kft/c$11;->tt:Lcom/byazt/kft/c;

    invoke-static {v0, p1}, Lcom/byazt/kft/c;->c(Lcom/byazt/kft/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p0, Lcom/byazt/kft/c$11;->tt:Lcom/byazt/kft/c;

    invoke-static {p1}, Lcom/byazt/kft/c;->qy(Lcom/byazt/kft/c;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/byazt/kft/c$11;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method
