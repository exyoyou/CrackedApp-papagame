.class Lcom/windmill/sdk/banner/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/banner/b$a;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/banner/b$a;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/banner/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/banner/b$a$1;->a:Lcom/windmill/sdk/banner/b$a;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b$a$1;->a:Lcom/windmill/sdk/banner/b$a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/banner/b$a;->a(Lcom/windmill/sdk/banner/b$a;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/windmill/sdk/banner/b$a$1;->a:Lcom/windmill/sdk/banner/b$a;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/windmill/sdk/banner/b$a;->a(Lcom/windmill/sdk/banner/b$a;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/windmill/sdk/utils/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
