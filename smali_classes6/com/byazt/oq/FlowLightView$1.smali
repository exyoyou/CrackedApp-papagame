.class public Lcom/byazt/oq/FlowLightView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/qr/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10d,
        0x8f4
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oq/FlowLightView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/qr/c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/oq/FlowLightView;


# direct methods
.method public constructor <init>(Lcom/byazt/oq/FlowLightView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oq/FlowLightView$1;->c:Lcom/byazt/oq/FlowLightView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/oq/FlowLightView$1;->c:Lcom/byazt/oq/FlowLightView;

    invoke-static {v0, p1}, Lcom/byazt/oq/FlowLightView;->c(Lcom/byazt/oq/FlowLightView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p0, Lcom/byazt/oq/FlowLightView$1;->c:Lcom/byazt/oq/FlowLightView;

    new-instance v0, Lcom/byazt/oq/FlowLightView$1$1;

    invoke-direct {v0, p0}, Lcom/byazt/oq/FlowLightView$1$1;-><init>(Lcom/byazt/oq/FlowLightView$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/byazt/oq/FlowLightView$1;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method
