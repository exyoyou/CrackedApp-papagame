.class public Lcom/byazt/ouz/NativeExpressVideoView$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x7a2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/NativeExpressVideoView$4;->c(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ouz/NativeExpressVideoView$4;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/NativeExpressVideoView$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressVideoView$4$1;->c:Lcom/byazt/ouz/NativeExpressVideoView$4;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView$4$1;->c:Lcom/byazt/ouz/NativeExpressVideoView$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/ouz/NativeExpressVideoView$4;->ve:Lcom/byazt/ouz/NativeExpressVideoView;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/ouz/ExpressVideoView;->setVideoPlayStatus(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView$4$1;->c:Lcom/byazt/ouz/NativeExpressVideoView$4;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/ouz/NativeExpressVideoView$4;->ve:Lcom/byazt/ouz/NativeExpressVideoView;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/byazt/ouz/ExpressVideoView;->setCanInterruptVideoPlay(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView$4$1;->c:Lcom/byazt/ouz/NativeExpressVideoView$4;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/byazt/ouz/NativeExpressVideoView$4;->ve:Lcom/byazt/ouz/NativeExpressVideoView;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView$4$1;->c:Lcom/byazt/ouz/NativeExpressVideoView$4;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/byazt/ouz/NativeExpressVideoView$4;->ve:Lcom/byazt/ouz/NativeExpressVideoView;

    .line 33
    .line 34
    iget v2, v0, Lcom/byazt/ouz/NativeExpressVideoView$4;->c:I

    .line 35
    .line 36
    iget-object v0, v0, Lcom/byazt/ouz/NativeExpressVideoView$4;->tt:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v2, v0}, Lcom/byazt/ouz/NativeExpressView;->tt(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
