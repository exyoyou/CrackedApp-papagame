.class public Lcom/byazt/oq/ImageFlipSlideGroup$1;
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
        0x764
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oq/ImageFlipSlideGroup;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/oq/ImageFlipSlideGroup;


# direct methods
.method public constructor <init>(Lcom/byazt/oq/ImageFlipSlideGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oq/ImageFlipSlideGroup$1;->c:Lcom/byazt/oq/ImageFlipSlideGroup;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/oq/ImageFlipSlideGroup$1;->c:Lcom/byazt/oq/ImageFlipSlideGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
