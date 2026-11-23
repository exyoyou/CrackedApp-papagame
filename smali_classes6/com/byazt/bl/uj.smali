.class public Lcom/byazt/bl/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/eo;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xb1,
        0xf
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/yj/eo;

.field public final tt:Lcom/byazt/ep/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/yj/eo;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/byazt/bl/uj;-><init>(Lcom/byazt/yj/eo;Lcom/byazt/ep/tt;)V

    return-void
.end method

.method public constructor <init>(Lcom/byazt/yj/eo;Lcom/byazt/ep/tt;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/byazt/bl/uj;->c:Lcom/byazt/yj/eo;

    .line 4
    iput-object p2, p0, Lcom/byazt/bl/uj;->tt:Lcom/byazt/ep/tt;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/bl/uj;->c:Lcom/byazt/yj/eo;

    invoke-interface {v0, p1}, Lcom/byazt/yj/c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/byazt/bl/uj;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/bl/uj;->c:Lcom/byazt/yj/eo;

    invoke-interface {v0}, Lcom/byazt/yj/c;->c()V

    return-void
.end method

.method public c(D)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/bl/uj;->c:Lcom/byazt/yj/eo;

    invoke-interface {v0, p1, p2}, Lcom/byazt/yj/c;->c(D)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/bl/uj;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/bl/uj;->c:Lcom/byazt/yj/eo;

    invoke-interface {v0, p1, p2}, Lcom/byazt/yj/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tt(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/byazt/bl/uj;->tt(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public tt(Ljava/lang/String;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/bl/uj;->c:Lcom/byazt/yj/eo;

    invoke-interface {v0, p1}, Lcom/byazt/yj/c;->tt(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
