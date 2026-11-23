.class public Lcom/byazt/yih/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/gr;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2da,
        0x202
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yih/n;->c(Lcom/byazt/qt/c;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/yj/gr<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qt/c;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/yih/n;


# direct methods
.method public constructor <init>(Lcom/byazt/yih/n;Lcom/byazt/qt/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yih/n$2;->ve:Lcom/byazt/yih/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/yih/n$2;->c:Lcom/byazt/qt/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/yih/n$2;->tt:Ljava/lang/String;

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

    return-void
.end method

.method public onSuccess(Lcom/byazt/yj/m;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/yj/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

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
    const/high16 v0, 0x41200000    # 10.0f

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/byazt/yih/n;->c(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/byazt/yih/n$2;->c:Lcom/byazt/qt/c;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/byazt/qt/c;->ve()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const-string v1, "notification"

    .line 28
    .line 29
    iget-object v2, p0, Lcom/byazt/yih/n$2;->c:Lcom/byazt/qt/c;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    const-string v3, "open"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v3, "install"

    .line 37
    .line 38
    :goto_0
    const-string v4, "othershow"

    .line 39
    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v6, p0, Lcom/byazt/yih/n$2;->tt:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v6, "_"

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v6, p0, Lcom/byazt/yih/n$2;->c:Lcom/byazt/qt/c;

    .line 56
    .line 57
    invoke-virtual {v6}, Lcom/byazt/qt/c;->ve()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const-string v6, "success"

    .line 69
    .line 70
    invoke-static/range {v1 .. v6}, Lcom/byazt/yih/n;->c(Ljava/lang/String;Lcom/byazt/qt/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/byazt/yih/n$2$1;

    .line 74
    .line 75
    invoke-direct {v1, p0, p1, v0}, Lcom/byazt/yih/n$2$1;-><init>(Lcom/byazt/yih/n$2;ZLandroid/graphics/Bitmap;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method
