.class Lcom/join/mgps/ad/SplashZoomOutLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/SplashZoomOutLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/ad/SplashZoomOutLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/SplashZoomOutLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/SplashZoomOutLayout$a;->b:Lcom/join/mgps/ad/SplashZoomOutLayout;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/SplashZoomOutLayout$a;->b:Lcom/join/mgps/ad/SplashZoomOutLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v2, p0, Lcom/join/mgps/ad/SplashZoomOutLayout$a;->b:Lcom/join/mgps/ad/SplashZoomOutLayout;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    sub-int/2addr v0, v3

    .line 27
    iget-object v3, p0, Lcom/join/mgps/ad/SplashZoomOutLayout$a;->b:Lcom/join/mgps/ad/SplashZoomOutLayout;

    .line 28
    .line 29
    invoke-static {v3}, Lcom/join/mgps/ad/SplashZoomOutLayout;->b(Lcom/join/mgps/ad/SplashZoomOutLayout;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sub-int/2addr v0, v3

    .line 34
    invoke-static {v2, v0}, Lcom/join/mgps/ad/SplashZoomOutLayout;->a(Lcom/join/mgps/ad/SplashZoomOutLayout;I)I

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/ad/SplashZoomOutLayout$a;->b:Lcom/join/mgps/ad/SplashZoomOutLayout;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    sub-int/2addr v1, v2

    .line 44
    iget-object v2, p0, Lcom/join/mgps/ad/SplashZoomOutLayout$a;->b:Lcom/join/mgps/ad/SplashZoomOutLayout;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/join/mgps/ad/SplashZoomOutLayout;->b(Lcom/join/mgps/ad/SplashZoomOutLayout;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    sub-int/2addr v1, v2

    .line 51
    invoke-static {v0, v1}, Lcom/join/mgps/ad/SplashZoomOutLayout;->c(Lcom/join/mgps/ad/SplashZoomOutLayout;I)I

    .line 52
    .line 53
    .line 54
    return-void
.end method
