.class Lcom/windmill/sdk/widget/InterstitialBaseView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/widget/InterstitialBaseView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/widget/InterstitialBaseView;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/widget/InterstitialBaseView;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$6;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$6;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/windmill/sdk/widget/InterstitialBaseView;->i:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/windmill/sdk/widget/InterstitialBaseView;->j:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$6;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/windmill/sdk/widget/InterstitialBaseView;->i:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$6;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/windmill/sdk/widget/InterstitialBaseView;->j:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    .line 36
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$6;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/windmill/sdk/widget/InterstitialBaseView;->j:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    .line 46
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$6;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/windmill/sdk/widget/InterstitialBaseView;->i:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    :cond_0
    return-void
.end method
