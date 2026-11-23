.class public Lcom/byazt/oq/ImageFlipSlide$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10d,
        0x2c5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oq/ImageFlipSlide;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/yj/yp;

.field public final synthetic tt:Lcom/byazt/oq/ImageFlipSlide;


# direct methods
.method public constructor <init>(Lcom/byazt/oq/ImageFlipSlide;Lcom/byazt/yj/yp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oq/ImageFlipSlide$2;->tt:Lcom/byazt/oq/ImageFlipSlide;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/oq/ImageFlipSlide$2;->c:Lcom/byazt/yj/yp;

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
    iget-object v0, p0, Lcom/byazt/oq/ImageFlipSlide$2;->c:Lcom/byazt/yj/yp;

    .line 2
    .line 3
    new-instance v1, Lcom/byazt/oq/ImageFlipSlide$2$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/byazt/oq/ImageFlipSlide$2$1;-><init>(Lcom/byazt/oq/ImageFlipSlide$2;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;)Lcom/byazt/yj/t;

    .line 9
    .line 10
    .line 11
    return-void
.end method
