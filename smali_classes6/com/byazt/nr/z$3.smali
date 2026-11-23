.class public final Lcom/byazt/nr/z$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/gr;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x274,
        0x1e5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qr/c;

.field public final synthetic tt:I

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/qr/c;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nr/z$3;->c:Lcom/byazt/qr/c;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/nr/z$3;->tt:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/nr/z$3;->ve:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/nr/z$3;->ve:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/byazt/nr/z$3;->c:Lcom/byazt/qr/c;

    .line 4
    .line 5
    iget p3, p0, Lcom/byazt/nr/z$3;->tt:I

    .line 6
    .line 7
    invoke-static {p1, p2, p3}, Lcom/byazt/nr/z;->c(Ljava/lang/String;Lcom/byazt/qr/c;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onSuccess(Lcom/byazt/yj/m;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/byazt/yj/m;->getResult()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/graphics/Bitmap;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/nr/z$3;->c:Lcom/byazt/qr/c;

    .line 14
    .line 15
    iget v1, p0, Lcom/byazt/nr/z$3;->tt:I

    .line 16
    .line 17
    invoke-static {p1, v0, v1}, Lcom/byazt/nr/z;->c(Landroid/graphics/Bitmap;Lcom/byazt/qr/c;I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/byazt/nr/z$3;->ve:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/nr/z$3;->c:Lcom/byazt/qr/c;

    .line 24
    .line 25
    iget v1, p0, Lcom/byazt/nr/z$3;->tt:I

    .line 26
    .line 27
    invoke-static {p1, v0, v1}, Lcom/byazt/nr/z;->c(Ljava/lang/String;Lcom/byazt/qr/c;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
