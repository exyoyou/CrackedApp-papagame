.class Lcom/papa91/arc/widget/MyFrameAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/widget/MyFrameAnimation;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/widget/MyFrameAnimation;


# direct methods
.method constructor <init>(Lcom/papa91/arc/widget/MyFrameAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/MyFrameAnimation$1;->this$0:Lcom/papa91/arc/widget/MyFrameAnimation;

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
    iget-object v0, p0, Lcom/papa91/arc/widget/MyFrameAnimation$1;->this$0:Lcom/papa91/arc/widget/MyFrameAnimation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/papa91/arc/widget/MyFrameAnimation$1;->this$0:Lcom/papa91/arc/widget/MyFrameAnimation;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/papa91/arc/widget/MyFrameAnimation$1;->this$0:Lcom/papa91/arc/widget/MyFrameAnimation;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/papa91/arc/widget/MyFrameAnimation;->access$000(Lcom/papa91/arc/widget/MyFrameAnimation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/widget/MyFrameAnimation$1;->this$0:Lcom/papa91/arc/widget/MyFrameAnimation;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/papa91/arc/widget/MyFrameAnimation;->access$100(Lcom/papa91/arc/widget/MyFrameAnimation;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
