.class public Lcom/byazt/ouz/NativeExpressVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/un/NativeVideoTsView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x36f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/NativeExpressVideoView;->gu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ouz/NativeExpressVideoView;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/NativeExpressVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressVideoView$1;->c:Lcom/byazt/ouz/NativeExpressVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView$1;->c:Lcom/byazt/ouz/NativeExpressVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->getExpressInteractionListener()Lcom/byazt/ouz/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/byazt/ouz/c;->c(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
