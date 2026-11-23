.class Lcom/airsaid/pickerviewlibrary/widget/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airsaid/pickerviewlibrary/widget/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/airsaid/pickerviewlibrary/widget/a;


# direct methods
.method constructor <init>(Lcom/airsaid/pickerviewlibrary/widget/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/a$a;->b:Lcom/airsaid/pickerviewlibrary/widget/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/widget/a$a;->b:Lcom/airsaid/pickerviewlibrary/widget/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/airsaid/pickerviewlibrary/widget/a;->a(Lcom/airsaid/pickerviewlibrary/widget/a;)Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/airsaid/pickerviewlibrary/widget/a$a$a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/airsaid/pickerviewlibrary/widget/a$a$a;-><init>(Lcom/airsaid/pickerviewlibrary/widget/a$a;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
