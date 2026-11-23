.class Lcom/windmill/sdk/widget/SplashView_2002001$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/widget/SplashView_2002001;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/widget/SplashView_2002001;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/widget/SplashView_2002001;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/widget/SplashView_2002001$7;->a:Lcom/windmill/sdk/widget/SplashView_2002001;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashView_2002001$7;->a:Lcom/windmill/sdk/widget/SplashView_2002001;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/windmill/sdk/widget/SplashView_2002001;->b(Lcom/windmill/sdk/widget/SplashView_2002001;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
